<?php
        include_once("../config/session.php");
        include_once("../config/layout.php"); // Inclui o novo arquivo
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
    <script src="js/tamanho_fonte.js"></script>
</head>
<body>

        
    <?php renderSidebar(true); // Ativa o botão de sair! ?>

    <div class="main-container" id="mainContainer">

        <?php renderHeader(); ?>

        <main class="quiz-main-section">
            <header id="quiz-header">
                <div>
                    <h1 id="quiz-titulo">Quiz Interativo</h1>
                    <p>Matéria: <span id="quiz-materia">Matemática</span> | Conteúdo: <span id="quiz-conteudo">Operações e Geometria</span></p>
                </div>
                <div id="cronometro">Tempo: 00:00</div>
            </header>

            <hr style="width: 100%; max-width: 850px; border: 1px solid #e6f5ff; margin: 10px 0 20px 0;">

            <div id="quiz-container">
                <div id="pergunta-atual">
                    </div>          
            </div>

            <footer id="quiz-controls">
                <button id="btn-voltar" onclick="perguntaAnteriorOpcao()" style="display:none;">Anterior</button>
                <span id="progresso">Pergunta 1 de X</span>
                <button id="btn-proximo" onclick="proximaPerguntaOpcao()">Próximo</button>
                <button id="btn-finalizar" onclick="finalizarQuiz()" style="display:none;">Finalizar e Ver Resultado</button>
                <button id="btn-home-revisao" onclick="window.location.href='home.php'" style="display:none; background-color: #3498db; color: white;">Voltar para a Home</button>
                <button id="btn-comentarios-revisao" onclick="window.location.href='comentario.php'" style="display:none; background-color: #34db5e; color: white;">Ver comentários</button>
            </footer>
        </main>

    </div>

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

            <button class="btn-final" onclick="window.location.href='comentario.php'" >Fazer comentário</button>

            <button id="btn-modal-home">
                Avançar <i class="fas fa-arrow-right"></i>
            </button>
        </div>
    </div>  

<div class="modal-confirmar-saida" id="modal-confirmar-saida">
    <div class="modal-confirmar-saida-card">
        <h2>Tem certeza que deseja sair?</h2>
        <p>Se você sair agora, perderá todo o progresso do quiz atual.</p>
        
        <div class="modal-buttons">
            <button id="btn-confirmar-saida" class="btn-secondary" onclick="confirmarSaida()">Sim, Sair</button>
            <button id="btn-cancelar-saida" class="btn-primary" onclick="fecharModalSaida()">Não, Continuar</button>
        </div>
    </div>
</div>

    <div id="modal-avaliacao" class="modal-avaliacao" style="display: none;">
        <div id="container-avaliacao" class="modal-content text-center">
            <h2>Avalie este Quiz</h2>
            
            <div class="rating-stars">
                <i class="fa-regular fa-star" data-value="1"></i>
                <i class="fa-regular fa-star" data-value="2"></i>
                <i class="fa-regular fa-star" data-value="3"></i>
                <i class="fa-regular fa-star" data-value="4"></i>
                <i class="fa-regular fa-star" data-value="5"></i>
            </div>

             <p>Sua avaliação foi de <span id="avaliacao-valor">0</span> estrelas</p>

            <div class="modal-buttons">
                <button id="btn-enviar-avaliacao" class="btn-primary" disabled>Enviar Avaliação</button>
                <button id="btn-pular-avaliacao" class="btn-secondary">Pular</button>
            </div>
        </div>
    </div>

    <!-- Scripts da aplicação -->
    <script src="js/sidebar_close.js"></script>
    <script src="js/resolucao_quiz.js"></script>
    <script>
        
        const apiHome = "../config/home.php";

        window.addEventListener('load', () => {
            carregarMenuSidebarQuiz();
            carregarUsuario();     // <--- Adicionado para carregar a foto no header
            
        });

        // FUNÇÕES INTERMÉDIAS PARA DISPARAR AS ANIMAÇÕES LATERAIS ANTES DE MUDAR A QUESTÃO
        function proximaPerguntaOpcao() {
            const card = document.getElementById('pergunta-atual');
            if (card) {
                card.classList.remove('slide-proximo', 'slide-anterior');
                void card.offsetWidth; // Força reset físico da animação no navegador
                card.classList.add('slide-proximo');
            }
            // Executa a função nativa do seu arquivo js/resolucao_quiz.js
            if (typeof proximaPergunta === "function") {
                proximaPergunta();
            }
        }

        function perguntaAnteriorOpcao() {
            const card = document.getElementById('pergunta-atual');
            if (card) {
                card.classList.remove('slide-proximo', 'slide-anterior');
                void card.offsetWidth; // Força reset físico da animação no navegador
                card.classList.add('slide-anterior');
            }
            // Executa a função nativa do seu arquivo js/resolucao_quiz.js
            if (typeof perguntaAnterior === "function") {
                perguntaAnterior();
            }
        }

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
                    
                    if(menuDesktop) menuDesktop.innerHTML = menuHTML;
                    if(menuMobile) menuMobile.innerHTML = menuHTML;
                })
                .catch(err => console.error("Erro ao carregar menu na página de quiz:", err));
        }

        function toggleSidebar() {
            // 900px é o limite exato que está configurado no seu arquivo home.css
            if (window.innerWidth <= 900) {
                
                // ==================================================================
                // COMPORTAMENTO MOBILE (Celular / Tablet)
                // ==================================================================
                const mobileMenu = document.getElementById('mobileMenu');
                if (mobileMenu) {
                    mobileMenu.classList.toggle('active');
                }
                document.body.classList.toggle('no-scroll');

            } else {
                
                // ==================================================================
                // COMPORTAMENTO DESKTOP (O seu código original intacto!)
                // ==================================================================
                const sidebar = document.getElementById('sidebar');
                const main = document.getElementById('mainContainer');
                
                if (sidebar) sidebar.classList.toggle('open');
                if (main) main.classList.toggle('sidebar-open');
                
            }
        }
        
        function revisarRespostas() {
            const modal = document.getElementById('modal-resultado');
            if(modal) {
                modal.style.display = 'none';
                toggleSidebar(); // Abre a sidebar para revisão
            }

            // Libera o botão de pergunta anterior
            const btnAnterior = document.getElementById('btn-voltar');
            if(btnAnterior) {
                btnAnterior.disabled = false;
            }

            // Libera o botão de próximo
            const btnProximo = document.getElementById('btn-proximo');
            if(btnProximo) {
                btnProximo.disabled = false;
            }

            // Oculta o botão de finalizar
            const btnFinalizar = document.getElementById('btn-finalizar');
            if(btnFinalizar) {
                btnFinalizar.style.display = 'none';
            }

            // Oculta o botão da Home ao iniciar a revisão (ele só deve aparecer na última pergunta)
            const btnHomeRevisao = document.getElementById('btn-home-revisao');
            if(btnHomeRevisao) {
                btnHomeRevisao.style.display = 'none';
            }

            // --- GARANTE QUE O CONTROLLER DO RODAPÉ SEJA REATIVADO ---
            const controles = document.getElementById('quiz-controls');
            if (controles) {
                controles.style.pointerEvents = 'auto';
                controles.style.opacity = '1';
            }

            

            emModoRevisao = true;   // Ativa a flag do JS
            indicePergunta = 0;     // Reseta para a primeira pergunta
            renderizarPergunta();   // Atualiza a tela com a primeira pergunta
        }


        function carregarUsuario() {
            fetch(api + "?tipo=usuario")
                .then(r => r.json())
                .then(u => {
                    // 1. Atualiza a imagem no HEADER (Navbar superior Desktop)
                    const linkPerfilHeader = document.querySelector('.item-perfil a');
                    if (linkPerfilHeader && u.foto_perfil) {
                        const iconeUsuario = linkPerfilHeader.querySelector('.profile-icon');
                        if (iconeUsuario) {
                            iconeUsuario.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                        } else {
                            const imagemHeaderExistente = linkPerfilHeader.querySelector('.profile-icon');
                            if (imagemHeaderExistente && imagemHeaderExistente.tagName === 'IMG') {
                                imagemHeaderExistente.src = u.foto_perfil;
                            }
                        }
                    }
                    
                    // 2. Atualiza a foto no menu mobile (Navbar superior Mobile)
                    const linkPerfilMobile = document.querySelector('.mobile-profile-right .profile-icon');
                    if (linkPerfilMobile && u.foto_perfil) {
                        linkPerfilMobile.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                    }

                    // 3. MONTA E ADICIONA O DROPDOWN DO PERFIL (Igual ao da Home)
                    const itemPerfil = document.querySelector('.item-perfil');
                    if (itemPerfil) {
                        // Remove um dropdown antigo se já existir para não duplicar
                        const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                        if (antigoDropdown) antigoDropdown.remove();

                        // Define se exibe a foto real ou o ícone de rostinho padrão
                        const fotoHtml = u.foto_perfil 
                            ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                            : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                        // Cria o elemento do dropdown
                        const dropdown = document.createElement('div');
                        dropdown.className = 'perfil-dropdown';
                        dropdown.innerHTML = `
                            <div class="avatar-upload-container" onclick="document.getElementById('inputFotoPerfil').click()">
                                <div id="avatarWrapper">
                                    ${fotoHtml}
                                </div>
                                <div class="avatar-edit-badge">
                                    <i class="fas fa-pencil-alt"></i>
                                </div>
                                <input type="file" id="inputFotoPerfil" accept="image/*" style="display: none;" onchange="uploadFotoPerfil(this)">
                            </div>

                            <h4 style="text-align: center;">Minha Conta</h4>
                            <hr>
                            <p><strong>Nome:</strong> ${u.nome || "Não informado"}</p>
                            <p><strong>E-mail:</strong> ${u.email || "Não informado"}</p>
                            <p><strong>Nível:</strong> ${u.nome_escolaridade || "Não informado"}</p>
                            <hr>
                            <a href="../config/logout.php" class="btn-logout">
                                <i class="fas fa-sign-out-alt"></i> Sair da Conta
                            </a>
                        `;
                        
                        // Insere o dropdown montado dentro do item de perfil na barra de navegação
                        itemPerfil.appendChild(dropdown);
                    }
                });
        }

    </script>
</body>
</html>