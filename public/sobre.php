<?php
    include_once("../config/session.php");
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumine - Sobre Nós</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="./style/sobre.css">
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
                <a href="home.php" class="btn-acessar">Acessar</a>
            </li>
        </ul>

        <div class="hamburger" onclick="toggleMenu()">☰</div>
    </nav>

    <div class="mobile-menu" id="mobileMenu">
        <div class="item-sobre"><a href="index.php">Início</a></div>
        <div class="item-novidades"><a href="novidades.php">Novidades</a></div>
        <div class="item-quizzes"><a href="todos_quizzes.php">Todos os quizzes</a></div>
        <div class="item-acessar"><a href="login.html" class="btn-acessar">Acessar</a></div>
    </div>

    <main class="main-container">
        <div class="content-card">
            <h1 class="title-sobre">Conheça a Lumine</h1>
            
            <div class="text-sobre">
                <p>Na <strong>LUMINE</strong>, acreditamos que o conhecimento não precisa de ser uma tarefa árdua, mas sim um desafio estimulante. Somos uma plataforma focada em transformar a educação através da interatividade e da gamificação.</p>
                <p>O nosso objetivo é oferecer conteúdos de qualidade para todas as matérias, desde as Ciências Exatas até às Humanidades, proporcionando uma experiência onde cada estudante pode testar a sua rapidez, superar limites e dominar qualquer assunto de forma leve e divertida.</p>
            </div>

            <div class="highlight-box">
                "Desafie a sua mente no melhor site de quizzes interativos. Entre no jogo e prove que está pronto!"
            </div>

            <div class="stats-grid">
                <div class="stat-item">
                    <i class="fa-solid fa-bolt"></i>
                    <h4>Dinâmico</h4>
                    <p>Quizzes rápidos e diretos.</p>
                </div>
                <div class="stat-item">
                    <i class="fa-solid fa-graduation-cap"></i>
                    <h4>Educativo</h4>
                    <p>Focado na sua evolução.</p>
                </div>
                <div class="stat-item">
                    <i class="fa-solid fa-trophy"></i>
                    <h4>Interativo</h4>
                    <p>Aprenda jogando.</p>
                </div>
            </div>
        </div>
    </main>

    <script>
        function toggleMenu() {
            const menu = document.getElementById("mobileMenu");
            menu.classList.toggle("active");
        }
    </script>
</body>
</html>