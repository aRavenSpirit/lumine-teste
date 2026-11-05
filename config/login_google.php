<?php
    require "conexao.php";
    header("Content-Type: application/json; charset=UTF-8");
    session_start();

    $data = json_decode(file_get_contents("php://input"), true);
    $token = $data['token'] ?? null;

    if (!$token) {
        echo json_encode(["status" => false, "erro" => "Token não fornecido."]);
        exit;
    }

    $partes = explode(".", $token);
    if (count($partes) < 2) {
        echo json_encode(["status" => false, "erro" => "Token inválido"]);
        exit;
    }

    $payload = json_decode(base64_decode($partes[1]), true);

    if ($payload && isset($payload['email'])) {

        $email = $conn->real_escape_string($payload['email']);
        $nome = $conn->real_escape_string($payload['name'] ?? 'Usuário Google');

        $res = $conn->query("SELECT * FROM usuario WHERE email='$email'");

        if ($res && $res->num_rows > 0) {

            $user = $res->fetch_assoc();
            $_SESSION['usuario_id'] = $user['id']; 
            $_SESSION['usuario_nome'] = $user['nome'];

            $precisa_escolaridade = is_null($user['escolaridade_id']) || $user['escolaridade_id'] == 0;
            
            echo json_encode([
                "status" => true,
                "precisa_escolaridade" => $precisa_escolaridade
            ]);

        } else {

            // Cria usuário novo sem escolaridade prévia
            $sql_insert = "
                INSERT INTO usuario (nome, email, senha, escolaridade_id, criacao) 
                VALUES ('$nome', '$email', NULL, NULL, CURDATE())
            ";
            
            if ($conn->query($sql_insert)) {

                $_SESSION['usuario_id'] = $conn->insert_id;
                $_SESSION['usuario_nome'] = $nome;

                echo json_encode([
                    "status" => true,
                    "precisa_escolaridade" => true
                ]);

            } else {

                echo json_encode([
                    "status" => false, 
                    "erro" => "Erro ao criar conta: " . $conn->error
                ]);
            }
        }
    } else {

        echo json_encode(["status" => false, "erro" => "Falha ao obter dados do Google."]);
        
    }

    $conn->close();
?>