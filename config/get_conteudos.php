<?php
require "../config/conexao.php";

// Verifica se o ID foi passado
if (isset($_GET['id_materia'])) {
    $id_materia = intval($_GET['id_materia']);

    // Prepara a consulta para evitar SQL Injection
    $sql = "SELECT id, nome FROM conteudo WHERE id_materia = $id_materia ORDER BY nome ASC";
    $result = $conn->query($sql);

    $conteudos = [];

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            $conteudos[] = $row;
        }
    }

    // Retorna os dados em formato JSON para o JavaScript
    header('Content-Type: application/json');
    echo json_encode($conteudos);
} else {
    echo json_encode(["erro" => "ID da materia não fornecido"]);
}
?>