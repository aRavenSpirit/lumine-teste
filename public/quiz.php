<?php
        include_once("../config/session.php");
        include_once("../config/layout.php"); // Inclui o novo arquivo
        include_once("../config/conexao.php");

        // ==========================================================
        // BUSCA AS CORES PERSONALIZADAS DO USUÁRIO PARA OS CARDS DE MATÉRIA
        // ==========================================================
        $id_usuario_logado = intval($_SESSION['usuario_id'] ?? 0);
        $sql_pref = "SELECT cores_materia FROM configuracoes WHERE id_usuario = $id_usuario_logado";
        $result_pref = $conn->query($sql_pref);

        $cores_usuario = [
            "bg_claro" => "#FFFFFF",
            "bg_escuro" => "#121212",
            "matematica" => "#3498db",
            "portugues" => "#e74c3c",
            "historia" => "#f1c40f",
            "geografia" => "#2ecc71",
            "biologia" => "#27ae60",
            "fisica" => "#8e44ad",
            "quimica" => "#d35400",
            "ingles" => "#2980b9",
            "artes" => "#e67e22",
            "filosofia" => "#7f8c8d",
            "sociologia" => "#16a085",
            "educacao_fisica" => "#c0392b",
        ];

        if ($result_pref && $result_pref->num_rows > 0) {
            $row_pref = $result_pref->fetch_assoc();
            $cores_banco = json_decode($row_pref['cores_materia'], true);
            if (is_array($cores_banco)) {
                $cores_usuario = array_merge($cores_usuario, $cores_banco);
            }
        }
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

        <main class="quiz-main-section" id="mainConteudo">
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

    <!-- MODAL DE LISTAGEM DE QUIZZES DE UM CONTEÚDO (AO CLICAR NA SIDEBAR) -->
    <div id="meuModal" class="modal">
        <div class="modal-content">
            <div class="modal-header">
                <h2 id="tituloModal">Quizzes</h2>
                <span onclick="fecharModal()" class="modal-close">&times;</span>
            </div>
            <hr class="modal-divider">
            <div class="modal-body">
                <div id="corpoModal"></div>
            </div>
        </div>
    </div>

    <!-- MODAL DE CONFIRMAÇÃO DE ENTRADA NO NOVO QUIZ -->
    <div id="modalConfirmacao" class="modal-overlay" style="display: none;">
        <div class="modal-content-confirm">
            <p class="modal-titulo">Deseja entrar no quiz?</p>
            <img src="img/luminequestoes.png" alt="logo" class="modal-imagem-centro">
            <div class="modal-buttons">
                <button onclick="fecharModalConfirmacao()" class="btn-voltar">Não</button>
                <button id="btnConfirmarEntrada" class="btn-entrar">Sim</button>
            </div>
        </div>
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
        const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
        let urlDestinoQuiz = "";
        let materiaPendente = null;

        // Carrega os conteúdos da matéria clicada na sidebar nesta própria página
        function carregarConteudos(idMateria, nomeMateria) {
            if (window.event) window.event.preventDefault();
            if (typeof fecharMenuMobile === "function") fecharMenuMobile();

            // Se ainda estiver resolvendo o quiz, pede confirmação de saída antes de trocar para a matéria
            if (document.getElementById('quiz-container') && (typeof emModoRevisao === 'undefined' || !emModoRevisao)) {
                materiaPendente = { id: idMateria, nome: nomeMateria };
                const modal = document.getElementById('modal-confirmar-saida');
                if (modal) {
                    modal.style.display = 'flex';
                    return;
                }
            }

            exibirConteudosDaMateria(idMateria, nomeMateria);
        }

        function exibirConteudosDaMateria(idMateria, nomeMateria) {
            if (typeof cronometroInterval !== 'undefined') clearInterval(cronometroInterval);

            const main = document.getElementById("mainConteudo");
            main.classList.remove("quiz-main-section");
            main.innerHTML = `
                <section class="welcome-section">
                    <div class="welcome-text">
                        <p class="subtitle">CONTEÚDOS DE: ${nomeMateria.toUpperCase()}</p>
                    </div>
                </section>
                <section class="cards-section">
                    <div class="group-cards" id="cardsConteudos"><p>Carregando conteúdos...</p></div>
                </section>
            `;

            let chaveMateria = nomeMateria.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '_');
            let corDoCard = coresMateriasDoBanco[chaveMateria] || "#3498db";
            let corDoTexto = typeof obterCorTextoLegivel === "function" ? obterCorTextoLegivel(corDoCard) : "#ffffff";

            fetch(apiHome + "?tipo=conteudos&id_materia=" + idMateria)
                .then(res => res.json())
                .then(dados => {
                    const container = document.getElementById("cardsConteudos");
                    let html = "";
                    if (!dados || dados.length === 0) {
                        html = "<p>Nenhum conteúdo disponível para esta matéria.</p>";
                    } else {
                        dados.forEach(c => {
                            let imagemCard = (c.imagem_conteudo && c.imagem_conteudo.trim() !== "")
                                ? c.imagem_conteudo
                                : `img/conteudos/${c.nome.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '')}.webp`;

                            html += `
                                <div onclick="abrirModalQuizzes(${c.id}, '${c.nome.replace(/'/g, "\\'")}')" class="card-materia">
                                    <div class="card-banner">
                                        <img src="${imagemCard}" onerror="this.src='img/indisponivel.png'">
                                    </div>
                                    <div class="card-body" style="background-color: ${corDoCard} !important;">
                                        <p style="color: ${corDoTexto} !important;">${c.nome}</p>
                                    </div>
                                </div>`;
                        });
                    }
                    container.innerHTML = html;
                });
        }

        function abrirModalQuizzes(idConteudo, nomeConteudo) {
            const modal = document.getElementById('meuModal');
            const corpo = document.getElementById('corpoModal');
            document.getElementById('tituloModal').innerText = nomeConteudo;
            modal.style.display = "block";
            corpo.innerHTML = "<div class='loading-quiz-msg'>Buscando quizzes...</div>";

            fetch(apiHome + `?tipo=quizzes&id_conteudo=${idConteudo}`)
                .then(res => res.json())
                .then(quizzes => {
                    if (quizzes.length === 0) {
                        corpo.innerHTML = "<div class='no-quiz-msg'>Sem quizzes para este conteúdo no momento.</div>";
                    } else {
                        let html = "<div class='quizzes-grid'>";
                        quizzes.forEach(q => {
                            let siglaMateria = q.nome_materia ? q.nome_materia.substring(0, 3).toUpperCase() : "QUIZ";
                            let difClasse = "dif-facil";
                            let difNome = (q.dificuldade || "Fácil").toLowerCase();

                            if (difNome.includes("médio") || difNome.includes("medio") || difNome.includes("intermed")) {
                                difClasse = "dif-medio";
                            } else if (difNome.includes("difícil") || difNome.includes("dificil")) {
                                difClasse = "dif-dificil";
                            }

                            html += `
                                <a href="quiz.php?id=${q.id}" class="quiz-card-link" onclick="prepararEntrada(event, this.href)">
                                    <div class="quiz-card">
                                        <div>
                                            <div class="quiz-card-header">
                                                <span class="quiz-questoes-badge">
                                                    <i class="fas fa-question-circle"></i> ${q.total_questoes} ${q.total_questoes == 1 ? 'questão' : 'questões'}
                                                </span>
                                            </div>
                                            <h4 class="quiz-title">${q.nome}</h4>
                                            <p class="quiz-conteudo">
                                                <i class="fas fa-book-open"></i> ${nomeConteudo}
                                            </p>
                                        </div>
                                        <div class="quiz-footer">
                                            <div class="quiz-badges">
                                                <span class="badge-materia">${siglaMateria}</span>
                                                <span class="badge-dificuldade ${difClasse}">${q.dificuldade.toUpperCase()}</span>
                                            </div>
                                            <div class="btn-play-icon">
                                                <i class="fas fa-play"></i>
                                            </div>
                                        </div>
                                    </div>
                                </a>`;
                        });
                        html += "</div>";
                        corpo.innerHTML = html;
                    }
                });
        }

        function prepararEntrada(event, url) {
            if (event) event.preventDefault();
            urlDestinoQuiz = url;
            document.getElementById('modalConfirmacao').style.display = 'flex';
        }

        function fecharModalConfirmacao() {
            document.getElementById('modalConfirmacao').style.display = 'none';
        }

        const btnConfirmarQuiz = document.getElementById('btnConfirmarEntrada');
        if (btnConfirmarQuiz) {
            btnConfirmarQuiz.onclick = () => {
                if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
            };
        }

        function fecharModal() {
            document.getElementById('meuModal').style.display = "none";
        }

        window.addEventListener('click', (event) => {
            if (event.target == document.getElementById('meuModal')) fecharModal();
        });

        // --- FUNÇÕES DO MODAL DE SAÍDA ---
        function abrirModalSaida() {
            materiaPendente = null;
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
            materiaPendente = null;
            const modal = document.getElementById('modal-confirmar-saida');
            if (modal) {
                modal.style.display = 'none';
            }
        }

        function confirmarSaida() {
            if (materiaPendente) {
                const mat = materiaPendente;
                fecharModalSaida();
                exibirConteudosDaMateria(mat.id, mat.nome);
                return;
            }
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
                        let nomeSeguro = m.nome_materia.replace(/'/g, "\\'");
                        menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${nomeSeguro}'); return false;"><span>${m.nome_materia}</span></a>`;
                    });
                    
                    const menuDesktop = document.getElementById("menuMaterias");
                    const menuMobile = document.getElementById("menuMateriasMobile");
                    
                    if(menuDesktop) menuDesktop.innerHTML = menuHTML;
                    if(menuMobile) menuMobile.innerHTML = menuHTML;
                })
                .catch(err => console.error("Erro ao carregar menu na página de quiz:", err));
        }

        // Mantém os links da sidebar abrindo os conteúdos caso o resize global do header.js seja disparado
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