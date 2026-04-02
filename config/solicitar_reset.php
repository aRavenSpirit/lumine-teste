<?php

ob_start();
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP; // Adicione esta linha também!

// Verifique se a pasta se chama PHPMailer ou phpmailer (deve ser idêntico ao Windows)
require __DIR__ . '/PHPMailer/src/Exception.php';
require __DIR__ . '/PHPMailer/src/PHPMailer.php';
require __DIR__ . '/PHPMailer/src/SMTP.php';
require __DIR__ . '/conexao.php';

header("Content-Type: application/json; charset=UTF-8");

// Desativa a exibição de erros no navegador para não quebrar o JSON
ini_set('display_errors', 0);
error_reporting(E_ALL);

$email = $conn->real_escape_string($_POST['email'] ?? '');

if (empty($email)) {
    ob_clean(); // Limpa qualquer lixo do buffer
    echo json_encode(["status" => false, "msg" => "E-mail não fornecido."]);
    exit;
}

// 1. Verifica se o usuário existe
$res = $conn->query("SELECT id_usuario FROM usuario WHERE email = '$email'");

if (!$res || $res->num_rows === 0) {
    ob_clean();
    echo json_encode(["status" => false, "msg" => "E-mail não cadastrado."]);
    exit;
}

// 2. Gera token e expiração
$token = bin2hex(random_bytes(32));
$expira = date("Y-m-d H:i:s", strtotime("+1 hour"));

// 3. Tenta gravar na tabela (Certifique-se que ela existe no DB)
$insert = $conn->query("INSERT INTO recuperacao_senha (email, token, expira_em) VALUES ('$email', '$token', '$expira')");

if (!$insert) {
    ob_clean();
    echo json_encode(["status" => false, "msg" => "Erro ao salvar dados de recuperação."]);
    exit;
}

// 4. Envio do E-mail
$mail = new PHPMailer(true);

try {
    $mail->isSMTP();
    $mail->Host       = 'smtp.gmail.com';
    $mail->SMTPAuth   = true;
    $mail->Username   = 'matheuseuzebio39@gmail.com';
    $mail->Password   = 'jbqlqlkwcfsrhcqn'; // Senha de App do Google
    $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
    $mail->Port       = 587;
    $mail->CharSet    = 'UTF-8';
    $mail->SMTPDebug  = 0; // Mantenha em 0 para não quebrar o JSON

    $mail->setFrom('matheuseuzebio39@gmail.com', 'Sistema');
    $mail->addAddress($email);

    $mail->isHTML(true);
    $mail->Subject = 'Recuperação de Senha';

    $url = "http://localhost/dominando_as_teclas/public/redefinir_senha.html?token=$token";

    $mail->Body = "Olá,<br><br>Clique no link para redefinir sua senha:<br><a href='$url'>$url</a>";

    $mail->send();

    ob_clean(); // Limpa qualquer eco do PHPMailer
    echo json_encode(["status" => true, "msg" => "Link enviado com sucesso!"]);

} catch (Exception $e) {
    ob_clean();
    echo json_encode([
        "status" => false,
        "msg" => "Erro ao enviar: Verifique se sua Senha de App do Google está correta."
    ]);
}