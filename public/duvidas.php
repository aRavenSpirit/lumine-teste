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
                    <p>Sim! A Lumine tem como objetivo democratizar o ensino, oferecendo quizzes interativos para todos os estudantes.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>Como salvo meu progresso?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Basta criar uma conta clicando em "Acessar". Assim, todos os seus resultados ficarão salvos no seu perfil, na aba "Histórico".</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>O que aparece na página de Recomendados?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Na página de Recomendados, o sistema filtra e exibe quizzes selecionados de acordo com a sua faixa escolar, facilitando o reforço exato dos conteúdos que você está estudando.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>Consigo revisar minhas respostas depois de jogar?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Sim! Após concluir um quiz, você pode revisar suas respostas para conferir seus acertos e erros, além de acompanhar toda a sua evolução e histórico de progresso na plataforma.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>Como funcionam os comentários nos quizzes?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Cada quiz possui sua própria área de comentários. Nela, você pode deixar dúvidas, opiniões e sugestões específicas sobre aquele desafio para trocar ideias e ajudar os administradores a melhorarem os conteúdos.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>É possível avaliar os quizzes?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Com certeza! Você pode avaliar cada quiz dando uma nota de 0 a 5 estrelas.</p>
                </div>
            </div>

            <div class="accordion-item">
                <button class="accordion-header">
                    <h3>Posso personalizar a aparência do site?</h3>
                    <i class="fa-solid fa-chevron-down"></i>
                </button>
                <div class="accordion-content">
                    <p>Sim! Na área de preferências, é possível mudar as cores da interface (como ativar o modo escuro, e selecionar uma cor para cada matéria) e ajustar o tamanho da letra para tornar sua experiência de estudo muito mais confortável.</p>
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