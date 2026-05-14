<?php

header("Content-Type: application/json; charset=UTF-8"); // Define o tipo de conteúdo como JSON

require __DIR__ . "/conexao.php"; // Inclui a conexão com o banco de dados
session_start();

// =========================
// USUÁRIO
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == "usuario") {

    $id = $_SESSION['usuario_id'];

    $sql = "SELECT nome FROM usuario WHERE id = $id";
    $res = $conn->query($sql);

    echo json_encode($res->fetch_assoc());
    exit;
}

// =========================
// MATÉRIAS
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == "materias") {

    $res = $conn->query("SELECT id, nome_materia FROM materia ORDER BY nome_materia ASC");

    $dados = [];

    while ($row = $res->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}

// =========================
// CONTEÚDOS
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == "conteudos") {

    $id = intval($_GET['id_materia']);

    $res = $conn->query("
        SELECT id, nome 
        FROM conteudo 
        WHERE id_materia = $id 
        ORDER BY nome ASC
    ");

    $dados = [];

    while ($row = $res->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}

// =========================
// QUIZZES
// =========================
if (isset($_GET['tipo']) && $_GET['tipo'] == "quizzes") {

    $id = intval($_GET['id_conteudo']);

    $res = $conn->query("
        SELECT q.id, q.nome, d.dificuldade, c.nome AS conteudo
        FROM quizzes q
        JOIN dificuldade d ON q.id_dificuldade = d.id
        JOIN conteudo c ON q.id_conteudo = c.id
        WHERE q.id_conteudo = $id
    ");

    $dados = [];

    while ($row = $res->fetch_assoc()) {
        $dados[] = $row;
    }

    echo json_encode($dados);
    exit;
}

$conn->close();