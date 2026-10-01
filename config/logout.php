<?php
    session_start();
    session_unset(); // Limpa as variáveis
    session_destroy(); // Destrói a sessão
    header("Location: ../public/login.html");
    exit;
?>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <script>
        // Limpa as preferências armazenadas localmente no navegador ao fazer logout
        localStorage.removeItem("theme");
    </script>
</head>
<body>
    <script>
        window.location.href = "../public/login.html";
    </script>
</body>
</html>