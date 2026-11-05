<?php
    include_once("../config/session.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumine - Privacidade</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/privacidade.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="js/tamanho_fonte.js"></script>
</head>
<body>
    <nav class="navbar">
        <div class="logo-section">
            <img src="./img/LUMINE.png" alt="Lumine Logo" class="logo-img">
        </div>
        
        <ul class="nav-links">
            <li class="item-sobre"><a href="index.php">Início</a></li>
            <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
            <li class="item-quizzes"><a href="todos_quizzes.php">Todos os quizzes</a></li>
            <li class="item-acessar">
                <?php if (isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0): ?>
                    <a href="home.php" class="btn-acessar">Início</a>
                <?php else: ?>
                    <a href="login.html" class="btn-acessar">Acessar</a>
                <?php endif; ?>
            </li>
        </ul>

        <div class="hamburger" onclick="toggleMenu()">☰</div>
    </nav>

    <main class="main-container">
        <div class="legal-card">
            <h2 class="title"><i class="fa-solid fa-lock"></i> Privacidade</h2>
            <div class="content">
                <p>Seus dados estão seguros. Usamos apenas o necessário para salvar seu progresso nos quizzes.</p>
            </div>
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