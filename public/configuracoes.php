<?php
    require_once("../config/conexao.php");
    include_once("../config/session.php");
    include_once("../config/layout.php");
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/configuracoes.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
</head>

<body>

<?php renderSidebar(); ?>

<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main>
        <section class="cards-section">
            <div class="container-principal">

                <div class="container-aside">
                    <h1>PERFIL</h1>

                    <div class="container-aside-btn">
                        <div class="btn-aba active card-btn" onclick="carregarPerfil('usuario', event)">
                            USUÁRIO
                        </div>
    
                        <div class="btn-aba card-btn" onclick="carregarPerfil('preferencias', event)">
                            PREFERÊNCIAS
                        </div>
    
                        <div class="btn-aba card-btn" onclick="carregarPerfil('historico', event)">
                            HISTÓRICO
                        </div>
                    </div>
                </div>

                <div id="card-opcoes">
                    <h3>Selecione uma opção ao lado</h3>
                </div>

                <div id="modalPerfil" class="modal" style="display:none;">
                    <div class="modal-content">
                        <div id="modal-form-content"></div>
                    </div>
                </div>

            </div>
        </section>
    </main>

</div>

<script>

    if (localStorage.getItem("theme") === "dark") {
        document.body.classList.add("dark-mode");
    }

    const api = "../config/home.php";
    let dadosUsuarioLocal = {};

    async function carregarPerfil(tipo, event = null) {

        const cardOpcoes = document.getElementById('card-opcoes');
        // CORREÇÃO: Agora pega o usuário da sessão PHP
        const id_usuario = <?php echo $_SESSION['usuario_id'] ?? 0; ?>;
        document.querySelectorAll('.btn-aba').forEach(btn => {
            btn.classList.remove('active');
        });
        if (event) {
            event.currentTarget.classList.add('active');
        } else {
            const abas = document.querySelectorAll('.btn-aba');
            abas.forEach(btn => {
                if (btn.textContent.toLowerCase() === tipo.toLowerCase()) {
                    btn.classList.add('active');
                }
            });
        }

        cardOpcoes.innerHTML = "<p>Carregando...</p>";

        try {
            // CORREÇÃO: não envia mais id_conteudo.
            // A API usa a sessão para identificar o usuário.
            const resData = await fetch(`${api}?tipo=${tipo}`);
            const data = await resData.json();
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

                // 1. DEFINE O HTML DA FOTO
                const fotoHtml = data.foto_perfil 
                    ? `<img src="${data.foto_perfil}" class="avatar-preview" id="avatarImg">`
                    : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                // 2. MONTA O HTML USANDO CLASSES CSS LIGADAS AO SEU ARQUIVO EXTERNO
                html = `
                    <div class="perfil-discord-style perfil-container-flex">
                        
                        <div class="coluna-dados-perfil">
                            <div class="campo-grupo">
                                <label>NOME DE EXIBIÇÃO</label>
                                <div class="campo-row">
                                    <span>${data.nome || 'Não informado'}</span>
                                    <button onclick="openModalPerfil('nome')" class="edit-btn">
                                        Editar
                                    </button>
                                </div>
                            </div>

                            <div class="campo-grupo">
                                <label>E-MAIL</label>
                                <div class="campo-row">
                                    <span>${data.email || 'Não informado'}</span>
                                    <button onclick="openModalPerfil('email')" class="edit-btn">
                                        Editar
                                    </button>
                                </div>
                            </div>

                            <div class="campo-grupo">
                                <label>ESCOLARIDADE</label>
                                <div class="campo-row">
                                    <select id="edit-escolaridade" class="select-inline input-escolaridade-perfil">
                                        ${optionsHtml}
                                    </select>
                                </div>
                            </div>
                            
                            <button class="save-btn btn-salvar-perfil" onclick="salvarGeral()">
                                Salvar Alterações
                            </button>
                        </div>

                        <div class="coluna-foto-perfil">
                            <label class="titulo-foto-label">Foto de Perfil</label>
                            
                            <div class="avatar-upload-container container-upload-pagina" onclick="document.getElementById('inputFotoPerfilPagina').click()">
                                <div id="avatarWrapper">
                                    ${fotoHtml}
                                </div>
                                <div class="avatar-edit-badge">
                                    <i class="fas fa-pencil-alt"></i>
                                </div>
                                <input type="file" id="inputFotoPerfilPagina" accept="image/*" style="display: none;" onchange="uploadFotoPerfil(this)">
                            </div>
                        </div>

                    </div>
                `;
            }

            else if (tipo === 'preferencias') {
                let cores = data.cores_materia;
                if (typeof cores === 'string') {
                    try {
                        cores = JSON.parse(cores);
                    } catch(e) {
                        cores = {};
                    }
                }
                cores = cores || {};

                let cardsHtml = Object.keys(cores)
                    .filter(key => !key.startsWith('bg_'))
                    .map(materia => `

                        <div class="materia-pill"
                             id="pill-${materia}"
                             style="background-color:${cores[materia]}"
                             onclick="document.getElementById('picker-${materia}').click()">

                            ${materia.replace('_', ' ')}


                            <input type="color"
                                   id="picker-${materia}"
                                   value="${cores[materia]}"
                                   style="display:none"
                                   onchange="alterarCorMateria('${materia}', this.value)">
                        </div>
                    `).join('');
                    html = `
                    <div class="preferencias-container-visual">
                        <div class="sessao-cores-layout">
                            <div class="grid-materias-pills">
                                ${cardsHtml}
                            </div>
                            <div class="color-picker-preview">
                                <div class="preview-box" id="preview-box" style="background-color:#ccc"></div>
                            </div>
                        </div>

                        <div class="container-controles-estilizados">
                            <div class="controles-estilizados">
                                <div class="controle-item">
                                    <span class="label-estilizada">Modo:</span>
                                    <select id="pref-tema" class="select-arredondado" onchange="mudarTemaAoVivo(this.value)">
                                        <option value="0" ${localStorage.getItem("theme") !== "dark" ? 'selected' : ''}>Claro</option>
                                        <option value="1" ${localStorage.getItem("theme") === "dark" ? 'selected' : ''}>Escuro</option>
                                    </select>
                                </div>
                            </div>

                            <div class="controles-estilizados">
                                <div class="controle-item">
                                    <span class="label-estilizada">Tamanho da letra:</span>
                                    <select id="pref-fonte" class="select-arredondado">
                                        <option value="1" ${data.tamanho_fonte == 1 ? 'selected' : ''}>Pequeno</option>
                                        <option value="2" ${data.tamanho_fonte == 2 ? 'selected' : ''}>Médio</option>
                                        <option value="3" ${data.tamanho_fonte == 3 ? 'selected' : ''}>Grande</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <button class="btn-salvar-final" onclick="salvarConfiguracoesGerais()">Salvar</button>
                    </div>
                    `;
            }
            else if (tipo === 'historico') {
                let rows = data.map(h => `
                    <tr id="tentativa-${h.id_tentativa}">
                        <td>${h.nome_materia}</td>
                        <td>${h.nome_conteudo}</td>
                        <td><strong>${h.titulo_quiz}</strong></td>
                        <td><span class="badge-dificuldade">${h.dificuldade}</span></td>
                        <td>${h.data_resolucao}</td>
                        <td><span class="badge-acerto">${h.acertos}/${h.total_questoes}</span></td>
                        <td>
                            <button onclick="excluirHistorico(${h.id_tentativa})" class="btn-excluir" title="Excluir">
                                <i class="fas fa-trash"></i>
                            </button>
                        </td>
                    </tr>
                `).join('');

                html = `
                    <div class="preferencias-container">
                        <h3>Meu Histórico de Desempenho</h3>
                        <div class="table-responsive">
                            <table class="historico-table">
                                <thead>
                                    <tr>
                                        <th>Matéria</th>
                                        <th>Conteúdo</th>
                                        <th>Quiz</th>
                                        <th>Dificuldade</th>
                                        <th>Data</th>
                                        <th>Resultado</th>
                                        <th>Ação</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    ${rows || '<tr><td colspan="7" style="text-align:center;">Você ainda não resolveu nenhum quiz.</td></tr>'}
                                </tbody>
                            </table>
                        </div>
                    </div>
                `;
            }

            cardOpcoes.innerHTML = html;

        } catch (error) {
            console.error("Erro:", error);
            cardOpcoes.innerHTML = "<p>Erro ao carregar dados.</p>";
        }
    }

    async function excluirHistorico(idTentativa) {
        if (!confirm("Deseja remover esta tentativa do histórico?")) return;

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
                alert("Erro ao excluir: " + result.error);
            }

        } catch (error) {
            console.error("Erro na exclusão:", error);
        }
    }

    function alterarCorMateria(materia, novaCor) {
        document.getElementById(`pill-${materia}`).style.backgroundColor = novaCor;
        document.getElementById('preview-box').style.backgroundColor = novaCor;

        if (materia === 'artes') {
            const cardExemplo = document.querySelector('.card-exemplo-artes');

            if (cardExemplo) {
                cardExemplo.style.backgroundColor = novaCor;
            }
        }
    }

    async function salvarConfiguracoesGerais() {
        const formData = new FormData();

        formData.append('acao', 'atualizar_preferencias_prepared');

        const tema = document.getElementById('pref-tema') ? document.getElementById('pref-tema').value : 0;
        const fonte = document.getElementById('pref-fonte') ? document.getElementById('pref-fonte').value : 2;

        formData.append('tema', tema);
        formData.append('fonte', fonte);

        if (String(tema) === "1") {
            localStorage.setItem("theme", "dark");
            document.body.classList.add("dark-mode");
        } else {
            localStorage.setItem("theme", "light");
            document.body.classList.remove("dark-mode");
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
                carregarPerfil('preferencias');
            } else {
                alert("Erro ao salvar: " + (result.error || "Erro desconhecido"));
            }

        } catch (e) {
            console.error("Erro ao salvar", e);
            alert("Não foi possível conectar ao servidor.");
        }
    }
    function mudarTemaAoVivo(valor) {
        if (String(valor) === "1") {
            document.body.classList.add("dark-mode");
        } else {
            document.body.classList.remove("dark-mode");
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
                <input type="text" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.nome}">
            `;
        } else if (campo === 'email') {
            inputHtml = `
                <h3>Alterar seu e-mail</h3>
                <label class="modal-label">E-MAIL</label>
                <input type="email" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.email}">
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

        fetch(api, {
            method: 'POST',
            body: formData
        })
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
        const id_esc = document.getElementById('edit-escolaridade').value;

        const formData = new FormData();

        formData.append('acao', 'atualizar_perfil');
        formData.append('campo', 'escolaridade');
        formData.append('valor', id_esc);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        fetch(api, {
            method: 'POST',
            body: formData
        })
        .then(r => r.json())
        .then(data => {
            if (data.success) {
                carregarPerfil('usuario');
            } else {
                alert("Erro: " + data.error);
            }
        });
    }

    document.getElementById('cores-artes')?.addEventListener('input', function(e) {
        const novaCor = e.target.value;

        const cardExemplo = document.querySelector('.card-exemplo-artes');

        if (cardExemplo) {
            cardExemplo.style.backgroundColor = novaCor;
        }
    });

    function toggleSidebar() {
        const sidebar = document.getElementById('sidebar');
        const main = document.getElementById('mainContainer');
        const mobileMenu = document.getElementById('mobileMenu');
        const body = document.body;
        
        if (window.innerWidth <= 900) {
            mobileMenu.classList.toggle('active');
            mobileMenu.classList.contains('active') ? body.classList.add('no-scroll') : body.classList.remove('no-scroll');
        } else {
            sidebar.classList.toggle('open');
            main.classList.toggle('sidebar-open');
        }
    }

    function carregarMenuSidebar() {
        fetch(api + "?tipo=materias")
            .then(r => r.json())
            .then(dados => {
                let menuHTML = "";
                let cardsIniciais = "";

                dados.forEach(m => {
                    let nomeLimpo = m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                    
                    // Link na Sidebar
                    menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                    
                    // Card inicial na tela
                    cardsIniciais += `
                        <div onclick="carregarConteudos(${m.id}, '${m.nome_materia}')" class="card-materia">
                            <div class="card-banner">
                                <img src="img/${nomeLimpo}.webp" onerror="this.src='img/'">
                            </div>
                            <div class="card-body"><p>${m.nome_materia}</p></div>
                        </div>`;
                });
                document.getElementById("menuMaterias").innerHTML = menuHTML;
                document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
                document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
            });
    }


    function carregarUsuario() {
        fetch(api + "?tipo=usuario")
            .then(r => r.json())
            .then(u => {
                // 1. Atualiza a imagem no HEADER (Navbar superior Desktop)
                const linkPerfilHeader = document.querySelector('.item-perfil a');
                if (linkPerfilHeader && u.foto_perfil) {
                    const iconeUsuario = linkPerfilHeader.querySelector('.profile-icon');
                    if (iconeUsuario) {
                        iconeUsuario.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                    } else {
                        const imagemHeaderExistente = linkPerfilHeader.querySelector('.profile-icon');
                        if (imagemHeaderExistente && imagemHeaderExistente.tagName === 'IMG') {
                            imagemHeaderExistente.src = u.foto_perfil;
                        }
                    }
                }
                
                // 2. Atualiza a foto no menu mobile (Navbar superior Mobile)
                const linkPerfilMobile = document.querySelector('.mobile-profile-right .profile-icon');
                if (linkPerfilMobile && u.foto_perfil) {
                    linkPerfilMobile.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                }

                // 3. MONTA E ADICIONA O DROPDOWN DO PERFIL (Igual ao da Home)
                const itemPerfil = document.querySelector('.item-perfil');
                if (itemPerfil) {
                    // Remove um dropdown antigo se já existir para não duplicar
                    const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                    if (antigoDropdown) antigoDropdown.remove();

                    // Define se exibe a foto real ou o ícone de rostinho padrão
                    const fotoHtml = u.foto_perfil 
                        ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                        : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                    // Cria o elemento do dropdown
                    const dropdown = document.createElement('div');
                    dropdown.className = 'perfil-dropdown';
                    dropdown.innerHTML = `
                        <div class="avatar-upload-container" onclick="document.getElementById('inputFotoPerfil').click()">
                            <div id="avatarWrapper">
                                ${fotoHtml}
                            </div>
                            <div class="avatar-edit-badge">
                                <i class="fas fa-pencil-alt"></i>
                            </div>
                            <input type="file" id="inputFotoPerfil" accept="image/*" style="display: none;" onchange="uploadFotoPerfil(this)">
                        </div>

                        <h4 style="text-align: center;">Minha Conta</h4>
                        <hr>
                        <p><strong>Nome:</strong> ${u.nome || "Não informado"}</p>
                        <p><strong>E-mail:</strong> ${u.email || "Não informado"}</p>
                        <p><strong>Nível:</strong> ${u.nome_escolaridade || "Não informado"}</p>
                        <hr>
                        <a href="../config/logout.php" class="btn-logout">
                            <i class="fas fa-sign-out-alt"></i> Sair da Conta
                        </a>
                    `;
                    
                    // Insere o dropdown montado dentro do item de perfil na barra de navegação
                    itemPerfil.appendChild(dropdown);
                }
            });
    }
    
    window.onload = () => {
        carregarUsuario();     // <--- Adicionado para carregar a foto no header
        carregarMenuSidebar(); // Carrega a sidebar
        carregarPerfil('usuario'); 
    };



</script>

</body>
</html>