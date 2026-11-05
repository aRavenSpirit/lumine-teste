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
    $data = json_decode(file_get_contents("php://input"), true);

    if (!$data || !isset($data['email']) || !isset($data['senha'])) {
        echo json_encode(["status" => false, "erro" => "Dados incompletos"]);
        exit;
    }

    $email = $conn->real_escape_string($data['email']);
    $senha = $data['senha'];

    $sql = "SELECT * FROM usuario WHERE email='$email'";
    $result = $conn->query($sql);

    if (!$result || $result->num_rows == 0) {
        echo json_encode(["status" => false, "erro" => "Utilizador não encontrado"]);
        exit;
    }

    $user = $result->fetch_assoc();

    if (password_verify($senha, $user['senha'])) {

        $_SESSION['usuario_id'] = $user['id'];
        $_SESSION['usuario_nome'] = $user['nome'];
        $_SESSION['escolaridade_id'] = $user['escolaridade_id'];

        // Exige escolaridade apenas se estiver NULO ou ZERO no banco de dados
        $precisa_escolaridade = is_null($user['escolaridade_id']) || $user['escolaridade_id'] == 0;

        echo json_encode([
            "status" => true, 
            "precisa_escolaridade" => $precisa_escolaridade
        ]);

    } else {
        echo json_encode(["status" => false, "erro" => "Senha incorreta"]);
    }

    $conn->close();
?>