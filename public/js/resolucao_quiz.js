const params = new URLSearchParams(window.location.search);
const quizId = params.get('id');

let dadosQuiz = null;
let indicePergunta = 0;
let respostasUsuario = {}; 

async function carregarQuiz() {
    if (!quizId) return alert("Quiz não encontrado!");

    try {
        const response = await fetch(`../config/quiz.php?tipo=detalhes_quiz&id=${quizId}`);
        dadosQuiz = await response.json();
        
        // Preenchimento do Cabeçalho - Ajustado para bater com o PHP
        document.getElementById('quiz-titulo').innerText = dadosQuiz.nome;
        document.getElementById('quiz-materia').innerText = dadosQuiz.nome_materia;
        document.getElementById('quiz-conteudo').innerText = dadosQuiz.conteudo;

        renderizarPergunta();
    } catch (error) {
        console.error("Erro ao carregar quiz:", error);
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
                <button onclick="salvarResposta(${p.id}, 'Verdadeiro'); renderizarPergunta()">V</button>
                <button onclick="salvarResposta(${p.id}, 'Falso'); renderizarPergunta()">F</button>
                <p>Selecionado: ${valorSalvo}</p>`;
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

carregarQuiz();