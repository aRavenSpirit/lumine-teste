<?php
    include_once("../config/session.php");
    include_once("../config/layout.php");
    include_once("../config/conexao.php");

    // ==========================================================
    // BUSCA AS PREFERÊNCIAS DO USUÁRIO LOGADO
    // ==========================================================
    $id_usuario_logado = intval($_SESSION['usuario_id']);
    $sql_pref = "SELECT cores_materia, tamanho_fonte, tema_escuro 
                 FROM configuracoes 
                 WHERE id_usuario = $id_usuario_logado";
                 
    $result_pref = $conn->query($sql_pref);
    $tamanho_fonte_salvo = 2; // Valor padrão (Médio)
    $tema_escuro_salvo = 0;   // Valor padrão (Claro)

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
    ];

    // ==========================================================
    // MESCLA AS CONFIGURAÇÕES SALVAS COM AS PADRÕES
    // ==========================================================
    if ($result_pref && $result_pref->num_rows > 0) {
        $row_pref = $result_pref->fetch_assoc();
        
        if (isset($row_pref['tamanho_fonte'])) {
            $tamanho_fonte_salvo = intval($row_pref['tamanho_fonte']);
        }

        if (isset($row_pref['tema_escuro'])) {
            $tema_escuro_salvo = intval($row_pref['tema_escuro']);
        }

        $cores_banco = json_decode($row_pref['cores_materia'], true);
        if (is_array($cores_banco)) {
            $cores_usuario = array_merge($cores_usuario, $cores_banco);
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Novidades - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/novidades.css">
    <link rel="stylesheet" href="./style/cookie.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
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

    <!-- Importação do script desacoplado de cookies -->
    <script src="js/cookies.js"></script>

</div>

<!-- Importação do script de tamanho de fonte -->
<script src="js/tamanho_fonte.js"></script>

<!-- Importação do script desacoplado da sidebar -->
<script src="js/sidebar_close.js"></script>

<script>
const api = "../config/home.php";

// Transforma o array do PHP em um objeto JavaScript utilizável
const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
const tamanhoFonteBanco = <?php echo json_encode($tamanho_fonte_salvo); ?>;
const temaEscuroBanco = <?php echo json_encode($tema_escuro_salvo); ?>;

// Aplica a preferência de Tema do Banco de Dados
if (temaEscuroBanco == 1) {
    localStorage.setItem("theme", "dark");
    document.body.classList.add("dark-mode");
} else {
    localStorage.setItem("theme", "light");
    document.body.classList.remove("dark-mode");
}

// Aplica a preferência de tamanho de fonte vinda do banco de dados na inicialização
if (typeof aplicarTamanhoFonteGlobal === "function") {
    aplicarTamanhoFonteGlobal(tamanhoFonteBanco);
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

window.onload = () => {
    carregarQuizzesRecentes();
    carregarUsuario();     // Carrega a foto e dados no header/dropdown
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
            <div onclick="window.location.href='quiz.php?id=${q.id}'" class="card-materia">
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