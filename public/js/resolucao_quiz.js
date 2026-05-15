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
        iniciarCronometro();
    } catch (error) {
        console.error("Erro ao carregar quiz:", error);
    }
}

function iniciarCronometro() {
    clearInterval(intervaloCronometro); 
    intervaloCronometro = setInterval(() => {
        segundos++;
        const min = Math.floor(segundos / 60);
        const seg = segundos % 60;
        const tempoFormatado = `${min.toString().padStart(2, '0')}:${seg.toString().padStart(2, '0')}`;
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
        case 1: // Múltipla Escolha (Uma correta)
            p.respostas.forEach(resp => {
                const checked = valorSalvo == resp.id ? 'checked' : '';
                html += `
                    <label style="display: block; margin-bottom: 5px;">
                        <input type="radio" name="p_${p.id}" value="${resp.id}" ${checked} 
                               onchange="salvarResposta(${p.id}, this.value)">
                        ${resp.descricao}
                    </label>`;
            });
            break;

        case 2: // Resposta Curta (Texto)
            html += `<input type="text" value="${valorSalvo || ''}" 
                            oninput="salvarResposta(${p.id}, this.value)" 
                            placeholder="Sua resposta..." style="padding: 8px; width: 80%;">`;
            break;

        case 3: // Verdadeiro ou Falso
            html += `
                <div style="margin-top: 10px;">
                    <button onclick="salvarResposta(${p.id}, 'Verdadeiro'); renderizarPergunta()" style="padding: 10px 20px;">V</button>
                    <button onclick="salvarResposta(${p.id}, 'Falso'); renderizarPergunta()" style="padding: 10px 20px;">F</button>
                </div>
                <p>Selecionado: <strong>${valorSalvo || 'Nenhum'}</strong></p>`;
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
            html += `<p><small>Digite a ordem correta para cada item (1, 2, 3...):</small></p>`;
            p.respostas.forEach(resp => {
                const ordemDigitada = (respostasUsuario[p.id] && respostasUsuario[p.id][resp.id]) || "";
                html += `
                    <div style="margin-bottom: 8px;">
                        <input type="number" style="width: 50px; padding: 5px;" 
                               oninput="salvarOrdemManual(${p.id}, ${resp.id}, this.value)" 
                               value="${ordemDigitada}">
                        <span>${resp.descricao}</span>
                    </div>`;
            });
            break;

        case 6: // Arrastar e Soltar (Ordenação Visual)
            html += `<p><small>Arraste os itens para a ordem correta:</small></p>`;
            if (!respostasUsuario[p.id]) {
                respostasUsuario[p.id] = p.respostas.map(r => r.id);
            }
            
            html += `<ul id="sortable-list" style="list-style: none; padding: 0;">`;
            respostasUsuario[p.id].forEach((idResp, index) => {
                const respObj = p.respostas.find(r => r.id == idResp);
                html += `
                    <li draggable="true" 
                        ondragstart="dragStartExec(${index})" 
                        ondragover="event.preventDefault()" 
                        ondrop="dropExec(${p.id}, ${index})"
                        style="border: 1px solid #ccc; padding: 12px; margin-bottom: 8px; cursor: move; background: #fefefe; border-radius: 4px; user-select: none;">
                        ☰ ${respObj.descricao}
                    </li>`;
            });
            html += `</ul>`;
            break;
    }

    container.innerHTML = html;
    atualizarControles();
}

// --- Funções de Gravação de Respostas ---

function salvarResposta(perguntaId, valor) {
    respostasUsuario[perguntaId] = valor;
}

function salvarRespostaMultipla(perguntaId, valor, marcado) {
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = [];
    if (marcado) {
        if (!respostasUsuario[perguntaId].includes(valor)) {
            respostasUsuario[perguntaId].push(valor);
        }
    } else {
        respostasUsuario[perguntaId] = respostasUsuario[perguntaId].filter(id => id !== valor);
    }
}

function salvarOrdemManual(perguntaId, respostaId, valor) {
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = {};
    respostasUsuario[perguntaId][respostaId] = valor;
}

// --- Funções Drag and Drop (Tipo 6) ---

let dragIdxExec = null;
function dragStartExec(index) {
    dragIdxExec = index;
}

function dropExec(perguntaId, targetIndex) {
    let lista = respostasUsuario[perguntaId];
    if (!lista) return;
    const itemMovido = lista.splice(dragIdxExec, 1)[0];
    lista.splice(targetIndex, 0, itemMovido);
    renderizarPergunta();
}

// --- Navegação ---

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
    const final = (indicePergunta === dadosQuiz.perguntas.length - 1);
    document.getElementById('btn-proximo').style.display = final ? 'none' : 'inline';
    document.getElementById('btn-finalizar').style.display = final ? 'inline' : 'none';
}

// --- Finalização e Correção ---

async function finalizarQuiz() {
    clearInterval(intervaloCronometro);

    let acertos = 0;
    const totalQuestoes = dadosQuiz.perguntas.length;

    dadosQuiz.perguntas.forEach(p => {
        const respUser = respostasUsuario[p.id];
        const tipo = parseInt(p.id_tipo);

        if (tipo === 1 || tipo === 3) { // Escolha Única ou V/F
            const correta = p.respostas.find(r => r.certo == 1);
            if (correta && (respUser == correta.id || respUser == correta.descricao)) acertos++;
        } 
        else if (tipo === 2) { // Texto Curto
            const correta = p.respostas[0];
            if (correta && respUser?.trim().toLowerCase() === correta.descricao.toLowerCase()) acertos++;
        }
        else if (tipo === 4) { // Múltipla Escolha
            const selUser = respUser || [];
            const idsCorretos = p.respostas.filter(r => r.certo == 1).map(r => r.id.toString());
            const acertouTudo = selUser.length === idsCorretos.length && idsCorretos.every(id => selUser.includes(id));
            if (acertouTudo) acertos++;
        }
        else if (tipo === 5) { // Ordenação Manual
            const ordUser = respUser || {};
            const acertou = p.respostas.every(r => ordUser[r.id] == r.ordem);
            if (acertou && p.respostas.length > 0) acertos++;
        }
        else if (tipo === 6) { // Arrastar e Soltar
            const listaUser = respUser || [];
            const ordemCorretaIds = [...p.respostas].sort((a, b) => a.ordem - b.ordem).map(r => r.id);
            if (JSON.stringify(listaUser) === JSON.stringify(ordemCorretaIds)) acertos++;
        }
    });

    const dadosParaSalvar = {
        id_quiz: quizId,
        acertos: acertos,
        total: totalQuestoes,
        segundos: segundos 
    };

    try {
        const response = await fetch('../config/salvar_tentativa.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(dadosParaSalvar)
        });

        const resultado = await response.json();

        if (resultado.sucesso) {
            alert(`Quiz Finalizado!\nAcertos: ${acertos}/${totalQuestoes}`);
            window.location.href = `resultado.php?id_tentativa=${resultado.id_tentativa}`;
        } else {
            alert("Erro ao salvar resultado: " + resultado.erro);
        }
    } catch (error) {
        console.error("Erro na comunicação:", error);
        alert("Erro ao conectar com o servidor.");
    }
}

// Iniciar aplicação
carregarQuiz();