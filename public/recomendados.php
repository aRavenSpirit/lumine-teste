<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recomendados - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/cookie.css">
    <link rel="stylesheet" href="./style/novidades.css"> 
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <script src="./js/update_foto.js"></script>
    <script src="js/tamanho_fonte.js"></script>
</head>

<body>

<?php renderSidebar(); ?>

<div class="main-container" id="mainContainer">
    
    <?php renderHeader(); ?>

    <main>
        <section class="welcome-section">
            <div class="welcome-text">
                <h1>RECOMENDADOS</h1>
                <p class="subtitle">QUIZZES PERFEITOS PARA O SEU NÍVEL DE ESCOLARIDADE!</p>
                
                <div class="search-container-main">
                    <div class="search-box-wrapper">
                        <input type="text" id="inputBusca" 
                               placeholder="Pesquisar nos recomendados..." 
                               onkeyup="filtrarGeral()"
                               class="input-busca">
                    </div>
                </div>
            </div>
        </section>

        <section class="cards-section">
            <h2 id="tituloSecao" class="section-title">Buscando recomendações personalizadas...</h2>
            <div class="group-cards" id="containerCards"></div>
        </section>
    </main>

    <?php renderFooter(); ?>

    <script src="js/cookies.js"></script>
</div>

<!-- MODAL DE CONFIRMAÇÃO DE ENTRADA NO QUIZ (PADRONIZADA COM A HOME) -->
<div id="modalConfirmacao" class="modal-overlay" style="display: none;">
    <div class="modal-content-confirm">
        <p class="modal-titulo">Deseja entrar no quiz?</p>
        
        <img src="img/luminequestoes.png" alt="logo" class="modal-imagem-centro">
        
        <div class="modal-buttons">
            <button onclick="fecharConfirmacao()" class="btn-voltar">Não</button>
            <button id="btnConfirmarEntrada" class="btn-entrar">Sim</button>
        </div>
    </div>
</div>

<script src="js/sidebar_close.js"></script>

<script>
const api = "../config/home.php";
let listaQuizzesGlobal = [];
let urlDestinoQuiz = "";

window.onload = () => {
    carregarMenuSidebarFixo();
    carregarQuizzesRecomendados();
    carregarUsuario();
};

function carregarMenuSidebarFixo() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            const menu = dados.map(m => `<a href="home.php"><span>${m.nome_materia}</span></a>`).join("");
            if (document.getElementById("menuMaterias")) document.getElementById("menuMaterias").innerHTML = menu;
            if (document.getElementById("menuMateriasMobile")) document.getElementById("menuMateriasMobile").innerHTML = menu;
        })
        .catch(e => console.error("Erro na sidebar:", e));
}

async function carregarQuizzesRecomendados() {
    try {
        const response = await fetch(api + "?tipo=recomendados");
        const dados = await response.json();

        if (dados.erro) {
            document.getElementById("tituloSecao").innerText = "Aviso";
            document.getElementById("containerCards").innerHTML = `
                <div style="grid-column: 1/-1; text-align: center; padding: 20px;">
                    <p style="font-size: 1.1rem; margin-bottom: 15px;">${dados.erro}</p>
                    ${dados.precisa_escolaridade ? `<button onclick="window.location.href='home.php'" style="padding: 10px 20px; background: #3498db; color: white; border: none; border-radius: 5px; cursor: pointer;">Escolher Escolaridade</button>` : ''}
                </div>`;
            return;
        }

        listaQuizzesGlobal = dados;
        document.getElementById("tituloSecao").innerText = "Recomendados para o seu Perfil";
        renderizarCards(listaQuizzesGlobal);

    } catch (e) {
        console.error("Erro ao buscar recomendações:", e);
        document.getElementById("tituloSecao").innerText = "Erro";
        document.getElementById("containerCards").innerHTML = "<p>Não foi possível carregar as recomendações.</p>";
    }
}

function renderizarCards(lista) {
    const container = document.getElementById("containerCards");
    let html = "";
    
    if (!lista || lista.length === 0) { 
        container.innerHTML = "<p style='grid-column: 1/-1; text-align: center;'>Nenhum quiz encontrado para a sua escolaridade no momento.</p>"; 
        return; 
    }

    lista.forEach((q, index) => {
        let imgNome = (q.nome_materia || '').toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
        
        let difTexto = "Não definido";
        let difClasse = "dif-padrao";

        if (q.id_dificuldade == 1) { difTexto = "Fácil"; difClasse = "dif-facil"; }
        else if (q.id_dificuldade == 2) { difTexto = "Médio"; difClasse = "dif-media"; }
        else if (q.id_dificuldade == 3) { difTexto = "Difícil"; difClasse = "dif-dificil"; }

        html += `
            <div onclick="prepararEntrada(${q.id})" class="card-materia" style="cursor: pointer;">
                <div class="quiz-numero">#${index + 1}</div>
                <div class="card-banner">
                    <img src="img/${imgNome}.webp" onerror="this.style.display='none'">
                </div>
                <div class="card-body">
                    <p>${q.nome}</p>
                    <span class="card-subtexto">${q.nome_materia} • ${q.conteudo || ''}</span>
                    <span class="tag-dificuldade ${difClasse}">${difTexto}</span>
                </div>
            </div>`;
    });
    container.innerHTML = html;
}

function filtrarGeral() {
    const termo = document.getElementById('inputBusca').value.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "");
    const filtrados = listaQuizzesGlobal.filter(q => 
        (q.nome && q.nome.toLowerCase().includes(termo)) || 
        (q.nome_materia && q.nome_materia.toLowerCase().includes(termo)) || 
        (q.conteudo && q.conteudo.toLowerCase().includes(termo))
    );
    renderizarCards(filtrados);
}

function prepararEntrada(idQuiz) {
    urlDestinoQuiz = `quiz.php?id=${idQuiz}`;
    document.getElementById('modalConfirmacao').style.display = 'flex';
}

function fecharConfirmacao() {
    document.getElementById('modalConfirmacao').style.display = 'none';
}

document.getElementById('btnConfirmarEntrada').onclick = () => {
    if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
};

window.addEventListener('click', (e) => {
    const modal = document.getElementById('modalConfirmacao');
    if (e.target === modal) fecharConfirmacao();
});

function carregarUsuario() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            const linkPerfilHeader = document.querySelector('.item-perfil a');
            if (linkPerfilHeader && u.foto_perfil) {
                const iconeUsuario = linkPerfilHeader.querySelector('.profile-icon');
                if (iconeUsuario) {
                    iconeUsuario.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                }
            }
            
            const linkPerfilMobile = document.querySelector('.mobile-profile-right .profile-icon');
            if (linkPerfilMobile && u.foto_perfil) {
                linkPerfilMobile.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
            }

            const itemPerfil = document.querySelector('.item-perfil');
            if (itemPerfil) {
                const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                if (antigoDropdown) antigoDropdown.remove();

                const fotoHtml = u.foto_perfil 
                    ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                    : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                const dropdown = document.createElement('div');
                dropdown.className = 'perfil-dropdown';
                dropdown.innerHTML = `
                    <div class="avatar-upload-container" onclick="document.getElementById('inputFotoPerfil').click()">
                        <div id="avatarWrapper">
                            ${fotoHtml}
                        </div>
                    </div>

                    <h4 style="text-align: center;">Minha Conta</h4>
                    <hr>
                    <p><strong>Nome:</strong> ${u.nome || "Não informado"}</p>
                    <p><strong>E-mail:</strong> ${u.email || "Não informado"}</p>
                    <p><strong>Nível:</strong> ${u.nome_escolaridade || "Não informado"}</p>
                    <hr>
                    <a href="../config/logout.php" class="btn-logout">
                        <i class="fas fa-sign-out-alt"></i> Sair da Conta
                    </a>
                `;
                
                itemPerfil.appendChild(dropdown);
            }
        })
        .catch(e => console.error("Erro ao carregar usuário:", e));
}
</script>

</body>
</html>