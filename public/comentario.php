<?php
    require "../config/conexao.php";
    include_once("../config/session.php");
    include_once("../config/layout.php"); // Inclui o novo arquivo
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comentários - Lumine</title>
    <link rel="stylesheet" href="./style/home.css">
    <link rel="stylesheet" href="./style/comentario.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="shortcut icon" href="img/LUMINE-5con.ico" type="image/x-icon">
</head>

<body>
<?php renderSidebar(); // Renderiza a sidebar ?>
    
<div class="main-container" id="mainContainer">

    <?php renderHeader(); ?>

    <main>
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

    
</body>
</html>

<script>
    const api =  "../config/comentario.php";
    // Pegando o ID do usuário direto da sessão do PHP (ajuste o nome da variável se for diferente na sua sessão)
    const idUsuarioLogado = <?php echo isset($_SESSION['usuario_id']) ? $_SESSION['usuario_id'] : 'null'; ?>;

    // Executa assim que a página carregar
    document.addEventListener("DOMContentLoaded", () => {
        carregarComentarios();
        configurarFormulario();
    });

    // 1. CARREGAR COMENTÁRIOS (GET)
   function carregarComentarios() {
        fetch(api)
            .then(response => response.json())
            .then(data => {
                const respostasContainer = document.getElementById('respostas');
                respostasContainer.innerHTML = ''; 

                if (data.length === 0) {
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
                    // Se houver foto no banco, usa ela (seja URL ou Base64). Se não, usa uma imagem padrão vazia.
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

            fetch(api, {
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
</script>