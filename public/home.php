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
    <title>Home - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/cookie.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
</head>

<body>
<?php renderSidebar(); // Renderiza a sidebar ?>
    
<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main>
        <section class="welcome-section">
            <div class="welcome-text">
                <h2 id="bemvindo">Carregando usuário...</h2>
                <p class="subtitle">SELECIONE UMA MATÉRIA PARA COMEÇAR!</p>
            </div>
        </section>

        <section class="cards-section">
            <div class="group-cards" id="cardsConteudos">
            </div>
        </section>
    </main>

    <?php renderFooter(); ?>

    <!-- Importação do script desacoplado de cookies -->
    <script src="js/cookies.js"></script>

</div>

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

window.onload = () => {
    carregarUsuario(); // Função do header.js (carrega foto e dropdown do perfil)
    carregarSaudacaoHome(); // Carrega o nome na mensagem de boas-vindas da Home
    carregarMenuSidebar(); // Carrega a sidebar e os cards iniciais com cores personalizadas
    inicializarPerfilMobile(); // Ativa o clique na foto de perfil no modo mobile
    inicializarLogoMobile(); // Ativa o clique na logo central da Lumine no modo mobile para ir para a Home
};

// ==========================================================
// SISTEMA DE LOGO MOBILE (REDIRECIONA PARA HOME AO CLICAR NO ÍCONE DA LUMINE)
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
// SISTEMA DE PERFIL MOBILE (1º CLIQUE ABRE INFORMAÇÕES, 2º ABRE CONFIGURAÇÕES)
// ==========================================================
function inicializarPerfilMobile() {
    const mobileProfileContainer = document.querySelector('.mobile-profile-right');
    const desktopItemPerfil = document.querySelector('.item-perfil');

    if (!mobileProfileContainer) return;

    // Clona o dropdown do desktop para dentro do container mobile se ele ainda não estiver lá
    function sincronizarDropdownMobile() {
        const desktopDropdown = document.querySelector('.item-perfil .perfil-dropdown');
        if (!desktopDropdown) return;

        let mobileDropdown = mobileProfileContainer.querySelector('.perfil-dropdown');
        if (!mobileDropdown) {
            mobileDropdown = desktopDropdown.cloneNode(true);
            // Evita IDs duplicados que quebrem seletores do desktop
            mobileDropdown.querySelectorAll('[id]').forEach(el => {
                el.setAttribute('data-original-id', el.id);
                el.removeAttribute('id');
            });

            // Adiciona botão direto para configurações dentro do card se ainda não existir
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
            // Mantém os dados dinâmicos (nome, email, foto) sincronizados após carregarUsuario()
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

    // Observa mudanças no dropdown do desktop (quando carregarUsuario() preencher os dados via fetch)
    if (desktopItemPerfil) {
        const observerPerfil = new MutationObserver(() => {
            sincronizarDropdownMobile();
        });
        observerPerfil.observe(desktopItemPerfil, { childList: true, subtree: true, attributes: true });
    }

    // Executa sincronização inicial com pequenos atrasos para garantir carregamento da API
    sincronizarDropdownMobile();
    setTimeout(sincronizarDropdownMobile, 500);
    setTimeout(sincronizarDropdownMobile, 1500);

    // Controla o clique no ícone de perfil mobile
    mobileProfileContainer.addEventListener('click', function(e) {
        const clicouDentroDoDropdown = e.target.closest('.perfil-dropdown');

        // Se clicou em algum link ou botão dentro do dropdown aberto (ex: Sair, Configurações ou trocar avatar), deixa funcionar normalmente
        if (clicouDentroDoDropdown) {
            return;
        }

        e.preventDefault();
        e.stopPropagation();

        sincronizarDropdownMobile();

        const linkConfigDesktop = desktopItemPerfil ? desktopItemPerfil.querySelector('a.perfil-link, a[href*="config"]') : null;
        const urlConfig = linkConfigDesktop ? linkConfigDesktop.getAttribute('href') : 'configuracoes.php';

        // Se o dropdown já está aberto e o usuário clicou novamente na foto de perfil -> abre configurações
        if (mobileProfileContainer.classList.contains('active')) {
            window.location.href = urlConfig;
        } else {
            // 1º clique: abre o card com as informações do perfil
            mobileProfileContainer.classList.add('active');
        }
    });

    // Fecha o dropdown mobile ao tocar fora dele
    document.addEventListener('click', function(e) {
        if (!mobileProfileContainer.contains(e.target)) {
            mobileProfileContainer.classList.remove('active');
        }
    });
}

// ==========================================================
// CARREGA O NOME DO USUÁRIO NA SAUDAÇÃO DA HOME
// ==========================================================
function carregarSaudacaoHome() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            const nomeUsuario = u.nome ? u.nome.toUpperCase() : "ALUNO";
            document.getElementById("bemvindo").innerHTML = `SEJA BEM-VINDO, <span class="nome-destaque">${nomeUsuario}</span>!!`;
        });
}

// ==========================================================
// SOBRESCREVE carregarMenuSidebar PARA APLICAR AS CORES DO BANCO NOS CARDS DA HOME
// (Usa obterCorTextoLegivel diretamente do header.js)
// ==========================================================
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
                let corDoTexto = obterCorTextoLegivel(corDoCard);

                menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                
                cardsIniciais += `
                    <div onclick="carregarConteudos(${m.id}, '${m.nome_materia}')" class="card-materia">
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
    if (typeof fecharMenuMobile === "function") fecharMenuMobile();
    
    document.querySelector(".subtitle").innerText = `CONTEÚDOS DE: ${nomeMateria.toUpperCase()}`;
    const container = document.getElementById("cardsConteudos");
    container.innerHTML = "<p>Carregando conteúdos...</p>";

    fetch(api + "?tipo=conteudos&id_materia=" + idMateria)
        .then(res => res.json())
        .then(dados => {
            let html = "";
            if(dados.length === 0) {
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

                    html += `
                        <div onclick="abrirModalQuizzes(${c.id}, '${c.nome}')" class="card-materia">
                            <div class="card-banner">
                                <img src="${imagemCard}" onerror="this.src='img/indisponivel.png'">
                            </div>
                            <div class="card-body">
                                <p>${c.nome}</p>
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
                
                // Força recálculo imediato de layout do CSS ao abrir o modal
                forcarAtualizacaoCSSModal();
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
    if (event.target == document.getElementById('meuModal')) fecharModal();
};

// ==========================================================
// SISTEMA DE REFRESH DINÂMICO PARA EVITAR BUGS DE CSS NO RESIZE
// ==========================================================
function forcarAtualizacaoCSSModal() {
    const modalContent = document.querySelector('.modal-content');
    if (modalContent) {
        modalContent.style.transform = 'translateZ(0)';
        requestAnimationFrame(() => {
            modalContent.style.transform = 'none';
        });
    }
}

// Atualização suave via ResizeObserver e evento de Window Resize
window.addEventListener('resize', () => {
    forcarAtualizacaoCSSModal();
});

const observerResize = new ResizeObserver(() => {
    forcarAtualizacaoCSSModal();
});

const modalElem = document.getElementById('meuModal');
if (modalElem) {
    observerResize.observe(modalElem);
}
</script>

</body>
</html>