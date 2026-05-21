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

    <style>
        .search-container-main {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .search-box-wrapper {
            position: relative;
            width: 100%;
            max-width: 500px;
        }

        .input-busca {
            width: 100%;
            padding: 12px 20px;
            border-radius: 25px;
            border: 1px solid #ddd;
            outline: none;
            transition: all 0.3s;
        }

        .input-busca:focus {
            border-color: #3498db;
            box-shadow: 0 0 8px rgba(52, 152, 219, 0.2);
        }

        .section-title {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
            font-weight: 600;
        }

        /* Estilização da Dificuldade e Numeração */
        .card-materia {
            position: relative; /* Necessário para posicionar o número */
        }

        .quiz-numero {
            position: absolute;
            top: 10px;
            left: 10px;
            background: rgba(0, 0, 0, 0.7);
            color: white;
            padding: 2px 8px;
            border-radius: 5px;
            font-size: 0.75rem;
            font-weight: bold;
            z-index: 5;
        }

        .tag-dificuldade {
            display: inline-block;
            padding: 3px 10px;
            border-radius: 15px;
            font-size: 0.7rem;
            font-weight: bold;
            text-transform: uppercase;
            color: white;
            margin-top: 8px;
        }

        /* Cores das dificuldades */
        .dif-facil { background-color: #2ecc71; }
        .dif-media { background-color: #f1c40f; color: #333; }
        .dif-dificil { background-color: #e74c3c; }
        .dif-padrao { background-color: #95a5a6; }

        .card-subtexto {
            display: block;
            color: #777;
            font-size: 0.8rem;
            margin-top: 5px;
        }
        
        footer {
            margin-top: 50px;
        }
    </style>
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
        <div class="mobile-logo-central">
            <img src="img/LUMINE.png" alt="Lumine Logo">
        </div>

        <nav class="nav-links-home">
            <li class="item-sobre"><a href="#">Sobre nós</a></li>
            <li class="item-novidades"><a href="novidades.php">Novidades</a></li>
            <li class="item-quizzes"><a href="#">Todos os quizzes</a></li>
            <a href="../config/logout.php">Sair</a>
            <li class="item-perfil">
                <a href="perfil.html" class="perfil-link">
                    <span>Perfil</span>
                    <div class="profile-icon">
                        <i class="fa-solid fa-user"></i>
                    </div>
                </a>
            </li>
        </nav>

        <div class="mobile-profile-right">
            <a href="perfil.html">
                <div class="profile-icon">
                    <i class="fa-solid fa-user"></i>
                </div>
            </a>
        </div>
    </header>

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
                    <img src="img/${imgNome}.jpg" onerror="this.style.display='none'">
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
    urlDestinoQuiz = `quiz.html?id=${idQuiz}`;
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