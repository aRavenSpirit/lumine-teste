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

        case 5: { // MUDANÇA: Ordenação Estilo Duolingo (Clique para ordenar)
            if (!Array.isArray(respostasUsuario[p.id])) {
                respostasUsuario[p.id] = [];
            }
            const ordenados = respostasUsuario[p.id]; 

            html += `<p><small>Clique nas opções abaixo para organizá-las na ordem correta (clique no item de cima para remover):</small></p>`;
            
            // Área de Destino (Onde os itens clicados vão se posicionando em fila)
            html += `<div style="display: flex; flex-wrap: wrap; gap: 10px; margin-bottom: 20px; min-height: 50px; padding: 12px; background: #ebf5fb; border-radius: 8px; border: 2px dashed #3498db; align-items: center;">`;
            p.respostas.forEach((_, idx) => {
                const idResp = ordenados[idx];
                if (idResp) {
                    const respObj = p.respostas.find(r => r.id == idResp);
                    html += `
                        <div onclick="removerOpcaoOrdem(${p.id}, ${idx})" style="padding: 8px 16px; background: #3498db; color: white; border-radius: 20px; cursor: pointer; font-weight: bold; box-shadow: 0 2px 4px rgba(0,0,0,0.1); user-select: none;">
                            ${respObj ? respObj.descricao : ''}
                        </div>`;
                } else {
                    // Slots vazios esperando o preenchimento
                    html += `<div style="width: 60px; height: 35px; background: #d6eaf8; border-radius: 20px; opacity: 0.5;"></div>`;
                }
            });
            html += `</div>`;

            // Banco de Opções Disponíveis para clique
            html += `<div style="display: flex; flex-wrap: wrap; gap: 10px; margin-bottom: 15px;">`;
            p.respostas.forEach(resp => {
                const jaSelecionado = ordenados.includes(resp.id.toString());
                if (!jaSelecionado) {
                    html += `
                        <button type="button" onclick="selecionarOpcaoOrdem(${p.id}, '${resp.id}')" style="padding: 10px 20px; background: white; border: 2px solid #bdc3c7; border-radius: 20px; cursor: pointer; font-weight: bold; transition: 0.2s;">
                            ${resp.descricao}
                        </button>`;
                } else {
                    // Botão desativado/opaco enquanto estiver selecionado lá em cima
                    html += `
                        <button type="button" disabled style="padding: 10px 20px; background: #eaecee; border: 2px dashed #bdc3c7; border-radius: 20px; color: #bdc3c7; cursor: not-allowed; opacity: 0.6;">
                            ${resp.descricao}
                        </button>`;
                }
            });
            html += `</div>`;
            break;
        }

        case 6: // Arrastar e Soltar (Estilo Atividade 1)
            html += `<p><small>Arraste os itens para os campos correspondentes:</small></p>`;
            
            // 1. Itens que o aluno vai arrastar
            html += `<div id="itens-disponiveis" style="display:flex; flex-wrap:wrap; gap:10px; margin-bottom:20px; padding:15px; background:#f4f4f4; border:1px solid #ccc; min-height:50px;">`;
            p.respostas.forEach(resp => {
                const jaAlocado = Object.values(respostasUsuario[p.id] || {}).includes(resp.id.toString());
                if (!jaAlocado) {
                    html += `<div id="drag_${resp.id}" draggable="true" ondragstart="drag(event)" style="padding:10px; background:white; border:1px solid #333; cursor:move; border-radius:4px;">${resp.descricao}</div>`;
                }
            });
            html += `</div>`;

            // 2. Caixas de destino (Alvos)
            html += `<div id="caixas-destino" style="display:grid; grid-template-columns: 1fr 1fr; gap:15px;">`;
            
            // IMPORTANTE: Aqui usamos os dados reais das respostas vindas do banco
            p.respostas.forEach((respOriginal, index) => {
                const posicaoAlvo = index + 1; // Ordem da caixa
                const idRespostaSolta = (respostasUsuario[p.id] && respostasUsuario[p.id][posicaoAlvo]);
                
                // Se o aluno soltou algo, mostra a descrição do item. 
                // SE NÃO, mostra o "texto_alvo" (ex: Lê um número decimal)
                let conteudoCaixa;
                if (idRespostaSolta) {
                    const itemSolto = p.respostas.find(r => r.id == idRespostaSolta);
                    conteudoCaixa = `<strong>${itemSolto.descricao}</strong>`;
                } else {
                    // Aqui pegamos o texto que você digitou no Criar Quiz!
                    conteudoCaixa = respOriginal.texto_alvo || `Arraste o item correspondente aqui`;
                }
                
                html += `
                    <div class="box-target" ondragover="event.preventDefault()" ondrop="drop(event, ${p.id}, ${posicaoAlvo})" 
                         style="border:2px dashed #888; padding:20px; text-align:center; min-height:80px; display:flex; align-items:center; justify-content:center; background:${idRespostaSolta ? '#d1f2eb' : '#fff'}; border-radius:8px;">
                        ${conteudoCaixa}
                    </div>`;
            });
            html += `</div>`;
            html += `<button onclick="limparDrag(${p.id})" style="margin-top:15px; padding:5px 10px; cursor:pointer;">Limpar Tudo</button>`;
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

// MUDANÇA: Novas funções de controle para o fluxo de cliques ordenados (Case 5)
function selecionarOpcaoOrdem(perguntaId, respostaId) {
    if (!Array.isArray(respostasUsuario[perguntaId])) {
        respostasUsuario[perguntaId] = [];
    }
    if (!respostasUsuario[perguntaId].includes(respostaId.toString())) {
        respostasUsuario[perguntaId].push(respostaId.toString());
        renderizarPergunta();
    }
}

function removerOpcaoOrdem(perguntaId, index) {
    if (Array.isArray(respostasUsuario[perguntaId])) {
        respostasUsuario[perguntaId].splice(index, 1);
        renderizarPergunta();
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
        
        else if (tipo === 5) { // MUDANÇA: Nova lógica de verificação com base na lista de cliques sequenciais
            const rUser = respostasUsuario[p.id] || [];
            let acertou = true;

            // Se o usuário não ordenou todos os elementos, já marca como incorreta
            if (rUser.length !== p.respostas.length) {
                acertou = false;
            } else {
                acertou = p.respostas.every(r => {
                    // Pega a posição onde o item foi clicado (0, 1, 2...) e soma 1 para bater com a ordem real (1, 2, 3...)
                    const posicaoUsuario = rUser.indexOf(r.id.toString()) + 1;
                    const ordemCorreta = parseInt(r.ordem);
                    return posicaoUsuario === ordemCorreta;
                });
            }

            if (acertou && p.respostas.length > 0) {
                acertos++;
            }
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

// Monitora quando o usuário tenta sair ou recarregar a página
window.addEventListener('beforeunload', function (e) {
    e.preventDefault();
    e.returnValue = 'Tem certeza que deseja sair? Suas respostas não serão salvas.';
});