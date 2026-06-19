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

    // valida campos (Removido o $escolaridade daqui)
    if (!$nome || !$email || !$senhaRaw) {
        echo json_encode(["erro" => "Campos obrigatórios não preenchidos"]);
        exit;
    }

    // ==========================================================
    // VALIDAÇÃO INTELIGENTE DE REQUISITOS DA SENHA (BACKEND)
    // ==========================================================

    // 1. Mínimo 8 caracteres
    if (strlen($senhaRaw) < 8) {
        echo json_encode(["erro" => "A senha deve ter no mínimo 8 caracteres."]);
        exit;
    }

    // 2. Pelo menos uma letra maiúscula
    if (!preg_match('/[A-Z]/', $senhaRaw)) {
        echo json_encode(["erro" => "A senha deve conter pelo menos uma letra maiúscula."]);
        exit;
    }

    // 3. Pelo menos um número
    if (!preg_match('/[0-9]/', $senhaRaw)) {
        echo json_encode(["erro" => "A senha deve conter pelo menos um número."]);
        exit;
    }

    // 4. Pelo menos um caractere especial
    if (!preg_match('/[^A-Za-z0-9]/', $senhaRaw)) {
        echo json_encode(["erro" => "A senha deve conter pelo menos um caractere especial (ex: !@#$)."]);
        exit;
    }
    // ==========================================================

    // hash da senha
    $senha = password_hash($senhaRaw, PASSWORD_DEFAULT);

    // Inserindo o usuário com a escolaridade_id como NULL por padrão
    $sql = "
        INSERT INTO usuario
        (nome, email, senha, escolaridade_id, criacao)
        VALUES
        ('$nome', '$email', '$senha', NULL, CURDATE())
    ";

    if ($conn->query($sql)) {
        echo json_encode(["mensagem" => "Usuário inserido"]);
    } else {
        echo json_encode(["erro" => "Erro ao cadastrar, e-mail já existente."]);
    }
?>