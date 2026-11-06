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
    <title>Lumine - Normas</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/normas.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="js/tamanho_fonte.js"></script>
</head>
<body>
    
    <?php renderPublicHeader(); ?>

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