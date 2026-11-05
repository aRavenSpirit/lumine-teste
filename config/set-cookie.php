<?php
    session_start();
    header('Content-Type: application/json');

    $action = $_GET['action'] ?? '';
    $nomeCookie = "user_consent";

    // Verifica se o utilizador está logado (exemplo usando $_SESSION['user_id'])
    $userId = $_SESSION['user_id'] ?? null;

    if ($action === 'accept') {
        // 1. Guarda a escolha na Sessão/BD associada a ESTE utilizador
        $_SESSION['user_consent'] = 'accepted';
        
        // (Opcional) Se tiver tabela no banco de dados:
        // $pdo->prepare("UPDATE usuarios SET cookie_consent = 'accepted' WHERE id = ?")->execute([$userId]);

        // 2. Define o cookie local por 30 dias
        setcookie($nomeCookie, 'accepted', [
            'expires'  => time() + (30 * 24 * 60 * 60),
            'path'     => '/',
            'secure'   => false,
            'httponly' => false,
            'samesite' => 'Lax'
        ]);
        
        echo json_encode(['status' => 'success', 'choice' => 'accepted']);

    } elseif ($action === 'decline') {
        // Se recusar, limpa da sessão e destrói qualquer cookie anterior[cite: 3]
        unset($_SESSION['user_consent']);
        
        setcookie($nomeCookie, '', [
            'expires' => time() - 3600, 
            'path'    => '/'
        ]);
        
        echo json_encode(['status' => 'success', 'choice' => 'declined']);

    } else {
        echo json_encode(['status' => 'error', 'message' => 'Acao invalida']);
    }
?>