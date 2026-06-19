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
    <link rel="stylesheet" href="./style/novidades.css"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
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
    carregarMenuSidebarFixo();
    carregarQuizzesRecomendados();
    carregarUsuario();     // <--- Adicionado para carregar a foto no header
    
};

function carregarMenuSidebarFixo() {
    fetch(api + "?tipo=materias")
        .then(r => r.json())
        .then(dados => {
            const menu = dados.map(m => `<a href="home.php"><span>${m.nome_materia}</span></a>`).join("");
            document.getElementById("menuMaterias").innerHTML = menu;
            document.getElementById("menuMateriasMobile").innerHTML = menu;
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
    
    if (lista.length === 0) { 
        container.innerHTML = "<p style='grid-column: 1/-1; text-align: center;'>Nenhum quiz encontrado para a sua escolaridade no momento.</p>"; 
        return; 
    }

    lista.forEach((q, index) => {
        let imgNome = q.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
        
        let difTexto = "Não definido";
        let difClasse = "dif-padrao";

        if (q.id_dificuldade == 1) { difTexto = "Fácil"; difClasse = "dif-facil"; }
        else if (q.id_dificuldade == 2) { difTexto = "Médio"; difClasse = "dif-media"; }
        else if (q.id_dificuldade == 3) { difTexto = "Difícil"; difClasse = "dif-dificil"; }

        // 🎯 Correção aqui: Trocado q.nome_conteudo por q.conteudo para bater com o AS conteudo do PHP
        html += `
            <div onclick="prepararEntrada('${q.nome.replace(/'/g, "\\'")}', ${q.id})" class="card-materia">
                <div class="quiz-numero">#${index + 1}</div>
                <div class="card-banner">
                    <img src="img/${imgNome}.webp" onerror="this.style.display='none'">
                </div>
                <div class="card-body">
                    <p>${q.nome}</p>
                    <span class="card-subtexto">${q.nome_materia} • ${q.conteudo}</span>
                    <span class="tag-dificuldade ${difClasse}">${difTexto}</span>
                </div>
            </div>`;
    });
    container.innerHTML = html;
}

function filtrarGeral() {
    const termo = document.getElementById('inputBusca').value.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "");
    const filtrados = listaQuizzesGlobal.filter(q => 
        q.nome.toLowerCase().includes(termo) || 
        q.nome_materia.toLowerCase().includes(termo) || 
        // 🎯 Correção aqui também: Trocado q.nome_conteudo por q.conteudo
        q.conteudo.toLowerCase().includes(termo)
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

function carregarUsuario() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            // 1. Atualiza a imagem no HEADER (Navbar superior Desktop)
            const linkPerfilHeader = document.querySelector('.item-perfil a');
            if (linkPerfilHeader && u.foto_perfil) {
                const iconeUsuario = linkPerfilHeader.querySelector('.profile-icon');
                if (iconeUsuario) {
                    iconeUsuario.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                } else {
                    const imagemHeaderExistente = linkPerfilHeader.querySelector('.profile-icon');
                    if (imagemHeaderExistente && imagemHeaderExistente.tagName === 'IMG') {
                        imagemHeaderExistente.src = u.foto_perfil;
                    }
                }
            }
            
            // 2. Atualiza a foto no menu mobile (Navbar superior Mobile)
            const linkPerfilMobile = document.querySelector('.mobile-profile-right .profile-icon');
            if (linkPerfilMobile && u.foto_perfil) {
                linkPerfilMobile.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
            }

            // 3. MONTA E ADICIONA O DROPDOWN DO PERFIL (Igual ao da Home)
            const itemPerfil = document.querySelector('.item-perfil');
            if (itemPerfil) {
                // Remove um dropdown antigo se já existir para não duplicar
                const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                if (antigoDropdown) antigoDropdown.remove();

                // Define se exibe a foto real ou o ícone de rostinho padrão
                const fotoHtml = u.foto_perfil 
                    ? `<img src="${u.foto_perfil}" class="avatar-preview" id="avatarImg">`
                    : `<div class="avatar-preview" id="avatarImg"><i class="fas fa-smile"></i></div>`;

                // Cria o elemento do dropdown
                const dropdown = document.createElement('div');
                dropdown.className = 'perfil-dropdown';
                dropdown.innerHTML = `
                    <div class="avatar-upload-container" onclick="document.getElementById('inputFotoPerfil').click()">
                        <div id="avatarWrapper">
                            ${fotoHtml}
                        </div>
                        <div class="avatar-edit-badge">
                            <i class="fas fa-pencil-alt"></i>
                        </div>
                        <input type="file" id="inputFotoPerfil" accept="image/*" style="display: none;" onchange="uploadFotoPerfil(this)">
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
                
                // Insere o dropdown montado dentro do item de perfil na barra de navegação
                itemPerfil.appendChild(dropdown);
            }
        });
}

</script>

</body>
</html>