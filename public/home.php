<?php
    include_once("../config/session.php");
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home - Lumine</title>
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

    <nav id="menuMaterias">
        </nav>
</aside>

<div class="mobile-menu" id="mobileMenu">
    <div class="mobile-menu-close" onclick="toggleSidebar()">×</div>
    <div class="mobile-menu-scroll">
        <nav class="nav-links-mobile">
            <li><a href="#">Sobre nós</a></li>
            <li><a href="novidades.php">Novidades</a></li>
            <li><a href="#">Todos os quizzes</a></li>
            <li><a href="perfil.html">Perfil</a></li>
        </nav>
        <hr>
        <div id="menuMateriasMobile"></div>
    </div>
</div>

<div class="main-container" id="mainContainer">
    <header class="navbar-home">
        <div class="hamburger-mobile" onclick="toggleSidebar()">☰</div>
        <div class="mobile-logo-central"><img src="img/LUMINE.png" alt="Logo"></div>

        <nav class="nav-links-home">
            <li class="item-sobre"><a href="#">Sobre nós</a></li>
            <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
            <li class="item-quizzes"><a href="#">Todos os quizzes</a></li>
            <a href="../config/logout.php">Sair</a>
            <li class="item-perfil">
                <a href="perfil.html" class="perfil-link">
                    <span>Perfil</span>
                    <div class="profile-icon"><i class="fa-solid fa-user"></i></div>
                </a>
            </li>
        </nav>
    </header>

    <main>
        <section class="welcome-section">
            <div class="welcome-text">
                <h2 id="bemvindo">Carregando usuário...</h2>
                <p class="subtitle">SELECIONE UMA MATÉRIA PARA COMEÇAR!</p>
            </div>
        </section>

        <section class="cards-section">
            <div class="group-cards" id="cardsConteudos">
                </div>
        </section>
    </main>

    <footer>
        <div class="footer-section">
            <h3>GERAL</h3>
            <a href="sobre.html"><i class="fa-solid fa-circle-info"></i> <span>SOBRE</span></a>
            <a href="duvidas.html"><i class="fa-solid fa-circle-question"></i> <span>DÚVIDAS</span></a>
            <a href="equipe.html"><i class="fa-solid fa-users"></i> <span>EQUIPE</span></a>
            <a href="contato.html"><i class="fa-solid fa-envelope"></i> <span>CONTATO</span></a>
        </div>
        <div class="footer-section">
            <h3>TERMOS E PRIVACIDADE</h3>
            <a href="normas.html"><i class="fa-solid fa-list-check"></i> <span>NORMAS</span></a>
            <a href="termos.html"><i class="fa-solid fa-file-contract"></i> <span>TERMOS DE USO</span></a>
            <a href="privacidade.html"><i class="fa-solid fa-lock"></i> <span>PRIVACIDADE</span></a>
        </div>
        <div class="footer-section">
            <h3>REDES SOCIAIS</h3>
            <a href="https://instagram.com" target="_blank"><i class="fa-brands fa-instagram"></i> <span>INSTAGRAM</span></a>
            <a href="https://youtube.com" target="_blank"><i class="fa-brands fa-youtube"></i> <span>YOUTUBE</span></a>
            <a href="https://tiktok.com" target="_blank"><i class="fa-brands fa-tiktok"></i> <span>TIKTOK</span></a>
            <a href="https://facebook.com" target="_blank"><i class="fa-brands fa-facebook"></i> <span>FACEBOOK</span></a>
        </div>
    </footer>
</div>

<div id="meuModal" class="modal">
    <div class="modal-content">
        <div class="modal-header">
            <h2 id="tituloModal">Quizzes</h2>
            <span onclick="fecharModal()" class="modal-close">&times;</span>
        </div>
        <hr>
        <div class="modal-body">
            <div id="corpoModal"></div>
        </div>
    </div>
</div>

<div id="modalConfirmacao" class="modal-overlay" style="display: none;">
    <div class="modal-content-confirm">
        <p>Deseja entrar no quiz?</p>
        <img src="img/LUMINE-5con.ico" alt="logo">
        <div class="modal-buttons">
            <button onclick="fecharModalConfirmacao()" class="btn-voltar">Não</button>
            <button id="btnConfirmarEntrada" class="btn-entrar">Sim</button>
        </div>
    </div>
</div>

<script>
const api = "../config/home.php";
let urlDestinoQuiz = "";

window.onload = () => {
    carregarUsuario();
    carregarMenuSidebar(); // Carrega a sidebar e os cards iniciais
};

function carregarUsuario() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            const nomeUsuario = u.nome ? u.nome.toUpperCase() : "ALUNO";
            document.getElementById("bemvindo").innerHTML = `SEJA BEM-VINDO, <span class="nome-destaque">${nomeUsuario}</span>!!`;
        });
}

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
                            <img src="img/${nomeLimpo}.jpg" onerror="this.src='img/'">
                        </div>
                        <div class="card-body"><p>${m.nome_materia}</p></div>
                    </div>`;
            });
            document.getElementById("menuMaterias").innerHTML = menuHTML;
            document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
            document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
        });
}

function carregarConteudos(idMateria, nomeMateria) {
    // Fecha menus mobile se abertos
    document.getElementById('mobileMenu').classList.remove('active');
    document.body.classList.remove('no-scroll');
    
    document.querySelector(".subtitle").innerText = `CONTEÚDOS DE: ${nomeMateria.toUpperCase()}`;
    const container = document.getElementById("cardsConteudos");
    container.innerHTML = "<p>Carregando conteúdos...</p>";

    fetch(api + "?tipo=conteudos&id_materia=" + idMateria)
        .then(res => res.json())
        .then(dados => {
            let html = "";
            if(dados.length === 0) {
                html = "<p>Nenhum conteúdo disponível para esta matéria.</p>";
            } else {
                dados.forEach(c => {
                    let nomeImgMateria = nomeMateria.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                    html += `
                        <div onclick="abrirModalQuizzes(${c.id}, '${c.nome}')" class="card-materia">
                            <div class="card-banner">
                                <img src="img/${nomeImgMateria}.jpg" onerror="this.src='img/'">
                            </div>
                            <div class="card-body">
                                <p>${c.nome}</p>
                            </div>
                        </div>`;
                });
            }
            container.innerHTML = html;
        });
}

function abrirModalQuizzes(idConteudo, nomeConteudo) {
    const modal = document.getElementById('meuModal');
    const corpo = document.getElementById('corpoModal');
    document.getElementById('tituloModal').innerText = nomeConteudo;
    modal.style.display = "block";
    corpo.innerHTML = "<p>Buscando quizzes...</p>";

    fetch(api + `?tipo=quizzes&id_conteudo=${idConteudo}`)
        .then(res => res.json())
        .then(quizzes => {
            let html = "";
            if (quizzes.length === 0) {
                html = "<p>Sem quizzes para este conteúdo no momento.</p>";
            } else {
                quizzes.forEach(q => {
                    html += `
                        <a href="quiz.html?id=${q.id}" class="quiz-card-link" onclick="prepararEntrada(event, this.href)">
                            <div class="quiz-card">
                                <h4>${q.nome}</h4>
                            </div>
                        </a>`;
                });
            }
            corpo.innerHTML = html;
        });
}

function prepararEntrada(event, url) {
    event.preventDefault();
    urlDestinoQuiz = url;
    document.getElementById('modalConfirmacao').style.display = 'flex';
}

function fecharModalConfirmacao() {
    document.getElementById('modalConfirmacao').style.display = 'none';
}

document.getElementById('btnConfirmarEntrada').onclick = () => {
    if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
};

function fecharModal() { 
    document.getElementById('meuModal').style.display = "none"; 
}

function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const main = document.getElementById('mainContainer');
    sidebar.classList.toggle('open');
    main.classList.toggle('sidebar-open');
}

window.onclick = (event) => {
    if (event.target == document.getElementById('meuModal')) fecharModal();
};
</script>

</body>
</html>