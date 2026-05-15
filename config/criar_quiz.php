<?php

header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: Content-Type");

require __DIR__ . "/conexao.php";


// =========================
// TIPOS DE PERGUNTAS
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == 'tipos_perguntas') {

    $result = $conn->query("SELECT * FROM tipos_perguntas");

    $dados = [];

    while ($row = $result->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}


// =========================
// DIFICULDADE
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == 'dificuldade') {

    $result = $conn->query("SELECT * FROM dificuldade");

    $dados = [];

    while ($row = $result->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}


// =========================
// MATÉRIA
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == 'materia') {

    $result = $conn->query("SELECT * FROM materia");

    $dados = [];

    while ($row = $result->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}


// =========================
// CONTEÚDO
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == 'conteudo') {

    $id = intval($_GET['id_materia']);

    $result = $conn->query("
        SELECT * 
        FROM conteudo
        WHERE id_materia = $id
    ");

    $dados = [];

    while ($row = $result->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}


// =========================
// CRIAR QUIZ COMPLETO
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == 'quiz_completo') {

    $data = json_decode(file_get_contents("php://input"), true);

    // validação geral
    if (
        empty($data['nome']) ||
        empty($data['dificuldade']) ||
        empty($data['id_conteudo']) ||
        empty($data['perguntas'])
    ) {
        echo json_encode(["erro" => "Dados incompletos"]);
        exit;
    }

    $nome = $conn->real_escape_string($data['nome']);
    $id_dificuldade = intval($data['dificuldade']);
    $id_conteudo = intval($data['id_conteudo']);

    // ✅ CORREÇÃO AQUI (id_dificuldade)
    $conn->query("
        INSERT INTO quizzes (nome, id_dificuldade, id_conteudo)
        VALUES ('$nome', $id_dificuldade, $id_conteudo)
    ");

    $quiz_id = $conn->insert_id;

    foreach ($data['perguntas'] as $p) {

        if (empty($p['descricao']) || empty($p['tipo'])) {
            echo json_encode(["erro" => "Pergunta inválida"]);
            exit;
        }

        $desc = $conn->real_escape_string($p['descricao']);
        $id_tipo = intval($p['tipo']);

        $conn->query("
            INSERT INTO perguntas (descricao, id_quiz, id_tipo)
            VALUES ('$desc', $quiz_id, $id_tipo)
        ");

        $pergunta_id = $conn->insert_id;

        // =========================
        // MULTIPLA (1 correta) e VÁRIAS
        // =========================
        if ($id_tipo == 1 || $id_tipo == 4) {

            if (empty($p['respostas'])) {
                echo json_encode(["erro" => "Respostas obrigatórias"]);
                exit;
            }

            $corretas = array_filter($p['respostas'], fn($r) => !empty($r['certo']));

            if ($id_tipo == 1 && count($corretas) != 1) {
                echo json_encode(["erro" => "Pergunta precisa de 1 correta"]);
                exit;
            }

            if ($id_tipo == 4 && count($corretas) == 0) {
                echo json_encode(["erro" => "Pelo menos 1 correta"]);
                exit;
            }

            foreach ($p['respostas'] as $r) {

                if (empty($r['descricao'])) continue;

                $rdesc = $conn->real_escape_string($r['descricao']);
                $certo = !empty($r['certo']) ? 1 : 0;

                $conn->query("
                    INSERT INTO respostas (descricao, certo, id_pergunta)
                    VALUES ('$rdesc', $certo, $pergunta_id)
                ");
            }
        }

        // =========================
        // TEXTO
        // =========================
        if ($id_tipo == 2) {

            if (empty($p['resposta_texto'])) {
                echo json_encode(["erro" => "Resposta de texto obrigatória"]);
                exit;
            }

            $resp = $conn->real_escape_string($p['resposta_texto']);

            $conn->query("
                INSERT INTO respostas (descricao, certo, id_pergunta)
                VALUES ('$resp', 1, $pergunta_id)
            ");
        }

        // =========================
        // VERDADEIRO/FALSO
        // =========================
        if ($id_tipo == 3) {

            if (!isset($p['vf'])) {
                echo json_encode(["erro" => "VF obrigatório"]);
                exit;
            }

            $valor = $p['vf'] ? 'Verdadeiro' : 'Falso';

            $conn->query("
                INSERT INTO respostas (descricao, certo, id_pergunta)
                VALUES ('$valor', 1, $pergunta_id)
            ");
        }

        // =========================
        // ORDENAR / DRAG
        // =========================
        if ($id_tipo == 5 || $id_tipo == 6) {
            $posicao = 1; // Contador para a ordem
            foreach ($p['respostas'] as $r) {
                if (empty($r['descricao'])) continue;
                $descItem = $conn->real_escape_string($r['descricao']);
                // AQUI: Salva a descrição e a ordem correta (1, 2, 3...)
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES ('$descItem', 1, $pergunta_id, $posicao)");
                $posicao++;
            }
        }
    }

    echo json_encode(["mensagem" => "Quiz criado com sucesso"]);
    exit;
}

$conn->close();