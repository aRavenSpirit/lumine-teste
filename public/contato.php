<?php
    include_once("../config/session.php");
    $estaLogado = isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0;
    $linkInicio = $estaLogado ? "home.php" : "index.php";

    $status = "";

    // Lógica para processar o formulário quando for enviado
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $nome = filter_var(trim($_POST["nome"] ?? ''), FILTER_SANITIZE_SPECIAL_CHARS);
        $email = filter_var(trim($_POST["email"] ?? ''), FILTER_SANITIZE_EMAIL);
        $assunto_usuario = filter_var(trim($_POST["assunto"] ?? ''), FILTER_SANITIZE_SPECIAL_CHARS);
        $mensagem = filter_var(trim($_POST["mensagem"] ?? ''), FILTER_SANITIZE_SPECIAL_CHARS);

        if (!empty($nome) && !empty($email) && !empty($assunto_usuario) && !empty($mensagem) && filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $para = "matheuseuzebio39@gmail.com";
            $assunto_email = "LUMINE - Contato: " . $assunto_usuario;

            $corpo = "Você recebeu uma nova mensagem através do site LUMINE:\n\n";
            $corpo .= "Nome: " . $nome . "\n";
            $corpo .= "E-mail: " . $email . "\n";
            $corpo .= "Assunto: " . $assunto_usuario . "\n\n";
            $corpo .= "Mensagem:\n" . $mensagem . "\n";

            $headers = "From: " . $email . "\r\n";
            $headers .= "Reply-To: " . $email . "\r\n";
            $headers .= "X-Mailer: PHP/" . phpversion();

            if (@mail($para, $assunto_email, $corpo, $headers)) {
                $status = "sucesso";
            } else {
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

    <nav class="navbar">
        <div class="logo-section">
            <a href="<?php echo $linkInicio; ?>">
                <img src="./img/LUMINE.png" alt="Lumine Logo" class="logo-img">
            </a>
        </div>
        
        <ul class="nav-links">
            <li class="item-sobre"><a href="<?php echo $linkInicio; ?>">Início</a></li>
            <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
            <li class="item-quizzes"><a href="todos_quizzes.php">Todos os quizzes</a></li>
            <li class="item-acessar">
                <?php if ($estaLogado): ?>
                    <a href="home.php" class="btn-acessar">Início</a>
                <?php else: ?>
                    <a href="login.html" class="btn-acessar">Acessar</a>
                <?php endif; ?>
            </li>
        </ul>

        <div class="hamburger" onclick="toggleMenu()">☰</div>
    </nav>

    <div class="mobile-menu" id="mobileMenu">
        <div class="item-sobre"><a href="<?php echo $linkInicio; ?>">Início</a></div>
        <div class="item-novidades"><a href="novidades.php">Novidades</a></div>
        <div class="item-quizzes"><a href="todos_quizzes.php">Todos os quizzes</a></div>
        <div class="item-acessar">
            <?php if ($estaLogado): ?>
                <a href="home.php" class="btn-acessar">Início</a>
            <?php else: ?>
                <a href="login.html" class="btn-acessar">Acessar</a>
            <?php endif; ?>
        </div>
    </div>

    <main class="main-container">
        <div class="contato-card">
            <h1 class="contato-title"><i class="fa-solid fa-envelope"></i> Fale Conosco</h1>
            <p class="contato-descricao">Tem alguma dúvida, crítica ou sugestão? Envie-nos uma mensagem e responderemos o mais rápido possível!</p>

            <?php if ($status == 'sucesso'): ?>
                <div class="alerta sucesso">Mensagem enviada com sucesso!</div>
            <?php elseif ($status == 'erro'): ?>
                <div class="alerta erro">Falha ao enviar mensagem. Tente novamente mais tarde.</div>
            <?php endif; ?>

            <!-- action vazio envia para o próprio arquivo contato.php -->
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