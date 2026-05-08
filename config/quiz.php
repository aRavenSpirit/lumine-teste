<?php
    require "conexao.php";
    header("Content-Type: application/json; charset=UTF-8");

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

    if (isset($_GET['tipo']) && $_GET['tipo'] == 'detalhes_quiz') {
        $id_quiz = intval($_GET['id']);

        // ALTERAÇÃO AQUI: c.nome AS conteudo (para o JS encontrar)
        $sql_quiz = "SELECT q.*, m.nome_materia, c.nome as conteudo 
                     FROM quizzes q 
                     JOIN conteudo c ON q.id_conteudo = c.id 
                     JOIN materia m ON c.id_materia = m.id 
                     WHERE q.id = $id_quiz";
        
        $res_quiz = $conn->query($sql_quiz);
        $dados = $res_quiz->fetch_assoc();

        if ($dados) {
            $sql_perguntas = "SELECT id, descricao, id_tipo FROM perguntas WHERE id_quiz = $id_quiz";
            $res_perguntas = $conn->query($sql_perguntas);
            
            $perguntas = [];
            while ($p = $res_perguntas->fetch_assoc()) {
                $id_p = $p['id'];
                $sql_resp = "SELECT id, descricao, certo FROM respostas WHERE id_pergunta = $id_p";
                $res_resp = $conn->query($sql_resp);
                
                $respostas = [];
                while ($r = $res_resp->fetch_assoc()) {
                    $respostas[] = $r;
                }
                
                $p['respostas'] = $respostas;
                $perguntas[] = $p;
            }
            $dados['perguntas'] = $perguntas;
        }

        echo json_encode($dados);
        exit;
    }
?>