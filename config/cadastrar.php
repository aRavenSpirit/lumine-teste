<?php 
    require "conexao.php";
    $data = json_decode(file_get_contents("php://input"), true);
    $nome = $conn->real_escape_string($data['nome']);
    $email = $conn->real_escape_string($data['email']);
    $senha = password_hash($data['senha'], PASSWORD_DEFAULT);
    $escolaridade = intval($data['escolaridade_id']);

    $sql = "
        INSERT INTO usuario
        (nome, email, senha, escolaridade_id, criacao)
        VALUES
        ('$nome', '$email', '$senha', $escolaridade, CURDATE())
    ";

    if ($conn->query($sql)) {

        echo json_encode(["mensagem" => "Usuário inserido"]);

    } else {

        echo json_encode(["erro" => "Erro ao inserir"]);

    }
?>