<?php
    include_once("../config/session.php");
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novidades - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
</head>

<body>

<aside class="sidebar" id="sidebar">
    <div class="sidebar-header">
        <div class="logo-container">
            <a href="index.html">
                <img src="img/LUMINE.png" alt="Lumine Logo" class="sidebar-logo">
            </a>
        </div>
        <div class="menu-trigger" onclick="toggleSidebar()">
            <i class="fa-solid fa-bars"></i>
        </div>
    </div>
    <nav id="menuMaterias"></nav>
</aside>

<div class="main-container" id="mainContainer">
    <header class="navbar-home">
        <div class="hamburger-mobile" onclick="toggleSidebar()">☰</div>
        <nav class="nav-links-home">
            <li class="item-novidades"><a href="novidades.html">Novidades</a></li>
            <li class="item-perfil"><a href="perfil.html" class="perfil-link"><span>Perfil</span></a></li>
        </nav>
    </header>

    <main>
        <section class="welcome-section">
            <div class="welcome-text">
                <h1>NOVIDADES</h1>
                <p class="subtitle">ENCONTRE SEU NOVO QUIZ FAVORITO!</p>
                
                <div class="search-container-main" style="margin-top: 20px; display: flex; justify-content: center;">
                    <div style="position: relative; width: 100%; max-width: 500px;">
                        <input type="text" id="inputBuscaMateria" 
                               placeholder="Pesquisar por matéria ou conteúdo..." 
                               onkeyup="filtrarGeral()"
                               style="width: 100%; padding: 12px 20px; border-radius: 25px; border: 1px solid #ddd; outline: none;">
                    </div>
                </div>
            </div>
        </section>

        <section class="cards-section">
            <div class="group-cards" id="cardsMaterias">
                </div>
        </section>
    </main>
</div>

<div id="meuModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2 id="tituloModal">Conteúdos</h2>
            <span onclick="fecharModal()" class="modal-close">&times;</span>
        </div>
        <hr>
        <div class="modal-body">
            <div id="corpoModal"></div>
        </div>
    </div>
</div>

<script>
const api = "../config/home.php";
let listaMateriasGlobal = [];
let listaConteudosGlobal = [];

window.onload = () => {
    carregarDadosIniciais();
};

// Carrega matérias e armazena todos os conteúdos para busca rápida
async function carregarDadosIniciais() {
    try {
        const r = await fetch(api + "?tipo=materias");
        listaMateriasGlobal = await r.json();
        
        // Renderiza matérias inicialmente
        renderizarCards(listaMateriasGlobal, 'materia');

        // Carrega conteúdos de todas as matérias em segundo plano para permitir a busca
        const promessas = listaMateriasGlobal.map(m => 
            fetch(api + "?tipo=conteudos&id_materia=" + m.id)
            .then(res => res.json())
            .then(dados => {
                return dados.map(c => ({
                    ...c, 
                    nome_materia_pai: m.nome_materia, 
                    id_materia_pai: m.id 
                }));
            })
        );

        const resultados = await Promise.all(promessas);
        listaConteudosGlobal = resultados.flat(); // Junta todos os conteúdos em uma lista só
    } catch (e) {
        console.error("Erro ao carregar dados:", e);
    }
}

function renderizarCards(lista, tipo) {
    const container = document.getElementById("cardsMaterias");
    let cardsHTML = "";

    lista.forEach(item => {
        // Gera o nome do arquivo de imagem baseado na matéria (mesmo se for conteúdo)
        let nomeMateriaParaImg = (tipo === 'materia' ? item.nome_materia : item.nome_materia_pai)
            .toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');

        let titulo = tipo === 'materia' ? item.nome_materia : item.nome;
        let subtexto = tipo === 'materia' ? "" : `<small style="display:block; color:#777">Conteúdo de ${item.nome_materia_pai}</small>`;
        
        // Se for matéria, abre o modal. Se for conteúdo, abre o modal já focando nele (ou outra ação)
        let acaoClique = tipo === 'materia' 
            ? `onclick="openModal(${item.id}, '${item.nome_materia}')"` 
            : `onclick="openModal(${item.id_materia_pai}, '${item.nome_materia_pai}')"`;

        cardsHTML += `
            <div ${acaoClique} class="card-materia">
                <div class="card-banner">
                    <img src="img/${nomeMateriaParaImg}.jpg" alt="${titulo}" onerror="this.src='img/placeholder.png'">
                </div>
                <div class="card-body">
                    <p>${titulo}</p>
                    ${subtexto}
                </div>
            </div>
        `;
    });

    container.innerHTML = cardsHTML;
}

function filtrarGeral() {
    const input = document.getElementById('inputBuscaMateria');
    const filtro = input.value.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "");
    
    if (filtro === "") {
        renderizarCards(listaMateriasGlobal, 'materia');
        return;
    }

    // Filtra matérias que dão match
    const matsFiltradas = listaMateriasGlobal.filter(m => 
        m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").includes(filtro)
    );

    // Filtra conteúdos que dão match
    const contsFiltrados = listaConteudosGlobal.filter(c => 
        c.nome.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").includes(filtro)
    );

    // Limpa o container e renderiza ambos
    const container = document.getElementById("cardsMaterias");
    container.innerHTML = "";
    
    // Mostra primeiro as matérias encontradas e depois conteúdos individuais
    renderizarCards(matsFiltradas, 'materia');
    renderizarCards(contsFiltrados, 'conteudo');
}

function openModal(idMateria, nomeMateria) {
    const modal = document.getElementById('meuModal');
    const corpo = document.getElementById('corpoModal');
    document.getElementById('tituloModal').innerText = nomeMateria;
    modal.style.display = "block";
    corpo.innerHTML = "<p>Carregando conteúdos...</p>";

    fetch(api + "?tipo=conteudos&id_materia=" + idMateria)
        .then(res => res.json())
        .then(dados => {
            let html = dados.length === 0 ? "<p>Nenhum conteúdo cadastrado.</p>" : "";
            dados.forEach(c => {
                html += `
                    <div class="conteudo-item" onclick="toggleQuizzes(${c.id}, this)">
                        <div class="conteudo-titulo">${c.nome}</div>
                    </div>
                    <div id="quiz_${c.id}"></div>
                `;
            });
            corpo.innerHTML = html;
        });
}

// Funções de Sidebar e Modal (Padrão)
function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const main = document.getElementById('mainContainer');
    sidebar.classList.toggle('open');
    main.classList.toggle('sidebar-open');
}

function fecharModal() { document.getElementById('meuModal').style.display = "none"; }

function toggleQuizzes(idConteudo, el) {
    let existente = el.nextElementSibling;
    if (existente && existente.classList.contains("quizzes-box")) {
        existente.remove();
        return;
    }
    fetch(api + `?tipo=quizzes&id_conteudo=${idConteudo}`)
        .then(res => res.json())
        .then(quizzes => {
            let box = document.createElement("div");
            box.className = "quizzes-box";
            if (quizzes.length === 0) {
                box.innerHTML = "<p style='padding:10px;'>Sem quizzes disponíveis.</p>";
            } else {
                quizzes.forEach(q => {
                    box.innerHTML += `
                        <a href="quiz.html?id=${q.id}" class="quiz-card-link">
                            <div class="quiz-card">
                                <h4>${q.nome}</h4>
                            </div>
                        </a>
                    `;
                });
            }
            el.after(box);
        });
}
</script>
</body>
</html>