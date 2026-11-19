<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
    include_once("../config/conexao.php");

    // ==========================================================
    // BUSCA AS PREFERÊNCIAS DO USUÁRIO LOGADO
    // ==========================================================
    $id_usuario_logado = intval($_SESSION['usuario_id']);
    $sql_pref = "SELECT cores_materia, tamanho_fonte, tema_escuro 
                 FROM configuracoes 
                 WHERE id_usuario = $id_usuario_logado";
                 
    $result_pref = $conn->query($sql_pref);
    $tamanho_fonte_salvo = 2; // Valor padrão (Médio)
    $tema_escuro_salvo = 0;   // Valor padrão (Claro)

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
        "ciencias_da_natureza" => "#00c882"
    ];

    // ==========================================================
    // MESCLA AS CONFIGURAÇÕES SALVAS COM AS PADRÕES
    // ==========================================================
    if ($result_pref && $result_pref->num_rows > 0) {
        $row_pref = $result_pref->fetch_assoc();
        
        if (isset($row_pref['tamanho_fonte'])) {
            $tamanho_fonte_salvo = intval($row_pref['tamanho_fonte']);
        }

        if (isset($row_pref['tema_escuro'])) {
            $tema_escuro_salvo = intval($row_pref['tema_escuro']);
        }

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
    <title>Todos os Quizzes - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/cookie.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
</head>

<body>
<?php renderSidebar(); ?>
    
<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main>
        <section class="cards-section">
            <div class="group-cards" id="cardsConteudos"></div>
        </section>
    </main>

    <?php renderFooter(); ?>

    <script src="js/cookies.js"></script>

</div>

<!-- MODAL DE LISTA DE QUIZZES -->
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

<!-- MODAL GLOBAL DE CONFIRMAÇÃO DE ENTRADA NO QUIZ -->
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

<!-- Mesma ordem de importação da home.php -->
<script src="js/header.js"></script>
<script src="js/tamanho_fonte.js"></script>
<script src="js/sidebar_close.js"></script>

<script>
// NÃO redeclare "const api" aqui, pois já vem de js/header.js
let urlDestinoQuiz = "";

const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
const tamanhoFonteBanco = <?php echo json_encode($tamanho_fonte_salvo); ?>;
const temaEscuroBanco = <?php echo json_encode($tema_escuro_salvo); ?>;

if (temaEscuroBanco == 1) {
    localStorage.setItem("theme", "dark");
    document.body.classList.add("dark-mode");
} else {
    localStorage.setItem("theme", "light");
    document.body.classList.remove("dark-mode");
}

if (typeof aplicarTamanhoFonteGlobal === "function") {
    aplicarTamanhoFonteGlobal(tamanhoFonteBanco);
}

window.onload = () => {
    carregarUsuario();
    carregarMenuSidebar();
};

function carregarMenuSidebar() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            let menuHTML = "";
            let cardsIniciais = "";

            dados.forEach(m => {
                let nomeLimpo = m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                let chaveMateria = m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '_');
                let corDoCard = coresMateriasDoBanco[chaveMateria] || "#3498db";
                let corDoTexto = (typeof obterCorTextoLegivel === "function") ? obterCorTextoLegivel(corDoCard) : "#ffffff";
                let nomeSeguro = m.nome_materia.replace(/'/g, "\\'");

                menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${nomeSeguro}'); return false;"><span>${m.nome_materia}</span></a>`;
                
                cardsIniciais += `
                    <div onclick="carregarConteudos(${m.id}, '${nomeSeguro}')" class="card-materia">
                        <div class="card-banner">
                            <img src="img/${nomeLimpo}.webp" onerror="this.src='img/indisponivel.png'">
                        </div>
                        <div class="card-body" style="background-color: ${corDoCard} !important;">
                            <p style="color: ${corDoTexto} !important;">${m.nome_materia}</p>
                        </div>
                    </div>`;
            });
            if (document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menuHTML;
            if (document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
            if (document.getElementById("cardsConteudos")) document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
        });
}

function carregarConteudos(idMateria, nomeMateria) {
    window.materiaAtualId = idMateria;
    window.materiaAtualNome = nomeMateria;

    const urlAtual = new URL(window.location.href);
    urlAtual.searchParams.set('materia_id', idMateria);
    urlAtual.searchParams.set('materia_nome', nomeMateria);
    window.history.replaceState({}, '', urlAtual.toString());
    if (typeof fecharMenuMobile === 'function') fecharMenuMobile();
    
    const container = document.getElementById("cardsConteudos");
    container.innerHTML = "<p>Carregando conteúdos...</p>";

    let chaveMateria = nomeMateria.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '_');
    let corDoCard = coresMateriasDoBanco[chaveMateria] || "#3498db";
    let corDoTexto = (typeof obterCorTextoLegivel === "function") ? obterCorTextoLegivel(corDoCard) : "#ffffff";

    fetch(api + "?tipo=conteudos&id_materia=" + idMateria)
        .then(res => res.json())
        .then(dados => {
            let html = "";
            if (dados.length === 0) {
                html = "<p>Nenhum conteúdo disponível para esta matéria.</p>";
            } else {
                dados.forEach(c => {
                    let imagemCard = "";
                    if (c.imagem_conteudo && c.imagem_conteudo.trim() !== "") {
                        imagemCard = c.imagem_conteudo;
                    } else {
                        let nomeConteudoLimpo = c.nome.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                        imagemCard = `img/conteudos/${nomeConteudoLimpo}.webp`; 
                    }

                    let nomeConteudoSeguro = String(c.nome).replace(/'/g, "\\'").replace(/(\r\n|\n|\r)/gm, " ");

                    html += `
                        <div onclick="abrirModalQuizzes(${c.id}, '${nomeConteudoSeguro}')" class="card-materia">
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
    event.preventDefault();
    urlDestinoQuiz = url;
    document.getElementById('modalConfirmacao').style.display = 'flex';
}

function fecharModalConfirmacao() {
    document.getElementById('modalConfirmacao').style.display = 'none';
}

document.getElementById('btnConfirmarEntrada').onclick = () => {
    if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
};

function fecharModal() { 
    document.getElementById('meuModal').style.display = "none"; 
}

window.onclick = (event) => {
    if (event.target == document.getElementById('meuModal')) {
        fecharModal();
    }
    if (event.target == document.getElementById('modalConfirmacao')) {
        fecharModalConfirmacao();
    }
};
</script>

</body>
</html>