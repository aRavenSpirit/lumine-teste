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
    <title>Novidades - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/novidades.css">
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
        <section class="welcome-section">
            <div class="welcome-text">
                <h1>NOVIDADES</h1>
                <p class="subtitle">OS ÚLTIMOS QUIZZES LANÇADOS!</p>
                
                <div class="search-container-main">
                    <div class="search-box-wrapper">
                        <input type="text" id="inputBusca" 
                               placeholder="Pesquisar quiz..." 
                               onkeyup="filtrarGeral()"
                               class="input-busca">
                    </div>
                </div>
            </div>
        </section>

        <section class="cards-section">
            <h2 id="tituloSecao" class="section-title">Carregando novidades...</h2>
            <div class="group-cards" id="containerCards"></div>
        </section>
    </main>

    <?php renderFooter(); ?>

    <!-- Importação do script desacoplado de cookies -->
    <script src="js/cookies.js"></script>

</div>

<!-- MODAL DE CONFIRMAÇÃO DE ENTRADA NO QUIZ -->
<div id="modalConfirmacao" class="modal-overlay">
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

<!-- Importação do script de tamanho de fonte -->
<script src="js/tamanho_fonte.js"></script>

<!-- Importação do script desacoplado da sidebar -->
<script src="js/sidebar_close.js"></script>

<script>
let urlDestinoQuiz = "";

// Transforma o array do PHP em um objeto JavaScript utilizável
const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
const tamanhoFonteBanco = <?php echo json_encode($tamanho_fonte_salvo); ?>;
const temaEscuroBanco = <?php echo json_encode($tema_escuro_salvo); ?>;

// Aplica a preferência de Tema do Banco de Dados
if (temaEscuroBanco == 1) {
    localStorage.setItem("theme", "dark");
    document.body.classList.add("dark-mode");
} else {
    localStorage.setItem("theme", "light");
    document.body.classList.remove("dark-mode");
}

// Aplica a preferência de tamanho de fonte vinda do banco de dados na inicialização
if (typeof aplicarTamanhoFonteGlobal === "function") {
    aplicarTamanhoFonteGlobal(tamanhoFonteBanco);
}

let listaQuizzesGlobal = [];

window.onload = () => {
    carregarQuizzesRecentes();
    carregarUsuario();         // Função do header.js: carrega a foto e dados no header/dropdown
    inicializarPerfilMobile(); // Ativa config-mobile
    inicializarLogoMobile();   // Ativa ico-home
};

// ==========================================================
// ATUALIZAÇÃO ICO-HOME (REDIRECIONA PARA HOME.PHP AO CLICAR NO ÍCONE CENTRAL MOBILE)
// ==========================================================
function inicializarLogoMobile() {
    const mobileLogoContainer = document.querySelector('.mobile-logo-central');
    if (!mobileLogoContainer) return;

    const desktopLogoLink = document.querySelector('.logo-container a');
    const urlHome = desktopLogoLink ? desktopLogoLink.getAttribute('href') : 'home.php';

    mobileLogoContainer.addEventListener('click', function(e) {
        const linkInterno = mobileLogoContainer.querySelector('a');
        if (!linkInterno || !linkInterno.getAttribute('href') || linkInterno.getAttribute('href') === '#') {
            e.preventDefault();
            window.location.href = urlHome;
        }
    });
}

// ==========================================================
// ATUALIZAÇÃO CONFIG-MOBILE (1º CLIQUE ABRE INFORMAÇÕES, 2º ABRE CONFIGURAÇÕES)
// ==========================================================
function inicializarPerfilMobile() {
    const mobileProfileContainer = document.querySelector('.mobile-profile-right');
    const desktopItemPerfil = document.querySelector('.item-perfil');

    if (!mobileProfileContainer) return;

    function sincronizarDropdownMobile() {
        const desktopDropdown = document.querySelector('.item-perfil .perfil-dropdown');
        if (!desktopDropdown) return;

        let mobileDropdown = mobileProfileContainer.querySelector('.perfil-dropdown');
        if (!mobileDropdown) {
            mobileDropdown = desktopDropdown.cloneNode(true);
            mobileDropdown.querySelectorAll('[id]').forEach(el => {
                el.setAttribute('data-original-id', el.id);
                el.removeAttribute('id');
            });

            const linkConfigDesktop = desktopItemPerfil ? desktopItemPerfil.querySelector('a.perfil-link, a[href*="config"]') : null;
            const urlConfig = linkConfigDesktop ? linkConfigDesktop.getAttribute('href') : 'configuracoes.php';

            if (!mobileDropdown.querySelector('.btn-config-mobile')) {
                const btnConfig = document.createElement('a');
                btnConfig.href = urlConfig;
                btnConfig.className = 'btn-config-mobile';
                btnConfig.innerHTML = '<i class="fas fa-cog"></i> Configurações';
                const btnLogout = mobileDropdown.querySelector('.btn-logout');
                if (btnLogout) {
                    mobileDropdown.insertBefore(btnConfig, btnLogout);
                } else {
                    mobileDropdown.appendChild(btnConfig);
                }
            }

            mobileProfileContainer.appendChild(mobileDropdown);
        } else {
            const tempClone = desktopDropdown.cloneNode(true);
            tempClone.querySelectorAll('[id]').forEach(el => el.removeAttribute('id'));
            const btnConfigExistente = mobileDropdown.querySelector('.btn-config-mobile');
            mobileDropdown.innerHTML = tempClone.innerHTML;
            if (btnConfigExistente) {
                const btnLogout = mobileDropdown.querySelector('.btn-logout');
                if (btnLogout) {
                    mobileDropdown.insertBefore(btnConfigExistente, btnLogout);
                } else {
                    mobileDropdown.appendChild(btnConfigExistente);
                }
            }
        }
    }

    if (desktopItemPerfil) {
        const observerPerfil = new MutationObserver(() => {
            sincronizarDropdownMobile();
        });
        observerPerfil.observe(desktopItemPerfil, { childList: true, subtree: true, attributes: true });
    }

    sincronizarDropdownMobile();
    setTimeout(sincronizarDropdownMobile, 500);
    setTimeout(sincronizarDropdownMobile, 1500);

    mobileProfileContainer.addEventListener('click', function(e) {
        const clicouDentroDoDropdown = e.target.closest('.perfil-dropdown');

        if (clicouDentroDoDropdown) {
            return;
        }

        e.preventDefault();
        e.stopPropagation();

        sincronizarDropdownMobile();

        const linkConfigDesktop = desktopItemPerfil ? desktopItemPerfil.querySelector('a.perfil-link, a[href*="config"]') : null;
        const urlConfig = linkConfigDesktop ? linkConfigDesktop.getAttribute('href') : 'configuracoes.php';

        if (mobileProfileContainer.classList.contains('active')) {
            window.location.href = urlConfig;
        } else {
            mobileProfileContainer.classList.add('active');
        }
    });

    document.addEventListener('click', function(e) {
        if (!mobileProfileContainer.contains(e.target)) {
            mobileProfileContainer.classList.remove('active');
        }
    });
}

async function carregarQuizzesRecentes() {
    try {
        const rMat = await fetch(api + "?tipo=materias");
        const materias = await rMat.json();
        
        let promessasConteudos = materias.map(m => 
            fetch(api + "?tipo=conteudos&id_materia=" + m.id).then(res => res.json())
            .then(conts => conts.map(c => ({ ...c, nome_materia: m.nome_materia })))
        );

        const listaDeListasConteudo = await Promise.all(promessasConteudos);
        const todosConteudos = listaDeListasConteudo.flat();

        let promessasQuizzes = todosConteudos.map(c => 
            fetch(api + `?tipo=quizzes&id_conteudo=${c.id}`).then(res => res.json())
            .then(quizzes => quizzes.map(q => ({
                ...q,
                nome_conteudo: c.nome,
                nome_materia: c.nome_materia
            })))
        );

        const listaDeListasQuizzes = await Promise.all(promessasQuizzes);
        listaQuizzesGlobal = listaDeListasQuizzes.flat();
        
        // Ordenar do ID mais alto para o mais baixo (Mais recentes primeiro)
        listaQuizzesGlobal.sort((a, b) => b.id - a.id);

        document.getElementById("tituloSecao").innerText = "Quizzes Recentes";
        renderizarCards(listaQuizzesGlobal);

        const menu = materias.map(m => `<a href="home.php"><span>${m.nome_materia}</span></a>`).join("");
        if(document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menu;
        if(document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menu;

    } catch (e) {
        console.error("Erro:", e);
    }
}

function renderizarCards(lista) {
    const container = document.getElementById("containerCards");
    let html = "";
    if(lista.length === 0) { 
        container.innerHTML = "<p class='msg-lista-vazia'>Nenhum quiz encontrado.</p>"; 
        return; 
    }

    lista.forEach((q, index) => {
        let imgNome = q.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
        
        // Lógica de Dificuldade
        let difTexto = "Não definido";
        let difClasse = "dif-padrao";

        if(q.id_dificuldade == 1) { difTexto = "Fácil"; difClasse = "dif-facil"; }
        else if(q.id_dificuldade == 2) { difTexto = "Médio"; difClasse = "dif-media"; }
        else if(q.id_dificuldade == 3) { difTexto = "Difícil"; difClasse = "dif-dificil"; }

        html += `
            <div onclick="prepararEntrada(event, 'quiz.php?id=${q.id}')" class="card-materia">
                <div class="quiz-numero">#${index + 1}</div>
                <div class="card-banner">
                    <img src="img/${imgNome}.webp" onerror="this.classList.add('imagem-oculta')">
                </div>
                <div class="card-body">
                    <p title="${q.nome}">${q.nome}</p>
                    <span class="card-subtexto">${q.nome_materia} - ${q.nome_conteudo}</span>
                    <span class="tag-dificuldade ${difClasse}">${difTexto}</span>
                </div>
            </div>`;
    });
    container.innerHTML = html;
}

// ==========================================================
// FUNÇÕES DE CONTROLE DA MODAL DE CONFIRMAÇÃO
// ==========================================================
function prepararEntrada(event, url) {
    if (event) event.preventDefault();
    urlDestinoQuiz = url;
    document.getElementById('modalConfirmacao').classList.add('active');
}

function fecharModalConfirmacao() {
    document.getElementById('modalConfirmacao').classList.remove('active');
}

document.getElementById('btnConfirmarEntrada').onclick = () => {
    if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
};

function filtrarGeral() {
    const termo = document.getElementById('inputBusca').value.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "");
    const filtrados = listaQuizzesGlobal.filter(q => 
        q.nome.toLowerCase().includes(termo) || q.nome_materia.toLowerCase().includes(termo) || q.nome_conteudo.toLowerCase().includes(termo)
    );
    renderizarCards(filtrados);
}
</script>

</body>
</html>