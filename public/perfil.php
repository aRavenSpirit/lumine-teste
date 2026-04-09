<?php
    require "../config/session.php";
    require "../config/conexao.php";

    $id = $_SESSION['usuario_id'];

    // Busca dados do usuário
    $sqlUser = "SELECT nome, email FROM usuario WHERE id=$id";
    $resultUser = $conn->query($sqlUser);
    $user = $resultUser->fetch_assoc();

    // BUSCA DINÂMICA DAS MATÉRIAS
    $sqlMaterias = "SELECT id, nome_materia FROM materia ORDER BY nome_materia ASC";
    $resultMaterias = $conn->query($sqlMaterias);
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{
            font-family: Arial, Helvetica, sans-serif;
            margin: 0;
            display: flex; /* Mantém nav e main lado 
            a lado */
            flex-direction: column;
            align-items: flex-start; /* Importante para o sticky funcionar */
        }

        main{
            flex: 1; /* Faz o main ocupar o espaço restante */
            padding: 30px; 
            overflow-y: auto;
            margin-left: 220px;
        }

        .sidebar {
            position: fixed;
            left: 0;
            top: 0;
            width: 200px;
            height: 100%;
            background-color: #f0f0f0;
            padding: 20px;
        }

        header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
    
<header>
    <nav>
        <a href="#">Sobre nós</a>
        <a href="#">Novidades</a>
        <a href="#">Todos os quizzes</a>
        <a href="#">Perfil</a>
    </nav>
</header>

<div class="sidebar">
    <img src="img/LUMINE.png" alt="Imagem Logo" width="100px">
    <nav>
        <?php 
        // Reinicia o ponteiro caso use a mesma variável duas vezes
        $resultMaterias->data_seek(0); 
        while($materia = $resultMaterias->fetch_assoc()): 
        ?>
            <a href="quizzes.php?materia=<?php echo $materia['id']; ?>">
                <?php echo $materia['nome_materia']; ?>
            </a>
        <?php endwhile; ?>
    </nav>
</div>




    <main>
        <section>
            <h2>Bem vindo <?php echo $user['nome']; ?> 👋</h2>
        
            <p>COMECE AGORA</p>
        
            <a href="../config/logout.php">Sair</a>
        </section>

        <section>
            <div class="group-cards">
                <?php 
                $resultMaterias->data_seek(0); // Volta ao início dos resultados
                if ($resultMaterias->num_rows > 0):
                    while($materia = $resultMaterias->fetch_assoc()): 
                ?>
                    <div onclick="openModal(<?php echo $materia['id']; ?>)" class="card">
                        <p><?php echo $materia['nome_materia']; ?></p>
                    </div>
                <?php 
                    endwhile; 
                else:
                    echo "<p>Nenhuma matéria encontrada.</p>";
                endif;
                ?>
            </div>

            <div id="meuModal" class="modal" style="display:none; position:fixed; z-index:1; left:0; top:0; width:100%; height:100%; background-color: rgba(0,0,0,0.5);">
                <div style="background-color:#fff; margin:10% auto; padding:20px; width:50%; border-radius:10px; position:relative;">
                    <span onclick="fecharModal()" style="position:absolute; right:20px; cursor:pointer; font-size:24px;">&times;</span>
                    <h2 id="tituloModal">Conteúdos</h2>
                    <hr>
                    <div id="corpoModal" style="margin-top:20px;">
                        </div>
                </div>
            </div>
            
        </section>
    </main>


    <script>
        function openModal(idMateria) {
    const modal = document.getElementById('meuModal');
    const corpo = document.getElementById('corpoModal');
    
    modal.style.display = "block";
    corpo.innerHTML = "Carregando conteúdos...";

    // Faz a requisição para o PHP que criamos abaixo
    fetch(`../config/get_conteudos.php?id_materia=${idMateria}`)
        .then(res => res.json())
        .then(dados => {
            if (dados.length > 0) {
                let html = '<ul style="list-style:none; padding:0;">';
                dados.forEach(item => {
                    // Aqui redirecionamos para uma página que listará os quizzes desse conteúdo
                    html += `<li style="margin-bottom:10px; padding:10px; background:#f4f4f4; border-radius:5px;">
                                <a href="quizzes_lista.php?id_conteudo=${item.id}" style="text-decoration:none; color:#333; font-weight:bold;">
                                    ${item.nome}
                                </a>
                             </li>`;
                });
                html += '</ul>';
                corpo.innerHTML = html;
            } else {
                corpo.innerHTML = "Nenhum conteúdo cadastrado para esta matéria.";
            }
        })
        .catch(err => {
            corpo.innerHTML = "Erro ao carregar conteúdos.";
            console.error(err);
        });
}

function fecharModal() {
    document.getElementById('meuModal').style.display = "none";
}
    </script>
</body>
</html>