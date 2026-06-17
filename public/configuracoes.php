<?php
    require_once("../config/conexao.php");
    include_once("../config/session.php");
    include_once("../config/layout.php"); // Inclui o novo arquivo
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

        /* ESTILOS ADICIONADOS PARA PREFERÊNCIAS E HISTÓRICO */
        .preferencias-container {
            padding: 20px;
        }
        .color-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
            gap: 10px;
            margin-top: 10px;
        }
        .color-item {
            display: flex;
            align-items: center;
            gap: 8px;
            font-size: 13px;
        }
        .color-box {
            width: 20px;
            height: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
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

        /* Layout Principal */
        .grid-materias-pills {
            display: grid;
            grid-template-columns: repeat(2, 1fr); /* 2 colunas como na foto */
            gap: 8px;
            flex: 1;
        }

        /* Estilo dos Botões de Matéria (Pílulas) */
        .materia-pill {
            padding: 8px 15px;
            border-radius: 20px; /* Arredondado */
            color: #333;
            font-weight: 500;
            text-align: center;
            cursor: pointer;
            border: 2px solid rgba(0,0,0,0.2);
            font-size: 14px;
            transition: transform 0.1s, brightness 0.2s;
            text-transform: capitalize;
        }

        .materia-pill:hover {
            filter: brightness(1.1);
            transform: scale(1.02);
        }

        /* Preview de cor lateral */
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
            background-color: #ccc; /* Cor inicial */
        }

        /* Controles de baixo */
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
    let dadosUsuarioLocal = {}; 

    // Mudança: event possui "= null" por padrão para evitar erros se for disparado pelo carregamento da página
    async function carregarPerfil(tipo, event = null) { 
        const cardOpcoes = document.getElementById('card-opcoes');
        const id_usuario = 1; 

        document.querySelectorAll('.btn-aba').forEach(btn => btn.classList.remove('active'));
        
        if (event) {
            event.currentTarget.classList.add('active');
        } else {
            // Caso seja disparado pelo onload automático da página, marca visualmente a aba correspondente
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

                let cardsHtml = Object.keys(cores)
                    .filter(key => !key.startsWith('bg_')) 
                    .map(materia => `
                        <div class="materia-pill" 
                             id="pill-${materia}"
                             style="background-color: ${cores[materia]}" 
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

        // ARRUMADO: Se a matéria alterada for artes, atualiza dinamicamente o card exemplo em tempo real na tela!
        if (materia === 'artes') {
            const cardExemplo = document.querySelector('.card-exemplo-artes');
            if (cardExemplo) {
                cardExemplo.style.backgroundColor = novaCor;
            }
        }
    }

    async function salvarConfiguracoesGerais() {
        const formData = new FormData();
        
        // 1. Usa a ação correta que salva o JSON no banco sem quebrar
        formData.append('acao', 'atualizar_preferencias_prepared');
        
        // 2. Coleta os valores usando os IDs REAIS que o seu sistema gera ('pref-tema' e 'pref-fonte')
        const tema = document.getElementById('pref-tema') ? document.getElementById('pref-tema').value : 0;
        const fonte = document.getElementById('pref-fonte') ? document.getElementById('pref-fonte').value : 2;
        formData.append('tema', tema);
        formData.append('fonte', fonte);
        
        // 3. Coleta as cores de forma inteligente (Varre todos os inputs gerados na tela)
        const objetoCores = {};
        objetoCores['bg_claro'] = '#FFFFFF';
        objetoCores['bg_escuro'] = '#121212';
        
        document.querySelectorAll('.materia-pill input[type="color"]').forEach(input => {
            const materiaId = input.id.replace('picker-', ''); // Pega o nome certinho: matematica, artes, etc.
            objetoCores[materiaId] = input.value;
        });
        
        formData.append('cores', JSON.stringify(objetoCores)); 
        
        // 4. Usa o ID do usuário logado na sessão (com fallback para 1 caso a sessão caia)
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id'] ?? 1; ?>); 

        try {
            const res = await fetch(api, { method: 'POST', body: formData });
            const result = await res.json();
            
            if (result && result.success) {
                alert("Configurações salvas com sucesso!");
                carregarPerfil('preferencias'); // Recarrega a aba para mostrar que salvou de verdade
            } else {
                alert("Erro ao salvar: " + (result.error || "Erro desconhecido"));
            }
        } catch (e) {
            console.error("Erro ao salvar preferências", e);
            alert("Não foi possível conectar ao servidor.");
        }
    }

    // --- FUNÇÕES DE MODAL E SALVAMENTO DO USUÁRIO ---
    async function openModalPerfil(campo) {
        const modal = document.getElementById('modalPerfil');
        const containerForm = document.getElementById('modal-form-content');
        modal.style.display = 'flex';
        let inputHtml = '';

        if (campo === 'nome') {
            inputHtml = `<h3>Alterar seu nome</h3><label class="modal-label">NOME DE EXIBIÇÃO</label>
                         <input type="text" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.nome}">`;
        } 
        else if (campo === 'email') {
            inputHtml = `<h3>Alterar seu e-mail</h3><label class="modal-label">E-MAIL</label>
                         <input type="email" id="edit-valor" class="modal-input" value="${dadosUsuarioLocal.email}">`;
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
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id']; ?>);

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
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id']; ?>);

        fetch(api, { method: 'POST', body: formData })
        .then(r => r.json())
        .then(data => {
            if (data.success) carregarPerfil('usuario');
            else alert("Erro: " + data.error);
        });
    }

    // Mantido intacto conforme seu código anterior
    document.getElementById('cores-artes')?.addEventListener('input', function(e) {
        const novaCor = e.target.value;
        const cardExemplo = document.querySelector('.card-exemplo-artes');
        if (cardExemplo) {
            cardExemplo.style.backgroundColor = novaCor;
        }
    });

    // Substitua APENAS esta função dentro das suas tags <script> no seu configuracoes.php
    function salvarPreferenciasGerais() {
        const formData = new FormData();
        
        // Chamamos a ação que criamos com Prepared Statements para persistir o JSON perfeitamente
        formData.append('acao', 'atualizar_preferencias_prepared');
        
        // Captura o Tema e a Fonte de forma segura
        const elementoTema = document.getElementById('config-tema');
        const elementoFonte = document.getElementById('config-fonte');
        formData.append('tema', elementoTema ? elementoTema.value : 0);
        formData.append('fonte', elementoFonte ? elementoFonte.value : 2);
        
        // Cria dinamicamente o objeto de cores coletando todos os inputs de cores da tela
        const objetoCores = {};
        
        // Artes e Matemática (Seus inputs padrão)
        const elementoArtes = document.getElementById('cores-artes');
        const elementoMatematica = document.getElementById('cores-matematica');
        
        objetoCores.artes = elementoArtes ? elementoArtes.value : "#e67e22";
        objetoCores.matematica = elementoMatematica ? elementoMatematica.value : "#3498db";
        
        // Adiciona as demais matérias caso existam outros inputs criados na sua tela
        // (Isso evita que o banco resete as cores das outras matérias para vazio)
        const listaMaterias = ['portugues', 'historia', 'geografia', 'biologia', 'fisica', 'quimica', 'ingles', 'filosofia', 'sociologia', 'educacao_fisica', 'literatura'];
        listaMaterias.forEach(materia => {
            const inputMateria = document.getElementById('cores-' + materia);
            if (inputMateria) {
                objetoCores[materia] = inputMateria.value;
            }
        });
        
        // Transforma o objeto em string JSON para salvar no campo 'cores_materia'
        formData.append('cores', JSON.stringify(objetoCores)); 
        
        // Envia o ID correto do usuário logado através da sessão do PHP
        formData.append('id_usuario', <?php echo $_SESSION['usuario_id']; ?>); 

        // Dispara a requisição para salvar no banco
        fetch(api, { 
            method: 'POST', 
            body: formData 
        })
        .then(r => r.json())
        .then(data => {
            if (data && data.success) {
                console.log("Preferências salvas com sucesso!");
                alert("Configurações salvas com sucesso!");
                // Opcional: Recarrega a página para validar visualmente que a cor fixou
                window.location.reload();
            } else {
                alert("Erro ao salvar preferências: " + (data.error || "Erro desconhecido"));
            }
        })
        .catch(err => {
            console.error("Erro na requisição:", err);
            alert("Não foi possível conectar ao servidor.");
        });
    }
    window.onload = () => carregarPerfil('usuario');
</script>

</body>
</html>