<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
    include_once("../config/conexao.php");

    // ==========================================================
    // BUSCA AS CORES PERSONALIZADAS E ESCOLARIDADE DO USUÁRIO
    // ==========================================================
    $id_usuario_logado = intval($_SESSION['usuario_id'] ?? 0);
    $sql_pref = "SELECT cores_materia FROM configuracoes WHERE id_usuario = $id_usuario_logado";
    $result_pref = $conn->query($sql_pref);

    $escolaridade_id_usuario = 0;
    if ($id_usuario_logado > 0) {
        $stmt_esc = $conn->prepare("SELECT escolaridade_id FROM usuario WHERE id = ?");
        $stmt_esc->bind_param("i", $id_usuario_logado);
        $stmt_esc->execute();
        $res_esc = $stmt_esc->get_result();
        if ($row_esc = $res_esc->fetch_assoc()) {
            $escolaridade_id_usuario = intval($row_esc['escolaridade_id'] ?? 0);
        }
        $stmt_esc->close();
    }

    // Mapeamento de conteúdos por ano/escolaridade (IDs reais da tabela `conteudo` no luminebd.sql)
    $conteudos_por_escolaridade = [
        // 1 - Ensino médio completo (Revisão geral do Ensino Médio)
        1 => [
            5, 6, 7, 8, 9, 10, 11, 12,
            13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
            23, 24, 25, 26, 27, 28, 29, 30, 31, 32,
            33, 34, 35, 36, 37, 38, 39, 40, 41,
            49, 50, 51, 52, 53, 54, 55, 56,
            57, 58, 59, 60, 61, 62, 63,
            64, 65, 66, 67, 68, 69, 70,
            71, 72, 73, 74, 75, 76, 77,
            78, 79, 80, 81, 82, 83, 84, 85, 86, 87,
            88, 89, 90, 91, 92, 93, 94, 95, 96,
            97, 98, 99, 100, 101, 102, 103, 104,
            105, 106, 107, 108, 109, 110, 111, 112
        ],
        // 2 - 1º ANO (ENSINO FUNDAMENTAL 1) - Sem Física, Química, Biologia, Filosofia e Sociologia
        2 => [1, 13, 14, 42, 43, 48, 84, 85, 87, 93, 95],
        // 3 - 2º ANO (ENSINO FUNDAMENTAL 1) - Sem Física, Química, Biologia, Filosofia e Sociologia
        3 => [1, 2, 13, 14, 15, 43, 44, 48, 84, 85, 86, 87, 93, 94, 95],
        // 4 - 3º ANO (ENSINO FUNDAMENTAL 1) - Sem Física, Química, Biologia, Filosofia e Sociologia
        4 => [1, 2, 3, 13, 14, 15, 23, 28, 33, 35, 37, 42, 46, 47, 48, 78, 79, 86, 87, 90, 91, 95, 96],
        // 5 - 4º ANO (ENSINO FUNDAMENTAL 1) - Sem Física, Química, Biologia, Filosofia e Sociologia
        5 => [2, 3, 4, 9, 13, 14, 15, 16, 28, 29, 33, 34, 35, 36, 37, 42, 44, 45, 46, 48, 78, 79, 84, 85, 88, 89, 90, 94],
        // 6 - 5º ANO (ENSINO FUNDAMENTAL 1) - Sem Física, Química, Biologia, Filosofia e Sociologia
        6 => [3, 4, 5, 9, 10, 13, 16, 17, 18, 19, 28, 29, 30, 34, 39, 40, 42, 43, 45, 46, 47, 48, 78, 82, 83, 87, 88, 89, 92, 94],
        // 7 - 6º ANO (ENSINO FUNDAMENTAL 2)
        7 => [3, 4, 9, 11, 13, 16, 17, 22, 23, 24, 33, 34, 35, 37, 42, 44, 48, 71, 75, 76],
        // 8 - 7º ANO (ENSINO FUNDAMENTAL 2)
        8 => [5, 6, 7, 9, 17, 18, 19, 22, 25, 26, 28, 36, 39, 40, 43, 45, 47, 72, 75, 76],
        // 9 - 8º ANO (ENSINO FUNDAMENTAL 2)
        9 => [5, 6, 7, 9, 11, 12, 18, 19, 20, 22, 26, 27, 29, 34, 38, 39, 41, 43, 46, 47, 72, 73, 74, 76],
        // 10 - 9º ANO (ENSINO FUNDAMENTAL 2)
        10 => [7, 8, 9, 11, 12, 20, 21, 22, 30, 31, 32, 38, 40, 41, 46, 47, 73, 74, 76, 77],
        // 11 - 1º ANO (ENSINO MÉDIO)
        11 => [5, 6, 8, 9, 13, 16, 22, 23, 24, 25, 26, 33, 34, 35, 37, 49, 50, 51, 52, 57, 58, 59, 64, 67, 68, 71, 72, 76, 97, 98, 99, 105, 106, 107, 108],
        // 12 - 2º ANO (ENSINO MÉDIO)
        12 => [9, 10, 11, 12, 18, 19, 20, 21, 26, 27, 28, 29, 36, 39, 40, 53, 54, 55, 60, 61, 62, 68, 69, 70, 73, 74, 76, 77, 100, 102, 103, 109, 110, 111],
        // 13 - 3º ANO (ENSINO MÉDIO)
        13 => [5, 6, 8, 9, 10, 13, 20, 21, 22, 30, 31, 32, 38, 40, 41, 49, 51, 56, 59, 62, 63, 65, 66, 67, 75, 76, 77, 101, 102, 104, 110, 111, 112]
    ];

    $recomendados_banco = [];
    if ($escolaridade_id_usuario > 0) {
        $ids_permitidos = $conteudos_por_escolaridade[$escolaridade_id_usuario] ?? [];
        $placeholders = count($ids_permitidos) > 0
            ? implode(',', array_fill(0, count($ids_permitidos), '?'))
            : '0';

        $sql_rec = "
            SELECT DISTINCT
                q.id,
                q.nome,
                q.id_dificuldade,
                q.id_conteudo,
                q.imagem_quiz,
                c.nome AS conteudo,
                m.id AS id_materia,
                m.nome_materia,
                d.dificuldade
            FROM quizzes q
            INNER JOIN conteudo c ON q.id_conteudo = c.id
            INNER JOIN materia m ON c.id_materia = m.id
            INNER JOIN conteudo_escolaridade ce ON ce.id_conteudo = c.id
            LEFT JOIN dificuldade d ON q.id_dificuldade = d.id
            WHERE ce.id_escolaridade = ?
              AND c.id IN ($placeholders)
              AND NOT (? BETWEEN 2 AND 6 AND m.id IN (6, 7, 8, 12, 13))
              AND (
                  (? BETWEEN 2 AND 6 AND q.id_dificuldade = 1)
                  OR (? BETWEEN 7 AND 10 AND q.id_dificuldade IN (1, 2))
                  OR (? IN (1, 11, 12, 13) AND q.id_dificuldade IN (2, 3))
              )
            ORDER BY q.id DESC
        ";

        $stmt_rec = $conn->prepare($sql_rec);
        $types = "i" . str_repeat("i", count($ids_permitidos)) . "iiii";
        $params = array_merge(
            [$escolaridade_id_usuario],
            $ids_permitidos,
            [
                $escolaridade_id_usuario,
                $escolaridade_id_usuario,
                $escolaridade_id_usuario,
                $escolaridade_id_usuario
            ]
        );
        $stmt_rec->bind_param($types, ...$params);
        $stmt_rec->execute();
        $res_rec = $stmt_rec->get_result();
        while ($row_rec = $res_rec->fetch_assoc()) {
            $recomendados_banco[] = $row_rec;
        }
        $stmt_rec->close();
    }

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
const escolaridadeUsuarioLogado = <?php echo intval($escolaridade_id_usuario); ?>;
const recomendadosBanco = <?php echo json_encode($recomendados_banco); ?>;
const conteudosPorEscolaridadeBNCC = <?php echo json_encode($conteudos_por_escolaridade); ?>;

// IDs e nomes das matérias que NÃO aparecem do 1º ao 5º ano (escolaridade_id 2 a 6)
const MATERIAS_RESTRITAS_FUND1_IDS = [6, 7, 8, 12, 13];
const MATERIAS_RESTRITAS_FUND1_NOMES = ['fisica', 'quimica', 'biologia', 'filosofia', 'sociologia'];

let listaQuizzesGlobal = [];
let urlDestinoQuiz = "";

function normalizarTexto(texto) {
    return (texto || '').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").trim();
}

function materiaRestritaParaFundamental1(idMateria, nomeMateria) {
    if (escolaridadeUsuarioLogado < 2 || escolaridadeUsuarioLogado > 6) return false;
    if (idMateria && MATERIAS_RESTRITAS_FUND1_IDS.includes(Number(idMateria))) return true;
    const nomeNorm = normalizarTexto(nomeMateria);
    return MATERIAS_RESTRITAS_FUND1_NOMES.includes(nomeNorm);
}

// Carrega os conteúdos da matéria clicada na sidebar nesta própria página
function carregarConteudos(idMateria, nomeMateria) {
    if (window.event) window.event.preventDefault();
    if (typeof fecharMenuMobile === "function") fecharMenuMobile();

    if (materiaRestritaParaFundamental1(idMateria, nomeMateria)) {
        return;
    }

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
            const permitidosAno = conteudosPorEscolaridadeBNCC[escolaridadeUsuarioLogado] || [];
            const dadosFiltrados = Array.isArray(dados) && permitidosAno.length > 0
                ? dados.filter(c => permitidosAno.map(Number).includes(Number(c.id)))
                : dados;

            if (!dadosFiltrados || dadosFiltrados.length === 0) {
                html = "<p>Nenhum conteúdo disponível para esta matéria.</p>";
            } else {
                dadosFiltrados.forEach(c => {
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
// ATUALIZAÇÃO CONFIG-MOBILE 
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
            const materiasFiltradas = Array.isArray(dados)
                ? dados.filter(m => !materiaRestritaParaFundamental1(m.id, m.nome_materia))
                : [];
            const menu = materiasFiltradas.map(m => `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia.replace(/'/g, "\\'")}'); return false;"><span>${m.nome_materia}</span></a>`).join("");
            if (document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menu;
            if (document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menu;
        })
        .catch(e => console.error("Erro na sidebar:", e));
}

// Filtra os quizzes de acordo com escolaridade_id, e conteúdos 
function filtrarPorEscolaridade(quizzes, escolaridadeId) {
    if (!Array.isArray(quizzes) || !escolaridadeId) return quizzes;

    const conteudosPermitidos = conteudosPorEscolaridadeBNCC[Number(escolaridadeId)] || [];

    return quizzes.filter(q => {
        if (materiaRestritaParaFundamental1(q.id_materia, q.nome_materia)) {
            return false;
        }

        if (conteudosPermitidos.length > 0 && q.id_conteudo) {
            if (!conteudosPermitidos.map(Number).includes(Number(q.id_conteudo))) {
                return false;
            }
        }

        if (Array.isArray(q.escolaridades) && q.escolaridades.length > 0) {
            if (!q.escolaridades.map(Number).includes(Number(escolaridadeId))) {
                return false;
            }
        } else if (q.id_escolaridade !== undefined && q.id_escolaridade !== null) {
            if (Number(q.id_escolaridade) !== Number(escolaridadeId)) {
                return false;
            }
        }

        const dif = Number(q.id_dificuldade);
        if (!dif) return true;

        if (escolaridadeId >= 2 && escolaridadeId <= 6) {
            return dif === 1;
        }

        if (escolaridadeId >= 7 && escolaridadeId <= 10) {
            return dif === 1 || dif === 2;
        }

        if (escolaridadeId === 1 || (escolaridadeId >= 11 && escolaridadeId <= 13)) {
            return dif === 2 || dif === 3;
        }

        return true;
    });
}

async function carregarQuizzesRecomendados() {
    try {
        if (!escolaridadeUsuarioLogado) {
            document.getElementById("tituloSecao").innerText = "Aviso";
            document.getElementById("containerCards").innerHTML = `
                <div class="aviso-escolaridade">
                    <p>Selecione sua escolaridade para receber recomendações personalizadas.</p>
                    <button onclick="window.location.href='home.php'" class="btn-escolaridade">Escolher Escolaridade</button>
                </div>`;
            return;
        }

        // Prioriza a consulta já filtrada diretamente do banco de dados
        let baseDados = Array.isArray(recomendadosBanco) ? recomendadosBanco : [];

        if (baseDados.length === 0) {
            const url = `${api}?tipo=recomendados&escolaridade_id=${escolaridadeUsuarioLogado}`;
            const response = await fetch(url);
            const dados = await response.json();

            if (dados && dados.erro) {
                document.getElementById("tituloSecao").innerText = "Aviso";
                document.getElementById("containerCards").innerHTML = `
                    <div class="aviso-escolaridade">
                        <p>${dados.erro}</p>
                        ${dados.precisa_escolaridade ? `<button onclick="window.location.href='home.php'" class="btn-escolaridade">Escolher Escolaridade</button>` : ''}
                    </div>`;
                return;
            }
            baseDados = Array.isArray(dados) ? dados : [];
        }

        listaQuizzesGlobal = filtrarPorEscolaridade(baseDados, escolaridadeUsuarioLogado);
        document.getElementById("tituloSecao").innerText = "Recomendados para o seu Perfil";
        renderizarCards(listaQuizzesGlobal);

    } catch (e) {
        console.error("Erro ao buscar recomendações:", e);
        if (Array.isArray(recomendadosBanco) && recomendadosBanco.length > 0) {
            listaQuizzesGlobal = filtrarPorEscolaridade(recomendadosBanco, escolaridadeUsuarioLogado);
            document.getElementById("tituloSecao").innerText = "Recomendados para o seu Perfil";
            renderizarCards(listaQuizzesGlobal);
            return;
        }
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