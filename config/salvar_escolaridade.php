<?php
    if (session_status() === PHP_SESSION_NONE) {

        session_set_cookie_params([
            'lifetime' => 0,
            'path' => '/',
            'httponly' => true,
            'samesite' => 'Lax'
        ]);
        session_start();

    }

    header("Content-Type: application/json; charset=UTF-8");
    require_once __DIR__ . "/conexao.php";

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

    $id_usuario = intval($_SESSION['usuario_id']);
    $sql = "UPDATE usuario SET escolaridade_id = $escolaridade_id WHERE id = $id_usuario";

    if ($conn->query($sql)) {
        $_SESSION['escolaridade_id'] = $escolaridade_id;
        echo json_encode(["status" => true]);
    } else {
        echo json_encode(["status" => false, "erro" => "Erro ao salvar no banco."]);
    }

    $conn->close();
?>