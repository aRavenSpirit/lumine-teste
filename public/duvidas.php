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
    <title>Lumine - Dúvidas</title>
    <link rel="stylesheet" href="./style/index.css">
    <link rel="stylesheet" href="./style/duvidas.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

    <?php renderPublicHeader(); ?>

    <main class="main-container">
        <h1 class="duvidas-title">Dúvidas Frequentes</h1>

        <div class="accordion">
            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>Como funcionam os quizzes?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Nossos quizzes são dinâmicos e focados no seu aprendizado. Você escolhe a matéria, responde as questões e recebe o resultado na hora!</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>A plataforma é gratuita?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Sim! A Lumine tem como objetivo democratizar o ensino através da gamificação, oferecendo quizzes interativos para todos os estudantes.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>Como salvo meu progresso?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Basta criar uma conta clicando em "Acessar". Assim, todos os seus resultados e badges ficarão salvos no seu perfil.</p>
                </div>
            </div>
        </div>
    </main>

    <script>
        function toggleMenu() {
            const menu = document.getElementById("mobileMenu");
            menu.classList.toggle("active");
        }

        document.querySelectorAll('.accordion-header').forEach(button => {
            button.addEventListener('click', () => {
                const content = button.nextElementSibling;
                button.classList.toggle('active');

                if (button.classList.contains('active')) {
                    content.style.maxHeight = content.scrollHeight + "px";
                } else {
                    content.style.maxHeight = 0;
                }

                document.querySelectorAll('.accordion-header').forEach(other => {
                    if (other !== button) {
                        other.classList.remove('active');
                        other.nextElementSibling.style.maxHeight = 0;
                    }
                });
            });
        });
    </script>
</body>
</html>