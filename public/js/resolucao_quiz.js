const params = new URLSearchParams(window.location.search);
const quizId = params.get('id');

let dadosQuiz = null;
let indicePergunta = 0;
let respostasUsuario = {}; 

// Variáveis do Cronômetro
let segundos = 0;
let intervaloCronometro;

async function carregarQuiz() {
    if (!quizId) return alert("Quiz não encontrado!");

    try {
        const response = await fetch(`../config/quiz.php?tipo=detalhes_quiz&id=${quizId}`);
        dadosQuiz = await response.json();
        
        document.getElementById('quiz-titulo').innerText = dadosQuiz.nome;
        document.getElementById('quiz-materia').innerText = dadosQuiz.nome_materia;
        document.getElementById('quiz-conteudo').innerText = dadosQuiz.conteudo;

        renderizarPergunta();
        iniciarCronometro(); // <--- Liga o relógio aqui
    } catch (error) {
        console.error("Erro ao carregar quiz:", error);
    }
}

function iniciarCronometro() {
    // Garante que não existam dois cronômetros rodando
    clearInterval(intervaloCronometro); 
    
    intervaloCronometro = setInterval(() => {
        segundos++;
        const min = Math.floor(segundos / 60);
        const seg = segundos % 60;
        
        // Formata para 00:00
        const tempoFormatado = 
            `${min.toString().padStart(2, '0')}:${seg.toString().padStart(2, '0')}`;
        
        document.getElementById('cronometro').innerText = `Tempo: ${tempoFormatado}`;
    }, 1000);
}

function renderizarPergunta() {
    const container = document.getElementById('pergunta-atual');
    const p = dadosQuiz.perguntas[indicePergunta];
    
    document.getElementById('progresso').innerText = `Pergunta ${indicePergunta + 1} de ${dadosQuiz.perguntas.length}`;

    let html = `<h3>${p.descricao}</h3>`;
    const valorSalvo = respostasUsuario[p.id];

    switch (parseInt(p.id_tipo)) {
        case 1: // Múltipla Escolha
            p.respostas.forEach(resp => {
                const checked = valorSalvo == resp.id ? 'checked' : '';
                html += `
                    <label>
                        <input type="radio" name="p_${p.id}" value="${resp.id}" ${checked} 
                               onchange="salvarResposta(${p.id}, this.value)">
                        ${resp.descricao}
                    </label><br>`;
            });
            break;

        case 2: // Resposta Curta
            html += `<input type="text" value="${valorSalvo || ''}" 
                            oninput="salvarResposta(${p.id}, this.value)" 
                            placeholder="Sua resposta...">`;
            break;

        case 3: // Verdadeiro ou Falso
            html += `
                <button onclick="salvarResposta(${p.id}, 'Verdadeiro'); renderizarPergunta()">V</button>
                <button onclick="salvarResposta(${p.id}, 'Falso'); renderizarPergunta()">F</button>
                <p>Selecionado: ${valorSalvo || 'Nenhum'}</p>`;
            break;

        case 4: // Múltipla Escolha (Várias Corretas)
            const selecionadas = respostasUsuario[p.id] || [];
            p.respostas.forEach(resp => {
                const checked = selecionadas.includes(resp.id.toString()) ? 'checked' : '';
                html += `
                    <label style="display: block; margin-bottom: 8px;">
                        <input type="checkbox" value="${resp.id}" ${checked} 
                            onchange="salvarRespostaMultipla(${p.id}, this.value, this.checked)">
                        ${resp.descricao}
                    </label>`;
            });
            break;

        case 5: // Ordenação Manual (Input numérico)
            html += `<p><small>Digite a ordem correta para cada item:</small></p>`;
            p.respostas.forEach(resp => {
                const valor = (respostasUsuario[p.id] && respostasUsuario[p.id][resp.id]) || "";
                html += `
                    <div style="margin-bottom: 8px;">
                        <input type="number" style="width: 40px;" 
                               oninput="salvarOrdemManual(${p.id}, ${resp.id}, this.value)" 
                               value="${valor}">
                        <span>${resp.descricao}</span>
                    </div>`;
            });
            break;

        case 6: // Arrastar e Soltar (Estilo Atividade 1)
            html += `<p><small>Arraste os itens para os campos correspondentes:</small></p>`;
            
            // Itens Disponíveis
            html += `<div id="itens-disponiveis" style="display:flex; gap:10px; margin-bottom:20px; padding:10px; background:#f4f4f4; border:1px solid #ccc; min-height:50px;">`;
            p.respostas.forEach(resp => {
                const jaAlocado = Object.values(respostasUsuario[p.id] || {}).includes(resp.id.toString());
                if (!jaAlocado) {
                    html += `<div id="drag_${resp.id}" draggable="true" ondragstart="drag(event)" style="padding:8px; background:white; border:1px solid #333; cursor:move;">${resp.descricao}</div>`;
                }
            });
            html += `</div>`;

            // Áreas de Destino (Alvos)
            html += `<div id="caixas-destino" style="display:grid; grid-template-columns: 1fr 1fr; gap:10px;">`;
            const totalAlvos = p.respostas.length;
            for (let i = 1; i <= totalAlvos; i++) {
                const idRespostaSolta = (respostasUsuario[p.id] && respostasUsuario[p.id][i]);
                const descResposta = idRespostaSolta ? p.respostas.find(r => r.id == idRespostaSolta).descricao : `Solte o item ${i} aqui`;
                
                html += `
                    <div class="box-target" ondragover="event.preventDefault()" ondrop="drop(event, ${p.id}, ${i})" 
                         style="border:2px dashed #888; padding:15px; text-align:center; background:${idRespostaSolta ? '#e0f7fa' : '#fff'}">
                        ${descResposta}
                    </div>`;
            }
            html += `</div>`;
            html += `<button onclick="limparDrag(${p.id})" style="margin-top:10px;">Reiniciar Ordenação</button>`;
            break;
    }

    container.innerHTML = html;
    atualizarControles();
}

// --- FUNÇÕES DE ARRASTAR E SOLTAR ---
function drag(e) {
    const idNum = e.target.id.replace('drag_', '');
    e.dataTransfer.setData("text", idNum);
}

function drop(e, perguntaId, ordemAlvo) {
    e.preventDefault();
    const respostaId = e.dataTransfer.getData("text");
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = {};
    respostasUsuario[perguntaId][ordemAlvo] = respostaId;
    renderizarPergunta();
}

function limparDrag(perguntaId) {
    respostasUsuario[perguntaId] = {};
    renderizarPergunta();
}

// --- FUNÇÕES DE SALVAMENTO ---
function salvarResposta(perguntaId, valor) {
    respostasUsuario[perguntaId] = valor;
}

function salvarRespostaMultipla(perguntaId, valor, marcado) {
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = [];
    if (marcado) {
        if (!respostasUsuario[perguntaId].includes(valor)) respostasUsuario[perguntaId].push(valor);
    } else {
        respostasUsuario[perguntaId] = respostasUsuario[perguntaId].filter(id => id !== valor);
    }
}

function salvarOrdemManual(perguntaId, respostaId, valor) {
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = {};
    respostasUsuario[perguntaId][respostaId] = valor;
}

// --- NAVEGAÇÃO ---
function proximaPergunta() {
    if (indicePergunta < dadosQuiz.perguntas.length - 1) {
        indicePergunta++;
        renderizarPergunta();
    }
}

function perguntaAnterior() {
    if (indicePergunta > 0) {
        indicePergunta--;
        renderizarPergunta();
    }
}

function atualizarControles() {
    document.getElementById('btn-voltar').style.display = indicePergunta > 0 ? 'inline' : 'none';
    const final = indicePergunta === dadosQuiz.perguntas.length - 1;
    document.getElementById('btn-proximo').style.display = final ? 'none' : 'inline';
    document.getElementById('btn-finalizar').style.display = final ? 'inline' : 'none';
}

// --- FINALIZAÇÃO ---
async function finalizarQuiz() {
    clearInterval(intervaloCronometro);
    let acertos = 0;
    const totalQuestoes = dadosQuiz.perguntas.length;

    dadosQuiz.perguntas.forEach(p => {
        const respostaUser = respostasUsuario[p.id];
        const tipo = parseInt(p.id_tipo);

        if (tipo === 1 || tipo === 3) {
            const correta = p.respostas.find(r => r.certo == 1);
            if (correta && respostaUser == correta.id) acertos++;
        } 
        else if (tipo === 2) {
            const correta = p.respostas[0];
            if (correta && respostaUser?.trim().toLowerCase() === correta.descricao.toLowerCase()) acertos++;
        }
        else if (tipo === 4) {
            const rUser = respostaUser || [];
            const idsCorretos = p.respostas.filter(r => r.certo == 1).map(r => r.id.toString());
            if (rUser.length === idsCorretos.length && idsCorretos.every(id => rUser.includes(id))) acertos++;
        }
        else if (tipo === 5) {
            const rUser = respostaUser || {};
            const acertou = p.respostas.every(r => rUser[r.id] == r.ordem);
            if (acertou && p.respostas.length > 0) acertos++;
        }
        else if (tipo === 6) {
            const rUser = respostaUser || {};
            let acertouTudo = true;
            p.respostas.forEach(r => {
                if (rUser[r.ordem] != r.id) acertouTudo = false;
            });
            if (acertouTudo) acertos++;
        }
    });

    const dadosParaSalvar = { id_quiz: quizId, acertos: acertos, total: totalQuestoes, segundos: segundos };

    try {
        const response = await fetch('../config/salvar_tentativa.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(dadosParaSalvar)
        });
        const resultado = await response.json();
        if (resultado.sucesso) {
            alert(`Quiz Finalizado! Acertos: ${acertos}/${totalQuestoes}`);
            window.location.href = `resultado.php?id_tentativa=${resultado.id_tentativa}`;
        } else {
            alert("Erro ao salvar: " + resultado.erro);
        }
    } catch (error) {
        console.error("Erro:", error);
    }
}

carregarQuiz();