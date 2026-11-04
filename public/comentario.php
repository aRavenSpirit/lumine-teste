<?php
    require "../config/conexao.php";
    include_once("../config/session.php");
    include_once("../config/layout.php");

   
    $quiz_id = isset($_GET['quiz_id']) ? intval($_GET['quiz_id']) : 0;


    // ==========================================================
    // BUSCA AS PREFERÊNCIAS DO USUÁRIO LOGADO
    // ==========================================================
    $id_usuario_logado = intval($_SESSION['usuario_id']);$sql_pref = "SELECT cores_materia 
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
    ];

    // ==========================================================
    // MESCLA AS CONFIGURAÇÕES SALVAS COM AS PADRÕES
    // ==========================================================
    if ($result_pref &&$result_pref->num_rows > 0) {
        $row_pref =$result_pref->fetch_assoc();
        $cores_banco = json_decode($row_pref['cores_materia'],
            true
        );
        if (is_array($cores_banco)) {$cores_usuario = array_merge(
                $cores_usuario,$cores_banco
            );
        }
    }
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comentários - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/comentario.css">
    <link rel="stylesheet" href="./style/dark-mode.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
    <script src="js/tamanho_fonte.js"></script>
</head>

<body>
<?php renderSidebar(); // Renderiza a sidebar ?>

<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main>
        <!-- BOTÕES FIXADOS NO SITE (NÃO NA TELA) -->
        <div class="rotas-buttons">
            <button class="btn-sair-flutuante" onclick="window.location.href='home.php'" title="Sair" aria-label="Sair">
                <i class="fas fa-arrow-left"></i>
                <span class="btn-sair-text">sair</span>
            </button>
            
            <button class="btn-revisar" onclick="voltarParaRevisao()" title="Revisar respostas" aria-label="Revisar respostas">
                <i class="fas fa-undo"></i>
                <span class="btn-revisar-text">revisar respostas</span>
            </button>
        </div>

        <section class="welcome-section">
            <div class="container-comentarios">
                <h2>Comente sobre nosso site!</h2>
                <div class="card-respostas">
                    <div class="respostas">
                        <p id="respostas"></p>
                    </div>
                </div>
                <div class="comentario-form">
                    <form id="comentarioForm">
                        <textarea placeholder="Digite seu comentário..." required></textarea>
                        <button type="submit">Enviar Comentário</button>
                    </form>
                </div>
            </div>
        </section>
    </main>

    <?php renderFooter(); ?>

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

<!-- Importação do script desacoplado da sidebar -->
<script src="js/sidebar_close.js"></script>

<script>
    const apiComentario = "../config/comentario.php";
    const apiHome = "../config/home.php";
    let urlDestinoQuiz = "";

    // Transforma o array do PHP em um objeto JavaScript utilizável
    const coresMateriasDoBanco = <?php echo json_encode($cores_usuario); ?>;
    const idUsuarioLogado = <?php echo isset($_SESSION['usuario_id']) ?$_SESSION['usuario_id'] : 'null'; ?>;

    // Executa assim que a página carregar
    document.addEventListener("DOMContentLoaded", () => {
        carregarUsuario();
        carregarMenuSidebar();
        carregarComentarios();
        configurarFormulario();
    });

    function carregarUsuario() {
        fetch(apiHome + "?tipo=usuario")
            .then(r => r.json())
            .then(u => {
                const nomeUsuario = u.nome ? u.nome.toUpperCase() : "ALUNO";
                const elementoBemVindo = document.getElementById("bemvindo");
                if (elementoBemVindo) {
                    elementoBemVindo.innerHTML = `SEJA BEM-VINDO, <span class="nome-destaque">${nomeUsuario}</span>!!`;
                }
                
                // Atualiza a imagem no HEADER (Navbar superior)
                const linkPerfilHeader = document.querySelector('.item-perfil a');
                if (linkPerfilHeader && u.foto_perfil) {
                    const iconeRoxo = linkPerfilHeader.querySelector('.profile-icon');
                    if (iconeRoxo) {
                        iconeRoxo.outerHTML = `<img src="${u.foto_perfil}" class="profile-icon" style="object-fit: cover;">`;
                    } else {
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
        fetch(apiHome + "?tipo=materias")
            .then(r => r.json())
            .then(dados => {
                let menuHTML = "";

                dados.forEach(m => {
                    // Link na Sidebar redirecionando para a home com a matéria selecionada ou executando visualização
                    menuHTML += `<a href="home.php" onclick="carregarConteudos(${m.id}, '${m.nome_materia}')"><span>${m.nome_materia}</span></a>`;
                });
                
                const menuDesk = document.getElementById("menuMaterias");
                const menuMob = document.getElementById("menuMateriasMobile");

                if (menuDesk) menuDesk.innerHTML = menuHTML;
                if (menuMob) menuMob.innerHTML = menuHTML;
            });
    }

    function uploadFotoPerfil(input) {
        if (input.files && input.files[0]) {
            const formData = new FormData();
            formData.append('foto', input.files[0]);

            fetch("../config/upload_foto.php", {
                method: "POST",
                body: formData
            })
            .then(r => r.json())
            .then(res => {
                if (res.sucesso) {
                    carregarUsuario();
                } else {
                    alert(res.erro || "Erro ao atualizar imagem de perfil.");
                }
            })
            .catch(err => console.error("Erro no upload:", err));
        }
    }

    // 1. CARREGAR COMENTÁRIOS (GET)
    function carregarComentarios() {
        fetch(apiComentario)
            .then(response => response.json())
            .then(data => {
                const respostasContainer = document.getElementById('respostas');
                respostasContainer.innerHTML = ''; 

                if (!Array.isArray(data) || data.length === 0) {
                    respostasContainer.innerHTML = '<p>Nenhum comentário ainda. Seja o primeiro!</p>';
                    return;
                }

                data.forEach(comentario => {
                    const comentarioDiv = document.createElement('div');
                    comentarioDiv.classList.add('comentario');

                    // --- Cabeçalho do Comentário (Alinha Foto, Nome e Data) ---
                    const headerDiv = document.createElement('div');
                    headerDiv.classList.add('comentario-header');

                    // 1. Foto de Perfil
                    const imgPerfil = document.createElement('img');
                    imgPerfil.classList.add('comentario-avatar');
                    imgPerfil.src = comentario.foto_usuario ? comentario.foto_usuario : 'img/default-avatar.png';
                    imgPerfil.alt = "Foto de perfil";

                    // 2. Container para agrupar o Nome e a Data
                    const infoDiv = document.createElement('div');
                    infoDiv.classList.add('comentario-info');

                    const nomeUsuario = document.createElement('h3');
                    nomeUsuario.textContent = comentario.nome_usuario || "Usuário Anônimo";

                    const dataEnvio = document.createElement('span');
                    dataEnvio.classList.add('comentario-data');
                    
                    // Formata a data obtida do banco de dados (AAAA-MM-DD HH:MM:SS) para o formato PT-BR
                    if (comentario.data_envio) {
                        const dataObj = new Date(comentario.data_envio);
                        dataEnvio.textContent = dataObj.toLocaleDateString('pt-BR', {
                            day: '2-digit',
                            month: '2-digit',
                            year: 'numeric'
                        }) + ' às ' + dataObj.toLocaleTimeString('pt-BR', { hour: '2-digit', minute: '2-digit' });
                    }

                    // Monta a estrutura do cabeçalho
                    infoDiv.appendChild(nomeUsuario);
                    infoDiv.appendChild(dataEnvio);
                    headerDiv.appendChild(imgPerfil);
                    headerDiv.appendChild(infoDiv);

                    // --- Corpo do Comentário (O texto em si) ---
                    const textoComentario = document.createElement('p');
                    textoComentario.classList.add('comentario-texto');
                    textoComentario.textContent = comentario.mensagem; 

                    // Junta tudo no card principal
                    comentarioDiv.appendChild(headerDiv);
                    comentarioDiv.appendChild(textoComentario);

                    respostasContainer.appendChild(comentarioDiv);
                });
            })
            .catch(error => console.error('Erro ao carregar comentários:', error));
    }

    // 2. ENVIAR COMENTÁRIO (POST)
    function configurarFormulario() {
        const form = document.getElementById('comentarioForm');
        
        form.addEventListener('submit', function(e) {
            e.preventDefault(); // Evita o recarregamento da página

            if (!idUsuarioLogado) {
                alert('Você precisa estar logado para comentar!');
                return;
            }

            const textarea = form.querySelector('textarea');
            const textoComentario = textarea.value.trim();

            if (textoComentario === '') return;

            const dados = {
                id_usuario: idUsuarioLogado,
                comentario: textoComentario
            };

            fetch(apiComentario, {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify(dados)
            })
            .then(response => response.json())
            .then(resultado => {
                if (resultado.erro) {
                    alert(resultado.erro);
                } else {
                    textarea.value = ''; // Limpa o campo
                    carregarComentarios(); // Recarrega a lista de comentários
                }
            })
            .catch(error => console.error('Erro ao enviar comentário:', error));
        });
    }

    function fecharModalConfirmacao() {
        document.getElementById('modalConfirmacao').style.display = 'none';
    }

    const btnConfirmar = document.getElementById('btnConfirmarEntrada');
    if (btnConfirmar) {
        btnConfirmar.onclick = () => {
            if (urlDestinoQuiz) window.location.href = urlDestinoQuiz;
        };
    }

    function fecharModal() { 
        document.getElementById('meuModal').style.display = "none"; 
    }

    window.onclick = (event) => {
        if (event.target == document.getElementById('meuModal')) fecharModal();
    };

    function voltarParaRevisao() {
        // 1. Tenta pegar o ID vindo da URL (se existir)
        const urlParams = new URLSearchParams(window.location.search);
        let quizId = urlParams.get('quiz_id') || urlParams.get('id');

        // 2. Se não estiver na URL, pega o último quiz salvo no navegador
        if (!quizId || quizId === '0') {
            quizId = localStorage.getItem('ultimo_quiz_id');
        }

        // 3. Redireciona passando o ID correto na URL
        if (quizId && quizId !== '0') {
            window.location.href = `quiz.php?id=${quizId}&revisao=true`;
        } else {
            alert('Não foi possível identificar o quiz para revisão. Voltando para a Home.');
            window.location.href = 'home.php';
        }
    }
</script>

</body>
</html>