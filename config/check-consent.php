<?php
    session_start();
    header('Content-Type: application/json');

    // Se o utilizador logado tem o consentimento salvo na sessão/BD
    $hasConsent = isset($_SESSION['user_consent']) && $_SESSION['user_consent'] === 'accepted';

    echo json_encode(['hasConsent' => $hasConsent]);
?>