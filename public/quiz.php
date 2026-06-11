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
</head>
<body>

    <?php renderSidebar(); // Renderiza a sidebar ?>

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
            
            <button onclick="revisarRespostas()">Revisar Respostas</button>

            <button id="btn-modal-home">
                Avançar <i class="fas fa-arrow-right"></i>
            </button>
        </div>
    </div>

    <script src="js/resolucao_quiz.js"></script>
    <script>
        const apiHome = "../config/home.php";

        window.addEventListener('load', () => {
            carregarMenuSidebarQuiz();
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
            const sidebar = document.getElementById('sidebar');
            const main = document.getElementById('mainContainer');
            if(sidebar) sidebar.classList.toggle('open');
            if(main) main.classList.toggle('sidebar-open');
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