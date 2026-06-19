<?php
    require "conexao.php";
    session_start();

    // Recebe o token enviado pelo fetch do login.html
    $data = json_decode(file_get_contents("php://input"), true);
    $token = $data['token'] ?? null;

    if (!$token) {
        echo json_encode(["status" => false, "erro" => "Token não fornecido."]);
        exit;
    }

    // Decodificando o payload do JWT enviado pelo Google
    $partes = explode(".", $token);
    if (count($partes) < 2) {
        echo json_encode(["status" => false, "erro" => "Token inválido"]);
        exit;
    }

    $payload = json_decode(base64_decode($partes[1]), true);

    if ($payload && isset($payload['email'])) {
        $email = $conn->real_escape_string($payload['email']);
        $nome = $conn->real_escape_string($payload['name'] ?? 'Usuário Google');

        // 1. CONDIÇÃO: Verifica se o usuário já existe no banco de dados
        $res = $conn->query("SELECT * FROM usuario WHERE email='$email'");

        if ($res->num_rows > 0) {
            // Usuário encontrado: Prossegue com o login e cria a sessão
            $user = $res->fetch_assoc();
            
            $_SESSION['usuario_id'] = $user['id']; 
            $_SESSION['usuario_nome'] = $user['nome'];

            $precisa_escolaridade = is_null($user['escolaridade_id']) || $user['escolaridade_id'] == 0;
            
            echo json_encode([
                "status" => true,
                "precisa_escolaridade" => $precisa_escolaridade
            ]);
        } else {
            // REGRA SOLICITADA: Se não existir, cria a conta automaticamente!
            // Inserimos a senha como NULL (já que logou via Google) e escolaridade_id como NULL
            $sql_insert = "
                INSERT INTO usuario (nome, email, senha, escolaridade_id, criacao) 
                VALUES ('$nome', '$email', NULL, NULL, CURDATE())
            ";
            
            if ($conn->query($sql_insert)) {
                // Conta criada! Pegamos o ID gerado para abrir a sessão
                $_SESSION['usuario_id'] = $conn->insert_id;
                $_SESSION['usuario_nome'] = $nome;

                // Como acabou de se cadastrar com Google, com certeza precisa selecionar a escolaridade
                echo json_encode([
                    "status" => true,
                    "precisa_escolaridade" => true
                ]);
            } else {
                echo json_encode([
                    "status" => false, 
                    "erro" => "Erro ao criar conta automática via Google."
                ]);
            }
        }
    } else {
        echo json_encode(["status" => false, "erro" => "Falha ao obter dados do perfil do Google."]);
    }
    $conn->close();
?>