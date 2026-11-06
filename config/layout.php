<?php
    // Função para o Header das Páginas Institucionais / Públicas
    function renderPublicHeader() {
        $estaLogado = isset($_SESSION['usuario_id']) && intval($_SESSION['usuario_id']) > 0;
        $linkInicio = $estaLogado ? "home.php" : "index.php";
?>
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
                    <a href="home.php" class="btn-acessar">HOME</a>
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
<?php
    }

    // Função para o Header do Painel Logado (Home)
    function renderHeader() {
?>
    <link rel="stylesheet" href="./style/dark-mode.css">

    <script>
        if (localStorage.getItem("theme") === "dark") {
            document.body.classList.add("dark-mode");
        }
    </script>
    
    <header class="navbar-home">
        <div class="hamburger-mobile" onclick="toggleSidebar()">☰</div>
        <div class="mobile-logo-central">
            <img src="img/LUMINE.png" alt="Lumine Logo">
        </div>

        <nav class="nav-links-home">
            <li class="item-sobre"><a href="sobre.php">Sobre nós</a></li>
            <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
            <li class="item-novidades"><a href="recomendados.php">Recomendados</a></li>
            <li class="item-quizzes"><a href="todos_quizzes.php">Todos os quizzes</a></li>
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
        $link_logo = ($pagina_atual === 'home.php') ? "../public/index.php" : "home.php";
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
            <a href="sobre.php"><i class="fa-solid fa-circle-info"></i> <span>SOBRE</span></a>
            <a href="duvidas.php"><i class="fa-solid fa-circle-question"></i> <span>DÚVIDAS</span></a>
            <a href="equipe.php"><i class="fa-solid fa-users"></i> <span>EQUIPE</span></a>
            <a href="contato.php"><i class="fa-solid fa-envelope"></i> <span>CONTATO</span></a>
        </div>
        <div class="footer-section">
            <h3>TERMOS E PRIVACIDADE</h3>
            <a href="normas.php"><i class="fa-solid fa-list-check"></i> <span>NORMAS</span></a>
            <a href="termos.php"><i class="fa-solid fa-file-contract"></i> <span>TERMOS DE USO</span></a>
            <a href="privacidade.php"><i class="fa-solid fa-lock"></i> <span>PRIVACIDADE</span></a>
        </div>
        <div class="footer-section">
            <h3>REDES SOCIAIS</h3>
            <a href="https://instagram.com" target="_blank"><i class="fa-brands fa-instagram"></i> <span>INSTAGRAM</span></a>
            <a href="https://youtube.com" target="_blank"><i class="fa-brands fa-youtube"></i> <span>YOUTUBE</span></a>
            <a href="https://tiktok.com" target="_blank"><i class="fa-brands fa-tiktok"></i> <span>TIKTOK</span></a>
            <a href="https://facebook.com" target="_blank"><i class="fa-brands fa-facebook"></i> <span>FACEBOOK</span></a>
        </div>
    </footer>

    <!-- MODAIS GLOBAIS -->
    <div id="modalGlobalSucesso" class="modal-overlay-global" style="display: none;">
        <div class="modal-card-global modal-sucesso-card">
            <div class="modal-icon-wrapper icon-sucesso">
                <i class="fas fa-check-circle"></i>
            </div>
            <h3 id="modalSucessoTitulo" class="modal-titulo-global">SUCESSO!</h3>
            <p id="modalSucessoMensagem" class="modal-mensagem-global">Alterações salvas com sucesso.</p>
            <div class="modal-botoes-global">
                <button type="button" onclick="fecharModalGlobalSucesso()" class="btn-global-ok">OK</button>
            </div>
        </div>
    </div>

    <div id="modalGlobalConfirmar" class="modal-overlay-global" style="display: none;">
        <div class="modal-card-global modal-perigo-card">
            <div class="modal-icon-wrapper icon-perigo">
                <i class="fas fa-exclamation-triangle"></i>
            </div>
            <h3 id="modalConfirmarTitulo" class="modal-titulo-global">TEM CERTEZA?</h3>
            <p id="modalConfirmarMensagem" class="modal-mensagem-global">Deseja realmente excluir este item? Esta ação não poderá ser desfeita.</p>
            <div class="modal-botoes-global">
                <button type="button" onclick="fecharModalGlobalConfirmar()" class="btn-global-cancelar">Não, Cancelar</button>
                <button type="button" id="btnGlobalConfirmarAcao" class="btn-global-confirmar">Sim, Excluir</button>
            </div>
        </div>
    </div>

    <script>
        let callbackConfirmacaoGlobal = null;

        function exibirModalSucesso(mensagem, titulo = "SUCESSO!", callbackFechar = null) {
            document.getElementById('modalSucessoTitulo').innerText = titulo;
            document.getElementById('modalSucessoMensagem').innerText = mensagem;
            
            const modal = document.getElementById('modalGlobalSucesso');
            modal.style.display = 'flex';

            const btnOk = modal.querySelector('.btn-global-ok');
            btnOk.onclick = function() {
                fecharModalGlobalSucesso();
                if (typeof callbackFechar === 'function') {
                    callbackFechar();
                }
            };
        }

        function fecharModalGlobalSucesso() {
            document.getElementById('modalGlobalSucesso').style.display = 'none';
        }

        function exibirModalConfirmacao(mensagem, acaoConfirmar, titulo = "TEM CERTEZA?") {
            document.getElementById('modalConfirmarTitulo').innerText = titulo;
            document.getElementById('modalConfirmarMensagem').innerText = mensagem;
            
            const btnConfirmar = document.getElementById('btnGlobalConfirmarAcao');
            
            btnConfirmar.onclick = async function() {
                btnConfirmar.disabled = true;
                try {
                    if (typeof acaoConfirmar === 'function') {
                        await acaoConfirmar();
                    }
                } catch (e) {
                    console.error("Erro na execução da confirmação:", e);
                } finally {
                    btnConfirmar.disabled = false;
                    fecharModalGlobalConfirmar();
                }
            };

            document.getElementById('modalGlobalConfirmar').style.display = 'flex';
        }

        function fecharModalGlobalConfirmar() {
            document.getElementById('modalGlobalConfirmar').style.display = 'none';
            callbackConfirmacaoGlobal = null;
        }

        if (localStorage.getItem("theme") === "dark") {
            document.body.classList.add("dark-mode");
        }
    </script>
<?php
    }
?>