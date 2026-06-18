<?php
    include_once("../config/session.php");
    include_once("../config/layout.php"); // Inclui o novo arquivo
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novidades - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/novidades.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">

    <style>
    </style>
</head>

<body>

<?php renderSidebar(); ?>

<div class="main-container" id="mainContainer">
    
    <?php renderHeader(); ?>

    <main>
        <section class="welcome-section">
            <div class="welcome-text">
                <h1>NOVIDADES</h1>
                <p class="subtitle">OS ÚLTIMOS QUIZZES LANÇADOS!</p>
                
                <div class="search-container-main">
                    <div class="search-box-wrapper">
                        <input type="text" id="inputBusca" 
                               placeholder="Pesquisar quiz..." 
                               onkeyup="filtrarGeral()"
                               class="input-busca">
                    </div>
                </div>
            </div>
        </section>

        <section class="cards-section">
            <h2 id="tituloSecao" class="section-title">Carregando novidades...</h2>
            <div class="group-cards" id="containerCards"></div>
        </section>
    </main>

    <?php renderFooter(); ?>
</div>

<div id="modalConfirmacao" class="modal-overlay">
    <div class="modal-content-confirm">
        <p>deseja entrar no quiz?</p>
        <img src="img/LUMINE-5con.ico" alt="logo">
        <p id="nomeQuizConfirmacao"></p>
        <div class="modal-buttons">
            <button onclick="fecharConfirmacao()" class="btn-confirm btn-voltar">não</button>
            <button id="btnConfirmarEntrada" class="btn-confirm btn-entrar">sim</button>
        </div>
    </div>
</div>

<script>
const api = "../config/home.php";

function carregarMenuSidebar() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            let menuHTML = "";
            let cardsIniciais = "";

            dados.forEach(m => {
                let nomeLimpo = m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                
                // Link na Sidebar
                menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                
                // Card inicial na tela
                cardsIniciais += `
                    <div onclick="carregarConteudos(${m.id}, '${m.nome_materia}')" class="card-materia">
                        <div class="card-banner">
                            <img src="img/${nomeLimpo}.webp" onerror="this.src='img/'">
                        </div>
                        <div class="card-body"><p>${m.nome_materia}</p></div>
                    </div>`;
            });
            document.getElementById("menuMaterias").innerHTML = menuHTML;
            document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
            document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
        });
}

let listaQuizzesGlobal = [];
let urlDestinoQuiz = "";

window.onload = () => {
    carregarQuizzesRecentes();
};

function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const main = document.getElementById('mainContainer');
    const mobileMenu = document.getElementById('mobileMenu');
    const body = document.body;
    
    if (window.innerWidth <= 900) {
        mobileMenu.classList.toggle('active');
        mobileMenu.classList.contains('active') ? body.classList.add('no-scroll') : body.classList.remove('no-scroll');
    } else {
        sidebar.classList.toggle('open');
        main.classList.toggle('sidebar-open');
    }
}

async function carregarQuizzesRecentes() {
    try {
        const rMat = await fetch(api + "?tipo=materias");
        const materias = await rMat.json();
        
        let promessasConteudos = materias.map(m => 
            fetch(api + "?tipo=conteudos&id_materia=" + m.id).then(res => res.json())
            .then(conts => conts.map(c => ({ ...c, nome_materia: m.nome_materia })))
        );

        const listaDeListasConteudo = await Promise.all(promessasConteudos);
        const todosConteudos = listaDeListasConteudo.flat();

        let promessasQuizzes = todosConteudos.map(c => 
            fetch(api + `?tipo=quizzes&id_conteudo=${c.id}`).then(res => res.json())
            .then(quizzes => quizzes.map(q => ({
                ...q,
                nome_conteudo: c.nome,
                nome_materia: c.nome_materia
            })))
        );

        const listaDeListasQuizzes = await Promise.all(promessasQuizzes);
        listaQuizzesGlobal = listaDeListasQuizzes.flat();
        
        // Ordenar do ID mais alto para o mais baixo (Mais recentes primeiro)
        listaQuizzesGlobal.sort((a, b) => b.id - a.id);

        document.getElementById("tituloSecao").innerText = "Quizzes Recentes";
        renderizarCards(listaQuizzesGlobal);

        const menu = materias.map(m => `<a href="home.php"><span>${m.nome_materia}</span></a>`).join("");
        document.getElementById("menuMaterias").innerHTML = menu;
        document.getElementById("menuMateriasMobile").innerHTML = menu;

    } catch (e) {
        console.error("Erro:", e);
    }
}

function renderizarCards(lista) {
    const container = document.getElementById("containerCards");
    let html = "";
    if(lista.length === 0) { container.innerHTML = "<p>Nenhum quiz encontrado.</p>"; return; }

    lista.forEach((q, index) => {
        let imgNome = q.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
        
        // Lógica de Dificuldade baseada no id_dificuldade do seu banco
        let difTexto = "Não definido";
        let difClasse = "dif-padrao";

        if(q.id_dificuldade == 1) { difTexto = "Fácil"; difClasse = "dif-facil"; }
        else if(q.id_dificuldade == 2) { difTexto = "Médio"; difClasse = "dif-media"; }
        else if(q.id_dificuldade == 3) { difTexto = "Difícil"; difClasse = "dif-dificil"; }

        html += `
            <div onclick="prepararEntrada('${q.nome}', ${q.id})" class="card-materia">
                <div class="quiz-numero">#${index + 1}</div>
                <div class="card-banner">
                    <img src="img/${imgNome}.webp" onerror="this.style.display='none'">
                </div>
                <div class="card-body">
                    <p>${q.nome}</p>
                    <span class="card-subtexto">${q.nome_materia} • ${q.nome_conteudo}</span>
                    <span class="tag-dificuldade ${difClasse}">${difTexto}</span>
                </div>
            </div>`;
    });
    container.innerHTML = html;
}

function filtrarGeral() {
    const termo = document.getElementById('inputBusca').value.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "");
    const filtrados = listaQuizzesGlobal.filter(q => 
        q.nome.toLowerCase().includes(termo) || q.nome_materia.toLowerCase().includes(termo) || q.nome_conteudo.toLowerCase().includes(termo)
    );
    renderizarCards(filtrados);
}

function prepararEntrada(nomeQuiz, idQuiz) {
    urlDestinoQuiz = `quiz.php?id=${idQuiz}`;
    document.getElementById('nomeQuizConfirmacao').innerText = nomeQuiz;
    document.getElementById('modalConfirmacao').style.display = 'flex';
}

function fecharConfirmacao() {
    document.getElementById('modalConfirmacao').style.display = 'none';
}

document.getElementById('btnConfirmarEntrada').onclick = () => {
    if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
};

window.onclick = (e) => {
    if (e.target == document.getElementById('modalConfirmacao')) fecharConfirmacao();
}
</script>

</body>
</html>