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
    <title>Lumine - Equipe</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/equipe.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <script src="js/tamanho_fonte.js"></script>
</head>
<body>

    <?php renderPublicHeader(); ?>

    <main class="main-container">

        <div class="equipe-lista">
            <div class="membro-card">
                <div class="foto-circulo m1">
                    <img src="img/equipe/breno.webp" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Breno Gomes</span>
                    <span class="membro-cargo">Desenvolvedor Front-End</span>
                    <p class="membro-descricao"> Responsável por proporcionar uma experiência de qualidade para o usuário, por meio de animações e interatividade. </p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m2">
                    <img src="img/equipe/lucas.webp" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Lucas Rosa</span>
                    <span class="membro-cargo">Desenvolvedor Back-End</span>
                    <p class="membro-descricao">Focado em criar a melhor experiência técnica, garantindo que os quizzes carreguem instantaneamente e funcionem em qualquer dispositivo.</p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m3">
                    <img src="img/equipe/manu.webp" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Manuella Anunciato</span>
                    <span class="membro-cargo">Administração do Banco de Dados</span>
                    <p class="membro-descricao">Garante que cada usuário possa usufruir da LUMINE de maneira segura. Além disso, também foi responsável por estruturar os principais Quizzes disponíveis. </p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m4">
                    <img src="img/equipe/matheus.webp" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Matheus Euzébio</span>
                    <span class="membro-cargo">Desenvolvedor Back-End</span>
                    <p class="membro-descricao">Conecta a Lumine com os estudantes, possibilitando um bom aproveitamento da plataforma e a garantia da usabilidade e bom desempenho. </p>
                </div>
            </div>

            <div class="membro-card">
                <div class="foto-circulo m5">
                    <img src="img/equipe/victoria.webp" alt="Foto">
                </div>
                <div class="info-container">
                    <span class="membro-nome">Victoria Espirito Santo</span>
                    <span class="membro-cargo">Desenvolvedora Front-End</span>
                    <p class="membro-descricao">Inseriu as cores que demonstram a identidade da LUMINE, promovendo uma maior proximidade entre os usuários e a plataforma. </p>
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