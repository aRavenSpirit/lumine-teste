<?php
// Função para o Header (Navbar)
function renderHeader() {
    ?>
    <header class="navbar-home">
        <div class="hamburger-mobile" onclick="toggleSidebar()">☰</div>
        <div class="mobile-logo-central">
            <img src="img/LUMINE.png" alt="Lumine Logo">
        </div>

        <nav class="nav-links-home">
            <li class="item-sobre"><a href="sobre.php">Sobre nós</a></li>
            <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
            <li class="item-quizzes"><a href="home.php">Todos os quizzes</a></li>
            <li class="item-perfil">
                <a href="configuracoes.php" class="perfil-link">
                    <span>Perfil</span>
                    <div class="profile-icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                </a>
            </li>
        </nav>


        <div class="mobile-profile-right">
            <a href="configuracoes.php">
                <div class="profile-icon">
                    <i class="fa-solid fa-user"></i>
                </div>
            </a>
        </div>
    </header>
    <?php
}

function renderSidebar($isQuiz = false) {
    $pagina_atual = basename($_SERVER['SCRIPT_NAME']);
    $link_logo = ($pagina_atual === 'home.php') ? "../public/index.html" : "home.php";
    ?>
    
    <aside class="sidebar" id="sidebar">
        <?php if ($isQuiz): ?>
            <button class="btn-sair-flutuante" onclick="toggleModalSaida(event)" title="Sair do Quiz">
                <i class="fa-solid fa-arrow-left"></i>
                <span class="btn-sair-text">Sair do Quiz</span>
            </button>
        <?php endif; ?>

        <div class="sidebar-header">
            <div class="logo-container">
                <a href="<?php echo $link_logo; ?>">
                    <img src="img/LUMINE.png" alt="Lumine Logo" class="sidebar-logo">
                </a>
            </div>
            <div class="menu-trigger" onclick="toggleSidebar()">
                <i class="fa-solid fa-bars"></i>
            </div>
        </div>

        <nav id="menuMaterias"></nav>
    </aside>

    <div class="mobile-menu" id="mobileMenu">
        <div class="mobile-menu-close" onclick="toggleSidebar()">×</div>
        <div class="mobile-menu-scroll">
            <nav class="nav-links-mobile">
                <?php if ($isQuiz): ?>
                    <li>
                        <a href="#" onclick="toggleModalSaida(event)" style="color: #e74c3c; font-weight: bold;">
                            <i class="fa-solid fa-arrow-left"></i> SAIR DO QUIZ
                        </a>
                    </li>
                <?php endif; ?>
                <li><a href="sobre.php">Sobre nós</a></li>
                <li><a href="novidades.php">Novidades</a></li>
                <li><a href="home.php">Todos os quizzes</a></li>
                <li><a href="perfil.html">Perfil</a></li>
            </nav>
            <hr>
            <div id="menuMateriasMobile"></div>
        </div>
    </div>
    <?php
}
    // Função para o Footer (Rodapé)
    function renderFooter() {
        ?>
        <footer>
            <div class="footer-section">
                <h3>GERAL</h3>
                <a href="sobre.html"><i class="fa-solid fa-circle-info"></i> <span>SOBRE</span></a>
                <a href="duvidas.html"><i class="fa-solid fa-circle-question"></i> <span>DÚVIDAS</span></a>
                <a href="equipe.html"><i class="fa-solid fa-users"></i> <span>EQUIPE</span></a>
                <a href="contato.html"><i class="fa-solid fa-envelope"></i> <span>CONTATO</span></a>
            </div>
            <div class="footer-section">
                <h3>TERMOS E PRIVACIDADE</h3>
                <a href="normas.html"><i class="fa-solid fa-list-check"></i> <span>NORMAS</span></a>
                <a href="termos.html"><i class="fa-solid fa-file-contract"></i> <span>TERMOS DE USO</span></a>
                <a href="privacidade.html"><i class="fa-solid fa-lock"></i> <span>PRIVACIDADE</span></a>
            </div>
            <div class="footer-section">
                <h3>REDES SOCIAIS</h3>
                <a href="https://instagram.com" target="_blank"><i class="fa-brands fa-instagram"></i> <span>INSTAGRAM</span></a>
                <a href="https://youtube.com" target="_blank"><i class="fa-brands fa-youtube"></i> <span>YOUTUBE</span></a>
                <a href="https://tiktok.com" target="_blank"><i class="fa-brands fa-tiktok"></i> <span>TIKTOK</span></a>
                <a href="https://facebook.com" target="_blank"><i class="fa-brands fa-facebook"></i> <span>FACEBOOK</span></a>
            </div>
        </footer>
        <?php
    }
?>