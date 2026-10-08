const params = new URLSearchParams(window.location.search);
const quizId = params.get('id');

// VERIFICA SE A URL POSSUI &revisao=true
let emModoRevisao = params.get('revisao') === 'true';

let dadosQuiz = null;
let indicePergunta = 0;
let respostasUsuario = {}; 

// Variáveis do Cronômetro
let segundos = 0;
let intervaloCronometro;
let notaSelecionada = 0;

async function carregarQuiz() {
    if (!quizId) return alert("Quiz não encontrado!");

    try {
        const response = await fetch(`../config/quiz.php?tipo=detalhes_quiz&id=${quizId}`);
        dadosQuiz = await response.json();

        // Salva o ID do quiz atual no localStorage
        if (dadosQuiz && dadosQuiz.id) {
            localStorage.setItem('ultimo_quiz_id', dadosQuiz.id);
        }

        // Se estiver em modo de revisão, desativa o aviso de saída da página
        if (emModoRevisao) {
            desativarAvisoSaida();
        }

        document.getElementById('quiz-titulo').innerText = dadosQuiz.nome;
        document.getElementById('quiz-materia').innerText = dadosQuiz.nome_materia;
        document.getElementById('quiz-conteudo').innerText = dadosQuiz.conteudo;

        renderizarPergunta();

        // Só inicia o relógio se NÃO estiver revisando
        if (!emModoRevisao) {
            iniciarCronometro();
        } else {
            // Oculta o cronômetro visualmente na revisão se desejar
            const elCronometro = document.getElementById('cronometro');
            if (elCronometro) elCronometro.style.display = 'none';
        }

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

        case 5: { // Ordenação Estilo Duolingo
            if (!Array.isArray(respostasUsuario[p.id])) {
                respostasUsuario[p.id] = [];
            }
            const ordenados = respostasUsuario[p.id]; 

            html += `<p><small>Clique nas opções abaixo para organizá-las na ordem correta (clique no item de cima para remover):</small></p>`;
            
            // Área de Destino
            html += `<div style="display: flex; flex-wrap: wrap; gap: 10px; margin-bottom: 20px; min-height: 50px; padding: 12px; background: #ebf5fb; border-radius: 8px; border: 2px dashed #3498db; align-items: center;">`;
            p.respostas.forEach((_, idx) => {
                const idResp = ordenados[idx];
                if (idResp) {
                    const respObj = p.respostas.find(r => r.id == idResp);
                    const acaoRemover = emModoRevisao ? '' : `onclick="removerOpcaoOrdem(${p.id}, ${idx})"`;
                    html += `
                        <div ${acaoRemover} style="padding: 8px 16px; background: #3498db; color: white; border-radius: 20px; cursor: ${emModoRevisao ? 'default' : 'pointer'}; font-weight: bold; box-shadow: 0 2px 4px rgba(0,0,0,0.1); user-select: none;">
                            ${respObj ? respObj.descricao : ''}
                        </div>`;
                } else {
                    html += `<div style="width: 60px; height: 35px; background: #d6eaf8; border-radius: 20px; opacity: 0.5;"></div>`;
                }
            });
            html += `</div>`;

            // Banco de Opções Disponíveis
            html += `<div style="display: flex; flex-wrap: wrap; gap: 10px; margin-bottom: 15px;">`;
            p.respostas_embaralhadas.forEach(resp => {
                const jaSelecionado = ordenados.includes(resp.id.toString());
                if (!jaSelecionado) {
                    const acaoSelecionar = emModoRevisao ? '' : `onclick="selecionarOpcaoOrdem(${p.id}, '${resp.id}')"`;
                    html += `
                        <button type="button" ${disabledSeRevisao} ${acaoSelecionar} style="padding: 10px 20px; background: white; border: 2px solid #bdc3c7; border-radius: 20px; cursor: ${emModoRevisao ? 'not-allowed' : 'pointer'}; font-weight: bold; transition: 0.2s;">
                            ${resp.descricao}
                        </button>`;
                } else {
                    html += `
                        <button type="button" disabled style="padding: 10px 20px; background: #eaecee; border: 2px dashed #bdc3c7; border-radius: 20px; color: #bdc3c7; cursor: not-allowed; opacity: 0.6;">
                            ${resp.descricao}
                        </button>`;
                }
            });
            html += `</div>`;
            break;
        }

        case 6: // Arrastar e Soltar
            html += `<p><small>Arraste os itens para os campos correspondentes:</small></p>`;
            
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

            html += `<div id="caixas-destino" style="display:grid; grid-template-columns: 1fr 1fr; gap:15px;">`;
            
            p.respostas.forEach((respOriginal, index) => {
                const posicaoAlvo = index + 1;
                const idRespostaSolta = (respostasUsuario[p.id] && respostasUsuario[p.id][posicaoAlvo]);
                
                let conteudoCaixa;
                if (idRespostaSolta) {
                    const itemSolto = p.respostas.find(r => r.id == idRespostaSolta);
                    conteudoCaixa = `<strong>${itemSolto.descricao}</strong>`;
                } else {
                    conteudoCaixa = respOriginal.texto_alvo || `Nenhum item adicionado`;
                }
                
                const eventosArrastar = emModoRevisao ? '' : `ondragover="event.preventDefault()" ondrop="drop(event, ${p.id}, ${posicaoAlvo})"`;

                html += `
                    <div class="box-target" ${eventosArrastar} 
                         style="border:2px dashed #888; padding:20px; text-align:center; min-height:80px; display:flex; align-items:center; justify-content:center; background:${idRespostaSolta ? '#d1f2eb' : '#fff'}; border-radius:8px; cursor: ${emModoRevisao ? 'default' : 'move'};">
                        ${conteudoCaixa}
                    </div>`;
            });
            html += `</div>`;

            if (!emModoRevisao) {
                html += `<button onclick="limparDrag(${p.id})" style="margin-top:15px; padding:5px 10px; cursor:pointer;">Limpar Tudo</button>`;
            }
            break;
    }

    container.innerHTML = html;

    // LÓGICA DE CORREÇÃO EM MODO REVISÃO
    if (emModoRevisao) {
        let acertouGeral = false;
        let respostaCertaTexto = "";

        switch (parseInt(p.id_tipo)) {
            case 1: {
                const respCorretaObj = p.respostas.find(r => r.certo == 1 || r.correta == 1);
                if (respCorretaObj) {
                    respostaCertaTexto = respCorretaObj.descricao;
                    acertouGeral = (valorSalvo == respCorretaObj.id);
                }
                break;
            }
            case 2: {
                const respCorretaObj = p.respostas[0];
                if (respCorretaObj) {
                    respostaCertaTexto = respCorretaObj.descricao || respCorretaObj.texto_alvo;
                    acertouGeral = (String(valorSalvo).trim().toLowerCase() === String(respostaCertaTexto).trim().toLowerCase());
                }
                break;
            }
            case 3: {
                const respCorretaObj = p.respostas.find(r => r.certo == 1 || r.correta == 1);
                if (respCorretaObj) {
                    respostaCertaTexto = respCorretaObj.descricao; 
                    acertouGeral = (String(valorSalvo).toLowerCase() === String(respostaCertaTexto).toLowerCase());
                }
                break;
            }
            case 4: {
                const idsCorretos = p.respostas.filter(r => r.certo == 1 || r.correta == 1).map(r => r.id.toString());
                const selecionadas = Array.isArray(respostasUsuario[p.id]) ? respostasUsuario[p.id] : [];
                
                respostaCertaTexto = p.respostas.filter(r => r.certo == 1 || r.correta == 1).map(r => r.descricao).join(', ');
                acertouGeral = idsCorretos.length === selecionadas.length && idsCorretos.every(id => selecionadas.includes(id));
                break;
            }
            case 5: {
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
            case 6: {
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
    atualizarControles();
}

function salvarRespostaMultipla(perguntaId, valor, marcado) {
    if (!respostasUsuario[perguntaId]) respostasUsuario[perguntaId] = [];
    if (marcado) {
        if (!respostasUsuario[perguntaId].includes(valor)) respostasUsuario[perguntaId].push(valor);
    } else {
        respostasUsuario[perguntaId] = respostasUsuario[perguntaId].filter(id => id !== valor);
    }
    atualizarControles();
}

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

    return dadosQuiz.perguntas.every(p => {
        const resp = respostasUsuario[p.id];
        const tipo = parseInt(p.id_tipo);

        switch (tipo) {
            case 1:
            case 2:
            case 3:
                return resp !== undefined && resp !== null && resp.toString().trim() !== '';

            case 4:
                return Array.isArray(resp) && resp.length > 0;

            case 5:
                return Array.isArray(resp) && resp.length === p.respostas.length;

            case 6:
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
    const btnComentariosRevisao = document.getElementById('btn-comentarios-revisao');
    const final = indicePergunta === dadosQuiz.perguntas.length - 1;

    if (emModoRevisao) {
        const btnSairDesktop = document.querySelector(".btn-sair-flutuante");
        if (btnSairDesktop) {
            btnSairDesktop.style.display = 'none';
        }

        const btnSairMobile = document.querySelector(".nav-links-mobile a[onclick*='toggleModalSaida']");
        if (btnSairMobile) {
            const liPai = btnSairMobile.closest('li');
            if (liPai) liPai.style.display = 'none';
        }

        const controles = document.getElementById('quiz-controls');
        if (controles) {
            controles.style.pointerEvents = 'auto';
            controles.style.opacity = '1';
        }

        btnVoltar.style.display = indicePergunta > 0 ? 'inline' : 'none';
        btnVoltar.removeAttribute('disabled');
        
        btnProximo.style.display = final ? 'none' : 'inline';
        btnProximo.removeAttribute('disabled');
        
        btnFinalizar.style.display = 'none';

        if (btnHomeRevisao) {
            btnHomeRevisao.style.display = final ? 'inline' : 'none';
        }
        
        if (btnComentariosRevisao) {
            btnComentariosRevisao.style.display = final ? 'inline' : 'none';
        }

        return;
    }

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

function desativarAvisoSaida() {
    window.onbeforeunload = null;
    window.addEventListener('beforeunload', function (e) {
        delete e['returnValue'];
    });
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

// =========================================================================
// FINALIZAÇÃO E NOVO FLUXO: QUIZ -> AVALIAÇÃO -> RESULTADOS
// =========================================================================
async function finalizarQuiz() {
    clearInterval(intervaloCronometro);
    
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
            const correta = p.respostas.find(r => r.certo == 1 || r.correta == 1);
            if (correta && respostaUser == correta.id) acertos++;
        }
        else if (tipo === 3) {
            const correta = p.respostas.find(r => r.certo == 1 || r.correta == 1);
            if (correta && String(respostaUser).trim().toLowerCase() === String(correta.descricao).trim().toLowerCase()) acertos++;
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
            desativarAvisoSaida();
            reativarQuiz();

            // Formata e carrega dados na modal de resultados
            const min = Math.floor(segundos / 60).toString().padStart(2, '0');
            const seg = (segundos % 60).toString().padStart(2, '0');
            const erros = totalQuestoes - acertos;

            document.getElementById('modal-acertos').innerText = `${acertos} / ${totalQuestoes}`;
            document.getElementById('modal-erros').innerText = `${erros} / ${totalQuestoes}`;
            document.getElementById('modal-tempo').innerText = `${min}:${seg}`;

            // Configura o botão "Avançar" da modal de resultados para ir diretamente para a Home
            document.getElementById('btn-modal-home').onclick = function() {
                window.removeEventListener('beforeunload', gerenciarAvisoSaida);
                window.onbeforeunload = null;
                window.location.href = 'home.php'; 
            };

            // DISPARA O FLUXO: Avaliação primeiro -> Depois Resultado
            iniciarFluxoPosQuiz();

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

function iniciarFluxoPosQuiz() {
    // Checa se o usuário já avaliou este quiz específico
    fetch(`../config/quiz.php?tipo=checar_avaliacao&quiz_id=${quizId}`)
        .then(res => res.json())
        .then(data => {
            if (data.avaliou) {
                // Se já avaliou, exibe direto os resultados
                exibirModalResultados();
            } else {
                // Se ainda não avaliou, abre a modal de avaliação primeiro
                document.getElementById('modal-avaliacao').style.display = 'flex';
                configurarEventosDasEstrelas();
            }
        })
        .catch(err => {
            console.error("Erro ao checar avaliação:", err);
            exibirModalResultados();
        });
}

function exibirModalResultados() {
    document.getElementById('modal-avaliacao').style.display = 'none';
    document.getElementById('modal-resultado').style.display = 'flex';
}

function inicializarSistemaEstrelas() {
    iniciarFluxoPosQuiz();
}

function configurarEventosDasEstrelas() {
    const estrelas = document.querySelectorAll('.rating-stars i');
    const btnEnviarAvaliacao = document.getElementById('btn-enviar-avaliacao');
    const btnPularAvaliacao = document.getElementById('btn-pular-avaliacao');
    const avaliacaoValor = document.getElementById('avaliacao-valor');
    
    notaSelecionada = 0;

    if (btnPularAvaliacao) {
        btnPularAvaliacao.onclick = function(e) {
            if (e) e.preventDefault();
            exibirModalResultados();
        };
    }

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
            if (notaSelecionada === 0 || !quizId) return alert("Selecione uma nota antes de enviar.");

            fetch('../config/quiz.php?tipo=salvar_feedback', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ quiz_id: quizId, nota: notaSelecionada })
            })
            .then(res => res.json())
            .then(data => {
                exibirModalResultados();
            })
            .catch(err => {
                console.error("Erro ao enviar avaliação:", err);
                exibirModalResultados();
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

// Monitora aviso de saída acidental
function gerenciarAvisoSaida(e) {
    if (emModoRevisao) return; 
    
    e.preventDefault();
    e.returnValue = 'Tem certeza que deseja sair? Suas respostas não serão salvas.';
    return e.returnValue;
}
window.addEventListener('beforeunload', gerenciarAvisoSaida);

// Funções da modal de confirmação de saída
function toggleModalSaida(event) {
    if (event) {
        event.preventDefault();
        event.stopPropagation();
    }
    const modal = document.getElementById('modal-confirmar-saida');
    if (modal) {
        modal.style.display = 'flex'; 
    } else {
        console.error("Erro: A modal 'modal-confirmar-saida' não foi encontrada no HTML.");
    }
}

function fecharModalSaida() {
    const modal = document.getElementById('modal-confirmar-saida');
    if (modal) {
        modal.style.display = 'none';
    }
}

function confirmarSaida() {
    window.removeEventListener('beforeunload', gerenciarAvisoSaida);
    window.location.href = 'home.php';
}

// Inicializa a aplicação
carregarQuiz();