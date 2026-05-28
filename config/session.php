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

    // =========================================================================
    // SEGURANÇA BÁSICA: Verifica em tempo real se o usuário ainda existe no banco
    // =========================================================================
    require_once "conexao.php"; // Certifique-se de que o caminho para o arquivo de conexão está correto

    $id_verificacao = intval($_SESSION['usuario_id']);
    
    // Altere 'usuario' e 'id' para os nomes exatos da sua tabela e coluna de banco de dados
    $sql_check = "SELECT id FROM usuario WHERE id = $id_verificacao";
    $result_check = $conn->query($sql_check);

    if (!$result_check || $result_check->num_rows === 0) {
        // O usuário foi deletado pelo ADM! Limpa toda a sessão e cookies imediatamente
        $_SESSION = array();

        if (ini_get("session.use_cookies")) {
            $params = session_get_cookie_params();
            setcookie(session_name(), '', time() - 42000,
                $params["path"], $params["domain"],
                $params["secure"], $params["httponly"]
            );
        }

        session_destroy();

        // Chuta o usuário excluído de volta para a tela de login
        header("Location: login.html"); 
        exit;
    }
    // =========================================================================
?>