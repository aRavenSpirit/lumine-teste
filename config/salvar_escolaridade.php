<?php
    require "conexao.php";

    header("Content-Type: application/json; charset=UTF-8");

    session_start();

    if (!isset($_SESSION['usuario_id'])) {
        echo json_encode(["status" => false, "erro" => "Sessão não encontrada."]);
        exit;
    }

    $data = json_decode(file_get_contents("php://input"), true);
    $escolaridade_id = intval($data['escolaridade_id'] ?? 0);

    if ($escolaridade_id <= 0) {
        echo json_encode(["status" => false, "erro" => "Escolaridade inválida."]);
        exit;
    }

    $id_usuario = $_SESSION['usuario_id'];

    $sql = "UPDATE usuario SET escolaridade_id = $escolaridade_id WHERE id = $id_usuario";

    if ($conn->query($sql)) {
        echo json_encode(["status" => true]);
    } else {
        echo json_encode(["status" => false, "erro" => "Erro ao salvar: " . $conn->error]);
    }

    $conn->close();
?>