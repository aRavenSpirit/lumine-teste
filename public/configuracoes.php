<?php
    require_once("../config/conexao.php");
    include_once("../config/session.php");
    include_once("../config/layout.php");

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
    <title>Home - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/configuracoes.css" id="cssConfiguracoes">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">

    <!-- CropperJS CSS & JS para o Mini-Sistema de Recorte 1:1 -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.13/cropper.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.13/cropper.min.js"></script>
</head>

<body>

<?php renderSidebar(); ?>

<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main id="mainConteudo">
        <section class="cards-section">
            <div class="container-principal">

                <div class="container-aside">
                    <div class="titulo-perfil-aside">PERFIL</div>

                    <div class="container-aside-btn">
                        <div class="btn-aba active card-btn" onclick="carregarPerfil('usuario', event)">
                            <span class="btn-aba-title">USUÁRIO</span>
                            <i class="fas fa-user-circle aba-icon"></i>
                        </div>
    
                        <div class="btn-aba card-btn" onclick="carregarPerfil('preferencias', event)">
                            <span class="btn-aba-title">PREFERÊNCIAS</span>
                            <i class="fas fa-cogs aba-icon"></i>
                        </div>
    
                        <div class="btn-aba card-btn" onclick="carregarPerfil('historico', event)">
                            <span class="btn-aba-title">HISTÓRICO</span>
                            <i class="fas fa-file-alt aba-icon"></i>
                        </div>
                    </div>
                </div>

                <div id="card-opcoes">
                    <h3>Selecione uma opção ao lado</h3>
                </div>

                <!-- Modal de Edição Básica de Perfil -->
                <div id="modalPerfil" class="modal" style="display:none;">
                    <div class="modal-content">
                        <div id="modal-form-content"></div>
                    </div>
                </div>

                <!-- MODAL DO MINI-SISTEMA DE CORTE DE FOTO -->
                <div id="modalCropperFoto" class="modal-cropper" style="display:none;">
                    <div class="modal-cropper-content">
                        <h3>Ajustar Foto</h3>
                        
                        <div class="img-container-cropper">
                            <img id="imagemParaCorte" src="" alt="Imagem para cortar">
                        </div>

                        <div class="botoes-cropper">
                            <button type="button" class="btn-cancelar-cropper" onclick="fecharModalCropper()">Cancelar</button>
                            <button type="button" class="btn-confirmar-cropper" onclick="confirmarCorteEUpload()">Salvar Foto</button>
                        </div>
                    </div>
                </div>

            </div>
        </section>
    </main>

    <?php renderFooter(); ?>

</div>

<!-- Modais para visualização dos quizzes da matéria clicada na sidebar -->
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

<!-- Scripts Globais e de Layout -->
<script src="js/tamanho_fonte.js"></script>
<script src="js/dark-mode.js"></script>

<!-- Script do Header (Contém funções de Header, Sidebar, Perfil e Resize global) -->
<script src="js/header.js"></script>

<!-- Script Específico da Página de Configurações -->
<script>
    const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
    let urlDestinoQuiz = "";
    let dadosUsuarioLocal = {};
    let materiaSelecionadaAtual = 'portugues';
    let cropperInstance = null;
    let arquivoSelecionado = null;
    let senhaValidaConfig = true;

    // Carrega os conteúdos da matéria clicada na sidebar nesta própria página (100% idêntico à Home/Novidades)
    function carregarConteudos(idMateria, nomeMateria) {
        if (window.event) window.event.preventDefault();
        if (typeof fecharMenuMobile === "function") fecharMenuMobile();

        // Desativa o CSS exclusivo da tela de configurações para não aplicar borda preta nem fundo azul
        const cssConfig = document.getElementById("cssConfiguracoes");
        if (cssConfig) cssConfig.disabled = true;

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

    async function carregarPerfil(tipo, event = null) {
        const cardOpcoes = document.getElementById('card-opcoes');
        const id_usuario = <?php echo $_SESSION['usuario_id'] ?? 0; ?>;
        
        document.querySelectorAll('.btn-aba').forEach(btn => {
            btn.classList.remove('active');
        });
        
        if (event) {
            event.currentTarget.classList.add('active');
        } else {
            const abas = document.querySelectorAll('.btn-aba');
            abas.forEach(btn => {
                if (btn.querySelector('.btn-aba-title') && btn.querySelector('.btn-aba-title').textContent.toLowerCase() === tipo.toLowerCase()) {
                    btn.classList.add('active');
                }
            });
        }

        cardOpcoes.innerHTML = "<p style='text-align:center; margin-top:20px; font-weight:bold;'>Carregando...</p>";

        try {
            const resData = await fetch(`${api}?tipo=${tipo}`);
            const data = await resData.json();

            if (typeof aplicarTamanhoFonteGlobal === "function" && data && data.tamanho_fonte) {
                aplicarTamanhoFonteGlobal(data.tamanho_fonte);
                aplicarClasseTamanhoFonteBody(data.tamanho_fonte);
            }

            let html = '';
            
            if (tipo === 'usuario') {
                dadosUsuarioLocal = data;
                const resEsc = await fetch(`${api}?tipo=lista_escolaridades`);
                const listaEscolaridades = await resEsc.json();
                let optionsHtml = listaEscolaridades.map(esc => `
                    <option value="${esc.id_escolaridade}" ${esc.id_escolaridade == data.escolaridade_id ? 'selected' : ''}>
                        ${esc.nome_escolaridade}
                    </option>
                `).join('');

                const possuiFoto = !!data.foto_perfil;
                const fotoHtml = possuiFoto 
                    ? `<img src="${data.foto_perfil}" class="avatar-preview-img" id="avatarImg">`
                    : `<div class="avatar-preview" id="avatarImg" style="width: 100%; height: 100%; font-size: 5rem;"><i class="fas fa-smile"></i></div>`;

                const textoFoto = possuiFoto ? "Altere a foto" : "Adicione uma foto";

                html = `
                    <div class="perfil-discord-style perfil-container-flex">
                        <div class="coluna-dados-perfil">
                            <div class="input-pill-container">
                                <input type="text" id="edit-nome-input" class="input-pill" value="${data.nome || ''}" placeholder="Novo nome de usuário">
                            </div>

                            <div class="input-pill-container">
                                <input type="email" id="edit-email-input" class="input-pill" value="${data.email || ''}" placeholder="Novo e-mail">
                            </div>

                            <div class="input-pill-container">
                                <select id="edit-escolaridade" class="select-pill">
                                    <option value="" disabled ${!data.escolaridade_id ? 'selected' : ''}>Escolaridade</option>
                                    ${optionsHtml}
                                </select>
                            </div>

                            <div class="input-pill-container" style="position: relative; width: 100%;">
                                <input type="password" id="edit-senha-input" class="input-pill" placeholder="Nova senha (opcional)" oninput="validarSenhaConfiguracoes()">
                                <i onclick="toggleSenhaConfig()" class="fas fa-eye olho-senha"></i>
                                <div id="balao-aviso-config" class="balao-aviso" style="display:none;"></div>
                            </div>

                            <div class="input-pill-container" style="position: relative; width: 100%;">
                                <input type="password" id="edit-confirma-senha-input" class="input-pill" placeholder="Confirme a nova senha">
                                <i onclick="toggleConfirmarSenhaConfig()" class="fas fa-eye olho-senha-confirmar"></i>
                            </div>

                            <div class="barra-seguranca" style="margin-bottom: 15px;">
                                <div id="seg-length" class="segmento" data-label="Comprimento"></div>
                                <div id="seg-uppercase" class="segmento" data-label="Maiúscula"></div>
                                <div id="seg-number" class="segmento" data-label="Número"></div>
                                <div id="seg-special" class="segmento" data-label="Especial"></div>
                            </div>

                            <div class="aviso-minimo">Mínimo: 8 caracteres.</div>

                            <div class="acoes-perfil-botoes">
                                <button class="btn-salvar-pill" onclick="salvarGeral()">Salvar</button>
                                <button class="btn-excluir-conta" onclick="excluirConta()">Excluir Conta</button>
                            </div>
                        </div>

                        <div class="coluna-foto-perfil">
                            <div class="avatar-upload-container container-upload-pagina" onclick="document.getElementById('inputFotoPerfilPagina').click()">
                                <div id="avatarWrapper">
                                    ${fotoHtml}
                                </div>
                                <input type="file" id="inputFotoPerfilPagina" accept="image/*" style="display: none;" onchange="iniciarCropperPerfil(this)">
                            </div>
                            <span class="titulo-foto-label" onclick="document.getElementById('inputFotoPerfilPagina').click()">${textoFoto}</span>
                        </div>
                    </div>
                `;
            }
            else if (tipo === 'preferencias') {
                let cores = data.cores_materia;
                if (typeof cores === 'string') {
                    try { cores = JSON.parse(cores); } catch(e) { cores = {}; }
                }
                cores = cores || {};

                const listaMateriasPadrao = [
                    { key: 'portugues', nome: 'Português', color: '#8fa8cb' },
                    { key: 'matematica', nome: 'Matemática', color: '#1892be' },
                    { key: 'historia', nome: 'História', color: '#cd71d8' },
                    { key: 'geografia', nome: 'Geografia', color: '#fbb355' },
                    { key: 'filosofia', nome: 'Filosofia', color: '#9ad0f5' },
                    { key: 'sociologia', nome: 'Sociologia', color: '#b2f0a5' },
                    { key: 'ciencias_da_natureza', nome: 'Ciências da Natureza', color: '#00c882' },
                    { key: 'artes', nome: 'Artes', color: '#5b63f6' },
                    { key: 'ingles', nome: 'Inglês', color: '#f3c246' },
                    { key: 'fisica', nome: 'Física', color: '#ff5c5c' },
                    { key: 'quimica', nome: 'Química', color: '#00cc7a' },
                    { key: 'biologia', nome: 'Biologia', color: '#00d68f' },
                    { key: 'educacao_fisica', nome: 'Educação Física', color: '#f7d363' }                 
                ];

                materiaSelecionadaAtual = listaMateriasPadrao[0].key;
                let nomeInicial = listaMateriasPadrao[0].nome;
                let corInicial = cores[materiaSelecionadaAtual] || listaMateriasPadrao[0].color;

                let cardsHtml = listaMateriasPadrao.map((item, idx) => {
                    let corAtual = cores[item.key] || item.color;
                    let corTexto = obterCorTextoLegivel(corAtual);
                    let classeInicial = idx === 0 ? 'selecionada-compacto' : '';

                    return `
                        <div class="materia-pill ${classeInicial}"
                             id="pill-${item.key}"
                             data-nome-completo="${item.nome}"
                             title="${item.nome}"
                             style="background-color:${corAtual}; color:${corTexto};"
                             onclick="selecionarMateriaCor('${item.key}')">

                            <span style="color:${corTexto};">${item.nome}</span>

                            <input type="color"
                                   id="picker-${item.key}"
                                   value="${corAtual}"
                                   style="display:none"
                                   onchange="alterarCorMateria('${item.key}', this.value)">
                        </div>
                    `;
                }).join('');

                const temaBanco = (data.tema !== undefined && data.tema !== null) ? String(data.tema) : (localStorage.getItem("theme") === "dark" ? "1" : "0");
                if (temaBanco === "1") {
                    localStorage.setItem("theme", "dark");
                    document.body.classList.add("dark-mode");
                } else {
                    localStorage.setItem("theme", "light");
                    document.body.classList.remove("dark-mode");
                }

                const classeIcone = temaBanco === "1" ? "fas fa-moon" : "fas fa-sun";

                html = `
                    <div class="preferencias-container-visual" id="preferenciasContainerVisual">
                        <div class="sessao-cores-layout">
                            <div class="grid-materias-pills">
                                ${cardsHtml}
                            </div>
                            
                            <div class="color-picker-box-real">
                                <label for="picker-painel-real" class="color-picker-preview" id="preview-box" style="background-color: ${corInicial}; cursor: pointer;">
                                    <div class="preview-overlay">
                                        <i class="fas fa-palette"></i>
                                        <span>Clique para alterar a cor</span>
                                    </div>
                                </label>
                                <div id="materia-selecionada-badge" class="materia-selecionada-badge">${nomeInicial}</div>
                                <input type="color" id="picker-painel-real" value="${corInicial}" onchange="atualizarCorPainelPrincipal(this.value)" style="opacity: 0; width: 0; height: 0; position: absolute;">
                            </div>
                        </div>

                        <div class="container-controles-estilizados">
                            <div class="controles-estilizados">
                                <span class="label-estilizada">Modo:</span>
                                <input type="hidden" id="pref-tema" value="${temaBanco}">
                                
                                <div class="botoes-tema-container">
                                    <button type="button" 
                                            class="btn-tema-toggle" 
                                            id="btn-tema-unico"
                                            onclick="alternarTemaUnico()" 
                                            title="Alternar Modo">
                                        <i id="icone-tema-unico" class="${classeIcone}"></i>
                                    </button>
                                </div>
                            </div>

                            <div class="controles-estilizados">
                                <label for="pref-fonte" class="label-estilizada">Tamanho da letra:</label>
                                <select id="pref-fonte" class="select-arredondado" aria-label="Selecione o tamanho do texto" onchange="mudarFonteLocal(this.value)">
                                    <option value="1" data-completo="Pequeno" data-curto="P" ${data.tamanho_fonte == 1 ? 'selected' : ''}>Pequeno</option>
                                    <option value="2" data-completo="Médio" data-curto="M" ${data.tamanho_fonte == 2 || !data.tamanho_fonte ? 'selected' : ''}>Médio</option>
                                    <option value="3" data-completo="Grande" data-curto="G" ${data.tamanho_fonte == 3 ? 'selected' : ''}>Grande</option>
                                </select>
                            </div>
                        </div>

                        <button class="btn-salvar-pill btn-salvar-preferencias" onclick="salvarConfiguracoesGerais()">Salvar</button>
                    </div>
                `;
            }
            else if (tipo === 'historico') {
                let cardsHistorico = data.map(h => {
                    let classeDificuldade = 'facil';
                    let difUpper = (h.dificuldade || '').toUpperCase();
                    if (difUpper.includes('MÉD') || difUpper.includes('MED')) classeDificuldade = 'medio';
                    if (difUpper.includes('DIFÍ') || difUpper.includes('DIFI')) classeDificuldade = 'dificil';

                    let matSigla = (h.nome_materia || 'MAT').substring(0, 3).toUpperCase();

                    return `
                        <div class="historico-card" id="tentativa-${h.id_tentativa}" onclick="toggleSelecaoCard(${h.id_tentativa}, event)">
                            <div class="checkbox-circulo" id="check-${h.id_tentativa}">
                                <i class="fas fa-check"></i>
                            </div>

                            <div class="historico-badges">
                                <div class="badge-materia">${matSigla}</div>
                                <div class="badge-dificuldade-pill ${classeDificuldade}">${difUpper || 'FÁCIL'}</div>
                            </div>
                            <div class="historico-detalhes">
                                <h4>${h.titulo_quiz || h.nome_conteudo || 'Sem título'}</h4>
                                <p>Conteúdo: <span>${h.nome_conteudo || ''}</span></p>
                            </div>
                            <div class="historico-acoes">
                                <button onclick="excluirHistorico(${h.id_tentativa}); event.stopPropagation();" class="btn-lixeira" title="Excluir">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                                <span class="historico-data">${h.data_resolucao || ''}</span>
                            </div>
                        </div>
                    `;
                }).join('');

                const possuiRegistros = Array.isArray(data) && data.length > 0;

                html = `
                    <div class="historico-header-acoes">
                        ${possuiRegistros ? `
                            <div class="grupo-botoes-historico">
                                <button class="btn-selecionar-todos" onclick="alternarSelecionarTodos()">
                                    <i class="far fa-check-square"></i> Selecionar Todos
                                </button>
                                <button class="btn-excluir-selecionados" id="btnExcluirSelecionados" onclick="excluirSelecionados()" disabled>
                                    <i class="fas fa-trash-alt"></i> Excluir Selecionados (<span id="countSelecionados">0</span>)
                                </button>
                            </div>
                        ` : ''}
                    </div>
                    <div class="historico-container-scroll">
                        ${cardsHistorico || '<p style="text-align:center; padding: 20px; font-weight: bold;">Você ainda não resolveu nenhum quiz.</p>'}
                    </div>
                `;
            }

            cardOpcoes.innerHTML = html;

            // Atualiza imediatamente o layout compacto caso a aba carregada seja 'preferencias'
            if (tipo === 'preferencias') {
                atualizarLayoutPreferenciasResponsivo();
            }

        } catch (error) {
            console.error("Erro:", error);
            cardOpcoes.innerHTML = "<p style='text-align:center; margin-top:20px; color:red;'>Erro ao carregar dados.</p>";
        }
    }

    /* =========================================================================
       SISTEMA RESPONSIVO DE PREFERÊNCIAS (P/M/G + QUADRADINHOS + MONITOR DE PROPORÇÃO)
       ========================================================================= */
    function atualizarLayoutPreferenciasResponsivo() {
        const containerPref = document.getElementById('preferenciasContainerVisual');
        if (!containerPref) return;

        const larguraJanela = window.innerWidth;
        const larguraCardOpcoes = document.getElementById('card-opcoes')?.offsetWidth || larguraJanela;
        
        const isMobile = larguraJanela <= 900;
        const ativarModoCompacto = !isMobile && (larguraJanela <= 1140 || larguraCardOpcoes <= 560);

        const selectFonte = document.getElementById('pref-fonte');
        const pillsMaterias = containerPref.querySelectorAll('.materia-pill');
        const badgeMateria = document.getElementById('materia-selecionada-badge');

        if (ativarModoCompacto) {
            containerPref.classList.add('modo-compacto-preferencias');

            if (selectFonte) {
                Array.from(selectFonte.options).forEach(opt => {
                    if (opt.dataset.curto) opt.textContent = opt.dataset.curto;
                });
            }

            pillsMaterias.forEach(pill => {
                pill.classList.add('modo-compacto-ativo');
                const span = pill.querySelector('span');
                const nomeCompleto = pill.dataset.nomeCompleto || (span ? span.textContent.trim() : '');
                if (span && nomeCompleto) {
                    span.textContent = nomeCompleto.charAt(0).toUpperCase();
                }
            });

            const pillAtiva = document.getElementById(`pill-${materiaSelecionadaAtual}`);
            if (badgeMateria && pillAtiva) {
                badgeMateria.textContent = pillAtiva.dataset.nomeCompleto || '';
            }
        } else {
            containerPref.classList.remove('modo-compacto-preferencias');

            if (selectFonte) {
                Array.from(selectFonte.options).forEach(opt => {
                    if (opt.dataset.completo) opt.textContent = opt.dataset.completo;
                });
            }

            pillsMaterias.forEach(pill => {
                pill.classList.remove('modo-compacto-ativo');
                const span = pill.querySelector('span');
                const nomeCompleto = pill.dataset.nomeCompleto;
                if (span && nomeCompleto) {
                    span.textContent = nomeCompleto;
                }
            });
        }
    }

    function iniciarMonitorProporcaoConfiguracoes() {
        window.addEventListener('resize', atualizarLayoutPreferenciasResponsivo);

        let ultimoDPR = window.devicePixelRatio;
        function observarZoom() {
            matchMedia(`(resolution: ${window.devicePixelRatio}dppx)`).addEventListener('change', () => {
                if (window.devicePixelRatio !== ultimoDPR) {
                    ultimoDPR = window.devicePixelRatio;
                }
                atualizarLayoutPreferenciasResponsivo();
                if (typeof ajustarTextoHeaderQuizzes === 'function') {
                    ajustarTextoHeaderQuizzes();
                }
                observarZoom();
            }, { once: true });
        }
        observarZoom();

        const cardOpcoesEl = document.getElementById('card-opcoes');
        if (cardOpcoesEl && typeof ResizeObserver !== 'undefined') {
            const observerContainer = new ResizeObserver(() => {
                atualizarLayoutPreferenciasResponsivo();
            });
            observerContainer.observe(cardOpcoesEl);
        }
    }

    function mudarFonteLocal(val) {
        if (typeof aplicarTamanhoFonteGlobal === "function") {
            aplicarTamanhoFonteGlobal(val);
        }
        aplicarClasseTamanhoFonteBody(val);
        atualizarLayoutPreferenciasResponsivo();
    }

    let selecionadosHistorico = new Set();

    function toggleSelecaoCard(idTentativa, event) {
        if (event.target.closest('.btn-lixeira')) return;

        const card = document.getElementById(`tentativa-${idTentativa}`);
        const check = document.getElementById(`check-${idTentativa}`);

        if (selecionadosHistorico.has(idTentativa)) {
            selecionadosHistorico.delete(idTentativa);
            card.classList.remove('selecionado');
            check.classList.remove('ativo');
        } else {
            selecionadosHistorico.add(idTentativa);
            card.classList.add('selecionado');
            check.classList.add('ativo');
        }

        atualizarContadorSelecao();
    }

    function alternarSelecionarTodos() {
        const todosCards = document.querySelectorAll('.historico-card');
        
        if (selecionadosHistorico.size === todosCards.length && todosCards.length > 0) {
            selecionadosHistorico.clear();
            todosCards.forEach(card => {
                card.classList.remove('selecionado');
                const check = card.querySelector('.checkbox-circulo');
                if (check) check.classList.remove('ativo');
            });
        } else {
            todosCards.forEach(card => {
                const id = parseInt(card.id.replace('tentativa-', ''));
                selecionadosHistorico.add(id);
                card.classList.add('selecionado');
                const check = card.querySelector('.checkbox-circulo');
                if (check) check.classList.add('ativo');
            });
        }

        atualizarContadorSelecao();
    }

    function atualizarContadorSelecao() {
        const total = selecionadosHistorico.size;
        const countSpan = document.getElementById('countSelecionados');
        const btnExcluir = document.getElementById('btnExcluirSelecionados');

        if (countSpan) countSpan.textContent = total;
        if (btnExcluir) {
            btnExcluir.disabled = total === 0;
        }
    }

    async function excluirSelecionados() {
        if (selecionadosHistorico.size === 0) return;

        const quantidade = selecionadosHistorico.size;

        if (typeof exibirModalConfirmacao === 'function') {
            exibirModalConfirmacao(
                `Deseja realmente apagar ${quantidade} item(ns) selecionado(s) do histórico?`,
                async function() {
                    const arrayIds = Array.from(selecionadosHistorico);
                    const formData = new FormData();
                    formData.append('acao', 'excluir_historicos_selecionados');
                    formData.append('ids', JSON.stringify(arrayIds));

                    try {
                        const response = await fetch(api, { method: 'POST', body: formData });
                        const result = await response.json();

                        if (result.success) {
                            selecionadosHistorico.clear();
                            carregarPerfil('historico');
                            if (typeof exibirModalSucesso === 'function') {
                                exibirModalSucesso("Itens excluídos com sucesso!");
                            }
                        } else {
                            if (typeof exibirModalSucesso === 'function') {
                                exibirModalSucesso("Erro ao excluir itens: " + (result.error || "Erro desconhecido."), "ERRO");
                            } else {
                                alert("Erro ao excluir itens: " + (result.error || "Erro desconhecido."));
                            }
                        }
                    } catch (error) {
                        console.error("Erro na exclusão em lote:", error);
                    }
                },
                "EXCLUIR HISTÓRICO"
            );
        }
    }

    function toggleSenhaConfig() {
        const input = document.getElementById("edit-senha-input");
        const icone = document.querySelector(".input-pill-container .olho-senha");
        if (input && icone) {
            if (input.type === "password") {
                input.type = "text";
                icone.classList.replace("fa-eye", "fa-eye-slash");
            } else {
                input.type = "password";
                icone.classList.replace("fa-eye-slash", "fa-eye");
            }
        }
    }

    function toggleConfirmarSenhaConfig() {
        const input = document.getElementById("edit-confirma-senha-input");
        const icone = document.querySelector(".input-pill-container .olho-senha-confirmar");
        if (input && icone) {
            if (input.type === "password") {
                input.type = "text";
                icone.classList.replace("fa-eye", "fa-eye-slash");
            } else {
                input.type = "password";
                icone.classList.replace("fa-eye-slash", "fa-eye");
            }
        }
    }

    function selecionarMateriaCor(materia) {
        materiaSelecionadaAtual = materia;

        document.querySelectorAll('.materia-pill').forEach(p => p.classList.remove('selecionada-compacto'));
        const pillSelecionada = document.getElementById(`pill-${materia}`);
        const badgeMateria = document.getElementById('materia-selecionada-badge');

        if (pillSelecionada) {
            pillSelecionada.classList.add('selecionada-compacto');
            if (badgeMateria) {
                badgeMateria.textContent = pillSelecionada.dataset.nomeCompleto || '';
            }
        }

        const pickerOc = document.getElementById(`picker-${materia}`);
        const pickerPainel = document.getElementById('picker-painel-real');
        const previewBox = document.getElementById('preview-box');

        if (pickerOc && pickerPainel && previewBox) {
            pickerPainel.value = pickerOc.value;
            previewBox.style.backgroundColor = pickerOc.value;
            pickerPainel.click();
        }
    }

    function atualizarCorPainelPrincipal(novaCor) {
        if (!materiaSelecionadaAtual) return;
        alterarCorMateria(materiaSelecionadaAtual, novaCor);
    }

    function alterarCorMateria(materia, novaCor) {
        const pill = document.getElementById(`pill-${materia}`);
        const corTexto = obterCorTextoLegivel(novaCor);

        if (pill) {
            pill.style.backgroundColor = novaCor;
            pill.style.color = corTexto;
            
            const spanTexto = pill.querySelector('span');
            if (spanTexto) spanTexto.style.color = corTexto;
        }
        
        const pickerOc = document.getElementById(`picker-${materia}`);
        if(pickerOc) pickerOc.value = novaCor;

        const previewBox = document.getElementById('preview-box');
        if(previewBox) previewBox.style.backgroundColor = novaCor;

        const pickerPainel = document.getElementById('picker-painel-real');
        if(pickerPainel) pickerPainel.value = novaCor;
    }

    async function excluirHistorico(idTentativa) {
        if (typeof exibirModalConfirmacao === 'function') {
            exibirModalConfirmacao(
                "Deseja remover esta tentativa do histórico?",
                async function() {
                    const formData = new FormData();
                    formData.append('acao', 'excluir_historico');
                    formData.append('id_tentativa', idTentativa);

                    try {
                        const response = await fetch(api, { method: 'POST', body: formData });
                        const result = await response.json();

                        if (result.success) {
                            const linha = document.getElementById(`tentativa-${idTentativa}`);
                            if (linha) {
                                linha.style.transition = "0.3s";
                                linha.style.opacity = "0";
                                setTimeout(() => linha.remove(), 300);
                            }
                        } else {
                            if (typeof exibirModalSucesso === 'function') {
                                exibirModalSucesso("Erro ao excluir: " + result.error, "ERRO");
                            }
                        }
                    } catch (error) {
                        console.error("Erro na exclusão:", error);
                    }
                },
                "REMOVER TENTATIVA"
            );
        }
    }

    async function salvarConfiguracoesGerais() {
        const formData = new FormData();
        formData.append('acao', 'atualizar_preferencias_prepared');

        const tema = document.getElementById('pref-tema') ? document.getElementById('pref-tema').value : 0;
        const fonte = document.getElementById('pref-fonte') ? document.getElementById('pref-fonte').value : 2;

        formData.append('tema', tema);
        formData.append('fonte', fonte);

        if (typeof aplicarTamanhoFonteGlobal === "function") {
            aplicarTamanhoFonteGlobal(fonte);
        }

        if (typeof mudarTemaAoVivo === "function") {
            mudarTemaAoVivo(tema);
        }

        const objetoCores = {
            bg_claro: '#FFFFFF',
            bg_escuro: '#121212'
        };

        document.querySelectorAll('.materia-pill input[type="color"]').forEach(input => {
            const materiaId = input.id.replace('picker-', '');
            objetoCores[materiaId] = input.value;
        });

        formData.append('cores', JSON.stringify(objetoCores));
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        try {
            const res = await fetch(api, { method: 'POST', body: formData });
            const result = await res.json();

            if (result && result.success) {
                if (typeof exibirModalSucesso === 'function') {
                    exibirModalSucesso("Preferências salvas com sucesso!", "SUCESSO", () => {
                        carregarPerfil('preferencias');
                    });
                } else {
                    carregarPerfil('preferencias');
                }
            } else {
                if (typeof exibirModalSucesso === 'function') {
                    exibirModalSucesso("Erro ao salvar: " + (result.error || "Erro desconhecido"), "ERRO");
                } else {
                    alert("Erro ao salvar: " + (result.error || "Erro desconhecido"));
                }
            }
        } catch (e) {
            console.error("Erro ao salvar", e);
        }
    }

    async function openModalPerfil(campo) {
        const modal = document.getElementById('modalPerfil');
        const containerForm = document.getElementById('modal-form-content');

        modal.style.display = 'flex';
        let inputHtml = '';

        if (campo === 'nome') {
            inputHtml = `
                <h3>Alterar seu nome</h3>
                <label class="modal-label">NOME DE EXIBIÇÃO</label>
                <input type="text" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.nome || ''}">
            `;
        } else if (campo === 'email') {
            inputHtml = `
                <h3>Alterar seu e-mail</h3>
                <label class="modal-label">E-MAIL</label>
                <input type="email" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.email || ''}">
            `;
        }

        containerForm.innerHTML = `
            <div class="modal-body">${inputHtml}</div>
            <div class="modal-footer">
                <button onclick="closeModal()" class="cancel-btn">Cancelar</button>
                <button onclick="salvarAlteracao('${campo}')" class="save-btn-modal">Pronto</button>
            </div>
        `;
    }

    function closeModal() {
        document.getElementById('modalPerfil').style.display = 'none';
    }

    function salvarAlteracao(campo) {
        const novoValor = document.getElementById('edit-valor').value;
        const formData = new FormData();

        formData.append('acao', 'atualizar_perfil');
        formData.append('campo', campo);
        formData.append('valor', novoValor);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        fetch(api, { method: 'POST', body: formData })
        .then(r => r.json())
        .then(data => {
            if (data.success) {
                closeModal();
                carregarPerfil('usuario');
                carregarUsuario();
            } else {
                alert("Erro: " + data.error);
            }
        });
    }

    function salvarGeral() {
        const nome = document.getElementById('edit-nome-input')?.value;
        const email = document.getElementById('edit-email-input')?.value;
        const id_esc = document.getElementById('edit-escolaridade')?.value;
        const senha = document.getElementById('edit-senha-input')?.value;
        const confirmaSenha = document.getElementById('edit-confirma-senha-input')?.value;

        if (senha && !senhaValidaConfig) {
            if (typeof exibirModalSucesso === 'function') {
                exibirModalSucesso("A nova senha não cumpre todos os requisitos de segurança exigidos.", "ATENÇÃO");
            } else {
                alert("A nova senha não cumpre todos os requisitos de segurança exigidos.");
            }
            return;
        }

        if (senha && senha !== confirmaSenha) {
            if (typeof exibirModalSucesso === 'function') {
                exibirModalSucesso("As senhas não coincidem!", "ATENÇÃO");
            } else {
                alert("As senhas não coincidem!");
            }
            return;
        }

        const formData = new FormData();
        formData.append('acao', 'atualizar_perfil_completo');
        formData.append('nome', nome);
        formData.append('email', email);
        formData.append('escolaridade', id_esc);
        if (senha) formData.append('senha', senha);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        fetch(api, { method: 'POST', body: formData })
        .then(r => r.json())
        .then(data => {
            if (data.success || data.mensagem) {
                if (typeof exibirModalSucesso === 'function') {
                    exibirModalSucesso("Perfil atualizado com sucesso!", "SUCESSO", () => {
                        carregarPerfil('usuario');
                    });
                } else {
                    carregarPerfil('usuario');
                }
            } else {
                if (typeof exibirModalSucesso === 'function') {
                    exibirModalSucesso("Erro ao salvar: " + (data.error || data.erro || "Verifique os dados enviados."), "ERRO");
                } else {
                    alert("Erro ao salvar: " + (data.error || data.erro));
                }
            }
        })
        .catch(err => console.error("Erro na requisição:", err));
    }

    /* MINI-SISTEMA DE RECORTE DE FOTO */
    function iniciarCropperPerfil(input) {
        if (!input.files || !input.files[0]) return;

        arquivoSelecionado = input.files[0];
        const reader = new FileReader();

        reader.onload = function (e) {
            const imgElement = document.getElementById('imagemParaCorte');
            imgElement.src = e.target.result;

            const modal = document.getElementById('modalCropperFoto');
            modal.style.display = 'flex';

            if (cropperInstance) {
                cropperInstance.destroy();
            }

            cropperInstance = new Cropper(imgElement, {
                aspectRatio: 1,
                viewMode: 1,
                dragMode: 'move',
                autoCropArea: 0.9,
                restore: false,
                guides: true,
                center: true,
                highlight: false,
                cropBoxMovable: true,
                cropBoxResizable: true,
                toggleDragModeOnDblclick: false,
                checkOrientation: true
            });
        };

        reader.readAsDataURL(arquivoSelecionado);
        input.value = '';
    }

    function fecharModalCropper() {
        document.getElementById('modalCropperFoto').style.display = 'none';
        if (cropperInstance) {
            cropperInstance.destroy();
            cropperInstance = null;
        }
    }

    function confirmarCorteEUpload() {
        if (!cropperInstance) return;

        const canvas = cropperInstance.getCroppedCanvas({
            width: 400,
            height: 400,
            imageSmoothingEnabled: true,
            imageSmoothingQuality: 'high',
        });

        canvas.toBlob(async function (blob) {
            const formData = new FormData();
            formData.append('acao', 'upload_foto');
            formData.append('foto', blob, 'avatar_perfil.png');
            formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

            try {
                const res = await fetch(api, { method: 'POST', body: formData });
                const data = await res.json();

                if (data.success) {
                    fecharModalCropper();
                    carregarPerfil('usuario');
                    carregarUsuario();
                } else {
                    if (typeof exibirModalSucesso === 'function') {
                        exibirModalSucesso("Erro ao enviar imagem: " + (data.error || "Erro desconhecido"), "ERRO");
                    }
                }
            } catch (e) {
                console.error("Erro no upload", e);
            }
        }, 'image/png');
    }

    function validarSenhaConfiguracoes() {
        const senhaInput = document.getElementById("edit-senha-input");
        const balaoAviso = document.getElementById("balao-aviso-config");

        const segLength = document.getElementById("seg-length");
        const segUppercase = document.getElementById("seg-uppercase");
        const segNumber = document.getElementById("seg-number");
        const segSpecial = document.getElementById("seg-special");

        if (!senhaInput || !balaoAviso) return;

        const valor = senhaInput.value;

        if (valor.length === 0) {
            balaoAviso.style.display = "none";
            if (segLength) segLength.className = "segmento";
            if (segUppercase) segUppercase.className = "segmento";
            if (segNumber) segNumber.className = "segmento";
            if (segSpecial) segSpecial.className = "segmento";
            senhaValidaConfig = true;
            return;
        }

        const temTamanho = valor.length >= 8;
        const temMaiuscula = /[A-Z]/.test(valor);
        const temNumero = /[0-9]/.test(valor);
        const temEspecial = /[^A-Za-z0-9]/.test(valor);

        if (segLength) segLength.className = "segmento " + (temTamanho ? "valido" : "invalido");
        if (segUppercase) segUppercase.className = "segmento " + (temMaiuscula ? "valido" : "invalido");
        if (segNumber) segNumber.className = "segmento " + (temNumero ? "valido" : "invalido");
        if (segSpecial) segSpecial.className = "segmento " + (temEspecial ? "valido" : "invalido");

        senhaValidaConfig = temTamanho && temMaiuscula && temNumero && temEspecial;

        if (!temTamanho) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: No mínimo 8 caracteres`;
            balaoAviso.style.display = "block";
        } else if (!temMaiuscula) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: Pelo menos uma letra maiúscula`;
            balaoAviso.style.display = "block";
        } else if (!temNumero) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: Pelo menos um número`;
            balaoAviso.style.display = "block";
        } else if (!temEspecial) {
            balaoAviso.innerHTML = `<i class="fa-solid fa-triangle-exclamation"></i> Falta: Um caractere especial (!@#$)`;
            balaoAviso.style.display = "block";
        } else {
            balaoAviso.style.display = "none";
        }
    }

    async function excluirConta() {
        if (typeof exibirModalConfirmacao === 'function') {
            exibirModalConfirmacao(
                "ATENÇÃO: Deseja realmente excluir sua conta? Esta ação é permanente e todos os seus históricos e dados serão apagados.",
                async function() {
                    const formData = new FormData();
                    formData.append('acao', 'excluir_conta');
                    formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

                    try {
                        const response = await fetch(api, { method: 'POST', body: formData });
                        const result = await response.json();

                        if (result.success) {
                            document.cookie = "user_consent=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";

                            if (typeof exibirModalSucesso === 'function') {
                                exibirModalSucesso("Sua conta foi excluída com sucesso.", "CONTA EXCLUÍDA", () => {
                                    window.location.href = "login.html";
                                });
                            } else {
                                alert("Sua conta foi excluída com sucesso.");
                                window.location.href = "login.html";
                            }
                        } else {
                            if (typeof exibirModalSucesso === 'function') {
                                exibirModalSucesso("Erro ao excluir conta: " + (result.error || "Erro desconhecido."), "ERRO");
                            } else {
                                alert("Erro ao excluir conta: " + (result.error || "Erro desconhecido."));
                            }
                        }
                    } catch (error) {
                        console.error("Erro na requisição:", error);
                        if (typeof exibirModalSucesso === 'function') {
                            exibirModalSucesso("Erro ao se comunicar com o servidor.", "ERRO");
                        } else {
                            alert("Erro ao se comunicar com o servidor.");
                        }
                    }
                },
                "EXCLUIR CONTA PERMANENTEMENTE"
            );
        } else {
            if (confirm("ATENÇÃO: Deseja realmente excluir sua conta? Esta ação é permanente e todos os seus históricos e dados serão apagados.")) {
                const formData = new FormData();
                formData.append('acao', 'excluir_conta');
                formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);
                const response = await fetch(api, { method: 'POST', body: formData });
                const result = await response.json();
                if (result.success) {
                    window.location.href = "login.html";
                }
            }
        }
    }

    // Inicialização da página
    window.onload = () => {
        carregarUsuario();
        carregarMenuSidebar();
        carregarPerfil('usuario');
        iniciarMonitorProporcaoConfiguracoes();
        inicializarPerfilMobile(); // Ativa config-mobile
        inicializarLogoMobile();   // Ativa ico-home
    };
</script>

<script src="js/sidebar_close.js" defer></script>

</body>
</html>