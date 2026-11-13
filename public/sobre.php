<?php
    include_once("../config/session_public.php");
    $estaLogado = isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0;
    $linkInicio = $estaLogado ? "home.php" : "index.php";
    include_once("../config/layout.php");
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

    <?php renderPublicHeader(); ?>

    <main class="main-container">
        <div class="content-card">
            <h1 class="title-sobre">Conheça a LUMINE</h1>
            
            <div class="text-sobre">
                <p>Na <strong>LUMINE</strong>, acreditamos que o conhecimento é resultado de dedicação e esforço. Aprender não precisa ser uma tarefa difícil, mas proveitosa.</p>
                <p>O nosso objetivo é oferecer conteúdos de qualidade para todas as matérias, proporcionando uma experiência onde cada estudante pode testar a sua rapidez, superar limites e dominar qualquer assunto de forma leve e divertida.</p>
            </div>

            <div class="highlight-box">
                "Desafie a sua mente no melhor site de quizzes interativos. Estamos preparados para te receber!"
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