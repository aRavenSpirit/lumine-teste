<?php
// ==========================================
// API DE CRIAÇÃO E CONSULTAS - LUMINEQUIZ
// ==========================================
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: Content-Type");

require __DIR__ . "/conexao.php";

$metodo = $_SERVER['REQUEST_METHOD'];
$tipo = $_GET['tipo'] ?? '';

// ------------------------------------------
// CONSULTAS GET
// ------------------------------------------
if ($metodo === 'GET') {
    if ($tipo === 'tipos_perguntas') {
        $result = $conn->query("SELECT * FROM tipos_perguntas");
        echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        exit;
    }

    if ($tipo === 'dificuldade') {
        $result = $conn->query("SELECT * FROM dificuldade");
        echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        exit;
    }

    if ($tipo === 'materia') {
        $result = $conn->query("SELECT * FROM materia");
        echo json_encode($result->fetch_all(MYSQLI_ASSOC));
        exit;
    }

    if ($tipo === 'conteudo' && isset($_GET['id_materia'])) {
        $id = (int)$_GET['id_materia'];
        $stmt = $conn->prepare("SELECT * FROM conteudo WHERE id_materia = ?");
        $stmt->bind_param("i", $id);
        $stmt->execute();
        echo json_encode($stmt->get_result()->fetch_all(MYSQLI_ASSOC));
        exit;
    }
}

// ------------------------------------------
// CADASTRO DE QUIZ COMPLETO (POST)
// ------------------------------------------
if ($metodo === 'POST' && $tipo === 'quiz_completo') {
    $data = json_decode(file_get_contents("php://input"), true);

    if (
        empty($data['nome']) ||
        empty($data['imagem_quiz']) ||
        empty($data['dificuldade']) ||
        empty($data['id_conteudo']) ||
        empty($data['perguntas'])
    ) {
        echo json_encode(["erro" => "Dados incompletos no envio. A imagem da capa do quiz é obrigatória."]);
        exit;
    }

    // Inicia Transação
    $conn->begin_transaction();

    try {
        // 1. Inserir Quiz com Imagem
        $stmtQuiz = $conn->prepare("INSERT INTO quizzes (nome, id_dificuldade, id_conteudo, imagem_quiz) VALUES (?, ?, ?, ?)");
        $stmtQuiz->bind_param("siis", $data['nome'], $data['dificuldade'], $data['id_conteudo'], $data['imagem_quiz']);
        $stmtQuiz->execute();
        $quiz_id = $conn->insert_id;

        // Prepared statements reutilizáveis
        $stmtPergunta = $conn->prepare("INSERT INTO perguntas (descricao, id_quiz, id_tipo, imagem_perguntas) VALUES (?, ?, ?, ?)");
        $stmtRespostaBase = $conn->prepare("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES (?, ?, ?)");
        $stmtRespostaAvancada = $conn->prepare("INSERT INTO respostas (descricao, certo, id_pergunta, ordem, texto_alvo) VALUES (?, 1, ?, ?, ?)");

        // 2. Loop de Perguntas
        foreach ($data['perguntas'] as $p) {
            if (empty($p['descricao']) || empty($p['tipo'])) {
                throw new Exception("Existe uma pergunta com dados incompletos.");
            }

            $imgPergunta = !empty($p['imagem_perguntas']) ? $p['imagem_perguntas'] : null;
            $id_tipo = (int)$p['tipo'];

            $stmtPergunta->bind_param("siis", $p['descricao'], $quiz_id, $id_tipo, $imgPergunta);
            $stmtPergunta->execute();
            $pergunta_id = $conn->insert_id;

            // Múltipla Escolha (1 ou Várias)
            if ($id_tipo == 1 || $id_tipo == 4) {
                if (empty($p['respostas'])) throw new Exception("Respostas obrigatórias em múltipla escolha.");

                foreach ($p['respostas'] as $r) {
                    if (empty($r['descricao'])) continue;
                    $certo = !empty($r['certo']) ? 1 : 0;
                    $stmtRespostaBase->bind_param("sii", $r['descricao'], $certo, $pergunta_id);
                    $stmtRespostaBase->execute();
                }
            }

            // Texto
            if ($id_tipo == 2) {
                if (empty($p['resposta_texto'])) throw new Exception("Resposta de texto obrigatória.");
                $certo = 1;
                $stmtRespostaBase->bind_param("sii", $p['resposta_texto'], $certo, $pergunta_id);
                $stmtRespostaBase->execute();
            }

            // Verdadeiro / Falso
            if ($id_tipo == 3) {
                if (!isset($p['vf'])) throw new Exception("Seleção de V/F obrigatória.");
                $valor = $p['vf'] ? 'Verdadeiro' : 'Falso';
                $certo = 1;
                $stmtRespostaBase->bind_param("sii", $valor, $certo, $pergunta_id);
                $stmtRespostaBase->execute();
            }

            // Ordenar e Arrastar/Soltar
            if ($id_tipo == 5 || $id_tipo == 6) {
                $posicao = 1;
                foreach ($p['respostas'] as $r) {
                    if (empty($r['descricao'])) continue;

                    $textoAlvo = ($id_tipo == 6 && isset($r['texto_alvo'])) ? $r['texto_alvo'] : '';
                    $stmtRespostaAvancada->bind_param("siis", $r['descricao'], $pergunta_id, $posicao, $textoAlvo);
                    $stmtRespostaAvancada->execute();
                    $posicao++;
                }
            }
        }

        // Sucesso: Confirma alterações no banco
        $conn->commit();
        echo json_encode(["mensagem" => "Quiz criado com sucesso!"]);

    } catch (Exception $e) {
        // Erro: Reverte tudo para evitar dados incompletos
        $conn->rollback();
        echo json_encode(["erro" => $e->getMessage()]);
    }

    exit;
}

$conn->close();
?>