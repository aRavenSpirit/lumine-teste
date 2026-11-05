<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitização dos dados enviados
    $nome = filter_var(trim($_POST["nome"]), FILTER_SANITIZE_SPECIAL_CHARS);
    $email = filter_var(trim($_POST["email"]), FILTER_SANITIZE_EMAIL);
    $assunto_usuario = filter_var(trim($_POST["assunto"]), FILTER_SANITIZE_SPECIAL_CHARS);
    $mensagem = filter_var(trim($_POST["mensagem"]), FILTER_SANITIZE_SPECIAL_CHARS);

    // Validação de campos obrigatórios
    if (empty($nome) || empty($email) || empty($assunto_usuario) || empty($mensagem) || !filter_var($email, FILTER_VALIDATE_EMAIL)) {
        header("Location: contato.php?status=erro");
        exit;
    }

    // E-mail de destino
    $para = "matheuseuzebio39@gmail.com";
    $assunto_email = "LUMINE - Contato: " . $assunto_usuario;

    // Montagem do corpo da mensagem
    $corpo = "Você recebeu uma nova mensagem através do site LUMINE:\n\n";
    $corpo .= "Nome: " . $nome . "\n";
    $corpo .= "E-mail: " . $email . "\n";
    $corpo .= "Assunto: " . $assunto_usuario . "\n\n";
    $corpo .= "Mensagem:\n" . $mensagem . "\n";

    // Cabeçalhos para o e-mail ser entregue corretamente
    $headers = "From: " . $email . "\r\n";
    $headers .= "Reply-To: " . $email . "\r\n";
    $headers .= "X-Mailer: PHP/" . phpversion();

    // Tenta enviar o e-mail através da função nativa do PHP
    if (mail($para, $assunto_email, $corpo, $headers)) {
        header("Location: contato.php?status=sucesso");
    } else {
        header("Location: contato.php?status=erro");
    }
    exit;
} else {
    header("Location: contato.php");
    exit;
}