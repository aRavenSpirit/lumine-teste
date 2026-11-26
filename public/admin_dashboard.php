<?php
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Coloque aqui o(s) e-mail(s) que você escolheu
$emails_permitidos = ['lumineprojeto@gmail.com', 'lucasgustavo2oliveira@gmail.com', 'adminmaneiro@gmail.com', 'victoriaespsanto@gmail.com', 'matheuseuzebio39@gmail.com', 'breno.d.gomes6@aluno.senai.br','bdrbgomes@gmail.com'];

if (!isset($_SESSION['usuario_id'])) {
    header("Location: login.html");
    exit;
}

require_once "../config/conexao.php"; // ajuste o caminho se o arquivo estiver em outra pasta

$id = intval($_SESSION['usuario_id']);
$res = $conn->query("SELECT email FROM usuario WHERE id = $id");
$user = $res ? $res->fetch_assoc() : null;

if (!$user || !in_array(strtolower($user['email']), $emails_permitidos)) {
    header("Location: index.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Painel do Administrador - LUMINE</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINEADM.ico" type="image/x-icon">
    <link rel="stylesheet" href="./style/admin_dashboard.css">
</head>
<body>

<div class="main-frame">
    <header>
        <div class="brand-adm">ADM</div>
        <button onclick="location.href='criar_quiz.html'" class="nav-btn">CRIAR QUIZZES</button>
        <button class="nav-btn btn-lumine-top" onclick="window.location.href='index.php'">LUMINE</button>
    </header>

    <div class="dashboard">
        <div class="cards-container">
            <div class="card card-usuarios">
                <h3>Cadastros</h3>
                <div class="numero" id="total-usuarios">0</div>
                <button onclick="abrirModal('usuários')">Ver mais</button>
            </div>
            <div class="card card-quizzes">
                <h3>Quizzes totais</h3>
                <div class="numero" id="total-quizzes">0</div>
                <button onclick="abrirModal('quizzes')">Ver mais</button>
            </div>
            <div class="card card-avaliacoes">
                <h3>Avaliações</h3>
                <div class="numero" id="total-avaliacoes">0</div>
                <button onclick="abrirModal('avaliacoes')">Ver mais</button>
            </div>
        </div>

        <div class="charts-container">
            <div class="chart-box">
                <div class="chart-title">Distribuição por escolaridade</div>
                <div class="chart-wrapper">
                    <canvas id="chartEscolaridade"></canvas>
                </div>
            </div>
            <div class="chart-box">
                <div class="chart-title">Novos cadastros</div>
                <div class="chart-wrapper">
                    <canvas id="chartCadastros"></canvas>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="modal">
    <div class="modal-content">
        <div class="modal-header-topo">
            <h2 id="modal-titulo"></h2>
            <button class="btn-fechar-x" onclick="fecharModal()" title="Fechar">&times;</button>
        </div>
        <div id="status-feedback" class="status-msg"></div>
        <div id="modal-corpo"></div>
        <div class="modal-footer-baixo">
            <button class="btn-fechar" onclick="fecharModal()">Fechar Janela</button>
        </div>
    </div>
</div>

<script>
    let detalhesModais = {};
    let chart1 = null;
    let chart2 = null;

    let timerRedimensionamento;
    window.addEventListener('resize', () => {
        clearTimeout(timerRedimensionamento);
        timerRedimensionamento = setTimeout(() => {
            window.location.reload();
        }, 300);
    });

    async function carregarDados() {
        try {
            const res = await fetch('../config/admin_data.php?t=' + Date.now());
            if (!res.ok) throw new Error("Erro na rede");
            const dados = await res.json();
            
            detalhesModais = dados.detalhes;

            document.getElementById('total-usuarios').innerText = dados.cards.usuarios || 0;
            document.getElementById('total-quizzes').innerText = dados.cards.quizzes || 0;
            document.getElementById('total-avaliacoes').innerText = dados.cards.avaliacoes || 0;

            if (chart1) chart1.destroy();
            if (chart2) chart2.destroy();

            const ctx1 = document.getElementById('chartEscolaridade').getContext('2d');
            chart1 = new Chart(ctx1, {
                type: 'bar',
                data: {
                    labels: dados.graficoEscolaridade.labels || [],
                    datasets: [{ 
                        label: 'Alunos por Escolaridade', 
                        data: dados.graficoEscolaridade.valores || [], 
                        backgroundColor: '#40c4ff',
                        borderColor: '#000000',
                        borderWidth: 2
                    }]
                },
                options: { 
                    responsive: true, 
                    maintainAspectRatio: false,
                    plugins: { legend: { display: false } },
                    scales: { y: { grid: { display: true }, ticks: { font: { family: 'Fredoka' } } }, x: { ticks: { font: { family: 'Fredoka' } } } }
                }
            });

            const ctx2 = document.getElementById('chartCadastros').getContext('2d');
            chart2 = new Chart(ctx2, {
                type: 'pie',
                data: {
                    labels: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab'],
                    datasets: [{ 
                        data: dados.graficoSemana || [0,0,0,0,0,0,0], 
                        backgroundColor: ['#00e676', '#ff5252', '#aa00ff', '#ffea00', '#a3e1ff', '#40c4ff', '#00b0ff'],
                        borderColor: '#000000',
                        borderWidth: 2
                    }]
                },
                options: { 
                    responsive: true, 
                    maintainAspectRatio: false,
                    plugins: { 
                        legend: { 
                            position: window.innerWidth < 600 ? 'bottom' : 'left', 
                            labels: { font: { family: 'Fredoka', weight: 'bold' } } 
                        } 
                    }
                }
            });
        } catch (error) { 
            console.error("Erro ao carregar dados:", error); 
        }
    }

    function mostrarFeedback(msg, tipo) {
        const div = document.getElementById('status-feedback');
        div.innerText = msg;
        div.className = `status-msg status-${tipo}`;
        div.style.display = 'block';
        setTimeout(() => { div.style.display = 'none'; }, 3000);
    }

    function abrirModal(tipo) {
        const titulo = document.getElementById('modal-titulo');
        const corpo = document.getElementById('modal-corpo');
        
        const nomesFormatados = {
            'usuários': 'Usuários',
            'quizzes': 'Quizzes',
            'avaliacoes': 'Avaliações'
        };

        const tituloFormatado = nomesFormatados[tipo] || (tipo.charAt(0).toUpperCase() + tipo.slice(1));
        titulo.innerText = "Gerenciar " + tituloFormatado;
        
        const dados = detalhesModais[tipo] || [];
        let html = "";

        if (tipo === 'usuários') {
            html = `<div class="table-responsive">
                <table class="admin-table">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nome</th>
                            <th>Email</th>
                            <th>Escolaridade</th>
                            <th style="text-align: center;">Ações</th>
                        </tr>
                    </thead>
                    <tbody>`;
            dados.forEach(u => {
                html += `<tr id="row-user-${u.id}">
                    <td><strong>#${u.id}</strong></td>
                    <td>${u.nome}</td>
                    <td>${u.email}</td>
                    <td>${u.nome_escolaridade || 'Não informado'}</td>
                    <td style="text-align: center;">
                        <div class="acoes-grupo">
                            <button class="btn-excluir" onclick="confirmarExclusao('usuario', '${u.id}')">Excluir</button>
                        </div>
                    </td>
                </tr>`;
            });
            html += `</tbody></table></div>`;
        } 
        else if (tipo === 'quizzes') {
            html = `<div class="table-responsive">
                <table class="admin-table">
                    <thead>
                        <tr>
                            <th>Nome</th>
                            <th>Matéria</th>
                            <th>Conteúdo</th>
                            <th style="text-align: center;">Perguntas</th>
                            <th style="text-align: center;">Dificuldade</th>
                            <th style="text-align: center;">Ações</th>
                        </tr>
                    </thead>
                    <tbody>`;
            dados.forEach(q => {
                let cl = "";
                const d = q.nome_dificuldade.toLowerCase();
                if (d.includes("fác") || d.includes("fac")) cl = "dif-facil";
                else if (d.includes("inter")) cl = "dif-intermediario";
                else if (d.includes("dif")) cl = "dif-dificil";

                html += `<tr id="row-quiz-${q.id}">
                    <td><strong>${q.nome_quiz}</strong></td>
                    <td>${q.nome_materia}</td>
                    <td>${q.nome_conteudo}</td>
                    <td style="text-align: center;">${q.total_perguntas}</td>
                    <td style="text-align: center;"><span class="tag-dificuldade ${cl}">${q.nome_dificuldade}</span></td>
                    <td>
                        <div class="acoes-grupo">
                            <button class="btn-editar" onclick="location.href='editar_quiz.html?id=${q.id}'">Editar</button>
                            <button class="btn-excluir" onclick="confirmarExclusao('quiz', '${q.id}')">Excluir</button>
                        </div>
                    </td>
                </tr>`;
            });
            html += `</tbody></table></div>`;
        }
        else if (tipo === 'avaliacoes') {
            const dadosCompletos = detalhesModais['avaliacoes'] || [];
            const materiasUnicas = [...new Set(dadosCompletos.map(a => a.nome_materia || 'Geral'))].sort();
            
            let opcoesMateriaHtml = `<option value="todas">-- Todas as Matérias --</option>`;
            materiasUnicas.forEach(m => {
                opcoesMateriaHtml += `<option value="${m}">${m}</option>`;
            });

            html = `
            <div class="filtros-avaliacoes-bar">
                <div class="filtro-item">
                    <label for="filtro-materia">Matéria:</label>
                    <select id="filtro-materia" onchange="aoSelecionarMateria()">
                        ${opcoesMateriaHtml}
                    </select>
                </div>

                <div class="filtro-item">
                    <label for="filtro-conteudo">Conteúdo:</label>
                    <select id="filtro-conteudo" onchange="filtrarAvaliacoesEncadeado()" disabled>
                        <option value="todos">-- Selecione uma Matéria primeiro --</option>
                    </select>
                </div>
            </div>

            <div class="container-split-modal">
                <div class="coluna-lista-avaliacoes">
                    <table class="admin-table">
                        <thead>
                            <tr>
                                <th>Usuário</th>
                                <th>Matéria</th>
                                <th>Quiz / Conteúdo</th>
                                <th>Nota</th>
                            </tr>
                        </thead>
                        <tbody id="tbody-avaliacoes"></tbody>
                    </table>
                </div>
                <div class="coluna-card-media">
                    <div class="card-media-geral">
                        <h4 id="titulo-card-media">Média Geral</h4>
                        <div class="media-score" id="valor-media-score">0.0</div>
                        <div class="media-estrela-grande">
                            <i class="fa-solid fa-star"></i>
                        </div>
                        <p id="total-avaliacoes-card">Baseado em 0 avaliações</p>
                    </div>
                </div>
            </div>`;

            corpo.innerHTML = html;
            document.getElementById('modal').style.display = 'flex';
            filtrarAvaliacoesEncadeado();
            return;
        }

        corpo.innerHTML = html || "<p>Nenhum registro.</p>";
        document.getElementById('modal').style.display = 'flex';
    }

    function confirmarExclusao(tipo, id) {
        const div = document.getElementById('status-feedback');
        div.innerHTML = `Confirmar exclusão? 
            <button onclick="executarExclusao('${tipo}', ${id})" style="background:#ff5252; color:white; border:2px solid #000; padding:4px 12px; cursor:pointer; border-radius:6px; font-weight:bold; margin-left:8px;">Sim</button> 
            <button onclick="document.getElementById('status-feedback').style.display='none'" style="background:#666; color:white; border:2px solid #000; padding:4px 12px; cursor:pointer; border-radius:6px; font-weight:bold; margin-left:4px;">Não</button>`;
        div.className = "status-msg status-error";
        div.style.display = "block";
    }

    async function executarExclusao(tipo, id) {
        try {
            const res = await fetch(`../config/excluir_adm.php?tipo=${tipo}&id=${id}`);
            const r = await res.json();
            if (r.status) {
                mostrarFeedback("Removido com sucesso!", "success");
                
                if (tipo === 'usuario' && r.deslogar) {
                    setTimeout(() => {
                        window.location.href = 'index.php'; 
                    }, 1000);
                    return;
                }

                const rowId = `row-${tipo==='usuario'?'user':'quiz'}-${id}`;
                const row = document.getElementById(rowId);
                if(row) row.style.display = 'none';
                await carregarDados(); 
            } else { 
                mostrarFeedback("Erro: " + r.erro, "error"); 
            }
        } catch (e) { 
            mostrarFeedback("Erro de conexão.", "error"); 
        }
    }

    function fecharModal() { 
        document.getElementById('modal').style.display = 'none'; 
        document.getElementById('status-feedback').style.display = 'none';
    }

    function aoSelecionarMateria() {
        const materiaSel = document.getElementById('filtro-materia').value;
        const selectConteudo = document.getElementById('filtro-conteudo');
        const dadosCompletos = detalhesModais['avaliacoes'] || [];

        if (materiaSel === 'todas') {
            selectConteudo.disabled = true;
            selectConteudo.innerHTML = `<option value="todos">-- Selecione uma Matéria primeiro --</option>`;
        } else {
            const conteudosDaMateria = [...new Set(
                dadosCompletos
                    .filter(a => (a.nome_materia || 'Geral') === materiaSel)
                    .map(a => a.nome_conteudo || 'Sem Conteúdo')
            )].sort();

            let htmlConteudo = `<option value="todos">-- Todos os Conteúdos --</option>`;
            conteudosDaMateria.forEach(c => {
                htmlConteudo += `<option value="${c}">${c}</option>`;
            });

            selectConteudo.innerHTML = htmlConteudo;
            selectConteudo.disabled = false;
        }

        filtrarAvaliacoesEncadeado();
    }

    function filtrarAvaliacoesEncadeado() {
        const materiaSel = document.getElementById('filtro-materia') ? document.getElementById('filtro-materia').value : 'todas';
        const conteudoSel = document.getElementById('filtro-conteudo') ? document.getElementById('filtro-conteudo').value : 'todos';
        const dadosCompletos = detalhesModais['avaliacoes'] || [];

        const dadosFiltrados = dadosCompletos.filter(a => {
            const mat = a.nome_materia || 'Geral';
            const cont = a.nome_conteudo || 'Sem Conteúdo';

            const atendeMateria = (materiaSel === 'todas' || mat === materiaSel);
            const atendeConteudo = (conteudoSel === 'todos' || cont === conteudoSel);

            return atendeMateria && atendeConteudo;
        });

        let soma = 0;
        dadosFiltrados.forEach(a => soma += parseFloat(a.nota || 0));
        const media = dadosFiltrados.length > 0 ? (soma / dadosFiltrados.length).toFixed(1) : "0.0";

        document.getElementById('valor-media-score').innerText = media;
        document.getElementById('total-avaliacoes-card').innerText = `Baseado em ${dadosFiltrados.length} avaliações`;

        if (conteudoSel !== 'todos') {
            document.getElementById('titulo-card-media').innerText = 'Média do Conteúdo';
        } else if (materiaSel !== 'todas') {
            document.getElementById('titulo-card-media').innerText = 'Média da Matéria';
        } else {
            document.getElementById('titulo-card-media').innerText = 'Média Geral';
        }

        let htmlTabela = "";
        dadosFiltrados.forEach(a => {
            let estrelasLinha = "";
            for(let i = 1; i <= 5; i++) {
                estrelasLinha += i <= a.nota 
                    ? '<i class="fa-solid fa-star" style="color: #f1c40f;"></i>' 
                    : '<i class="fa-regular fa-star" style="color: #ccc;"></i>';
            }
            
            const materia = a.nome_materia ? `<strong>${a.nome_materia}</strong>` : '<em style="color:#999;">Geral</em>';
            const quizNome = a.nome_quiz || 'Quiz Excluído';
            const conteudoNome = a.nome_conteudo ? `<br><small style="color:#666;">${a.nome_conteudo}</small>` : '';

            htmlTabela += `<tr>
                <td>${a.nome_usuario || 'Anônimo'}</td>
                <td>${materia}</td>
                <td>${quizNome}${conteudoNome}</td>
                <td><div class="estrelas-celula">${estrelasLinha} <span class="num-nota">(${a.nota})</span></div></td>
            </tr>`;
        });

        document.getElementById('tbody-avaliacoes').innerHTML = htmlTabela || `<tr><td colspan="4" style="text-align: center; padding: 20px;">Nenhuma avaliação encontrada para os filtros selecionados.</td></tr>`;
    }
    
    carregarDados();
</script>
</body>
</html>