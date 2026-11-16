<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recomendados - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/cookie.css">
    <link rel="stylesheet" href="./style/novidades.css"> 
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <script src="./js/update_foto.js"></script>
    <script src="js/tamanho_fonte.js"></script>
</head>

<body>

<?php renderSidebar(); ?>

<div class="main-container" id="mainContainer">
    
    <?php renderHeader(); ?>

    <main>
        <section class="welcome-section">
            <div class="welcome-text">
                <h1>RECOMENDADOS</h1>
                <p class="subtitle">QUIZZES PERFEITOS PARA O SEU NÍVEL DE ESCOLARIDADE!</p>
                
                <div class="search-container-main">
                    <div class="search-box-wrapper">
                        <input type="text" id="inputBusca" 
                               placeholder="Pesquisar nos recomendados..." 
                               onkeyup="filtrarGeral()"
                               class="input-busca">
                    </div>
                </div>
            </div>
        </section>

        <section class="cards-section">
            <h2 id="tituloSecao" class="section-title">Buscando recomendações personalizadas...</h2>
            <div class="group-cards" id="containerCards"></div>
        </section>
    </main>

    <?php renderFooter(); ?>

    <script src="js/cookies.js"></script>
</div>

<!-- MODAL DE CONFIRMAÇÃO DE ENTRADA NO QUIZ (PADRONIZADA COM A HOME) -->
<div id="modalConfirmacao" class="modal-overlay">
    <div class="modal-content-confirm">
        <p class="modal-titulo">Deseja entrar no quiz?</p>
        
        <img src="img/luminequestoes.png" alt="logo" class="modal-imagem-centro">
        
        <div class="modal-buttons">
            <button onclick="fecharConfirmacao()" class="btn-voltar">Não</button>
            <button id="btnConfirmarEntrada" class="btn-entrar">Sim</button>
        </div>
    </div>
</div>

<!-- Importação do script global do Header, Sidebar e Perfil -->
<script src="js/header.js"></script>

<script src="js/sidebar_close.js"></script>

<script>
let listaQuizzesGlobal = [];
let urlDestinoQuiz = "";

window.onload = () => {
    carregarMenuSidebarFixo();
    carregarQuizzesRecomendados();
    carregarUsuario();         // Função vinda do header.js
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

function carregarMenuSidebarFixo() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            const menu = dados.map(m => `<a href="home.php"><span>${m.nome_materia}</span></a>`).join("");
            if (document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menu;
            if (document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menu;
        })
        .catch(e => console.error("Erro na sidebar:", e));
}

async function carregarQuizzesRecomendados() {
    try {
        const response = await fetch(api + "?tipo=recomendados");
        const dados = await response.json();

        if (dados.erro) {
            document.getElementById("tituloSecao").innerText = "Aviso";
            document.getElementById("containerCards").innerHTML = `
                <div class="aviso-escolaridade">
                    <p>${dados.erro}</p>
                    ${dados.precisa_escolaridade ? `<button onclick="window.location.href='home.php'" class="btn-escolaridade">Escolher Escolaridade</button>` : ''}
                </div>`;
            return;
        }

        listaQuizzesGlobal = dados;
        document.getElementById("tituloSecao").innerText = "Recomendados para o seu Perfil";
        renderizarCards(listaQuizzesGlobal);

    } catch (e) {
        console.error("Erro ao buscar recomendações:", e);
        document.getElementById("tituloSecao").innerText = "Erro";
        document.getElementById("containerCards").innerHTML = "<p class='msg-lista-vazia'>Não foi possível carregar as recomendações.</p>";
    }
}

function renderizarCards(lista) {
    const container = document.getElementById("containerCards");
    let html = "";
    
    if (!lista || lista.length === 0) { 
        container.innerHTML = "<p class='msg-lista-vazia'>Nenhum quiz encontrado para a sua escolaridade no momento.</p>"; 
        return; 
    }

    lista.forEach((q, index) => {
        let imgNome = (q.nome_materia || '').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
        
        let difTexto = "Não definido";
        let difClasse = "dif-padrao";

        if (q.id_dificuldade == 1) { difTexto = "Fácil"; difClasse = "dif-facil"; }
        else if (q.id_dificuldade == 2) { difTexto = "Médio"; difClasse = "dif-media"; }
        else if (q.id_dificuldade == 3) { difTexto = "Difícil"; difClasse = "dif-dificil"; }

        html += `
            <div onclick="prepararEntrada(${q.id})" class="card-materia">
                <div class="quiz-numero">#${index + 1}</div>
                <div class="card-banner">
                    <img src="img/${imgNome}.webp" onerror="this.classList.add('imagem-oculta')">
                </div>
                <div class="card-body">
                    <p title="${q.nome}">${q.nome}</p>
                    <span class="card-subtexto">${q.nome_materia}${q.conteudo ? ` - ${q.conteudo}` : ''}</span>
                    <span class="tag-dificuldade ${difClasse}">${difTexto}</span>
                </div>
            </div>`;
    });
    container.innerHTML = html;
}

function filtrarGeral() {
    const termo = document.getElementById('inputBusca').value.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "");
    const filtrados = listaQuizzesGlobal.filter(q => 
        (q.nome && q.nome.toLowerCase().includes(termo)) || 
        (q.nome_materia && q.nome_materia.toLowerCase().includes(termo)) || 
        (q.conteudo && q.conteudo.toLowerCase().includes(termo))
    );
    renderizarCards(filtrados);
}

function prepararEntrada(idQuiz) {
    urlDestinoQuiz = `quiz.php?id=${idQuiz}`;
    document.getElementById('modalConfirmacao').classList.add('active');
}

function fecharConfirmacao() {
    document.getElementById('modalConfirmacao').classList.remove('active');
}

document.getElementById('btnConfirmarEntrada').onclick = () => {
    if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
};

window.addEventListener('click', (e) => {
    const modal = document.getElementById('modalConfirmacao');
    if (e.target === modal) fecharConfirmacao();
});
</script>

</body>
</html>