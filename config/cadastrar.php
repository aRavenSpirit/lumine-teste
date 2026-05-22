<?php 
    require "conexao.php";

    header("Content-Type: application/json");

    // pega dados
    $data = json_decode(file_get_contents("php://input"), true);

    // valida se veio algo
    if (!$data) {
        echo json_encode(["erro" => "Dados não recebidos"]);
        exit;
    }

    // pega valores com segurança
    $nome = $conn->real_escape_string($data['nome'] ?? '');
    $email = $conn->real_escape_string($data['email'] ?? '');
    $senhaRaw = $data['senha'] ?? '';
    $escolaridade = intval($data['escolaridade_id'] ?? 0);

    // valida campos
    if (!$nome || !$email || !$senhaRaw || !$escolaridade) {
        echo json_encode(["erro" => "Campos obrigatórios não preenchidos"]);
        exit;
    }

    // hash da senha
    $senha = password_hash($senhaRaw, PASSWORD_DEFAULT);

    $sql = "
        INSERT INTO usuario
        (nome, email, senha, escolaridade_id, criacao)
        VALUES
        ('$nome', '$email', '$senha', $escolaridade, CURDATE())
    ";

    if ($conn->query($sql)) {
        echo json_encode(["mensagem" => "Usuário inserido"]);
    } else {
        echo json_encode(["erro" => $conn->error]);
    }
?>