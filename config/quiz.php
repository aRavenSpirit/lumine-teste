<?php
require "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

// =========================================================================
// 1. ROTA PARA LISTAR TODOS OS QUIZZES (PAINEL / HOME)
// =========================================================================
if (isset($_GET['tipo']) && $_GET['tipo'] === 'listar_quizzes') {
    $sql = "SELECT 
                q.id,
                q.nome,
                q.imagem_quiz,
                d.dificuldade,
                c.nome AS conteudo,
                m.nome_materia
            FROM quizzes q
            INNER JOIN dificuldade d ON q.id_dificuldade = d.id
            INNER JOIN conteudo c ON q.id_conteudo = c.id
            INNER JOIN materia m ON c.id_materia = m.id
            ORDER BY q.id DESC";

    $result = $conn->query($sql);
    $dados = [];

    if ($result) {
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
    }
    
    echo json_encode($dados, JSON_UNESCAPED_UNICODE);
    exit;
}

// =========================================================================
// 2. ROTA PARA CHECAR SE O USUÁRIO JÁ AVALIOU A PLATAFORMA
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
        
        $ja_avaliou = ($stmt->num_rows > 0);
        $stmt->close();
        
        echo json_encode(["avaliou" => $ja_avaliou]);
    } else {
        echo json_encode(["avaliou" => false]);
    }
    exit;
}

// =========================================================================
// 3. ROTA PARA SALVAR A AVALIAÇÃO DA PLATAFORMA (1 POR USUÁRIO)
// =========================================================================
if (isset($_GET['tipo']) && $_GET['tipo'] === 'salvar_feedback') {
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    $data = json_decode(file_get_contents("php://input"), true);
    
    $quiz_id = isset($data['quiz_id']) ? intval($data['quiz_id']) : 0;
    $nota = isset($data['nota']) ? intval($data['nota']) : 0;
    $id_usuario = isset($_SESSION['usuario_id']) ? intval($_SESSION['usuario_id']) : 0; 

    if ($id_usuario === 0) {
        echo json_encode(["sucesso" => false, "erro" => "Sessão expirada ou usuário não autenticado."]);
        exit;
    }

    if ($quiz_id > 0 && $nota >= 1 && $nota <= 5) {
        // Verifica se o usuário já realizou avaliação
        $check_stmt = $conn->prepare("SELECT id FROM avaliacoes WHERE id_usuario = ?");
        $check_stmt->bind_param("i", $id_usuario);
        $check_stmt->execute();
        $check_stmt->store_result();

        if ($check_stmt->num_rows > 0) {
            $check_stmt->close();
            echo json_encode(["sucesso" => true, "mensagem" => "Avaliação prévia detectada."]);
            exit;
        }
        $check_stmt->close();

        // Inserção da avaliação
        $stmt = $conn->prepare("INSERT INTO avaliacoes (id_quiz, id_usuario, nota) VALUES (?, ?, ?)");
        $stmt->bind_param("iii", $quiz_id, $id_usuario, $nota);
        
        if ($stmt->execute()) {
            echo json_encode(["sucesso" => true]);
        } else {
            echo json_encode(["sucesso" => false, "erro" => "Falha no banco de dados: " . $stmt->error]);
        }
        $stmt->close();
    } else {
        echo json_encode(["sucesso" => false, "erro" => "Parâmetros inválidos para avaliação."]);
    }
    exit;
}

// =========================================================================
// 4. ROTA PARA DETALHES DO QUIZ (EXECUÇÃO E EDIÇÃO)
// =========================================================================
if (isset($_GET['tipo']) && $_GET['tipo'] === 'detalhes_quiz') {
    $id_quiz = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

    if (!$id_quiz) {
        echo json_encode(["erro" => "ID de Quiz inválido."]);
        exit;
    }

    // Busca os dados do Quiz incluindo capas e chaves estrangeiras
    $sql_quiz = "SELECT 
                    q.id,
                    q.nome,
                    q.id_dificuldade,
                    q.id_conteudo,
                    q.imagem_quiz,
                    d.dificuldade,
                    m.id AS id_materia,
                    m.nome_materia, 
                    c.nome AS conteudo 
                 FROM quizzes q 
                 INNER JOIN dificuldade d ON q.id_dificuldade = d.id
                 INNER JOIN conteudo c ON q.id_conteudo = c.id 
                 INNER JOIN materia m ON c.id_materia = m.id 
                 WHERE q.id = ?";

    $stmt_quiz = $conn->prepare($sql_quiz);
    $stmt_quiz->bind_param("i", $id_quiz);
    $stmt_quiz->execute();
    $res_quiz = $stmt_quiz->get_result();
    $dados = $res_quiz->fetch_assoc();
    $stmt_quiz->close();

    if ($dados) {
        // Busca as Perguntas associadas ao Quiz
        $sql_perguntas = "SELECT id, descricao, id_tipo, imagem_perguntas 
                          FROM perguntas 
                          WHERE id_quiz = ? 
                          ORDER BY id ASC";
        
        $stmt_p = $conn->prepare($sql_perguntas);
        $stmt_p->bind_param("i", $id_quiz);
        $stmt_p->execute();
        $res_perguntas = $stmt_p->get_result();
        
        $perguntas = [];
        
        while ($p = $res_perguntas->fetch_assoc()) {
            $id_p = $p['id'];
            $id_tipo = intval($p['id_tipo']);

            // Busca as respostas da pergunta ordenadas pelo campo 'ordem'
            $sql_resp = "SELECT id, descricao, certo, ordem, texto_alvo 
                         FROM respostas 
                         WHERE id_pergunta = ? 
                         ORDER BY ordem ASC, id ASC";
                         
            $stmt_r = $conn->prepare($sql_resp);
            $stmt_r->bind_param("i", $id_p);
            $stmt_r->execute();
            $res_resp = $stmt_r->get_result();
            
            $respostas = [];
            while ($r = $res_resp->fetch_assoc()) {
                $r['certo'] = (bool)$r['certo'];
                $respostas[] = $r;
            }
            $stmt_r->close();

            // Clona o array original para criar o vetor de elementos móveis embaralhados
            $respostas_embaralhadas = $respostas;

            // Se for do tipo 'Ordenar' (5) ou 'Arrastar e Soltar' (6), embaralha apenas o vetor alternativo
            if ($id_tipo === 5 || $id_tipo === 6) {
                shuffle($respostas_embaralhadas);
            }

            $p['respostas'] = $respostas;
            $p['respostas_embaralhadas'] = $respostas_embaralhadas;
            
            $perguntas[] = $p;
        }
        $stmt_p->close();

        $dados['perguntas'] = $perguntas;
        echo json_encode($dados, JSON_UNESCAPED_UNICODE);
    } else {
        echo json_encode(["erro" => "Quiz não encontrado."]);
    }
    exit;
}
?>