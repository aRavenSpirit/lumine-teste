<?php
    if (session_status() === PHP_SESSION_NONE) {
        session_set_cookie_params([
            'lifetime' => 0,
            'path' => '/',
            'httponly' => true,
            'samesite' => 'Lax'
        ]);
        session_start();
    }

    // 1. Se não estiver logado, redireciona de forma limpa para o login
    if (!isset($_SESSION['usuario_id'])) {
        header("Location: login.html");
        exit;
    }

    $id_usuario = intval($_SESSION['usuario_id']);

    require_once __DIR__ . "/conexao.php";

    // 2. Verifica se o utilizador existe no banco
    $stmt = $conn->prepare("SELECT id, escolaridade_id FROM usuario WHERE id = ?");
    $stmt->bind_param("i", $id_usuario);
    $stmt->execute();
    $result_check = $stmt->get_result();

    if ($result_check->num_rows === 0) {
        $_SESSION = array();
        session_destroy();
        header("Location: login.html");
        exit;
    }

    $user_data = $result_check->fetch_assoc();
    $stmt->close();

    // 3. Se não tiver escolaridade, encerra a sessão e volta ao login limpo
    if (empty($user_data['escolaridade_id'])) {
        $_SESSION = array();
        session_destroy();
        header("Location: login.html");
        exit;
    }

    $_SESSION['usuario_id'] = $id_usuario;
    $_SESSION['escolaridade_id'] = $user_data['escolaridade_id'];
?>