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
            <li><a href="novidades.html">Novidades</a></li>
            <li><a href="#">Todos os quizzes</a></li>
            <li><a href="perfil.html">Perfil</a></li>
        </nav>
        <hr>
        <div id="menuMateriasMobile">
            </div>
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
            <li class="item-novidades"><a href="novidades.html">Novidades</a></li>
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
                <h2 id="bemvindo">Carregando usuário...</h2>
                <p class="subtitle">COMECE AGORA!</p>
            </div>
        </section>

        <section class="cards-section">
            <div class="group-cards" id="cardsMaterias">
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
            <h2>Conteúdos</h2>
            <span onclick="fecharModal()" class="modal-close">&times;</span>
        </div>
        <hr>
        <div class="modal-body">
            <div id="corpoModal"></div>
            <button onclick="abrirModalEntrar()">Entrar no Quiz</button>
        </div>
    </div>
</div>

<div id="modalConfirmacao" class="modal-overlay" style="display: none;">
    <div class="modal-content-confirm">
        <p>deseja entrar no quiz?</p>
        <img src="img/LUMINE-5con.ico" alt="logo">
        <div class="modal-buttons">
            <button onclick="fecharModalConfirmacao()" class="btn-voltar">não</button>
            <button id="btnConfirmarEntrada" class="btn-entrar">sim</button>
        </div>
    </div>
</div>

<?php 
    // Lógica Real: O Banner SÓ EXISTE no HTML se o cookie NÃO estiver definido
    if (!isset($_COOKIE['user_consent'])): 
    ?>
    <div id="cookieBanner">
        <span>🍪 Este site utiliza cookies para garantir a melhor experiência.</span>
        <div class="cookie-buttons">
            <button class="btn-ok" onclick="acceptCookies('accept')">Aceitar e Continuar</button>
            <button class="btn-no" onclick="declineCookies('decline')">Recusar</button>
        </div>
    </div>
<?php endif; ?>

<script>
const api = "../config/home.php";

function toggleSidebar() {
    const sidebar = document.getElementById('sidebar');
    const main = document.getElementById('mainContainer');
    const mobileMenu = document.getElementById('mobileMenu');
    const body = document.body;
    
    if (window.innerWidth <= 900) {
        mobileMenu.classList.toggle('active');
        
        // TRAVA O SCROLL DO FUNDO NO MOBILE
        if (mobileMenu.classList.contains('active')) {
            body.classList.add('no-scroll');
        } else {
            body.classList.remove('no-scroll');
        }
    } else {
        const isClosing = sidebar.classList.contains('open');
        
        if (isClosing) {
            // FORÇA O SCROLL PARA O TOPO IMEDIATAMENTE
            sidebar.scrollTo({ top: 0, behavior: 'instant' });
            
            // Pequeno truque: remove o overflow para não ver o conteúdo subindo
            sidebar.style.overflowY = "hidden";
            
            sidebar.classList.remove('open');
            main.classList.remove('sidebar-open');
        } else {
            sidebar.classList.add('open');
            main.classList.add('sidebar-open');
            // Restaura o overflow quando abre
            sidebar.style.overflowY = "auto";
        }
    }
}

window.addEventListener('resize', () => {
    const sidebar = document.getElementById('sidebar');
    const main = document.getElementById('mainContainer');
    const mobileMenu = document.getElementById('mobileMenu');
    
    sidebar.classList.remove('open');
    main.classList.remove('sidebar-open');
    mobileMenu.classList.remove('active');
    document.body.classList.remove('no-scroll'); // Garante que o scroll volte ao redimensionar
});

window.onload = () => {
    carregarUsuario();
    carregarMaterias();
};

function carregarUsuario() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            const nomeUsuario = u.nome ? u.nome.toUpperCase() : "ALUNO";
            document.getElementById("bemvindo").innerHTML = `SEJA BEM-VINDO, <span class="nome-destaque">${nomeUsuario}</span>!!`;
        });
}

function carregarMaterias() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            let menu = "";
            let cards = "";
            
            dados.forEach(m => {
                let nomeArquivo = m.nome_materia
                    .toLowerCase()
                    .normalize('NFD').replace(/[\u0300-\u036f]/g, "")
                    .replace(/\s+/g, '');

                const linkMateria = `<a href="#" onclick="openModal(${m.id})"><span>${m.nome_materia}</span></a>`;
                menu += linkMateria;
                
                cards += `
                    <div onclick="openModal(${m.id})" class="card-materia">
                        <div class="card-banner">
                            <img src="img/${nomeArquivo}.jpg" alt="${m.nome_materia}" onerror="this.src='img/placeholder.png'">
                        </div>
                        <div class="card-body">
                            <p>${m.nome_materia}</p>
                        </div>
                    </div>
                `;
            });
            document.getElementById("menuMaterias").innerHTML = menu;
            document.getElementById("menuMateriasMobile").innerHTML = menu;
            document.getElementById("cardsMaterias").innerHTML = cards;
        });
}

function openModal(idMateria) {
    document.getElementById('mobileMenu').classList.remove('active');
    document.body.classList.remove('no-scroll'); // Libera o scroll se o modal for aberto pelo mobile
    
    const modal = document.getElementById('meuModal');
    const corpo = document.getElementById('corpoModal');
    modal.style.display = "block";
    corpo.innerHTML = "<p>Carregando conteúdos...</p>";

    fetch(api + "?tipo=conteudos&id_materia=" + idMateria)
        .then(res => res.json())
        .then(dados => {
            let html = "";
            if(dados.length === 0) html = "<p>Nenhum conteúdo cadastrado.</p>";
            else {
                dados.forEach(c => {
                    html += `
                        <div class="conteudo-item" onclick="toggleQuizzes(${c.id}, this)">
                            <div class="conteudo-titulo">${c.nome}</div>
                        </div>
                        <div id="quiz_${c.id}"></div>
                    `;
                });
            }
            corpo.innerHTML = html;
        });
}

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
                        <a href="quiz.html?id=${q.id}" class="quiz-card-link" onclick="prepararEntrada(event, this.href)">
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

function fecharModal() { 
    document.getElementById('meuModal').style.display = "none"; 
}

window.onclick = function(event) {
    const modal = document.getElementById('meuModal');
    if (event.target == modal) {
        fecharModal();
    }
}

// Cookie Banner
window.addEventListener("load", () => {
    const banner = document.getElementById("cookieBanner");
    if (!localStorage.getItem("cookiesChoice")) {
        setTimeout(() => {
            banner.classList.add("show");
        }, 1000);
    }
});

// Ajuste a função de aceitar
async function acceptCookies(choice) {
    try {
        // ADICIONE o caminho correto: ../config/
        const response = await fetch(`../config/set-cookie.php?action=${choice}`);
        
        // Verifique se a resposta é OK antes de tentar ler o JSON
        if (!response.ok) throw new Error('Erro ao encontrar o arquivo PHP');
        
        const data = await response.json();

        if (data.status === 'success') {
            // Remova o localStorage se não for mais usar
            localStorage.setItem("cookiesChoice", "accepted"); 
            window.location.reload();
        }
    } catch (error) {
        console.error("Erro no Aceitar:", error);
    }
}

// Ajuste a função de recusar (garanta que o nome seja igual ao chamado no HTML)
async function declineCookies(choice) {
    try {
        const response = await fetch(`../config/set-cookie.php?action=${choice}`);
        // Mesmo que recuse, damos reload para limpar o banner via PHP
        localStorage.setItem("cookiesChoice", "declined");
        window.location.reload();
    } catch (error) {
        console.error("Erro no Recusar:", error);
    }
}

function confirmarLogout() {
    if (confirm("Tem certeza que deseja sair?")) {
        window.location.href = "../config/logout.php";
    }
}

let urlDestinoQuiz = ""; // Variável global para guardar o link temporariamente

// Esta função substitui o seu antigo confirmarEntrada()
function prepararEntrada(event, url) {
    event.preventDefault(); // Impede o navegador de abrir o link imediatamente
    urlDestinoQuiz = url;    // Guarda o link (ex: quiz.html?id=5)
    
    // Abre o modal de confirmação
    document.getElementById('modalConfirmacao').style.display = 'flex';
    return false;
}

function fecharModalConfirmacao() {
    document.getElementById('modalConfirmacao').style.display = 'none';
}

function iniciarQuiz() {
    if (urlDestinoQuiz !== "") {
        window.location.href = urlDestinoQuiz; // Redireciona agora que confirmou
    }
}

// Vincule o clique do botão "Entrar" do modal à função iniciarQuiz
document.getElementById('btnConfirmarEntrada').onclick = iniciarQuiz;


// --- Lógica Refinada da Sidebar (Scroll + Hover) ---
const sidebarEl = document.getElementById('sidebar');
let scrollTimeout;

if (sidebarEl) {
    sidebarEl.addEventListener('scroll', () => {
        sidebarEl.classList.add('scrolling');
        clearTimeout(scrollTimeout);

        scrollTimeout = setTimeout(() => {
            if (!sidebarEl.matches(':hover')) {
                sidebarEl.classList.remove('scrolling');
            }
        }, 1200); 
    });

    sidebarEl.addEventListener('mouseleave', () => {
        scrollTimeout = setTimeout(() => {
            sidebarEl.classList.remove('scrolling');
        }, 500);
    });
}
</script>

</body>
</html>