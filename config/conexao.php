<?php
    $host = "localhost";
    $user = "root";
    $pass = "Home@spSENAI2025!"; 
    //$pass = "Mathws02.10";
   // $pass = "Home@spSENAI2025!";
    $db   = "luminebd";

    $conn = new mysqli($host, $user, $pass, $db);

    if ($conn->connect_error) {
        die(json_encode(["erro" => "Erro na conexão"]));
    }
?>
