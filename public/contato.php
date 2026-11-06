<?php
    include_once("../config/session_public.php");
    $estaLogado = isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0;
    $linkInicio = $estaLogado ? "home.php" : "index.php";
    include_once("../config/layout.php");

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    $status = "";

    // Lógica para processar o formulário quando for enviado via POST
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = filter_var(trim($_POST["nome"] ?? ''), FILTER_SANITIZE_SPECIAL_CHARS);
        $email_remetente = filter_var(trim($_POST["email"] ?? ''), FILTER_SANITIZE_EMAIL);
        $assunto_usuario = filter_var(trim($_POST["assunto"] ?? ''), FILTER_SANITIZE_SPECIAL_CHARS);
        $mensagem = filter_var(trim($_POST["mensagem"] ?? ''), FILTER_SANITIZE_SPECIAL_CHARS);

        if (!empty($nome) && !empty($email_remetente) && !empty($assunto_usuario) && !empty($mensagem) && filter_var($email_remetente, FILTER_VALIDATE_EMAIL)) {
            
            try {
                // Inclui os arquivos do PHPMailer da pasta config (mesmo caminho do solicitar_reset.php)
                require_once __DIR__ . '/../config/PHPMailer/src/Exception.php';
                require_once __DIR__ . '/../config/PHPMailer/src/PHPMailer.php';
                require_once __DIR__ . '/../config/PHPMailer/src/SMTP.php';

                $mail = new PHPMailer(true);

                // Configurações SMTP do Gmail (iguais ao solicitar_reset.php)
                $mail->isSMTP();
                $mail->Host       = 'smtp.gmail.com';
                $mail->SMTPAuth   = true;
                $mail->Username   = 'lumineprojeto@gmail.com';
                $mail->Password   = 'mdblltgkgsavilsk'; // Senha de App do Google
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
                $mail->Port       = 465;
                $mail->CharSet    = 'UTF-8';
                $mail->Timeout    = 15;

                // Opções de SSL para bypass no localhost
                $mail->SMTPOptions = array(
                    'ssl' => array(
                        'verify_peer'       => false,
                        'verify_peer_name'  => false,
                        'allow_self_signed' => true
                    )
                );

                // Remetente e Destinatário
                $mail->setFrom('lumineprojeto@gmail.com', 'Contato Lumine');
                $mail->addAddress('lumineprojeto@gmail.com'); // Seu e-mail para receber as mensagens
                $mail->addReplyTo($email_remetente, $nome); // Permite responder diretamente ao usuário

                // Conteúdo do e-mail
                $mail->isHTML(true);
                $mail->Subject = 'LUMINE - Contato: ' . $assunto_usuario;

                $mail->Body = "
                    <h2>Nova mensagem enviada pelo formulário de contato</h2>
                    <p><strong>Nome:</strong> {$nome}</p>
                    <p><strong>E-mail:</strong> {$email_remetente}</p>
                    <p><strong>Assunto:</strong> {$assunto_usuario}</p>
                    <br>
                    <p><strong>Mensagem:</strong></p>
                    <p>" . nl2br($mensagem) . "</p>
                ";

                $mail->send();
                $status = "sucesso";

            } catch (Exception $e) {
                $status = "erro";
            }
        } else {
            $status = "erro";
        }
    }
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumine - Contato</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/contato.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

    <?php renderPublicHeader(); ?>

    <main class="main-container">
        <div class="contato-card">
            <h1 class="contato-title"><i class="fa-solid fa-envelope"></i> Fale Conosco</h1>
            <p class="contato-descricao">Tem alguma dúvida, crítica ou sugestão? Envie-nos uma mensagem e responderemos o mais rápido possível!</p>

            <?php if ($status == 'sucesso'): ?>
                <div class="alerta sucesso">Mensagem enviada com sucesso!</div>
            <?php elseif ($status == 'erro'): ?>
                <div class="alerta erro">Falha ao enviar mensagem. Tente novamente mais tarde.</div>
            <?php endif; ?>

            <form class="contato-form" action="contato.php" method="POST">
                <div class="form-group">
                    <label for="nome">Nome Completo</label>
                    <input type="text" id="nome" name="nome" placeholder="Digite seu nome" required>
                </div>

                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="email" id="email" name="email" placeholder="Digite seu e-mail" required>
                </div>

                <div class="form-group">
                    <label for="assunto">Assunto</label>
                    <input type="text" id="assunto" name="assunto" placeholder="Qual o motivo do contato?" required>
                </div>

                <div class="form-group">
                    <label for="mensagem">Mensagem</label>
                    <textarea id="mensagem" name="mensagem" rows="5" placeholder="Escreva sua mensagem aqui..." required></textarea>
                </div>

                <button type="submit" class="btn-enviar">Enviar Mensagem</button>
            </form>
        </div>
    </main>

    <script>
        function toggleMenu() {
            const menu = document.getElementById("mobileMenu");
            if (menu) menu.classList.toggle("active");
        }
    </script>
</body>
</html>