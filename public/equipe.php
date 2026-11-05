<?php
    include_once("../config/session.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumine - Equipe</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/equipe.css">
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
            <li class="item-sobre"><a href="sobre.php">Sobre nós</a></li>
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

    <div class="mobile-menu" id="mobileMenu">
        <div class="item-sobre"><a href="sobre.php">Sobre nós</a></div>
        <div class="item-novidades"><a href="novidades.php">Novidades</a></div>
        <div class="item-quizzes"><a href="todos_quizzes.php">Todos os quizzes</a></div>
        <div class="item-acessar">
            <?php if (isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0): ?>
                <a href="home.php" class="btn-acessar">Início</a>
            <?php else: ?>
                <a href="login.html" class="btn-acessar">Acessar</a>
            <?php endif; ?>
        </div>
    </div>

    <main class="main-container">
        <h1 class="equipe-title">Nossa Equipe</h1>

        <div class="equipe-lista">
            <div class="membro-card">
                <div class="foto-circulo m1">
                    <img src="img/equipe/matheus.png" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Integrante 1</span>
                    <span class="membro-cargo">Desenvolvedor</span>
                    <p class="membro-descricao">Focado em criar a melhor experiência técnica, garantindo que os quizzes carreguem instantaneamente e funcionem em qualquer dispositivo.</p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m2">
                    <img src="img/equipe/matheus.png" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Integrante 2</span>
                    <span class="membro-cargo">Design & UX</span>
                    <p class="membro-descricao">Responsável pelas cores e formas que dão vida à Lumine, tornando o estudo algo visualmente prazeroso e intuitivo.</p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m3">
                    <img src="img/equipe/matheus.png" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Integrante 3</span>
                    <span class="membro-cargo">Pedagogia</span>
                    <p class="membro-descricao">Garante que cada pergunta tenha valor educativo, transformando o conteúdo escolar em desafios que realmente ensinam.</p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m4">
                    <img src="img/equipe/matheus.png" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Integrante 4</span>
                    <span class="membro-cargo">Marketing</span>
                    <p class="membro-descricao">Conecta a Lumine com os estudantes, gerenciando nossa comunidade e trazendo novidades sempre que elas surgem.</p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m5">
                    <img src="img/equipe/matheus.png" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Integrante 5</span>
                    <span class="membro-cargo">Conteúdo</span>
                    <p class="membro-descricao">Curador oficial dos quizzes, sempre em busca de curiosidades e fatos interessantes para desafiar o seu conhecimento.</p>
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