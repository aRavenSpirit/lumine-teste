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
    let materiaSelecionadaAtual = 'portugues';

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

                const fotoHtml = data.foto_perfil 
                    ? `<img src="${data.foto_perfil}" class="avatar-preview-img" id="avatarImg">`
                    : `<div class="avatar-preview-placeholder" id="avatarImg"><i class="fas fa-user"></i></div>`;

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

                            <div class="input-pill-container">
                                <input type="password" id="edit-senha-input" class="input-pill" placeholder="Nova senha">
                            </div>

                            <div class="input-pill-container">
                                <input type="password" id="edit-confirma-senha-input" class="input-pill" placeholder="Confirme a nova senha">
                            </div>

                            <div class="aviso-minimo">Mínimo: 8 caracteres.</div>

                            <button class="btn-salvar-pill" onclick="salvarGeral()">
                                Salvar
                            </button>
                        </div>

                        <div class="coluna-foto-perfil">
                            <div class="avatar-upload-container container-upload-pagina" onclick="document.getElementById('inputFotoPerfilPagina').click()">
                                <div id="avatarWrapper">
                                    ${fotoHtml}
                                </div>
                                <input type="file" id="inputFotoPerfilPagina" accept="image/*" style="display: none;" onchange="uploadFotoPerfil(this)">
                            </div>
                            <span class="titulo-foto-label">ADICIONE SUA<br>FOTO AQUI</span>
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

                const listaMateriasPadrao = [
                    { key: 'portugues', nome: 'Português', color: '#8fa8cb' },
                    { key: 'matematica', nome: 'Matemática', color: '#1892be' },
                    { key: 'historia', nome: 'História', color: '#cd71d8' },
                    { key: 'geografia', nome: 'Geografia', color: '#fbb355' },
                    { key: 'filosofia', nome: 'Filosofia', color: '#9ad0f5' },
                    { key: 'sociologia', nome: 'Sociologia', color: '#b2f0a5' },
                    { key: 'natureza', nome: 'Ciência das Naturezas', color: '#00c882' },
                    { key: 'arte', nome: 'Arte', color: '#5b63f6' },
                    { key: 'ingles', nome: 'Inglês', color: '#f3c246' },
                    { key: 'fisica', nome: 'Física', color: '#ff5c5c' },
                    { key: 'quimica', nome: 'Química', color: '#00cc7a' },
                    { key: 'biologia', nome: 'Biologia', color: '#00d68f' },
                    { key: 'educacao_fisica', nome: 'Educação Física', color: '#f7d363' }
                ];

                materiaSelecionadaAtual = listaMateriasPadrao[0].key;
                let corInicial = cores[materiaSelecionadaAtual] || listaMateriasPadrao[0].color;

                let cardsHtml = listaMateriasPadrao.map(item => {
                    let corAtual = cores[item.key] || item.color;
                    return `
                        <div class="materia-pill"
                             id="pill-${item.key}"
                             style="background-color:${corAtual}"
                             onclick="selecionarMateriaCor('${item.key}')">

                            ${item.nome}

                            <input type="color"
                                   id="picker-${item.key}"
                                   value="${corAtual}"
                                   style="display:none"
                                   onchange="alterarCorMateria('${item.key}', this.value)">
                        </div>
                    `;
                }).join('');

                html = `
                    <div class="preferencias-container-visual">
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
                                <input type="color" id="picker-painel-real" value="${corInicial}" onchange="atualizarCorPainelPrincipal(this.value)" style="opacity: 0; width: 0; height: 0; position: absolute;">
                            </div>
                        </div>

                        <div class="container-controles-estilizados">
                            <div class="controles-estilizados">
                                <span class="label-estilizada">Modo:</span>
                                <select id="pref-tema" class="select-arredondado" onchange="mudarTemaAoVivo(this.value)">
                                    <option value="0" ${localStorage.getItem("theme") !== "dark" ? 'selected' : ''}>Claro</option>
                                    <option value="1" ${localStorage.getItem("theme") === "dark" ? 'selected' : ''}>Escuro</option>
                                </select>
                            </div>

                            <div class="controles-estilizados">
                                <span class="label-estilizada">Tamanho da letra:</span>
                                <select id="pref-fonte" class="select-arredondado">
                                    <option value="1" ${data.tamanho_fonte == 1 ? 'selected' : ''}>Pequeno</option>
                                    <option value="2" ${data.tamanho_fonte == 2 || !data.tamanho_fonte ? 'selected' : ''}>Médio</option>
                                    <option value="3" ${data.tamanho_fonte == 3 ? 'selected' : ''}>Grande</option>
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
                        <div class="historico-card" id="tentativa-${h.id_tentativa}">
                            <div class="historico-badges">
                                <div class="badge-materia">${matSigla}</div>
                                <div class="badge-dificuldade-pill ${classeDificuldade}">${difUpper || 'FÁCIL'}</div>
                            </div>
                            <div class="historico-detalhes">
                                <h4>${h.titulo_quiz || h.nome_conteudo || 'Sem título'}</h4>
                                <p>Conteúdo: <span>${h.nome_conteudo || ''}</span></p>
                            </div>
                            <div class="historico-acoes">
                                <button onclick="excluirHistorico(${h.id_tentativa})" class="btn-lixeira" title="Excluir">
                                    <i class="fas fa-trash-alt"></i>
                                </button>
                                <span class="historico-data">${h.data_resolucao || ''}</span>
                            </div>
                        </div>
                    `;
                }).join('');

                html = `
                    <div class="historico-container-scroll">
                        ${cardsHistorico || '<p style="text-align:center; padding: 20px;">Você ainda não resolveu nenhum quiz.</p>'}
                    </div>
                `;
            }

            cardOpcoes.innerHTML = html;

        } catch (error) {
            console.error("Erro:", error);
            cardOpcoes.innerHTML = "<p style='text-align:center; margin-top:20px; color:red;'>Erro ao carregar dados.</p>";
        }
    }

    function selecionarMateriaCor(materia) {
        materiaSelecionadaAtual = materia;
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
        if(pill) pill.style.backgroundColor = novaCor;
        
        const pickerOc = document.getElementById(`picker-${materia}`);
        if(pickerOc) pickerOc.value = novaCor;

        const previewBox = document.getElementById('preview-box');
        if(previewBox) previewBox.style.backgroundColor = novaCor;

        const pickerPainel = document.getElementById('picker-painel-real');
        if(pickerPainel) pickerPainel.value = novaCor;
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
        const nome = document.getElementById('edit-nome-input')?.value;
        const email = document.getElementById('edit-email-input')?.value;
        const id_esc = document.getElementById('edit-escolaridade')?.value;
        const senha = document.getElementById('edit-senha-input')?.value;
        const confirmaSenha = document.getElementById('edit-confirma-senha-input')?.value;

        if (senha && senha !== confirmaSenha) {
            alert("As senhas não coincidem!");
            return;
        }

        const formData = new FormData();
        formData.append('acao', 'atualizar_perfil_completo');
        formData.append('nome', nome);
        formData.append('email', email);
        formData.append('escolaridade', id_esc);
        if (senha) formData.append('senha', senha);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        fetch(api, {
            method: 'POST',
            body: formData
        })
        .then(r => r.json())
        .then(data => {
            if (data.success) {
                alert("Perfil atualizado com sucesso!");
                carregarPerfil('usuario');
            } else {
                alert("Erro ao salvar: " + (data.error || "Erro desconhecido"));
            }
        })
        .catch(err => {
            salvarCampoIndividual('nome', nome);
            salvarCampoIndividual('email', email);
            salvarCampoIndividual('escolaridade', id_esc);
        });
    }

    function salvarCampoIndividual(campo, valor) {
        if(!valor) return;
        const formData = new FormData();
        formData.append('acao', 'atualizar_perfil');
        formData.append('campo', campo);
        formData.append('valor', valor);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);
        fetch(api, { method: 'POST', body: formData });
    }

    async function uploadFotoPerfil(input) {
        if (!input.files || !input.files[0]) return;
        
        const formData = new FormData();
        formData.append('acao', 'upload_foto');
        formData.append('foto', input.files[0]);
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 0; ?>);

        try {
            const res = await fetch(api, { method: 'POST', body: formData });
            const data = await res.json();

            if (data.success) {
                carregarPerfil('usuario');
                carregarUsuario();
            } else {
                alert("Erro ao enviar imagem: " + (data.error || "Erro desconhecido"));
            }
        } catch (e) {
            console.error("Erro no upload", e);
        }
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
                    
                    menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                    
                    cardsIniciais += `
                        <div onclick="carregarConteudos(${m.id}, '${m.nome_materia}')" class="card-materia">
                            <div class="card-banner">
                                <img src="img/${nomeLimpo}.webp" onerror="this.src='img/'">
                            </div>
                            <div class="card-body"><p>${m.nome_materia}</p></div>
                        </div>`;
                });
                if(document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menuHTML;
                if(document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
                if(document.getElementById("cardsConteudos")) document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
            });
    }

    function carregarUsuario() {
        fetch(api + "?tipo=usuario")
            .then(r => r.json())
            .then(u => {
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
                
                const linkPerfilMobile = document.querySelector('.mobile-profile-right .profile-icon');
                if (linkPerfilMobile && u.foto_perfil) {
                    linkPerfilMobile.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                }

                const itemPerfil = document.querySelector('.item-perfil');
                if (itemPerfil) {
                    const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                    if (antigoDropdown) antigoDropdown.remove();

                    const fotoHtml = u.foto_perfil 
                        ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                        : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

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
                    
                    itemPerfil.appendChild(dropdown);
                }
            });
    }
    
    window.onload = () => {
        carregarUsuario();
        carregarMenuSidebar();
        carregarPerfil('usuario'); 
    };

</script>

<script src="js/sidebar_close.js" defer></script>

</body>
</html>