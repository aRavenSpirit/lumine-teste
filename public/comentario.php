<?php
    require "../config/conexao.php";
    include_once("../config/session.php");
    include_once("../config/layout.php");

    $quiz_id = isset($_GET['quiz_id']) ? intval($_GET['quiz_id']) : 0;

    // ==========================================================
    // BUSCA AS PREFERÊNCIAS DO USUÁRIO LOGADO
    // ==========================================================
    $id_usuario_logado = intval($_SESSION['usuario_id']);
    $sql_pref = "SELECT cores_materia 
                 FROM configuracoes 
                 WHERE id_usuario = $id_usuario_logado";
                 
    $result_pref = $conn->query($sql_pref);

    // ==========================================================
    // CORES PADRÃO CASO O USUÁRIO AINDA NÃO TENHA CONFIGURAÇÕES
    // ==========================================================
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

    // ==========================================================
    // MESCLA AS CONFIGURAÇÕES SALVAS COM AS PADRÕES
    // ==========================================================
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
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comentários - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/comentario.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <script src="js/tamanho_fonte.js"></script>
</head>

<body>
<?php renderSidebar(); // Renderiza a sidebar ?>

<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main id="mainConteudo">
        <!-- BOTÕES FIXADOS NO SITE (NÃO NA TELA) -->
        <div class="rotas-buttons">
            <button class="btn-sair-flutuante" onclick="window.location.href='home.php'" title="Sair" aria-label="Sair">
                <i class="fas fa-arrow-left"></i>
                <span class="btn-sair-text">sair</span>
            </button>
            
            <button class="btn-revisar" onclick="voltarParaRevisao()" title="Revisar respostas" aria-label="Revisar respostas">
                <i class="fas fa-undo"></i>
                <span class="btn-revisar-text">revisar respostas</span>
            </button>
        </div>

        <section class="welcome-section">
            <div class="container-comentarios">
                <h2>Comente o que achou do Quiz!</h2>
                <div class="card-respostas">
                    <div class="respostas">
                        <div id="respostas"></div>
                    </div>
                </div>
                <div class="comentario-form">
                    <form id="comentarioForm">
                        <textarea placeholder="Digite seu comentário..." required></textarea>
                        <button type="submit">Enviar Comentário</button>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <?php renderFooter(); ?>

</div>

<div id="meuModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2 id="tituloModal">Quizzes</h2>
            <span onclick="fecharModal()" class="modal-close">&times;</span>
        </div>
        <hr>
        <div class="modal-body">
            <div id="corpoModal"></div>
        </div>
    </div>
</div>

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

<!-- Importação do script global do Header, Sidebar e Perfil -->
<script src="js/header.js"></script>

<!-- Importação do script desacoplado da sidebar -->
<script src="js/sidebar_close.js"></script>

<script>
    const apiComentario = "../config/comentario.php";
    let urlDestinoQuiz = "";

    // Transforma o array do PHP em um objeto JavaScript utilizável
    const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
    const idUsuarioLogado = <?php echo isset($_SESSION['usuario_id']) ? intval($_SESSION['usuario_id']) : 'null'; ?>;

    function obterQuizIdAtual() {
        const phpQuizId = <?php echo intval($quiz_id); ?>;
        if (phpQuizId > 0) {
            return phpQuizId;
        }

        const urlParams = new URLSearchParams(window.location.search);
        let quizId = urlParams.get('quiz_id') || urlParams.get('id');

        if (!quizId || quizId === '0') {
            quizId = localStorage.getItem('ultimo_quiz_id');
        }

        const parsed = parseInt(quizId, 10);
        return Number.isNaN(parsed) ? 0 : parsed;
    }

    const quizIdAtual = obterQuizIdAtual();

    // Carrega os conteúdos da matéria clicada na sidebar nesta própria página
    function carregarConteudos(idMateria, nomeMateria) {
        if (window.event) window.event.preventDefault();
        if (typeof fecharMenuMobile === "function") fecharMenuMobile();

        const main = document.getElementById("mainConteudo");
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

        fetch(api + "?tipo=conteudos&id_materia=" + idMateria)
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

        fetch(api + `?tipo=quizzes&id_conteudo=${idConteudo}`)
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

    // Executa assim que a página carregar
    document.addEventListener("DOMContentLoaded", () => {
        carregarUsuario();      // Função vinda do header.js
        carregarMenuSidebar();  // Função vinda do header.js
        carregarComentarios();
        configurarFormulario();
    });

    function uploadFotoPerfil(input) {
        if (input.files && input.files[0]) {
            const formData = new FormData();
            formData.append('foto', input.files[0]);

            fetch("../config/upload_foto.php", {
                method: "POST",
                body: formData
            })
            .then(r => r.json())
            .then(res => {
                if (res.sucesso) {
                    carregarUsuario();
                } else {
                    alert(res.erro || "Erro ao atualizar imagem de perfil.");
                }
            })
            .catch(err => console.error("Erro no upload:", err));
        }
    }

    // 1. CARREGAR COMENTÁRIOS (GET)
    function carregarComentarios() {
        const respostasContainer = document.getElementById('respostas');

        if (!quizIdAtual) {
            respostasContainer.innerHTML = '<p>Quiz não identificado para exibir os comentários.</p>';
            return;
        }

        fetch(`${apiComentario}?id_quiz=${quizIdAtual}`)
            .then(response => response.json())
            .then(data => {
                respostasContainer.innerHTML = ''; 

                if (!Array.isArray(data) || data.length === 0) {
                    respostasContainer.innerHTML = '<p>Nenhum comentário ainda. Seja o primeiro!</p>';
                    return;
                }

                data.forEach(comentario => {
                    const comentarioDiv = document.createElement('div');
                    comentarioDiv.classList.add('comentario');

                    // --- Cabeçalho do Comentário (Alinha Foto, Nome e Data) ---
                    const headerDiv = document.createElement('div');
                    headerDiv.classList.add('comentario-header');

                    // 1. Foto de Perfil
                    const imgPerfil = document.createElement('img');
                    imgPerfil.classList.add('comentario-avatar');
                    imgPerfil.src = comentario.foto_usuario ? comentario.foto_usuario : 'img/default-avatar.png';
                    imgPerfil.alt = "Foto de perfil";

                    // 2. Container para agrupar o Nome e a Data
                    const infoDiv = document.createElement('div');
                    infoDiv.classList.add('comentario-info');

                    const nomePadrao = comentario.nome_usuario || "Usuário Anônimo";
                    const emailUsuario = comentario.email_usuario || "E-mail não disponível";

                    const nomeUsuario = document.createElement('h3');
                    nomeUsuario.textContent = nomePadrao;

                    comentarioDiv.addEventListener('mouseenter', () => {
                        nomeUsuario.textContent = emailUsuario;
                    });

                    comentarioDiv.addEventListener('mouseleave', () => {
                        nomeUsuario.textContent = nomePadrao;
                    });

                    const dataEnvio = document.createElement('span');
                    dataEnvio.classList.add('comentario-data');
                    
                    // Formata a data obtida do banco de dados (AAAA-MM-DD HH:MM:SS) para o formato PT-BR
                    if (comentario.data_envio) {
                        const dataObj = new Date(comentario.data_envio);
                        dataEnvio.textContent = dataObj.toLocaleDateString('pt-BR', {
                            day: '2-digit',
                            month: '2-digit',
                            year: 'numeric'
                        }) + ' às ' + dataObj.toLocaleTimeString('pt-BR', { hour: '2-digit', minute: '2-digit' });
                    }

                    // Monta a estrutura do cabeçalho
                    infoDiv.appendChild(nomeUsuario);
                    infoDiv.appendChild(dataEnvio);
                    headerDiv.appendChild(imgPerfil);
                    headerDiv.appendChild(infoDiv);

                    // --- Corpo do Comentário (O texto em si) ---
                    const textoComentario = document.createElement('p');
                    textoComentario.classList.add('comentario-texto');
                    textoComentario.textContent = comentario.mensagem; 

                    // Junta tudo no card principal
                    comentarioDiv.appendChild(headerDiv);
                    comentarioDiv.appendChild(textoComentario);

                    respostasContainer.appendChild(comentarioDiv);
                });
            })
            .catch(error => console.error('Erro ao carregar comentários:', error));
    }

    // 2. ENVIAR COMENTÁRIO (POST)
    function configurarFormulario() {
        const form = document.getElementById('comentarioForm');
        
        form.addEventListener('submit', function(e) {
            e.preventDefault(); // Evita o recarregamento da página

            if (!idUsuarioLogado) {
                alert('Você precisa estar logado para comentar!');
                return;
            }

            if (!quizIdAtual) {
                alert('Não foi possível identificar o quiz atual.');
                return;
            }

            const textarea = form.querySelector('textarea');
            const textoComentario = textarea.value.trim();

            if (textoComentario === '') return;

            const dados = {
                id_usuario: idUsuarioLogado,
                id_quiz: quizIdAtual,
                comentario: textoComentario
            };

            fetch(apiComentario, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(dados)
            })
            .then(response => response.json())
            .then(resultado => {
                if (resultado.erro) {
                    alert(resultado.erro);
                } else {
                    textarea.value = ''; // Limpa o campo
                    carregarComentarios(); // Recarrega a lista de comentários
                }
            })
            .catch(error => console.error('Erro ao enviar comentário:', error));
        });
    }

    function fecharModalConfirmacao() {
        document.getElementById('modalConfirmacao').style.display = 'none';
    }

    const btnConfirmar = document.getElementById('btnConfirmarEntrada');
    if (btnConfirmar) {
        btnConfirmar.onclick = () => {
            if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
        };
    }

    function fecharModal() { 
        document.getElementById('meuModal').style.display = "none"; 
    }

    window.onclick = (event) => {
        if (event.target == document.getElementById('meuModal')) fecharModal();
    };

    function voltarParaRevisao() {
        // 1. Tenta pegar o ID vindo da URL (se existir)
        const urlParams = new URLSearchParams(window.location.search);
        let quizId = urlParams.get('quiz_id') || urlParams.get('id');

        // 2. Se não estiver na URL, pega o último quiz salvo no navegador
        if (!quizId || quizId === '0') {
            quizId = localStorage.getItem('ultimo_quiz_id');
        }

        // 3. Redireciona passando o ID correto na URL
        if (quizId && quizId !== '0') {
            window.location.href = `quiz.php?id=${quizId}&revisao=true`;
        } else {
            alert('Não foi possível identificar o quiz para revisão. Voltando para a Home.');
            window.location.href = 'home.php';
        }
    }
</script>

</body>
</html>