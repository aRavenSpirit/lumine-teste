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

    // 1. CONDIÇÃO: Verifica se o usuário já existe no banco de dados
    $res = $conn->query("SELECT * FROM usuario WHERE email='$email'");

    if ($res->num_rows > 0) {
        // Usuário encontrado: Prossegue com o login e cria a sessão
        $user = $res->fetch_assoc();
        
        $_SESSION['usuario_id'] = $user['id']; 
        $_SESSION['usuario_nome'] = $user['nome'];

        echo json_encode(["status" => true]);
    } else {
        // Usuário NÃO encontrado: Bloqueia o acesso e avisa o usuário
        // Aqui removemos o INSERT para impedir o cadastro automático
        echo json_encode([
            "status" => false, 
            "erro" => "Este e-mail do Google não está cadastrado. Por favor, crie uma conta primeiro."
        ]);
    }
} else {
    echo json_encode(["status" => false, "erro" => "Falha ao obter dados da conta Google."]);
}

$conn->close();
?>