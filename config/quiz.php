<?php
    require "conexao.php";
    if (isset($_GET['tipo']) && $_GET['tipo'] == 'listar_quizzes') {

        $result = $conn->query("
            SELECT 
                q.id,
                q.nome,
                d.dificuldade,
                c.nome AS conteudo,
                m.nome_materia
            FROM quizzes q
            JOIN dificuldade d ON q.id_dificuldade = d.id
            JOIN conteudo c ON q.id_conteudo = c.id
            JOIN materia m ON c.id_materia = m.id
            ORDER BY q.id DESC
        ");

        $dados = [];

        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }

        echo json_encode($dados);
        exit;
    }
?>