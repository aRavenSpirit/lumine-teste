<?php
    require "../config/session.php";
    require "../config/conexao.php";

    $id = $_SESSION['usuario_id'];

    $sql = "SELECT nome,email FROM usuario WHERE id=$id";

    $result = $conn->query($sql);

    $user = $result->fetch_assoc();
?>



<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Perfil</title>
</head>

<body>

    <h2>Bem vindo <?php echo $user['nome']; ?> 👋</h2>

    <p>Email: <?php echo $user['email']; ?></p>

    <a href="../config/logout.php">Sair</a>

</body>
</html>