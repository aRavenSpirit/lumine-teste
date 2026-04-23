const params = new URLSearchParams(window.location.search);
const quizId = params.get('id');

let dadosQuiz = null;
let indicePergunta = 0;
let respostasUsuario = {}; // { id_pergunta: valor_da_resposta }

async function carregarQuiz() {
    if (!quizId) return alert("Quiz não encontrado!");

    try {
        const response = await fetch(`../config/quiz.php?tipo=detalhes_quiz&id=${quizId}`);
        dadosQuiz = await response.json();
        
        // Preenche o cabeçalho
        document.getElementById('quiz-titulo').innerText = dadosQuiz.nome;
        document.getElementById('quiz-materia').innerText = dadosQuiz.nome_materia;
        document.getElementById('quiz-conteudo').innerText = dadosQuiz.conteudo;

        renderizarPergunta();
    } catch (error) {
        console.error("Erro ao carregar:", error);
    }
}

function renderizarPergunta() {
    const container = document.getElementById('pergunta-atual');
    const p = dadosQuiz.perguntas[indicePergunta];
    
    document.getElementById('progresso').innerText = `Pergunta ${indicePergunta + 1} de ${dadosQuiz.perguntas.length}`;

    let html = `<h3>${p.descricao}</h3>`;
    const valorSalvo = respostasUsuario[p.id] || "";

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
            html += `<input type="text" value="${valorSalvo}" 
                            oninput="salvarResposta(${p.id}, this.value)" 
                            placeholder="Sua resposta...">`;
            break;

        case 3: // Verdadeiro ou Falso
            html += `
                <button class="${valorSalvo === 'Verdadeiro' ? 'ativo' : ''}" 
                        onclick="salvarResposta(${p.id}, 'Verdadeiro'); renderizarPergunta()">V</button>
                <button class="${valorSalvo === 'Falso' ? 'ativo' : ''}" 
                        onclick="salvarResposta(${p.id}, 'Falso'); renderizarPergunta()">F</button>`;
            break;

        case 4: // Múltipla Escolha com Imagem (Assume que a descrição da resposta tem a URL)
            p.respostas.forEach(resp => {
                html += `
                    <div onclick="salvarResposta(${p.id}, ${resp.id}); renderizarPergunta()" 
                         style="border: ${valorSalvo == resp.id ? '2px solid blue' : '1px solid gray'}">
                        <img src="${resp.descricao}" style="width:100px;">
                    </div>`;
            });
            break;

        case 5: // Ordenação (Lógica simples de lista)
        case 6: // Arrastar (Drag & Drop)
            html += `<p>Arraste os itens para a ordem correta:</p><ul id="sortable">`;
            const itens = p.respostas; // Aqui implementaríamos uma lib de drag ou HTML5 Drag API
            itens.forEach(resp => {
                html += `<li draggable="true">${resp.descricao}</li>`;
            });
            html += `</ul>`;
            break;
    }

    container.innerHTML = html;
    atualizarControles();
}

function salvarResposta(perguntaId, valor) {
    respostasUsuario[perguntaId] = valor;
}

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

async function finalizarQuiz() {
    if(!confirm("Deseja finalizar o quiz?")) return;
    
    // Aqui enviaremos para um novo arquivo PHP: processar_resultado.php
    console.log("Respostas do usuário:", respostasUsuario);
    alert("Quiz finalizado! Veja o console para os dados.");
}

carregarQuiz();