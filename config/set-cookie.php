<?php
    // Define que a resposta é um JSON para o JavaScript entender
    header('Content-Type: application/json');

    // Captura a ação vinda do JS
    $action = $_GET['action'] ?? '';

    $nomeCookie = "user_consent";
    $expiracao = time() + (30 * 24 * 60 * 60); // 30 dias

    if ($action === 'accept') {
        // Cria o cookie de verdade no navegador
        setcookie($nomeCookie, 'accepted', [
            'expires' => $expiracao,
            'path' => '/',
            'secure' => false, // Mude para true apenas se usar HTTPS
            'httponly' => true, // Segurança contra ataques XSS
            'samesite' => 'Lax'
        ]);
        
        echo json_encode(['status' => 'success', 'choice' => 'accepted']);
    } 
    elseif ($action === 'decline') {
        // Se recusar, matamos o cookie (tempo no passado)
        setcookie($nomeCookie, 'declined', [
            'expires' => time() - 3600, 
            'path' => '/'
        ]);
        
        echo json_encode(['status' => 'success', 'choice' => 'declined']);
    } else {
        // Caso o arquivo seja acessado sem ação
        echo json_encode(['status' => 'error', 'message' => 'Nenhuma acao enviada.']);
    }
?>