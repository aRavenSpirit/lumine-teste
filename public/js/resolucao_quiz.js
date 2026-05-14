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

async function finalizarQuiz() {
    clearInterval(intervaloCronometro); // Para o tempo

    let acertos = 0;
    const totalQuestoes = dadosQuiz.perguntas.length;

    // Lógica de correção
    dadosQuiz.perguntas.forEach(p => {
        const respostaUser = respostasUsuario[p.id];
        const tipo = parseInt(p.id_tipo);

        if (tipo === 1 || tipo === 3) { // Múltipla escolha (1) ou V/F (3)
            // No banco, a resposta correta tem o campo 'certo' == 1
            const correta = p.respostas.find(r => r.certo == 1);
            if (correta && respostaUser == correta.id) acertos++;
        } 
        else if (tipo === 2) { // Texto
            const correta = p.respostas[0]; // A primeira resposta cadastrada
            if (correta && respostaUser?.trim().toLowerCase() === correta.descricao.toLowerCase()) acertos++;
        }
        // ... adicione as lógicas de tipo 4, 5 e 6 conforme implementar o front
    });

    // Enviar para o Banco de Dados
    const dadosParaSalvar = {
        id_quiz: quizId,
        acertos: acertos,
        total: totalQuestoes,
        segundos: segundos // Variável global do cronômetro
    };

    try {
        const response = await fetch('../config/salvar_tentativa.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(dadosParaSalvar)
        });

        const resultado = await response.json();

        if (resultado.sucesso) {
            alert(`Quiz Finalizado!\nAcertos: ${acertos}/${totalQuestoes}\nTempo: ${document.getElementById('cronometro').innerText}`);
            window.location.href = `resultado.php?id_tentativa=${resultado.id_tentativa}`;
        } else {
            alert("Erro ao salvar resultado: " + resultado.erro);
        }
    } catch (error) {
        console.error("Erro na comunicação:", error);
    }
}

carregarQuiz();