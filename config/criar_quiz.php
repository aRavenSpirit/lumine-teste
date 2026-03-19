<?php

header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST");
header("Access-Control-Allow-Headers: Content-Type");

// conexão
require "conexao.php";

// =========================
// MATÉRIAS
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
// CONTEÚDOS
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == 'conteudo') {

    $id = intval($_GET['id_materia']);

    $result = $conn->query("
        SELECT * FROM conteudo
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

    $nome = $conn->real_escape_string($data['nome']);
    $dificuldade = intval($data['dificuldade']);
    $id_conteudo = intval($data['id_conteudo']);

    // cria quiz
    $conn->query("
        INSERT INTO quizzes (nome, dificuldade, id_conteudo)
        VALUES ('$nome', $dificuldade, $id_conteudo)
    ");

    $quiz_id = $conn->insert_id;

    foreach ($data['perguntas'] as $p) {

        $desc = $conn->real_escape_string($p['descricao']);

        $conn->query("
            INSERT INTO perguntas (descricao, id_quiz)
            VALUES ('$desc', $quiz_id)
        ");

        $pergunta_id = $conn->insert_id;

        foreach ($p['respostas'] as $r) {

            $rdesc = $conn->real_escape_string($r['descricao']);
            $certo = $r['certo'] ? 1 : 0;

            $conn->query("
                INSERT INTO respostas (descricao, certo, id_pergunta)
                VALUES ('$rdesc', $certo, $pergunta_id)
            ");
        }
    }

    echo json_encode(["mensagem" => "Quiz criado com sucesso"]);
    exit;
}

$conn->close();