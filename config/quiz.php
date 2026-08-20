<?php
    require "conexao.php";
    header("Content-Type: application/json; charset=UTF-8");

    if (isset($_GET['tipo']) && $_GET['tipo'] == 'listar_quizzes') {
        $result = $conn->query("
            SELECT 
                q.id,
                q.nome,
                d.dificuldade,
                c.nome AS conteudo,
                m.nome_materia
            FROM quizzes q
            JOIN dificuldade d ON q.id_dificuldade = d.id
            JOIN conteudo c ON q.id_conteudo = c.id
            JOIN materia m ON c.id_materia = m.id
            ORDER BY q.id DESC
        ");

        $dados = [];
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
        echo json_encode($dados);
        exit;
    }

// =========================================================================
// ROTA PARA CHECAR SE O USUÁRIO JÁ AVALIOU A PLATAFORMA (NOVA)
// =========================================================================
if (isset($_GET['tipo']) && $_GET['tipo'] === 'checar_avaliacao') {
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }
    
    $id_usuario = isset($_SESSION['usuario_id']) ? intval($_SESSION['usuario_id']) : 0; 

    if ($id_usuario > 0) {
        $stmt = $conn->prepare("SELECT id FROM avaliacoes WHERE id_usuario = ?");
        $stmt->bind_param("i", $id_usuario);
        $stmt->execute();
        $stmt->store_result();
        
        $ja_avaliou = $stmt->num_rows > 0; // Se for maior que 0, ele já avaliou
        $stmt->close();
        
        echo json_encode(["avaliou" => $ja_avaliou]);
    } else {
        echo json_encode(["avaliou" => false]);
    }
    exit;
}

// =========================================================================
// ROTA PARA SALVAR A AVALIAÇÃO DA PLATAFORMA (1 POR USUÁRIO)
// =========================================================================
if (isset($_GET['tipo']) && $_GET['tipo'] === 'salvar_feedback') {
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    $data = json_decode(file_get_contents("php://input"), true);
    
    // RESTAURADO: Capturamos o quiz_id normalmente. Não excluímos nada!
    $quiz_id = isset($data['quiz_id']) ? intval($data['quiz_id']) : 0;
    $nota = isset($data['nota']) ? intval($data['nota']) : 0;
    $id_usuario = isset($_SESSION['usuario_id']) ? intval($_SESSION['usuario_id']) : 0; 

    if ($id_usuario === 0) {
        echo json_encode(["sucesso" => false, "erro" => "Sessão expirada."]);
        exit;
    }

    if ($quiz_id > 0 && $nota > 0) {
        // TRAVA MANTIDA: Verifica se o usuário já avaliou a plataforma antes
        $check_stmt = $conn->prepare("SELECT id FROM avaliacoes WHERE id_usuario = ?");
        $check_stmt->bind_param("i", $id_usuario);
        $check_stmt->execute();
        $check_stmt->store_result();

        if ($check_stmt->num_rows > 0) {
            $check_stmt->close();
            echo json_encode(["sucesso" => true]); // Finge que salvou para não travar a tela
            exit;
        }
        $check_stmt->close();

        // RESTAURADO: Inserimos com todas as 3 informações (id_quiz, id_usuario, nota)
        $stmt = $conn->prepare("INSERT INTO avaliacoes (id_quiz, id_usuario, nota) VALUES (?, ?, ?)");
        $stmt->bind_param("iii", $quiz_id, $id_usuario, $nota);
        
        if ($stmt->execute()) {
            echo json_encode(["sucesso" => true]);
        } else {
            echo json_encode(["sucesso" => false, "erro" => "Erro SQL: " . $stmt->error]);
        }
        $stmt->close();
    } else {
        echo json_encode(["sucesso" => false, "erro" => "Dados inválidos."]);
    }
    exit;
}

    if (isset($_GET['tipo']) && $_GET['tipo'] == 'detalhes_quiz') {
        $id_quiz = intval($_GET['id']);

        $sql_quiz = "SELECT q.*, m.nome_materia, c.nome as conteudo 
                     FROM quizzes q 
                     JOIN conteudo c ON q.id_conteudo = c.id 
                     JOIN materia m ON c.id_materia = m.id 
                     WHERE q.id = $id_quiz";
        
        $res_quiz = $conn->query($sql_quiz);
        $dados = $res_quiz->fetch_assoc();

        if ($dados) {
            $sql_perguntas = "SELECT id, descricao, id_tipo FROM perguntas WHERE id_quiz = $id_quiz";
            $res_perguntas = $conn->query($sql_perguntas);
            
            $perguntas = [];
            while ($p = $res_perguntas->fetch_assoc()) {
                $id_p = $p['id'];
                $id_tipo = intval($p['id_tipo']);

                // Busca as respostas associadas à pergunta
                $sql_resp = "SELECT id, descricao, certo, ordem, texto_alvo FROM respostas WHERE id_pergunta = $id_p";
                $res_resp = $conn->query($sql_resp);
                
                $respostas = [];
                while ($r = $res_resp->fetch_assoc()) {
                    $respostas[] = $r;
                }

                // Cria uma cópia idêntica para gerar o embaralhamento dos elementos móveis
                $respostas_embaralhadas = $respostas;

                // Se a pergunta for do tipo Ordenar Itens (5) ou Drag and Drop (6), embaralha apenas a cópia móvel
                if ($id_tipo === 5 || $id_tipo === 6) {
                    shuffle($respostas_embaralhadas);
                }

                // Mantém a ordem original estática para as estruturas de validação e caixas alvo
                $p['respostas'] = $respostas;
                
                // Envia a lista bagunçada em uma propriedade exclusiva para renderizar os botões/blocos arrastáveis
                $p['respostas_embaralhadas'] = $respostas_embaralhadas;
                
                $perguntas[] = $p;
            }
            $dados['perguntas'] = $perguntas;
            echo json_encode($dados);
        } else {
            echo json_encode(["erro" => "Quiz não encontrado"]);
        }
        exit;
    }
?>