<?php
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    $_SESSION = array();

    if (ini_get("session.use_cookies")) {
        $params = session_get_cookie_params();
        setcookie(
            session_name(),
            '',
            time() - 42000,
            $params["path"],
            $params["domain"],
            $params["secure"],
            $params["httponly"]
        );
    }

    session_destroy();

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