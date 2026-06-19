<?php
    require "conexao.php";
    session_start();

    header("Content-Type: application/json");

    // Bloqueia o acesso se o usuário não estiver logado na sessão
    if (!isset($_SESSION['usuario_id'])) {
        echo json_encode(["status" => false, "erro" => "Sessão expirada ou usuário não autenticado."]);
        exit;
    }

    // Recebe o ID da escolaridade enviado pelo fetch
    $data = json_decode(file_get_contents("php://input"), true);
    $escolaridade_id = isset($data['escolaridade_id']) ? intval($data['escolaridade_id']) : 0;
    $usuario_id = intval($_SESSION['usuario_id']);

    // Valida se foi selecionada uma opção válida
    if ($escolaridade_id <= 0) {
        echo json_encode(["status" => false, "erro" => "Por favor, selecione uma escolaridade válida."]);
        exit;
    }

    // Atualiza a escolaridade do usuário logado no banco de dados
    $sql = "UPDATE usuario SET escolaridade_id = $escolaridade_id WHERE id = $usuario_id";

    if ($conn->query($sql)) {
        echo json_encode(["status" => true]);
    } else {
        echo json_encode(["status" => false, "erro" => "Erro ao atualizar dados no banco: " . $conn->error]);
    }

    $conn->close();
?>