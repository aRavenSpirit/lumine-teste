<?php

    // Configura o cookie para ser válido em todas as pastas do seu projeto
    session_set_cookie_params(0, '/');

    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    if(!isset($_SESSION['usuario_id'])){
        // Ajuste o caminho para garantir que ele encontre o login.html
        header("Location: login.html"); 
        exit;
    }
?>