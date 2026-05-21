<?php
    $host = "localhost";
    $user = "root";
<<<<<<< HEAD
    $pass = ""; //Home@spSENAI2025!
=======
    $pass = "Home@spSENAI2025!"; //Home@spSENAI2025!
>>>>>>> 094ac4be4c9f9cfb5b6c2a5dfee2aef0dd559a30
    $db   = "luminebd";

    $conn = new mysqli($host, $user, $pass, $db);

    if ($conn->connect_error) {
        die(json_encode(["erro" => "Erro na conexão"]));
    }
?>
