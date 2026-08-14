<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
    include_once("../config/conexao.php");
    // ==========================================================
    // BUSCA AS PREFERÊNCIAS DO USUÁRIO LOGADO
    // ==========================================================
    // O session.php já garante que existe usuário autenticado
    $id_usuario_logado = intval($_SESSION['usuario_id']);
    $sql_pref = "SELECT cores_materia 
                 FROM configuracoes 
                 WHERE id_usuario = $id_usuario_logado";
                 
    $result_pref = $conn->query($sql_pref);
    // ==========================================================
    // CORES PADRÃO CASO O USUÁRIO AINDA NÃO TENHA CONFIGURAÇÕES
    // ==========================================================
    $cores_usuario = [
        "bg_claro" => "#FFFFFF",
        "bg_escuro" => "#121212",

        "matematica" => "#3498db",
        "portugues" => "#e74c3c",
        "historia" => "#f1c40f",
        "geografia" => "#2ecc71",
        "biologia" => "#27ae60",
        "fisica" => "#8e44ad",
        "quimica" => "#d35400",
        "ingles" => "#2980b9",
        "artes" => "#e67e22",
        "filosofia" => "#7f8c8d",
        "sociologia" => "#16a085",
        "educacao_fisica" => "#c0392b",
        "literatura" => "#9b59b6"
    ];
    // ==========================================================
    // MESCLA AS CONFIGURAÇÕES SALVAS COM AS PADRÕES
    // ==========================================================
    if ($result_pref && $result_pref->num_rows > 0) {
        $row_pref = $result_pref->fetch_assoc();
        $cores_banco = json_decode(
            $row_pref['cores_materia'],
            true
        );
        if (is_array($cores_banco)) {

            $cores_usuario = array_merge(
                $cores_usuario,
                $cores_banco
            );

        }
    }
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
    <script src="./js/update_foto.js"></script>

    
</head>

<body>
<?php renderSidebar(); // Renderiza a sidebar ?>
    
<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main>
        <section class="cards-section">
            <div class="group-cards" id="cardsConteudos">
                </div>
        </section>
    </main>

    <?php renderFooter(); ?>

    <div id="cookieBanner" style="display: none;">
        <div class="cookie-text">
            <h3>Aceita cookies?</h3>
            <p>Usamos cookies para deixar sua experiência por aqui mais brilhante e personalizada. Aceita que sejam guardadas umas migalhas digitais para melhorar sua navegação?</p>
        </div>
        <div class="cookie-buttons">
            <div class="options-button">
                <button class="btn-ok btn-box" onclick="interagirCookie('accept')">Aceitar</button>
                <button class="btn-no btn-box" onclick="interagirCookie('decline')">Recusar</button>
            </div>
            <div class="politica"><a href="">politica de privacidade</a></div>
        </div>
    </div>

    <script src="js/cookies.js"></script>


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

// Transforma o array do PHP em um objeto JavaScript utilizável
const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;

window.onload = () => {
    carregarUsuario();
    carregarMenuSidebar(); // Carrega a sidebar e os cards iniciais
};

function carregarUsuario() {
    fetch(api + "?tipo=usuario")
        .then(r => r.json())
        .then(u => {
            // --- NOVO: Se o usuário já tiver foto, atualiza a imagem no HEADER (Navbar superior) ---
            const linkPerfilHeader = document.querySelector('.item-perfil a');
            if (linkPerfilHeader && u.foto_perfil) {
                const iconeRoxo = linkPerfilHeader.querySelector('.profile-icon');
                if (iconeRoxo) {
                    // Substitui o círculo roxo com o ícone de usuário por uma imagem circular correspondente
                    iconeRoxo.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                } else {
                    // Caso já seja uma imagem, apenas updates o src
                    const imagemHeaderExistente = linkPerfilHeader.querySelector('.profile-icon');
                    if (imagemHeaderExistente && imagemHeaderExistente.tagName === 'IMG') {
                        imagemHeaderExistente.src = u.foto_perfil;
                    }
                }
            }

            // Captura o item de perfil para montar o Dropdown
            const itemPerfil = document.querySelector('.item-perfil');
            
            if (itemPerfil) {
                const antigoDropdown = itemPerfil.querySelector('.perfil-dropdown');
                if (antigoDropdown) antigoDropdown.remove();

                // Define se exibe a foto real em formato <img> ou o layout do rostinho original
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
                
                itemPerfil.appendChild(dropdown);
            }
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
                
                // Normaliza o nome da matéria para buscar a cor correta mapeada (Ex: "Matemática" vira "matematica")
                let chaveMateria = m.nome_materia.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '_');
                
                // Busca a cor correspondente do banco ou usa o azul padrão como fallback
                let corDoCard = coresMateriasDoBanco[chaveMateria] || "#3498db";

                // Link na Sidebar
                menuHTML += `<a href="#" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                
                // Card inicial na tela - Agora injetando dinamicamente a cor do banco na parte branca (.card-body)
                cardsIniciais += `
                    <div onclick="carregarConteudos(${m.id}, '${m.nome_materia}')" class="card-materia">
                        <div class="card-banner">
                            <img src="img/${nomeLimpo}.webp" onerror="this.src='img/indisponivel.png'">
                        </div>
                        <div class="card-body" style="background-color: ${corDoCard} !important;"><p>${m.nome_materia}</p></div>
                    </div>`;
            });
            document.getElementById("menuMaterias").innerHTML = menuHTML;
            document.getElementById("menuMateriasMobile").innerHTML = menuHTML;
            document.getElementById("cardsConteudos").innerHTML = cardsIniciais;
        });
}

function carregarConteudos(idMateria, nomeMateria) {
    // Fecha menus mobile se abertos
    fecharMenuMobile();
    
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
                    // SEPARAÇÃO DA LÓGICA:
                    // 1. Se houver imagem salva no banco (c.imagem_conteudo), usa ela.
                    // 2. Fallback: Se não houver no banco, gera um nome limpo baseado no NOME DO CONTEÚDO (ex: "adicaoesubtracao.webp")
                    let imagemCard = "";
                    
                    if (c.imagem_conteudo && c.imagem_conteudo.trim() !== "") {
                        imagemCard = c.imagem_conteudo;
                    } else {
                        let nomeConteudoLimpo = c.nome.toLowerCase().normalize('NFD').replace(/[\u0300-\u036f]/g, "").replace(/\s+/g, '');
                        imagemCard = `img/conteudos/${nomeConteudoLimpo}.webp`; 
                    }

                    html += `
                        <div onclick="abrirModalQuizzes(${c.id}, '${c.nome}')" class="card-materia">
                            <div class="card-banner">
                                <img src="${imagemCard}" onerror="this.src='img/indisponivel.png'">
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
                    // Pega as primeiras 3 letras da matéria como sigla (ex: Matemática -> MAT)
                    let siglaMateria = q.nome_materia ? q.nome_materia.substring(0, 3).toUpperCase() : "QUIZ";

                    html += `
                        <a href="quiz.php?id=${q.id}" class="quiz-card-link" onclick="prepararEntrada(event, this.href)">
                            <div class="quiz-card">
                                <span class="quiz-numero">${q.total_questoes}</span>

                                <h4>${q.nome}</h4>

                                <p class="quiz-conteudo">Conteúdo: ${nomeConteudo}</p>

                                <div class="quiz-badges">
                                    <span class="badge-materia">${siglaMateria}</span>
                                    <span class="badge-dificuldade">${q.dificuldade.toUpperCase()}</span>
                                </div>
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

function fecharMenuMobile() {
    const mobileMenu = document.getElementById('mobileMenu');
    if (mobileMenu) {
        mobileMenu.classList.remove('active');
    }
    document.body.classList.remove('no-scroll');
}

function toggleSidebar() {
    // 900px é o limite exato que está configurado no seu arquivo home.css
    if (window.innerWidth <= 900) {
        
        // ==================================================================
        // COMPORTAMENTO MOBILE (Celular / Tablet)
        // ==================================================================
        const mobileMenu = document.getElementById('mobileMenu');
        if (mobileMenu) {
            mobileMenu.classList.toggle('active');
            if (mobileMenu.classList.contains('active')) {
                document.body.classList.add('no-scroll');
            } else {
                document.body.classList.remove('no-scroll');
            }
        }

    } else {
        
        // ==================================================================
        // COMPORTAMENTO DESKTOP (O seu código original intacto!)
        // ==================================================================
        const sidebar = document.getElementById('sidebar');
        const main = document.getElementById('mainContainer');
        
        if (sidebar) {
            sidebar.classList.toggle('open');
            // Quando a sidebar é minimizada (perde a classe 'open'), resetamos a rolagem interna para o topo
            if (!sidebar.classList.contains('open')) {
                sidebar.scrollTop = 0;
            }
        }
        if (main) main.classList.toggle('sidebar-open');
        
    }
}

// Fecha o menu mobile quando a tela for redimensionada para tamanho desktop
window.onresize = () => {
    if (window.innerWidth > 900) {
        fecharMenuMobile();
    }
};

window.onclick = (event) => {
    if (event.target == document.getElementById('meuModal')) fecharModal();
    // Clique no botão X do menu mobile
    if (event.target.classList.contains('mobile-menu-close') || event.target.closest('.mobile-menu-close')) {
        fecharMenuMobile();
    }
};
</script>

</body>
</html>