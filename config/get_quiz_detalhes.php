<?php
    header("Content-Type: application/json; charset=UTF-8");
    require __DIR__ . "/conexao.php";

    $id = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);

    if (!$id) {
        echo json_encode(["status" => false, "erro" => "ID do Quiz inválido ou não fornecido."]);
        exit;
    }

    // 1. Busca dados do Quiz com IDs necessários para edição e renderização
    $sqlQuiz = "SELECT 
                    q.id, 
                    q.nome, 
                    q.id_dificuldade, 
                    q.id_conteudo, 
                    q.imagem_quiz,
                    d.dificuldade, 
                    m.id AS id_materia,
                    m.nome_materia, 
                    c.nome AS conteudo 
                FROM quizzes q
                INNER JOIN dificuldade d ON q.id_dificuldade = d.id
                INNER JOIN conteudo c ON q.id_conteudo = c.id
                INNER JOIN materia m ON c.id_materia = m.id
                WHERE q.id = ?";

    $stmtQuiz = $conn->prepare($sqlQuiz);
    $stmtQuiz->bind_param("i", $id);
    $stmtQuiz->execute();
    $resQuiz = $stmtQuiz->get_result();
    $quiz = $resQuiz->fetch_assoc();

    if (!$quiz) {
        echo json_encode(["status" => false, "erro" => "Quiz não encontrado."]);
        exit;
    }

    // 2. Busca Perguntas associadas ao Quiz
    $sqlPerguntas = "SELECT id, id_quiz, id_tipo, descricao, imagem_perguntas 
                    FROM perguntas 
                    WHERE id_quiz = ? 
                    ORDER BY id ASC";

    $stmtPerguntas = $conn->prepare($sqlPerguntas);
    $stmtPerguntas->bind_param("i", $id);
    $stmtPerguntas->execute();
    $resPerguntas = $stmtPerguntas->get_result();

    $quiz['perguntas'] = [];

    while ($p = $resPerguntas->fetch_assoc()) {
        $id_p = $p['id'];
        
        // 3. Busca Respostas de cada Pergunta
        $sqlRespostas = "SELECT id, id_pergunta, descricao, certo, ordem, texto_alvo 
                        FROM respostas 
                        WHERE id_pergunta = ? 
                        ORDER BY ordem ASC, id ASC";

        $stmtRespostas = $conn->prepare($sqlRespostas);
        $stmtRespostas->bind_param("i", $id_p);
        $stmtRespostas->execute();
        $resRespostas = $stmtRespostas->get_result();
        
        $p['respostas'] = [];
        while ($r = $resRespostas->fetch_assoc()) {
            // Converte o campo 'certo' do MySQL (tinyint/boolean) para booleano nativo do PHP
            $r['certo'] = (bool)$r['certo'];
            $p['respostas'][] = $r;
        }
        
        $quiz['perguntas'][] = $p;
    }

    // Retorna o Quiz estruturado em JSON
    echo json_encode($quiz, JSON_UNESCAPED_UNICODE);
?>