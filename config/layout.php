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
                <li class="item-sobre"><a href="#">Sobre nós</a></li>
                <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
                <li class="item-quizzes"><a href="#">Todos os quizzes</a></li>
                <a href="../config/logout.php">Sair</a>
                <li class="item-perfil">
                    <a href="perfil.html" class="perfil-link">
                        <span>Perfil</span>
                        <div class="profile-icon">
                            <i class="fa-solid fa-user"></i>
                        </div>
                    </a>
                </li>
            </nav>

            <div class="mobile-profile-right">
                <a href="perfil.html">
                    <div class="profile-icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                </a>
            </div>
        </header>
        <?php
    }

    // Função para a Sidebar
    function renderSidebar() {
        ?>
        <aside class="sidebar" id="sidebar">
            <div class="sidebar-header">
                <div class="logo-container">
                    <a href="home.php">
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
                    <li><a href="#">Sobre nós</a></li>
                    <li><a href="novidades.php">Novidades</a></li>
                    <li><a href="#">Todos os quizzes</a></li>
                    <li><a href="perfil.html">Perfil</a></li>
                </nav>
                <hr>
                <div id="menuMateriasMobile"></div>
            </div>
        </div>
        <?php
    }

    // Função para o Footer
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