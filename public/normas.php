<?php
    include_once("../config/session.php");
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lumine - Normas</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="js/tamanho_fonte.js"></script>
    <style>
        /* Ajuste para o conteúdo não subir para trás do header fixo */
        body { padding-top: 100px; }
        
        .main-container { display: flex; justify-content: center; padding: 40px 20px; }
        
        .legal-card { 
            width: 100%; 
            max-width: 850px; 
            background: rgba(255, 255, 255, 0.9); 
            border-radius: 35px; 
            padding: 45px; 
            box-shadow: 0 10px 30px rgba(0,0,0,0.1); 
        }
        
        .title { 
            font-family: 'gliker', sans-serif; 
            color: #00bf63; 
            font-size: 35px; 
            margin-bottom: 25px; 
            text-transform: uppercase; 
            display: flex; 
            align-items: center; 
            gap: 15px; 
        }
        
        .content { font-family: 'Open_Sans', sans-serif; color: #444; line-height: 1.8; font-size: 17px; }
    </style>
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
            <h2 class="title"><i class="fa-solid fa-list-check"></i> Normas</h2>
            <div class="content">
                <p>Respeito e foco no aprendizado são as bases da nossa comunidade. Siga nossas diretrizes para uma melhor experiência.</p>
            </div>
        </div>
    </main>

    <script>
        function toggleMenu() { 
            document.getElementById("mobileMenu").classList.toggle("active"); 
        }
    </script>
</body>
</html>