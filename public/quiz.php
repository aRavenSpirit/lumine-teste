<?php
       include_once("../config/session.php");
       include_once("../config/layout.php"); // Inclui o layout padrão
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resolvendo Quiz - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="style/quiz.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
</head>
<body>

    <?php renderSidebar(true); // Ativa o botão de sair ?>

    <div class="main-container" id="mainContainer">

        <?php renderHeader(); ?>

        <main class="quiz-main-section">
            <header id="quiz-header">
                <div>
                    <h1 id="quiz-titulo">Quiz Interativo</h1>
                    <p>Matéria: <span id="quiz-materia">Carregando...</span> | Conteúdo: <span id="quiz-conteudo">Carregando...</span></p>
                </div>
                <div id="cronometro">Tempo: 00:00</div>
            </header>

            <hr style="width: 100%; max-width: 850px; border: 1px solid #e6f5ff; margin: 10px 0 20px 0;">

            <div id="quiz-container">
                <div id="pergunta-atual">
                    <!-- Pergunta carregada dinamicamente pelo resolucao_quiz.js -->
                </div>          
            </div>

            <footer id="quiz-controls">
                <button id="btn-voltar" onclick="perguntaAnteriorOpcao()" style="display:none;">Anterior</button>
                <span id="progresso">Pergunta 1 de X</span>
                <button id="btn-proximo" onclick="proximaPerguntaOpcao()">Próximo</button>
                <button id="btn-finalizar" onclick="finalizarQuiz()" style="display:none;">Finalizar e Ver Resultado</button>
                <button id="btn-home-revisao" onclick="window.location.href='home.php'" style="display:none; background-color: #3498db; color: white;">Voltar para a Home</button>
            </footer>
        </main>

    </div>

    <!-- MODAL DE RESULTADO FINAL -->
    <div id="modal-resultado" style="display: none;">
        <div class="modal-resultado-card">
            <div class="modal-resultado-topo">
                <h2 id="modal-titulo-dinamico">QUIZ CONCLUÍDO!!</h2>
            </div>

            <h3 class="modal-resultado-subtitulo">RESULTADOS FINAIS:</h3>

            <div class="modal-resultado-grid">
                <div class="resultado-box box-tempo">
                    <span class="resultado-label">TEMPO REALIZADO</span>
                    <div class="resultado-valor" id="modal-tempo">00:00</div>
                </div>

                <div class="resultado-box box-acertos">
                    <span class="resultado-label">QUANTIDADE DE ACERTOS</span>
                    <div class="resultado-valor" id="modal-acertos">0</div>
                </div>

                <div class="resultado-box box-erros">
                    <span class="resultado-label">QUANTIDADE DE ERROS</span>
                    <div class="resultado-valor" id="modal-erros">0</div>
                </div>
            </div>
            
            <button class="btn-final" onclick="revisarRespostas()">Revisar Respostas</button>
            <button class="btn-final" onclick="window.location.href='comentario.php'">Fazer comentário</button>
            <button id="btn-modal-home" onclick="abrirModalAvaliacaoOuSair()">
                Avançar <i class="fas fa-arrow-right"></i>
            </button>
        </div>
    </div>  

    <!-- MODAL DE CONFIRMAÇÃO DE SAÍDA -->
    <div class="modal-confirmar-saida" id="modal-confirmar-saida" style="display: none;">
        <div class="modal-confirmar-saida-card">
            <h2>Tem certeza que deseja sair?</h2>
            <p>Se você sair agora, perderá todo o progresso do quiz atual.</p>
            
            <div class="modal-buttons">
                <button id="btn-confirmar-saida" class="btn-secondary" onclick="confirmarSaida()">Sim, Sair</button>
                <button id="btn-cancelar-saida" class="btn-primary" onclick="fecharModalSaida()">Não, Continuar</button>
            </div>
        </div>
    </div>

    <!-- MODAL DE AVALIAÇÃO COM ESTRELAS -->
    <div id="modal-avaliacao" class="modal-avaliacao" style="display: none;">
        <div id="container-avaliacao" class="modal-content text-center">
            <h2>Avalie este Quiz</h2>
            
            <div class="rating-stars" id="ratingStarsContainer">
                <i class="fa-regular fa-star" data-value="1"></i>
                <i class="fa-regular fa-star" data-value="2"></i>
                <i class="fa-regular fa-star" data-value="3"></i>
                <i class="fa-regular fa-star" data-value="4"></i>
                <i class="fa-regular fa-star" data-value="5"></i>
            </div>

            <p>Sua avaliação foi de <span id="avaliacao-valor">0</span> estrelas</p>

            <div class="modal-buttons">
                <button id="btn-enviar-avaliacao" class="btn-primary" onclick="enviarAvaliacaoQuiz()" disabled>Enviar Avaliação</button>
                <button onclick="window.location.href='home.php'" class="btn-secondary">Pular</button>
            </div>
        </div>
    </div>

    <!-- SCRIPT DE RESOLUÇÃO NATIVO -->
    <script src="js/resolucao_quiz.js"></script>

    <script>
        // Declarando as rotas da API para evitar erros no console
        const apiHome = "../config/home.php";
        const apiConfig = "../config/quiz.php"; // <--- Rota unificada para ações e dados do Quiz

        let notaSelecionada = 0;

        window.addEventListener('load', () => {
            carregarMenuSidebarQuiz();
            carregarUsuario();
            inicializarSistemaDeEstrelas();
        });

        // 1. ANIMAÇÕES LATERAIS E TRANSIÇÕES DE PERGUNTA
        function proximaPerguntaOpcao() {
            const card = document.getElementById('pergunta-atual');
            if (card) {
                card.classList.remove('slide-proximo', 'slide-anterior');
                void card.offsetWidth; // Reset de animação do navegador
                card.classList.add('slide-proximo');
            }
            if (typeof proximaPergunta === "function") {
                proximaPergunta();
            }
        }

        function perguntaAnteriorOpcao() {
            const card = document.getElementById('pergunta-atual');
            if (card) {
                card.classList.remove('slide-proximo', 'slide-anterior');
                void card.offsetWidth; // Reset de animação do navegador
                card.classList.add('slide-anterior');
            }
            if (typeof perguntaAnterior === "function") {
                perguntaAnterior();
            }
        }

        // 2. NAVEGAÇÃO DA SIDEBAR E MATÉRIAS
        function carregarMenuSidebarQuiz() {
            fetch(apiHome + "?tipo=materias")
                .then(r => r.json())
                .then(dados => {
                    let menuHTML = "";
                    dados.forEach(m => {
                        let nomeCodificado = encodeURIComponent(m.nome_materia);
                        menuHTML += `<a href="home.php?materia_id=${m.id}&materia_nome=${nomeCodificado}"><span>${m.nome_materia}</span></a>`;
                    });
                    
                    const menuDesktop = document.getElementById("menuMaterias");
                    const menuMobile = document.getElementById("menuMateriasMobile");
                    
                    if (menuDesktop) menuDesktop.innerHTML = menuHTML;
                    if (menuMobile) menuMobile.innerHTML = menuHTML;
                })
                .catch(err => console.error("Erro ao carregar menu na página de quiz:", err));
        }

        function toggleSidebar() {
            if (window.innerWidth <= 900) {
                const mobileMenu = document.getElementById('mobileMenu');
                if (mobileMenu) {
                    mobileMenu.classList.toggle('active');
                }
                document.body.classList.toggle('no-scroll');
            } else {
                const sidebar = document.getElementById('sidebar');
                const main = document.getElementById('mainContainer');
                
                if (sidebar) sidebar.classList.toggle('open');
                if (main) main.classList.toggle('sidebar-open');
            }
        }

        // 3. REVISÃO DE RESPOSTAS
        function revisarRespostas() {
            const modal = document.getElementById('modal-resultado');
            if (modal) {
                modal.style.display = 'none';
            }

            const btnAnterior = document.getElementById('btn-voltar');
            if (btnAnterior) btnAnterior.disabled = false;

            const btnProximo = document.getElementById('btn-proximo');
            if (btnProximo) btnProximo.disabled = false;

            const btnFinalizar = document.getElementById('btn-finalizar');
            if (btnFinalizar) btnFinalizar.style.display = 'none';

            const btnHomeRevisao = document.getElementById('btn-home-revisao');
            if (btnHomeRevisao) btnHomeRevisao.style.display = 'none';

            const controles = document.getElementById('quiz-controls');
            if (controles) {
                controles.style.pointerEvents = 'auto';
                controles.style.opacity = '1';
            }

            if (typeof emModoRevisao !== 'undefined') emModoRevisao = true;
            if (typeof indicePergunta !== 'undefined') indicePergunta = 0;
            if (typeof renderizarPergunta === 'function') renderizarPergunta();
        }

        // 4. SISTEMA DE AVALIAÇÃO POR ESTRELAS (INTERATIVO)
        function inicializarSistemaDeEstrelas() {
            const stars = document.querySelectorAll('#ratingStarsContainer i');
            const valorSpan = document.getElementById('avaliacao-valor');
            const btnEnviar = document.getElementById('btn-enviar-avaliacao');

            stars.forEach(star => {
                star.addEventListener('click', function() {
                    notaSelecionada = parseInt(this.getAttribute('data-value'));
                    if (valorSpan) valorSpan.innerText = notaSelecionada;
                    if (btnEnviar) btnEnviar.disabled = false;

                    stars.forEach(s => {
                        const val = parseInt(s.getAttribute('data-value'));
                        if (val <= notaSelecionada) {
                            s.classList.remove('fa-regular');
                            s.classList.add('fa-solid');
                        } else {
                            s.classList.remove('fa-solid');
                            s.classList.add('fa-regular');
                        }
                    });
                });
            });
        }

        function abrirModalAvaliacaoOuSair() {
            document.getElementById('modal-resultado').style.display = 'none';
            
            // Verifica se o usuário já avaliou a plataforma antes de exibir o modal
            fetch(apiConfig + "?tipo=checar_avaliacao")
                .then(r => r.json())
                .then(data => {
                    if (data.avaliou) {
                        window.location.href = 'home.php';
                    } else {
                        document.getElementById('modal-avaliacao').style.display = 'flex';
                    }
                })
                .catch(() => {
                    window.location.href = 'home.php';
                });
        }

        function enviarAvaliacaoQuiz() {
            const urlParams = new URLSearchParams(window.location.search);
            const quizId = urlParams.get('id') || 0;

            if (notaSelecionada === 0) return;

            fetch(apiConfig + "?tipo=salvar_feedback", {
                method: "POST",
                headers: { "Content-Type": "application/json" },
                body: JSON.stringify({
                    quiz_id: quizId,
                    nota: notaSelecionada
                })
            })
            .then(r => r.json())
            .then(res => {
                window.location.href = 'home.php';
            })
            .catch(() => {
                window.location.href = 'home.php';
            });
        }

        // 5. CARREGAMENTO DOS DADOS DO USUÁRIO NO HEADER E DROPDOWN
        function carregarUsuario() {
            fetch(apiHome + "?tipo=usuario")
                .then(r => r.json())
                .then(u => {
                    const linkPerfilHeader = document.querySelector('.item-perfil a');
                    if (linkPerfilHeader && u.foto_perfil) {
                        const iconeUsuario = linkPerfilHeader.querySelector('.profile-icon');
                        if (iconeUsuario) {
                            iconeUsuario.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                        }
                    }
                    
                    const linkPerfilMobile = document.querySelector('.mobile-profile-right .profile-icon');
                    if (linkPerfilMobile && u.foto_perfil) {
                        linkPerfilMobile.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                    }

                    const itemPerfil = document.querySelector('.item-perfil');
                    if (itemPerfil) {
                        const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                        if (antigoDropdown) antigoDropdown.remove();

                        const fotoHtml = u.foto_perfil 
                            ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                            : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                        const dropdown = document.createElement('div');
                        dropdown.className = 'perfil-dropdown';
                        dropdown.innerHTML = `
                            <div class="avatar-upload-container">
                                <div id="avatarWrapper">
                                    ${fotoHtml}
                                </div>
                            </div>
                            <h4 style="text-align: center; margin-top: 8px;">Minha Conta</h4>
                            <hr>
                            <p><strong>Nome:</strong> ${u.nome || "Não informado"}</p>
                            <p><strong>E-mail:</strong> ${u.email || "Não informado"}</p>
                            <p><strong>Nível:</strong> ${u.nome_escolaridade || "Não informado"}</p>
                            <hr>
                            <a href="../config/logout.php" class="btn-logout">
                                <i class="fas fa-sign-out-alt"></i> Sair da Conta
                            </a>
                        `;
                        itemPerfil.appendChild(dropdown);
                    }
                })
                .catch(err => console.error("Erro ao carregar dados do usuário:", err));
        }

        // 6. CONTROLE DO MODAL DE SAÍDA
        function abrirModalSaida() {
            document.getElementById('modal-confirmar-saida').style.display = 'flex';
        }

        function fecharModalSaida() {
            document.getElementById('modal-confirmar-saida').style.display = 'none';
        }

        function confirmarSaida() {
            window.location.href = 'home.php';
        }
    </script>
</body>
</html>