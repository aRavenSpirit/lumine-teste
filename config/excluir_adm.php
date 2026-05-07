<?php
require "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

$tipo = $_GET['tipo'] ?? '';
$id = isset($_GET['id']) ? intval($_GET['id']) : 0;

if (!$id) {
    echo json_encode(["status" => false, "erro" => "ID inválido"]);
    exit;
}

if ($tipo == 'usuario') {
    // Exclui o usuário diretamente
    $sql = "DELETE FROM usuario WHERE id = $id";
    if ($conn->query($sql)) {
        echo json_encode(["status" => true]);
    } else {
        echo json_encode(["status" => false, "erro" => $conn->error]);
    }
} 
else if ($tipo == 'quiz') {
    // 1. Deletar as respostas vinculadas às perguntas deste quiz
    $sql_respostas = "DELETE FROM respostas WHERE id_pergunta IN (SELECT id FROM perguntas WHERE id_quiz = $id)";
    $conn->query($sql_respostas);

    // 2. Deletar as perguntas vinculadas a este quiz
    $sql_perguntas = "DELETE FROM perguntas WHERE id_quiz = $id";
    $conn->query($sql_perguntas);

    // 3. Agora sim, deletar o quiz
    $sql_quiz = "DELETE FROM quizzes WHERE id = $id";
    
    if ($conn->query($sql_quiz)) {
        echo json_encode(["status" => true]);
    } else {
        echo json_encode(["status" => false, "erro" => "Erro ao deletar quiz: " . $conn->error]);
    }
}
exit;