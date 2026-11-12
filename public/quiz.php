<?php
        include_once("../config/session.php");
        include_once("../config/layout.php"); // Inclui o novo arquivo
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <title>Resolvendo Quiz - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="style/quiz.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <script src="js/tamanho_fonte.js"></script>
    <script src="./js/update_foto.js"></script>
</head>
<body>

        
    <?php renderSidebar(false); // Desativa o botão de sair padrão da sidebar! ?>

    <div class="main-container" id="mainContainer">

        <?php renderHeader(); ?>

        <main class="quiz-main-section">
            <!-- Botão de Sair que expande com o texto "Sair" no hover -->
            <button class="btn-sair-quiz" onclick="abrirModalSaida()" title="Sair do Quiz">
                <i class="fas fa-arrow-left"></i>
                <span class="texto-sair">Sair</span>
            </button>

            <header id="quiz-header">
                <div class="quiz-info-left">
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
                <button id="btn-home-revisao" class="btn-rodape-revisao" onclick="window.location.href='home.php'" style="display:none;">Voltar para a Home</button>
                <button id="btn-comentarios-revisao" class="btn-rodape-revisao btn-comentario-cor" onclick="window.location.href='comentario.php'" style="display:none;">Ver comentários</button>
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
            
            <div class="modal-resultado-acoes">
                <button class="btn-modal-acao btn-revisar" onclick="revisarRespostas()">
                    Revisar Respostas
                </button>

                <button class="btn-modal-acao btn-comentario" onclick="window.location.href='comentario.php'">
                    Fazer comentário
                </button>

                <button id="btn-modal-home" class="btn-modal-acao btn-avancar">
                    Avançar <i class="fas fa-arrow-right"></i>
                </button>
            </div>
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

    <!-- Importação do script global do Header, Sidebar e Perfil -->
    <script src="js/header.js"></script>

    <!-- Scripts da aplicação -->
    <script src="js/sidebar_close.js"></script>
    <script src="js/resolucao_quiz.js"></script>
    <script>
        
        const apiHome = "../config/home.php";

        // --- FUNÇÕES DO MODAL DE SAÍDA ---
        function abrirModalSaida() {
            // Se já estiver no modo revisão, sai direto para a home sem pedir confirmação
            if (typeof emModoRevisao !== 'undefined' && emModoRevisao) {
                window.location.href = 'home.php';
                return;
            }
            
            // Caso contrário (durante a execução do quiz), exibe o modal de confirmação
            const modal = document.getElementById('modal-confirmar-saida');
            if (modal) {
                modal.style.display = 'flex';
            }
        }

        function fecharModalSaida() {
            const modal = document.getElementById('modal-confirmar-saida');
            if (modal) {
                modal.style.display = 'none';
            }
        }

        function confirmarSaida() {
            window.location.href = 'home.php';
        }

        window.addEventListener('load', () => {
            carregarMenuSidebarQuiz();
            carregarUsuario();     // Função vinda do header.js
            ajustarLayoutTela();
        });

        // SISTEMA DE REATIVIDADE AO REDIMENSIONAR A TELA
        let resizeTimer;
        window.addEventListener('resize', () => {
            clearTimeout(resizeTimer);
            resizeTimer = setTimeout(() => {
                ajustarLayoutTela();
            }, 100);
        });

        function ajustarLayoutTela() {
            // Garante re-renderização suave da pergunta se a função do motor existir
            if (typeof renderizarPergunta === "function") {
                renderizarPergunta();
            }
        }

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

        // Mantém os links da sidebar redirecionando para a Home caso o resize global do header.js seja disparado
        function carregarMenuSidebar() {
            carregarMenuSidebarQuiz();
        }
        
        function revisarRespostas() {
            const modal = document.getElementById('modal-resultado');
            if(modal) {
                modal.style.display = 'none';
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

    </script>
</body>
</html>