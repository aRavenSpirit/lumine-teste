<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
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

    <main id="mainConteudo">
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
const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
let listaQuizzesGlobal = [];
let urlDestinoQuiz = "";

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
                        <a href="quiz.php?id=${q.id}" class="quiz-card-link" onclick="prepararEntradaComUrl(event, this.href)">
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

function prepararEntradaComUrl(event, url) {
    if (event) event.preventDefault();
    urlDestinoQuiz = url;
    document.getElementById('modalConfirmacao').classList.add('active');
}

function fecharModal() {
    document.getElementById('meuModal').style.display = "none";
}

window.addEventListener('click', (event) => {
    if (event.target == document.getElementById('meuModal')) fecharModal();
});

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
            const menu = dados.map(m => `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia.replace(/'/g, "\\'")}'); return false;"><span>${m.nome_materia}</span></a>`).join("");
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