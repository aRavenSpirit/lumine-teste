<?php
header("Content-Type: application/json; charset=UTF-8");
require __DIR__ . "/conexao.php";

$id = intval($_GET['id']);

// 1. Busca dados básicos do Quiz
$sqlQuiz = "SELECT q.*, d.dificuldade as nome_dificuldade, m.nome_materia, c.nome as nome_conteudo 
            FROM quizzes q
            JOIN dificuldade d ON q.id_dificuldade = d.id
            JOIN conteudo c ON q.id_conteudo = c.id
            JOIN materia m ON c.id_materia = m.id
            WHERE q.id = $id";

$resQuiz = $conn->query($sqlQuiz);
$quiz = $resQuiz->fetch_assoc();

if (!$quiz) {
    echo json_encode(["erro" => "Quiz não encontrado"]);
    exit;
}

// 2. Busca Perguntas
$quiz['perguntas'] = [];
$resPerguntas = $conn->query("SELECT * FROM perguntas WHERE id_quiz = $id");

while ($p = $resPerguntas->fetch_assoc()) {
    $id_p = $p['id'];
    
    // 3. Busca Respostas de cada pergunta
    $p['respostas'] = [];
    $resRespostas = $conn->query("SELECT * FROM respostas WHERE id_pergunta = $id_p");
    while ($r = $resRespostas->fetch_assoc()) {
        $p['respostas'][] = $r;
    }
    
    $quiz['perguntas'][] = $p;
}

echo json_encode($quiz);