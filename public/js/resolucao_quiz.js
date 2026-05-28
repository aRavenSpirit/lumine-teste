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

        case 5: { // MUDANÇA: Ordenação Estilo Duolingo consumindo listas separadas do PHP
            if (!Array.isArray(respostasUsuario[p.id])) {
                respostasUsuario[p.id] = [];
            }
            const ordenados = respostasUsuario[p.id]; 

            html += `<p><small>Clique nas opções abaixo para organizá-las na ordem correta (clique no item de cima para remover):</small></p>`;
            
            // Área de Destino (Usa o array original 'respostas' para manter os slots na quantidade certa)
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

            // Banco de Opções Disponíveis para clique (Usa 'respostas_embaralhadas' isoladamente)
            html += `<div style="display: flex; flex-wrap: wrap; gap: 10px; margin-bottom: 15px;">`;
            p.respostas_embaralhadas.forEach(resp => {
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

        case 6: // MUDANÇA: Arrastar e Soltar com banco de itens móveis e alvos fixos separados
            html += `<p><small>Arraste os itens para os campos correspondentes:</small></p>`;
            
            // 1. Itens que o aluno vai arrastar (Usa exclusivamente a lista 'respostas_embaralhadas')
            html += `<div id="itens-disponiveis" style="display:flex; flex-wrap:wrap; gap:10px; margin-bottom:20px; padding:15px; background:#f4f4f4; border:1px solid #ccc; min-height:50px;">`;
            p.respostas_embaralhadas.forEach(resp => {
                const jaAlocado = Object.values(respostasUsuario[p.id] || {}).includes(resp.id.toString());
                if (!jaAlocado) {
                    html += `<div id="drag_${resp.id}" draggable="true" ondragstart="drag(event)" style="padding:10px; background:white; border:1px solid #333; cursor:move; border-radius:4px;">${resp.descricao}</div>`;
                }
            });
            html += `</div>`;

            // 2. Caixas de destino (Usa o array sequencial estável 'respostas' para não embaralhar os alvos de lugar)
            html += `<div id="caixas-destino" style="display:grid; grid-template-columns: 1fr 1fr; gap:15px;">`;
            
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
    atualizarControles(); // <--- MUDANÇA AQUI: Atualiza o estado do botão na hora
}

function salvarRespostaMultipla(perguntaId, valor, marcado) {
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = [];
    if (marcado) {
        if (!respostasUsuario[perguntaId].includes(valor)) respostasUsuario[perguntaId].push(valor);
    } else {
        respostasUsuario[perguntaId] = respostasUsuario[perguntaId].filter(id => id !== valor);
    }
    atualizarControles(); // <--- MUDANÇA AQUI: Atualiza o estado do botão na hora
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

// --- VALIDAÇÃO DE PREENCHIMENTO ---
function validouTodasRespostas() {
    if (!dadosQuiz || !dadosQuiz.perguntas) return false;

    // Percorre cada pergunta do quiz para checar se foi respondida
    return dadosQuiz.perguntas.every(p => {
        const resp = respostasUsuario[p.id];
        const tipo = parseInt(p.id_tipo);

        switch (tipo) {
            case 1: // Múltipla Escolha
            case 2: // Resposta Curta
            case 3: // Verdadeiro ou Falso
                // Verifica se não está vazio, nulo ou indefinido
                return resp !== undefined && resp !== null && resp.toString().trim() !== '';

            case 4: // Múltipla Escolha (Várias Corretas)
                // Verifica se é uma array e se tem pelo menos 1 item selecionado
                return Array.isArray(resp) && resp.length > 0;

            case 5: // Ordenação estilo Duolingo
                // O usuário precisa ter ordenado TODOS os elementos disponíveis
                return Array.isArray(resp) && resp.length === p.respostas.length;

            case 6: // Arrastar e Soltar
                // Verifica se a quantidade de itens alocados é igual à quantidade de alvos fixos
                if (!resp || typeof resp !== 'object') return false;
                const totalAlocados = Object.keys(resp).length;
                return totalAlocados === p.respostas.length;

            default:
                return false;
        }
    });
}

function atualizarControles() {
    document.getElementById('btn-voltar').style.display = indicePergunta > 0 ? 'inline' : 'none';
    
    const final = indicePergunta === dadosQuiz.perguntas.length - 1;
    document.getElementById('btn-proximo').style.display = final ? 'none' : 'inline';
    
    const btnFinalizar = document.getElementById('btn-finalizar');
    
    if (final) {
        btnFinalizar.style.display = 'inline';
        
        // Se respondeu tudo, ativa o botão. Se falta algo, desativa.
        if (validouTodasRespostas()) {
            btnFinalizar.removeAttribute('disabled');
            btnFinalizar.style.opacity = '1';
            btnFinalizar.style.cursor = 'pointer';
            btnFinalizar.innerText = "Finalizar e Ver Resultado";
        } else {
            btnFinalizar.setAttribute('disabled', 'true');
            btnFinalizar.style.opacity = '0.5';
            btnFinalizar.style.cursor = 'not-allowed';
            btnFinalizar.innerText = "Responda todas as questões para finalizar";
        }
    } else {
        btnFinalizar.style.display = 'none';
    }
}

// --- FINALIZAÇÃO ---


// Função para remover o bloqueio de saída da página
function desativarAvisoSaida() {
    window.onbeforeunload = null;
    // Remove o listener antigo caso tenha sido adicionado via addEventListener
    const clonado = window.cloneNode ? window.cloneNode(true) : null; 
    // Uma forma infalível de anular no fluxo atual:
    window.addEventListener('beforeunload', function (e) {
        delete e['returnValue'];
    });
}

// --- FINALIZAÇÃO ---
async function finalizarQuiz() {
    clearInterval(intervaloCronometro);
    
    // Bloqueia interações na tela durante o envio
    const container = document.getElementById('quiz-container');
    if (container) {
        container.style.pointerEvents = 'none'; 
        container.style.opacity = '0.6';
    }
    document.getElementById('quiz-controls').style.pointerEvents = 'none';
    document.getElementById('quiz-controls').style.opacity = '0.6';

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
            const rUser = respostasUsuario[p.id] || [];
            let acertou = true;

            if (rUser.length !== p.respostas.length) {
                acertou = false;
            } else {
                acertou = p.respostas.every(r => {
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
            desativarAvisoSaida(); // Libera o pop-up de saída do navegador

            // Formata o tempo decorrido para exibir na modal
            const min = Math.floor(segundos / 60).toString().padStart(2, '0');
            const seg = (segundos % 60).toString().padStart(2, '0');

            // CÁLCULO DE ERROS: Quantidade total menos o que o usuário acertou
            const erros = totalQuestoes - acertos;

            // Alimenta os dados nos elementos do HTML
            document.getElementById('modal-acertos').innerText = `${acertos} / ${totalQuestoes}`;
            document.getElementById('modal-erros').innerText = `${erros} / ${totalQuestoes}`; // <--- MUDANÇA AQUI (Injeta os erros)
            document.getElementById('modal-tempo').innerText = `${min}:${seg}`;

            // Configura a ação do botão único da modal para redirecionar para a Home
            document.getElementById('btn-modal-home').onclick = function() {
                window.removeEventListener('beforeunload', gerenciarAvisoSaida);
                window.onbeforeunload = null;
                window.location.href = 'home.php'; 
            };

            // Exibe a modal na tela (muda de display: none para flex)
            document.getElementById('modal-resultado').style.display = 'flex';

        } else {
            alert("Erro ao salvar: " + resultado.erro);
            reativarQuiz();
        }
    } catch (error) {
        console.error("Erro:", error);
        reativarQuiz();
    }
}

function reativarQuiz() {
    const container = document.getElementById('quiz-container');
    if (container) {
        container.style.pointerEvents = 'auto';
        container.style.opacity = '1';
    }
    document.getElementById('quiz-controls').style.pointerEvents = 'auto';
    document.getElementById('quiz-controls').style.opacity = '1';
}

carregarQuiz();

// Monitora quando o usuário tenta fechar a aba por acidente (durante o quiz)
function gerenciarAvisoSaida(e) {
    e.preventDefault();
    e.returnValue = 'Tem certeza que deseja sair? Suas respostas não serão salvas.';
    return e.returnValue;
}
window.addEventListener('beforeunload', gerenciarAvisoSaida);