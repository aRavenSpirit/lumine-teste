const params = new URLSearchParams(window.location.search);
const quizId = params.get('id');

let dadosQuiz = null;
let indicePergunta = 0;
let respostasUsuario = {}; 

// Variáveis do Cronômetro
let segundos = 0;
let intervaloCronometro;
let emModoRevisao = false;

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

    // VARIÁVEL ADICIONADA PARA VERIFICAR SE DEVE DESABILITAR OS ELEMENTOS NA REVISÃO
    const disabledSeRevisao = emModoRevisao ? 'disabled' : '';

    switch (parseInt(p.id_tipo)) {
        case 1: // Múltipla Escolha
            p.respostas.forEach(resp => {
                const checked = valorSalvo == resp.id ? 'checked' : '';
                
                // DEFINE DINAMICAMENTE SE A ALTERNATIVA É A CORRETA PARA SEU SCRIPT DE VERIFICAÇÃO ENCONTRAR
                const classeCorreta = resp.correta == 1 ? 'correta' : '';

                html += `
                    <label class="resposta ${classeCorreta}" style="${emModoRevisao ? 'cursor: not-allowed;' : ''}">
                        <input type="radio" name="p_${p.id}" value="${resp.id}" ${checked} ${disabledSeRevisao}
                               onchange="salvarResposta(${p.id}, this.value)">
                        ${resp.descricao}
                    </label><br>`;
            });
            break;

        case 2: // Resposta Curta
            html += `<input type="text" value="${valorSalvo || ''}" ${disabledSeRevisao}
                            oninput="salvarResposta(${p.id}, this.value)" 
                            placeholder="${emModoRevisao ? 'Não respondido' : 'Sua resposta...'}"
                            style="${emModoRevisao ? 'background-color: #f5f5f5; cursor: not-allowed;' : ''}">`;
            break;

        case 3: // Verdadeiro ou Falso
            html += `
                <button ${disabledSeRevisao} onclick="salvarResposta(${p.id}, 'Verdadeiro'); renderizarPergunta()" style="${emModoRevisao ? 'cursor: not-allowed; opacity: 0.6;' : ''}">V</button>
                <button ${disabledSeRevisao} onclick="salvarResposta(${p.id}, 'Falso'); renderizarPergunta()" style="${emModoRevisao ? 'cursor: not-allowed; opacity: 0.6;' : ''}">F</button>
                <p>Selecionado: ${valorSalvo || 'Nenhum'}</p>`;
            break;

        case 4: // Múltipla Escolha (Várias Corretas)
            const selecionadas = respostasUsuario[p.id] || [];
            p.respostas.forEach(resp => {
                const checked = selecionadas.includes(resp.id.toString()) ? 'checked' : '';
                
                // DEFINE DINAMICAMENTE SE A ALTERNATIVA É A CORRETA PARA SEU SCRIPT DE VERIFICAÇÃO ENCONTRAR
                const classeCorreta = resp.correta == 1 ? 'correta' : '';

                html += `
                    <label class="resposta ${classeCorreta}" style="display: block; margin-bottom: 8px; ${emModoRevisao ? 'cursor: not-allowed;' : ''}">
                        <input type="checkbox" value="${resp.id}" ${checked} ${disabledSeRevisao}
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
                    // CONDIÇÃO PARA EVITAR CLIQUE DE REMOÇÃO SE ESTIVER EM REVISÃO
                    const acaoRemover = emModoRevisao ? '' : `onclick="removerOpcaoOrdem(${p.id}, ${idx})"`;
                    html += `
                        <div ${acaoRemover} style="padding: 8px 16px; background: #3498db; color: white; border-radius: 20px; cursor: ${emModoRevisao ? 'default' : 'pointer'}; font-weight: bold; box-shadow: 0 2px 4px rgba(0,0,0,0.1); user-select: none;">
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
                    // CONDIÇÃO PARA EVITAR CLIQUE DE SELEÇÃO SE ESTIVER EM REVISÃO
                    const acaoSelecionar = emModoRevisao ? '' : `onclick="selecionarOpcaoOrdem(${p.id}, '${resp.id}')"`;
                    html += `
                        <button type="button" ${disabledSeRevisao} ${acaoSelecionar} style="padding: 10px 20px; background: white; border: 2px solid #bdc3c7; border-radius: 20px; cursor: ${emModoRevisao ? 'not-allowed' : 'pointer'}; font-weight: bold; transition: 0.2s;">
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
            // TRAVA ADICIONADA PARA ESCONDER O BANCO DE ITENS CASO JÁ ESTEJA NA REVISÃO
            if (!emModoRevisao) {
                html += `<div id="itens-disponiveis" style="display:flex; flex-wrap:wrap; gap:10px; margin-bottom:20px; padding:15px; background:#f4f4f4; border:1px solid #ccc; min-height:50px;">`;
                p.respostas_embaralhadas.forEach(resp => {
                    const jaAlocado = Object.values(respostasUsuario[p.id] || {}).includes(resp.id.toString());
                    if (!jaAlocado) {
                        html += `<div id="drag_${resp.id}" draggable="true" ondragstart="drag(event)" style="padding:10px; background:white; border:1px solid #333; cursor:move; border-radius:4px;">${resp.descricao}</div>`;
                    }
                });
                html += `</div>`;
            }

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
                    conteudoCaixa = respOriginal.texto_alvo || `Nenhum item adicionado`;
                }
                
                // CONDIÇÃO PARA REMOVER EVENTOS DE ARRASTAR (DROP) SE ESTIVER EM REVISÃO
                const eventosArrastar = emModoRevisao ? '' : `ondragover="event.preventDefault()" ondrop="drop(event, ${p.id}, ${posicaoAlvo})"`;

                html += `
                    <div class="box-target" ${eventosArrastar} 
                         style="border:2px dashed #888; padding:20px; text-align:center; min-height:80px; display:flex; align-items:center; justify-content:center; background:${idRespostaSolta ? '#d1f2eb' : '#fff'}; border-radius:8px; cursor: ${emModoRevisao ? 'default' : 'move'};">
                        ${conteudoCaixa}
                    </div>`;
            });
            html += `</div>`;

            // SÓ EXIBE O BOTÃO DE LIMPAR SE NÃO ESTIVER REVISANDO
            if (!emModoRevisao) {
                html += `<button onclick="limparDrag(${p.id})" style="margin-top:15px; padding:5px 10px; cursor:pointer;">Limpar Tudo</button>`;
            }
            break;
    }

    container.innerHTML = html;

    // =========================================================================
    // NOVA LOGICA DE CORREÇÃO TEXTUAL EM MODO REVISÃO (UNIFICADA COM O GABARITO)
    // =========================================================================
    if (emModoRevisao) {
        let acertouGeral = false;
        let respostaCertaTexto = "";

        // Identifica e valida dependendo do tipo da pergunta
        switch (parseInt(p.id_tipo)) {
            case 1: { // Múltipla escolha simples
                const respCorretaObj = p.respostas.find(r => r.certo == 1 || r.correta == 1);
                if (respCorretaObj) {
                    respostaCertaTexto = respCorretaObj.descricao;
                    acertouGeral = (valorSalvo == respCorretaObj.id);
                }
                break;
            }
            case 2: { // Resposta curta textual
                const respCorretaObj = p.respostas[0];
                if (respCorretaObj) {
                    respostaCertaTexto = respCorretaObj.descricao || respCorretaObj.texto_alvo;
                    acertouGeral = (String(valorSalvo).trim().toLowerCase() === String(respostaCertaTexto).trim().toLowerCase());
                }
                break;
            }
            case 3: { // Verdadeiro ou Falso
                const respCorretaObj = p.respostas.find(r => r.certo == 1 || r.correta == 1);
                if (respCorretaObj) {
                    respostaCertaTexto = respCorretaObj.descricao; 
                    acertouGeral = (String(valorSalvo).toLowerCase() === String(respostaCertaTexto).toLowerCase());
                }
                break;
            }
            case 4: { // Várias corretas
                const idsCorretos = p.respostas.filter(r => r.certo == 1 || r.correta == 1).map(r => r.id.toString());
                const selecionadas = Array.isArray(respostasUsuario[p.id]) ? respostasUsuario[p.id] : [];
                
                respostaCertaTexto = p.respostas.filter(r => r.certo == 1 || r.correta == 1).map(r => r.descricao).join(', ');
                acertouGeral = idsCorretos.length === selecionadas.length && idsCorretos.every(id => selecionadas.includes(id));
                break;
            }
            case 5: { // Ordenação Duolingo
                const rUser = respostasUsuario[p.id] || [];
                respostaCertaTexto = [...p.respostas].sort((a, b) => parseInt(a.ordem) - parseInt(b.ordem)).map(r => r.descricao).join(' → ');
                
                if (rUser.length !== p.respostas.length) {
                    acertouGeral = false;
                } else {
                    acertouGeral = p.respostas.every(r => {
                        const posicaoUsuario = rUser.indexOf(r.id.toString()) + 1;
                        const ordemCorreta = parseInt(r.ordem);
                        return posicaoUsuario === ordemCorreta;
                    });
                }
                break;
            }
            case 6: { // Arrastar e Soltar (Drag and Drop)
                const rUser = respostasUsuario[p.id] || {};
                let detalheGabarito = [];
                acertouGeral = true;

                p.respostas.forEach(r => {
                    detalheGabarito.push(`[${r.texto_alvo || 'Campo ' + r.ordem}]: ${r.descricao}`);
                    if (rUser[r.ordem] != r.id) {
                        acertouGeral = false;
                    }
                });

                respostaCertaTexto = detalheGabarito.join(' | ');
                break;
            }
        }

        // Cria o elemento de feedback para exibir abaixo da questão
        const feedbackDiv = document.createElement('div');
        feedbackDiv.style.marginTop = '20px';
        feedbackDiv.style.padding = '10px';
        feedbackDiv.style.borderTop = '2px solid #ccc';

        if (acertouGeral) {
            feedbackDiv.innerHTML = `<p style="color: #27ae60; font-weight: bold;"><i class="fas fa-check-circle"></i> Resposta correta</p>`;
        } else {
            feedbackDiv.innerHTML = `
                <p style="color: #c0392b; font-weight: bold;"><i class="fas fa-times-circle"></i> Resposta incorreta</p>
                <p><em>A resposta correta era:</em> <strong>${respostaCertaTexto}</strong></p>
            `;
        }
        container.appendChild(feedbackDiv);
    }
    // =========================================================================
    // =========================================================================

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
    const btnVoltar = document.getElementById('btn-voltar');
    const btnProximo = document.getElementById('btn-proximo');
    const btnFinalizar = document.getElementById('btn-finalizar');
    const btnHomeRevisao = document.getElementById('btn-home-revisao');
    const final = indicePergunta === dadosQuiz.perguntas.length - 1;

    if (emModoRevisao) {
        // ====================================================================
        // CORREÇÃO: Oculta o botão vermelho de sair (Desktop e Mobile) na revisão
        // ====================================================================
        const btnSairDesktop = document.querySelector(".btn-sair-flutuante");
        if (btnSairDesktop) {
            btnSairDesktop.style.display = 'none';
        }

        // Procura o link de sair do menu mobile baseado no clique do evento do quiz
        const btnSairMobile = document.querySelector(".nav-links-mobile a[onclick*='toggleModalSaida']");
        if (btnSairMobile) {
            // Esconde o item de lista (li) que envelopa o link
            const liPai = btnSairMobile.closest('li');
            if (liPai) liPai.style.display = 'none';
        }

        // Garante que o rodapé e os botões aceitem cliques
        const controles = document.getElementById('quiz-controls');
        if (controles) {
            controles.style.pointerEvents = 'auto';
            controles.style.opacity = '1';
        }

        // Controle de navegação comum na revisão
        btnVoltar.style.display = indicePergunta > 0 ? 'inline' : 'none';
        btnVoltar.removeAttribute('disabled');
        
        btnProximo.style.display = final ? 'none' : 'inline';
        btnProximo.removeAttribute('disabled');
        
        // Nunca mostra o botão de finalizar na revisão
        btnFinalizar.style.display = 'none';

        // Exibe o botão de voltar para a Home APENAS na última pergunta da revisão
        if (btnHomeRevisao) {
            btnHomeRevisao.style.display = final ? 'inline' : 'none';
        }
        
        return; // Corta a execução aqui para ignorar as regras de validação normais
    }

    // --- FLUXO NORMAL DO JOGO (Fora da revisão) ---
    if (btnHomeRevisao) btnHomeRevisao.style.display = 'none';

    btnVoltar.style.display = indicePergunta > 0 ? 'inline' : 'none';
    btnProximo.style.display = final ? 'none' : 'inline';
    
    if (final) {
        btnFinalizar.style.display = 'inline';
        
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

        if (tipo === 1) {
            const correta = p.respostas.find(
                r => r.certo == 1 || r.correta == 1
            );

            if (correta && respostaUser == correta.id) {
                acertos++;
            }
        }
        else if (tipo === 3) {
            const correta = p.respostas.find(
                r => r.certo == 1 || r.correta == 1
            );

            if (
                correta &&
                String(respostaUser).trim().toLowerCase() ===
                String(correta.descricao).trim().toLowerCase()
            ) {
                acertos++;
            }
        }
        else if (tipo === 2) {
            const correta = p.respostas[0];
            const textoCorreto = correta ? (correta.descricao || correta.texto_alvo) : "";
            if (textoCorreto && respostaUser?.trim().toLowerCase() === textoCorreto.trim().toLowerCase()) acertos++;
        }
        else if (tipo === 4) {
            const rUser = respostaUser || [];
            const idsCorretos = p.respostas.filter(r => r.certo == 1 || r.correta == 1).map(r => r.id.toString());
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
            desativarAvisoSaida(); // Libera o pop-up de saída do navegador

            reativarQuiz();

            // Formata o tempo decorrido para exibir na modal
            const min = Math.floor(segundos / 60).toString().padStart(2, '0');
            const seg = (segundos % 60).toString().padStart(2, '0');

            // CÁLCULO DE ERROS: Quantidade total menos o que o usuário acertou
            const erros = totalQuestoes - acertos;

            // Alimenta os dados nos elementos do HTML
            document.getElementById('modal-acertos').innerText = `${acertos} / ${totalQuestoes}`;
            document.getElementById('modal-erros').innerText = `${erros} / ${totalQuestoes}`;
            document.getElementById('modal-tempo').innerText = `${min}:${seg}`;

            // Configura a ação do botão único da modal para redirecionar para a Home
            document.getElementById('btn-modal-home').onclick = function() {
                window.removeEventListener('beforeunload', gerenciarAvisoSaida);
                window.onbeforeunload = null;
                window.location.href = 'home.php'; 
            };

            // Exibe a modal na tela (muda de display: none para flex)
            document.getElementById('modal-resultado').style.display = 'flex';


            //Modal de avaliações

            // Alimenta os dados nos elementos do HTML
            document.getElementById('modal-acertos').innerText = `${acertos} / ${totalQuestoes}`;

            // Modificado para abrir a modal de avaliação em vez de ir direto para a home
            document.getElementById('btn-modal-home').onclick = function() {
                window.removeEventListener('beforeunload', gerenciarAvisoSaida);
                window.onbeforeunload = null;
                
                document.getElementById('modal-resultado').style.display = 'none';
                document.getElementById('modal-avaliacao').style.display = 'flex';
                
                inicializarSistemaEstrelas();
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

    emModoRevisao = true;
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
    // SE ESTIVER EM REVISÃO, LIBERA TOTALMENTE A SAÍDA E NÃO MOSTRA NADA
    if (emModoRevisao) {
        return; 
    }
    
    e.preventDefault();
    e.returnValue = 'Tem certeza que deseja sair? Suas respostas não serão salvas.';
    return e.returnValue;
}
window.addEventListener('beforeunload', gerenciarAvisoSaida);

// Abre a modal mudando o display para FLEX
function toggleModalSaida(event) {
    if (event) {
        event.preventDefault();
        event.stopPropagation(); // Impede interferências com elementos do fundo
    }
    const modal = document.getElementById('modal-confirmar-saida');
    if (modal) {
        modal.style.display = 'flex'; 
    } else {
        console.error("Erro: A modal 'modal-confirmar-saida' não foi encontrada no HTML.");
    }
}

// Fecha a modal voltando o display para NONE
function fecharModalSaida() {
    const modal = document.getElementById('modal-confirmar-saida');
    if (modal) {
        modal.style.display = 'none';
    }
}

// Executa a saída real ao confirmar
function confirmarSaida() {
    // 1. CORREÇÃO: Remove o escutador usando o nome correto da sua função para destravar a aba
    window.removeEventListener('beforeunload', gerenciarAvisoSaida);
    
    // 2. CORREÇÃO: Redireciona de forma direta. 
    // Se home.php está na mesma pasta que quiz.php, use apenas 'home.php'
    window.location.href = 'home.php';
}


let notaSelecionada = 0;

function inicializarSistemaEstrelas() {
    const containerAvaliacao = document.getElementById('container-avaliacao'); // A div que envolve as estrelas

    fetch('../config/quiz.php?tipo=checar_avaliacao')
        .then(res => res.json())
        .then(data => {
            if (data.avaliou) {
                // MÁGICA AQUI: O usuário já avaliou a plataforma. 
                // Em vez de só esconder a caixa e travar no blur, voltamos direto pra home!
                window.location.href = 'home.php';
                return; 
            } else {
                // Se não avaliou, prepara o evento das estrelas normalmente
                configurarEventosDasEstrelas();
            }
        })
        .catch(err => console.error("Erro ao verificar avaliação", err));
}

function configurarEventosDasEstrelas() {
    const estrelas = document.querySelectorAll('.rating-stars i');
    const btnEnviarAvaliacao = document.getElementById('btn-enviar-avaliacao');
    const avaliacaoValor = document.getElementById('avaliacao-valor');
    let notaSelecionada = 0;

    estrelas.forEach(estrela => {
        estrela.addEventListener('mouseover', function() {
            atualizarVisualEstrelas(estrelas, this.getAttribute('data-value'));
        });

        estrela.addEventListener('mouseout', function() {
            atualizarVisualEstrelas(estrelas, notaSelecionada);
        });

        estrela.addEventListener('click', function() {
            notaSelecionada = parseInt(this.getAttribute('data-value'));
            atualizarVisualEstrelas(estrelas, notaSelecionada);
            if (avaliacaoValor) avaliacaoValor.innerText = notaSelecionada;
            if (btnEnviarAvaliacao) btnEnviarAvaliacao.disabled = false;
        });
    });

    if (btnEnviarAvaliacao) {
        btnEnviarAvaliacao.onclick = function() {
            // RESTAURADO: Exigimos que a variável quizId exista.
            if (notaSelecionada === 0 || !quizId) return alert("Selecione uma nota antes de enviar.");

            fetch('../config/quiz.php?tipo=salvar_feedback', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                // RESTAURADO: Enviamos o quiz_id novamente!
                body: JSON.stringify({ quiz_id: quizId, nota: notaSelecionada })
            })
            .then(res => res.json())
            .then(data => {
                if (data.sucesso) window.location.href = 'home.php';
                else alert("Falha: " + data.erro);
            })
            .catch(err => {
                console.error("Erro:", err);
                window.location.href = 'home.php';
            });
        };
    }
}

function atualizarVisualEstrelas(listaEstrelas, valorLimite) {
    listaEstrelas.forEach(est => {
        if (est.getAttribute('data-value') <= valorLimite) {
            est.classList.replace('fa-regular', 'fa-solid');
            est.style.color = '#f1c40f';
        } else {
            est.classList.replace('fa-solid', 'fa-regular');
            est.style.color = '#ccc';
        }
    });
}