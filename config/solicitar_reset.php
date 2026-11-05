<?php
    // Evita qualquer saída antes do JSON
    ob_start();

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;
    use PHPMailer\PHPMailer\SMTP;

    header("Content-Type: application/json; charset=UTF-8");

    // Aumenta o tempo limite de execução do PHP para evitar timeout abrupto
    set_time_limit(60);
    ini_set('display_errors', 0);
    error_reporting(E_ALL);

    $mail = null;

    try {
        require __DIR__ . '/PHPMailer/src/Exception.php';
        require __DIR__ . '/PHPMailer/src/PHPMailer.php';
        require __DIR__ . '/PHPMailer/src/SMTP.php';
        require __DIR__ . '/conexao.php';

        $mail = new PHPMailer(true);

        $email = $conn->real_escape_string($_POST['email'] ?? '');

        if (empty($email)) {
            ob_clean();
            echo json_encode(["status" => false, "msg" => "E-mail não fornecido."]);
            exit;
        }

        // 1. Verifica se o usuário existe
        $res = $conn->query("SELECT id FROM usuario WHERE email = '$email'");

        if (!$res || $res->num_rows === 0) {
            ob_clean();
            echo json_encode(["status" => false, "msg" => "E-mail não cadastrado em nosso sistema."]);
            exit;
        }

        // 2. Gera token e tempo de expiração
        $token = bin2hex(random_bytes(32));
        $expira = date("Y-m-d H:i:s", strtotime("+1 hour"));

        // 3. Grava no banco de dados
        $insert = $conn->query("INSERT INTO recuperacao_senha (email, token, expira_em) VALUES ('$email', '$token', '$expira')");

        if (!$insert) {
            ob_clean();
            echo json_encode(["status" => false, "msg" => "Erro ao salvar solicitação no banco de dados."]);
            exit;
        }

        // 4. Configurações SMTP do Gmail
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        $mail->Username   = 'matheuseuzebio39@gmail.com';
        $mail->Password   = 'jbqlqlkwcfsrhcqn'; // Senha de App do Google
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; // Usar SMTPS para porta 465
        $mail->Port       = 465;
        $mail->CharSet    = 'UTF-8';
        $mail->SMTPDebug  = 0;
        $mail->Timeout    = 15; // Define limite de 15s para tentativa de conexão

        // CORREÇÃO DO TIMEOUT EM LOCALHOST: Ignora erros de validação SSL local
        $mail->SMTPOptions = array(
            'ssl' => array(
                'verify_peer'       => false,
                'verify_peer_name'  => false,
                'allow_self_signed' => true
            )
        );

        $mail->setFrom('matheuseuzebio39@gmail.com', 'Suporte Lumine');
        $mail->addAddress($email);

        $mail->isHTML(true);
        $mail->Subject = 'Recuperação de Senha';

        $url = "http://localhost/lumine-teste/public/redefinir_senha.html?token=$token";

        $mail->Body = "Olá,<br><br>Clique no link abaixo para redefinir sua senha:<br><a href='$url'>$url</a>";

        $mail->send();

        ob_clean();
        echo json_encode(["status" => true, "msg" => "Link enviado com sucesso! Verifique sua caixa de entrada."]);

    } catch (Exception $e) {
        ob_clean();
        $erroMsg = $mail ? $mail->ErrorInfo : $e->getMessage();
        echo json_encode([
            "status" => false,
            "msg" => "Erro ao enviar e-mail: " . $erroMsg
        ]);
    } catch (\Throwable $th) {
        ob_clean();
        echo json_encode([
            "status" => false,
            "msg" => "Erro interno no servidor: " . $th->getMessage()
        ]);
    }
?>