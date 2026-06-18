<?php
    // Configura o cookie para ser válido em todas as pastas do projeto
    session_set_cookie_params([
        'lifetime' => 0,
        'path' => '/',
        'httponly' => true,
        'samesite' => 'Lax'
    ]);
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    // =========================================================================
    // VERIFICA SE O USUÁRIO ESTÁ LOGADO
    // =========================================================================
    if (!isset($_SESSION['usuario_id'])) {

        header("Location: login.html");
        exit;

    }
    // Garante que o ID armazenado na sessão seja sempre inteiro
    $id_usuario = intval($_SESSION['usuario_id']);

    // =========================================================================
    // CONEXÃO COM BANCO DE DADOS
    // =========================================================================

    require_once __DIR__ . "/conexao.php";

    // =========================================================================
    // SEGURANÇA: VERIFICA SE O USUÁRIO AINDA EXISTE NO BANCO
    // =========================================================================

    $stmt = $conn->prepare("
        SELECT id 
        FROM usuario 
        WHERE id = ?
    ");

    $stmt->bind_param("i", $id_usuario);

    $stmt->execute();

    $result_check = $stmt->get_result();

    if ($result_check->num_rows === 0) {
        // Usuário não existe mais no banco, encerra a sessão
        $_SESSION = array();
        // Remove o cookie da sessão
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
        header("Location: login.html");
        exit;
    }

    $stmt->close();
    // =========================================================================
    // GARANTE QUE A SESSÃO CONTINUE CONTENDO O ID LIMPO DO USUÁRIO
    // =========================================================================
    $_SESSION['usuario_id'] = $id_usuario;
?>