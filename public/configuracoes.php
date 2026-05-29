<?php
    require_once("../config/conexao.php");
    include_once("../config/session.php");
    include_once("../config/layout.php");

    // Captura com segurança o ID do usuário logado via sessão para o ambiente JS
    $id_usuario_logado = isset($_SESSION['usuario_id']) ? (int)$_SESSION['usuario_id'] : 1;
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">

    <style>
        .campo-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #eeeeee;
        }

        .campo-grupo label {
            font-size: 12px;
            font-weight: bold;
            color: #5c5e66;
            display: block;
            margin-top: 15px;
        }

        .edit-btn {
            background: #e3e5e8;
            border: none;
            padding: 6px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 500;
        }

        .edit-btn:hover {
            background: #d1d3d6;
        }

        .preferencias-container {
            padding: 20px;
        }
        
        .historico-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }
        .historico-table th, .historico-table td {
            text-align: left;
            padding: 12px;
            border-bottom: 1px solid #eee;
        }
        .badge-acerto {
            background: #43b581;
            color: white;
            padding: 2px 8px;
            border-radius: 10px;
            font-size: 12px;
        }

        .grid-materias-pills {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 8px;
            flex: 1;
        }

        .materia-pill {
            padding: 8px 15px;
            border-radius: 20px;
            color: #333;
            font-weight: 500;
            text-align: center;
            cursor: pointer;
            border: 2px solid rgba(0,0,0,0.2);
            font-size: 14px;
            transition: transform 0.1s, brightness 0.2s;
        }

        .materia-pill:hover {
            filter: brightness(1.1);
            transform: scale(1.02);
        }

        .sessao-cores-layout {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }

        .color-picker-preview {
            width: 150px;
            height: 150px;
            border: 2px solid #333;
            border-radius: 10px;
            background: linear-gradient(45deg, #eee 25%, transparent 25%, transparent 75%, #eee 75%), 
                        linear-gradient(45deg, #eee 25%, white 25%, white 75%, #eee 75%);
            background-size: 20px 20px;
        }

        .preview-box {
            width: 100%;
            height: 100%;
            border-radius: 8px;
            background-color: #ccc;
        }

        .controles-estilizados {
            display: flex;
            justify-content: space-between;
            background: #bde0fe;
            padding: 15px;
            border-radius: 25px;
            border: 2px solid #333;
        }

        .btn-salvar-final {
            display: block;
            margin: 20px auto;
            padding: 10px 40px;
            border-radius: 25px;
            background: #f1f1f1;
            border: 2px solid #333;
            font-weight: bold;
            cursor: pointer;
        }

        /* Estilização para o Modal */
        .modal {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: rgba(0,0,0,0.5);
            display: flex; justify-content: center; align-items: center;
            z-index: 1000;
        }
        .modal-content {
            background: white; padding: 25px; border-radius: 8px; width: 90%; max-width: 400px;
        }
        .modal-input {
            width: 100%; padding: 10px; margin-top: 10px; border-radius: 4px; border: 1px solid #ccc; box-sizing: border-box;
        }
        .modal-footer {
            display: flex; justify-content: flex-end; gap: 10px; margin-top: 20px;
        }
        .cancel-btn { background: #eee; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; }
        .save-btn-modal { background: #43b581; color: white; border: none; padding: 8px 16px; border-radius: 4px; cursor: pointer; }
        .save-btn { background: #3498db; color: white; border: none; padding: 10px 20px; border-radius: 4px; cursor: pointer; width: 100%; font-weight: bold; }
        .btn-excluir { background: none; border: none; color: #e74c3c; cursor: pointer; font-size: 16px; }
    </style>
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
                    <div class="btn-aba active" onclick="carregarPerfil('usuario', event)">USUÁRIO</div>
                    <div class="btn-aba" onclick="carregarPerfil('preferencias', event)">PREFERÊNCIAS</div>
                    <div class="btn-aba" onclick="carregarPerfil('historico', event)">HISTÓRICO</div>
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
    const api = "../config/home.php"; 
    const id_usuario = <?php echo $id_usuario_logado; ?>; 
    let dadosUsuarioLocal = {}; 

    async function carregarPerfil(tipo, event = null) { 
        const cardOpcoes = document.getElementById('card-opcoes');

        document.querySelectorAll('.btn-aba').forEach(btn => btn.classList.remove('active'));
        
        if (event) {
            event.currentTarget.classList.add('active');
        } else {
            const abas = document.querySelectorAll('.btn-aba');
            abas.forEach(btn => {
                if(btn.textContent.toLowerCase() === tipo.toLowerCase()) btn.classList.add('active');
            });
        }

        cardOpcoes.innerHTML = "<p>Carregando...</p>";

        try {
            const resData = await fetch(`${api}?tipo=${tipo}&id_conteudo=${id_usuario}`);
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

                html = `
                    <div class="perfil-discord-style">
                        <div class="campo-grupo">
                            <label>NOME DE EXIBIÇÃO</label>
                            <div class="campo-row">
                                <span>${data.nome || 'Não informado'}</span>
                                <button onclick="openModalPerfil('nome')" class="edit-btn">Editar</button>
                            </div>
                        </div>
                        <div class="campo-grupo">
                            <label>E-MAIL</label>
                            <div class="campo-row">
                                <span>${data.email || 'Não informado'}</span>
                                <button onclick="openModalPerfil('email')" class="edit-btn">Editar</button>
                            </div>
                        </div>
                        <div class="campo-grupo">
                            <label>ESCOLARIDADE</label>
                            <div class="campo-row">
                                <select id="edit-escolaridade" class="select-inline" style="width: 100%; padding: 8px; border-radius: 4px; border: 1px solid #ccc; background: #f9f9f9;">
                                    ${optionsHtml}
                                </select>
                            </div>
                        </div>
                        <button class="save-btn" style="margin-top:20px" onclick="salvarGeral()">Salvar Alterações</button>
                    </div>
                `;
            } 
            else if (tipo === 'preferencias') {
                let cores = data.cores_materia;
                if (typeof cores === 'string') {
                    try { cores = JSON.parse(cores); } catch(e) { cores = {}; }
                }
                cores = cores || {};

                // Mapeia as chaves geradas dinamicamente com base nas propriedades limpas de strings JSON
                let cardsHtml = Object.keys(cores)
                    .filter(key => !key.startsWith('bg_')) 
                    .map(materia => `
                        <div class="materia-pill" 
                             id="pill-${materia}"
                             style="background-color: ${cores[materia]}" 
                             onclick="document.getElementById('picker-${materia}').click()">
                            ${materia.replace(/_/g, ' ')}
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
                                <div class="preview-box" id="preview-box" style="background-color: #ccc"></div>
                            </div>
                        </div>

                        <div class="controles-estilizados">
                            <div class="controle-item">
                                <span class="label-estilizada">Modo:</span>
                                <select id="pref-tema" class="select-arredondado">
                                    <option value="0" ${data.tema_escuro == 0 ? 'selected' : ''}>Claro</option>
                                    <option value="1" ${data.tema_escuro == 1 ? 'selected' : ''}>Escuro</option>
                                </select>
                            </div>
                            <div class="controle-item">
                                <span class="label-estilizada">Tamanho da letra:</span>
                                <select id="pref-fonte" class="select-arredondado">
                                    <option value="1" ${data.tamanho_fonte == 1 ? 'selected' : ''}>Pequeno</option>
                                    <option value="2" ${data.tamanho_fonte == 2 ? 'selected' : ''}>Médio</option>
                                    <option value="3" ${data.tamanho_fonte == 3 ? 'selected' : ''}>Grande</option>
                                </select>
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
        formData.append('id_usuario', id_usuario);

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
    }

    async function salvarConfiguracoesGerais() {
        const tema = document.getElementById('pref-tema').value;
        const fonte = document.getElementById('pref-fonte').value;
        
        const novasCores = {};
        
        document.querySelectorAll('.materia-pill input').forEach(input => {
            const materiaId = input.id.replace('picker-', '');
            novasCores[materiaId] = input.value;
        });

        novasCores['bg_claro'] = '#FFFFFF';
        novasCores['bg_escuro'] = '#121212';

        const formData = new FormData();
        formData.append('acao', 'atualizar_preferencias'); 
        formData.append('tema', tema);
        formData.append('fonte', fonte);
        formData.append('cores', JSON.stringify(novasCores));
        formData.append('id_usuario', id_usuario);

        try {
            const res = await fetch(api, { method: 'POST', body: formData });
            const result = await res.json();
            if (result.success) {
                alert("Preferências salvas com sucesso!");
                carregarPerfil('preferencias'); 
            } else {
                alert("Erro ao salvar: " + result.error);
            }
        } catch (e) {
            console.error("Erro ao salvar preferências", e);
        }
    }

    async function openModalPerfil(campo) {
        const modal = document.getElementById('modalPerfil');
        const containerForm = document.getElementById('modal-form-content');
        modal.style.display = 'flex';
        let inputHtml = '';

        if (campo === 'nome') {
            inputHtml = `<h3>Alterar seu nome</h3><label class="modal-label">NOME DE EXIBIÇÃO</label>
                         <input type="text" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.nome || ''}">`;
        } 
        else if (campo === 'email') {
            inputHtml = `<h3>Alterar seu e-mail</h3><label class="modal-label">E-MAIL</label>
                         <input type="email" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.email || ''}">`;
        }

        containerForm.innerHTML = `
            <div class="modal-body">${inputHtml}</div>
            <div class="modal-footer">
                <button onclick="closeModal()" class="cancel-btn">Cancelar</button>
                <button onclick="salvarAlteracao('${campo}')" class="save-btn-modal">Pronto</button>
            </div>`;
    }

    function closeModal() { document.getElementById('modalPerfil').style.display = 'none'; }

    function salvarAlteracao(campo) {
        const novoValor = document.getElementById('edit-valor').value;
        const formData = new FormData();
        formData.append('acao', 'atualizar_perfil');
        formData.append('campo', campo);
        formData.append('valor', novoValor);
        formData.append('id_usuario', id_usuario);

        fetch(api, { method: 'POST', body: formData })
        .then(r => r.json())
        .then(data => {
            if (data.success) { closeModal(); carregarPerfil('usuario'); }
            else { alert("Erro: " + data.error); }
        });
    }

    function salvarGeral() {
        const id_esc = document.getElementById('edit-escolaridade').value;
        const formData = new FormData();
        formData.append('acao', 'atualizar_perfil');
        formData.append('campo', 'escolaridade');
        formData.append('valor', id_esc);
        formData.append('id_usuario', id_usuario);

        fetch(api, { method: 'POST', body: formData })
        .then(r => r.json())
        .then(data => {
            if (data.success) { alert("Alterações salvas com sucesso!"); carregarPerfil('usuario'); }
            else alert("Erro: " + data.error);
        });
    }

    window.onload = () => carregarPerfil('usuario');
</script>

</body>
</html>