<?php
    include_once("../config/session.php");
    $estaLogado = isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0;
    $linkInicio = $estaLogado ? "home.php" : "index.php";
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