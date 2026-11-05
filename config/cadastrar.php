<?php 
    require "conexao.php";

    header("Content-Type: application/json; charset=UTF-8");

    $data = json_decode(file_get_contents("php://input"), true);

    if (!$data) {
        echo json_encode(["erro" => "Dados não recebidos"]);
        exit;
    }

    $nome = $conn->real_escape_string($data['nome'] ?? '');
    $email = $conn->real_escape_string($data['email'] ?? '');
    $senhaRaw = $data['senha'] ?? '';

    if (!$nome || !$email || !$senhaRaw) {
        echo json_encode(["erro" => "Campos obrigatórios não preenchidos"]);
        exit;
    }

    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo json_encode(["erro" => "Por favor, insira um e-mail válido."]);
        exit;
    }

    if (strlen($senhaRaw) < 8) {
        echo json_encode(["erro" => "A senha deve ter no mínimo 8 caracteres."]);
        exit;
    }

    if (!preg_match('/[A-Z]/', $senhaRaw)) {
        echo json_encode(["erro" => "A senha deve conter pelo menos uma letra maiúscula."]);
        exit;
    }

    if (!preg_match('/[0-9]/', $senhaRaw)) {
        echo json_encode(["erro" => "A senha deve conter pelo menos um número."]);
        exit;
    }
    
    if (!preg_match('/[^A-Za-z0-9]/', $senhaRaw)) {
        echo json_encode(["erro" => "A senha deve conter pelo menos um caractere especial (ex: !@#$)."]);
        exit;
    }

    $senha = password_hash($senhaRaw, PASSWORD_DEFAULT);

    $sql = "
        INSERT INTO usuario
        (nome, email, senha, escolaridade_id, criacao)
        VALUES
        ('$nome', '$email', '$senha', NULL, CURDATE())
    ";

    if ($conn->query($sql)) {
        echo json_encode(["mensagem" => "Usuário inserido com sucesso"]);
    } else {
        if ($conn->errno == 1062) {
            echo json_encode(["erro" => "Este e-mail já está cadastrado."]);
        } else {
            echo json_encode(["erro" => "Erro ao cadastrar: " . $conn->error]);
        }
    }

    $conn->close();
?>