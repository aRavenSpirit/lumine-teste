<?php
    $host = "localhost";
    $user = "root";
  //$pass = "";
    $pass = "Home@spSENAI2025!";
    $db   = "luminebd";

    $conn = new mysqli($host, $user, $pass, $db);

    if ($conn->connect_error) {
        die(json_encode(["erro" => "Erro na conexão"]));
    }
?>
