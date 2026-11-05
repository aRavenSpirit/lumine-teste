<?php
    if (session_status() === PHP_SESSION_NONE) {
        session_start();
    }

    if(!isset($_SESSION['usuario_id'])){
        echo json_encode(["sucesso" => false, "erro" => "Sessão expirada. Faça login novamente."]);
        exit;
    }

    require "conexao.php";
    header("Content-Type: application/json; charset=UTF-8");

    // Recebe os dados do JS
    $data = json_decode(file_get_contents("php://input"), true);

    $id_usuario = $_SESSION['usuario_id'];
    $id_quiz = intval($data['id_quiz']);
    $acertos = intval($data['acertos']);
    $total = intval($data['total']);
    $segundos = intval($data['segundos']);

    // Converte os segundos para o formato TIME do MySQL (00:00:00)
    $tempo_formatado = gmdate("H:i:s", $segundos);

    $sql = "INSERT INTO tentativas (id_quiz, id_usuario, acertos, total_questoes, tempo) 
            VALUES ($id_quiz, $id_usuario, $acertos, $total, '$tempo_formatado')";

    if ($conn->query($sql)) {

        // Retorna o ID da tentativa caso você queira mostrar uma página de resumo depois
        echo json_encode([
            "sucesso" => true, 
            "id_tentativa" => $conn->insert_id
        ]);

    } else {

        echo json_encode([
            "sucesso" => false, 
            "erro" => $conn->error
        ]);
        
    }
?>