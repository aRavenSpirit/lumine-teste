<?php
require "conexao.php";
session_start();

header("Content-Type: application/json");

if (!isset($_SESSION['usuario_id'])) {
    echo json_encode(["status" => false, "erro" => "Sessão não encontrada."]);
    exit;
}

$data = json_decode(file_get_contents("php://input"), true);
$escolaridade_id = intval($data['escolaridade_id'] ?? 0);

if (!$escolaridade_id) {
    echo json_encode(["status" => false, "erro" => "Escolha uma escolaridade válida."]);
    exit;
}

$usuario_id = $_SESSION['usuario_id'];

$sql = "UPDATE usuario SET escolaridade_id = $escolaridade_id WHERE id = $usuario_id";

if ($conn->query($sql)) {
    echo json_encode(["status" => true]);
} else {
    echo json_encode(["status" => false, "erro" => $conn->error]);
}
$conn->close();
?>