<?php
// Define que a resposta será um JSON
header("Content-Type: application/json; charset=UTF-8");

// Importa a sua conexão (certifique-se de que o caminho está correto)
require "conexao.php"; 

// 1. Recebe os dados enviados pelo JavaScript (redefinir_senha.html)
$data = json_decode(file_get_contents("php://input"), true);

// Verifica se os campos obrigatórios chegaram
if (!isset($data['token']) || !isset($data['senha']) || empty($data['senha'])) {
    echo json_encode(["status" => false, "msg" => "Dados incompletos ou senha vazia."]);
    exit;
}

$token = $conn->real_escape_string($data['token']);
// Criptografa a nova senha usando o mesmo padrão do seu api.php
$nova_senha_hash = password_hash($data['senha'], PASSWORD_DEFAULT);

// 2. Verifica se o token existe na tabela e se ainda não expirou
// O NOW() compara a hora atual com a coluna expira_em
$sql_check = "SELECT email FROM recuperacao_senha WHERE token = '$token' AND expira_em > NOW() LIMIT 1";
$res_check = $conn->query($sql_check);

if ($res_check && $res_check->num_rows > 0) {
    $row = $res_check->fetch_assoc();
    $email = $row['email'];

    // 3. Atualiza a senha na tabela 'usuario' 
    // Usamos o campo 'email' que recuperamos do token para saber qual usuário alterar
    $sql_update = "UPDATE usuario SET senha = '$nova_senha_hash' WHERE email = '$email'";
    
    if ($conn->query($sql_update)) {
        
        // 4. Limpeza: Deleta o token usado para que ele não possa ser reutilizado
        $conn->query("DELETE FROM recuperacao_senha WHERE email = '$email'");

        echo json_encode([
            "status" => true, 
            "msg" => "Senha atualizada com sucesso! Redirecionando para o login..."
        ]);
    } else {
        echo json_encode([
            "status" => false, 
            "msg" => "Erro ao atualizar a senha no banco de dados: " . $conn->error
        ]);
    }
} else {
    // Se o token não for encontrado ou a data/hora atual for maior que expira_em
    echo json_encode([
        "status" => false, 
        "msg" => "Link inválido ou expirado. Solicite uma nova recuperação."
    ]);
}

$conn->close();
?>