<?php
    require "conexao.php";
    header("Content-Type: application/json; charset=UTF-8");

    error_reporting(0);
    ini_set('display_errors', 0);

    $response = [
        "cards" => ["usuarios" => 0, "quizzes" => 0, "avaliacoes" => 0],
        "detalhes" => ["usuários" => [], "quizzes" => [], "avaliacoes" => []],
        "graficoEscolaridade" => ["labels" => [], "valores" => []],
        "graficoSemana" => array_fill(0, 7, 0)
    ];

    try {
        // Totais para os Cards
        $resUser = $conn->query("SELECT COUNT(*) as total FROM usuario");
        $response["cards"]["usuarios"] = (int)$resUser->fetch_assoc()['total'];

        $resQuiz = $conn->query("SELECT COUNT(*) as total FROM quizzes");
        $response["cards"]["quizzes"] = (int)$resQuiz->fetch_assoc()['total'];

        // Detalhes Usuários
        $sqlDetUser = "SELECT u.id, u.nome, u.email, e.nome_escolaridade 
                    FROM usuario u 
                    LEFT JOIN escolaridade e ON u.escolaridade_id = e.id_escolaridade";
        $resDetUser = $conn->query($sqlDetUser);
        while($row = $resDetUser->fetch_assoc()) $response["detalhes"]["usuários"][] = $row;

        // DETALHES QUIZZES ATUALIZADO (com COUNT e Dificuldade)
        $sqlDetQuiz = "SELECT 
                        q.id, 
                        q.nome as nome_quiz, 
                        m.nome_materia, 
                        c.nome as nome_conteudo,
                        d.dificuldade as nome_dificuldade,
                        (SELECT COUNT(*) FROM perguntas WHERE id_quiz = q.id) as total_perguntas
                    FROM quizzes q
                    JOIN conteudo c ON q.id_conteudo = c.id
                    JOIN materia m ON c.id_materia = m.id
                    JOIN dificuldade d ON q.id_dificuldade = d.id";
        
        $resDetQuiz = $conn->query($sqlDetQuiz);
        while($row = $resDetQuiz->fetch_assoc()) $response["detalhes"]["quizzes"][] = $row;

        // Gráficos (Escolaridade e Semana - mantidos)
        $sqlEsc = "SELECT e.nome_escolaridade, COUNT(u.id) as qtd FROM escolaridade e LEFT JOIN usuario u ON e.id_escolaridade = u.escolaridade_id GROUP BY e.id_escolaridade";
        $resEsc = $conn->query($sqlEsc);
        while($row = $resEsc->fetch_assoc()){
            $response["graficoEscolaridade"]["labels"][] = $row['nome_escolaridade'];
            $response["graficoEscolaridade"]["valores"][] = (int)$row['qtd'];
        }
        $resSem = $conn->query("SELECT DAYOFWEEK(criacao) as dia, COUNT(*) as qtd FROM usuario GROUP BY dia");
        while($row = $resSem->fetch_assoc()) $response["graficoSemana"][(int)$row['dia'] - 1] = (int)$row['qtd'];

        // =========================================================================
        // BUSCA DE DADOS BASEADA NA NOVA TABELA DE AVALIAÇÕES (admin_data.php)
        // =========================================================================
        
        // 1. Alimenta o card superior do Dashboard com o total real de avaliações
        $resAval = $conn->query("SELECT COUNT(*) as total FROM avaliacoes");
        $response["cards"]["avaliacoes"] = (int)$resAval->fetch_assoc()['total'];

        // 2. Busca detalhada com os JOINs corretos para listar dentro da Modal
        $sqlDetAval = "SELECT 
        a.id,
        a.nota,
        a.data_envio,
        u.nome AS nome_usuario,
        q.nome AS nome_quiz,
        m.nome_materia,
        c.nome AS nome_conteudo
        FROM avaliacoes a
        LEFT JOIN usuario u ON a.id_usuario = u.id
        LEFT JOIN quizzes q ON a.id_quiz = q.id
        LEFT JOIN conteudo c ON q.id_conteudo = c.id
        LEFT JOIN materia m ON c.id_materia = m.id
        ORDER BY a.data_envio DESC";

        // =========================================================================
        // A SOLUÇÃO ESTÁ AQUI: O código abaixo faltava para executar a busca!
        // =========================================================================
        $resDetAval = $conn->query($sqlDetAval);
        if ($resDetAval) {
            while($row = $resDetAval->fetch_assoc()) {
                $response["detalhes"]["avaliacoes"][] = $row;
            }
        }
        // =========================================================================

    } catch (Exception $e) {}

    echo json_encode($response);
?>