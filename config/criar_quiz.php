<?php
    // ==========================================
    // PARTE DO SCRIPT PHP DE PROVIMENTO DA API
    // ==========================================
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST");
    header("Access-Control-Allow-Headers: Content-Type");

    require __DIR__ . "/conexao.php";

    // TIPOS DE PERGUNTAS
    if (isset($_GET['tipo']) && $_GET['tipo'] == 'tipos_perguntas') {
        $result = $conn->query("SELECT * FROM tipos_perguntas");
        $dados = [];
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
        echo json_encode($dados);
        exit;
    }

    // DIFICULDADE
    if (isset($_GET['tipo']) && $_GET['tipo'] == 'dificuldade') {
        $result = $conn->query("SELECT * FROM dificuldade");
        $dados = [];
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
        echo json_encode($dados);
        exit;
    }

    // MATÉRIA
    if (isset($_GET['tipo']) && $_GET['tipo'] == 'materia') {
        $result = $conn->query("SELECT * FROM materia");
        $dados = [];
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
        echo json_encode($dados);
        exit;
    }

    // CONTEÚDO
    if (isset($_GET['tipo']) && $_GET['tipo'] == 'conteudo') {
        $id = intval($_GET['id_materia']);
        $result = $conn->query("SELECT * FROM conteudo WHERE id_materia = $id");
        $dados = [];
        while ($row = $result->fetch_assoc()) {
            $dados[] = $row;
        }
        echo json_encode($dados);
        exit;
    }

    // CRIAR QUIZ COMPLETO
    if (isset($_GET['tipo']) && $_GET['tipo'] == 'quiz_completo') {
        $data = json_decode(file_get_contents("php://input"), true);

        if (
            empty($data['nome']) ||
            empty($data['dificuldade']) ||
            empty($data['id_conteudo']) ||
            empty($data['perguntas'])
        ) {
            echo json_encode(["erro" => "Dados incompletos no envio"]);
            exit;
        }

        // -------------------------------------------------------------
        // VALIDAÇÃO ANTES DE INSERIR QUALQUER REGISTRO NO BANCO DE DADOS
        // -------------------------------------------------------------
        foreach ($data['perguntas'] as $index => $p) {
            if (empty(trim($p['descricao'] ?? '')) || empty($p['tipo'])) {
                echo json_encode(["erro" => "A Pergunta #" . ($index + 1) . " está inválida ou sem título."]);
                exit;
            }

            $id_tipo = intval($p['tipo']);

            if (in_array($id_tipo, [1, 4, 5, 6])) {
                if (empty($p['respostas']) || count($p['respostas']) === 0) {
                    echo json_encode(["erro" => "A Pergunta #" . ($index + 1) . " não possui alternativas."]);
                    exit;
                }

                foreach ($p['respostas'] as $rIndex => $r) {
                    if (empty(trim($r['descricao'] ?? ''))) {
                        echo json_encode(["erro" => "A Pergunta #" . ($index + 1) . " possui a alternativa #" . ($rIndex + 1) . " vazia."]);
                        exit;
                    }

                    if ($id_tipo == 6 && empty(trim($r['texto_alvo'] ?? ''))) {
                        echo json_encode(["erro" => "A Pergunta #" . ($index + 1) . " possui o texto alvo #" . ($rIndex + 1) . " vazio."]);
                        exit;
                    }
                }
            }
        }

        $nome = $conn->real_escape_string($data['nome']);
        $id_dificuldade = intval($data['dificuldade']);
        $id_conteudo = intval($data['id_conteudo']);

        $sqlQuiz = "INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('$nome', $id_dificuldade, $id_conteudo)";
        if (!$conn->query($sqlQuiz)) {
            echo json_encode(["erro" => "Erro ao inserir quiz: " . $conn->error]);
            exit;
        }

        $quiz_id = $conn->insert_id;

        foreach ($data['perguntas'] as $p) {
            $desc = $conn->real_escape_string($p['descricao']);
            $id_tipo = intval($p['tipo']);

            $sqlPergunta = "INSERT INTO perguntas (descricao, id_quiz, id_tipo) VALUES ('$desc', $quiz_id, $id_tipo)";
            if (!$conn->query($sqlPergunta)) {
                echo json_encode(["erro" => "Erro ao inserir pergunta: " . $conn->error]);
                exit;
            }

            $pergunta_id = $conn->insert_id;

            // MULTIPLA (1 correta) e VÁRIAS
            if ($id_tipo == 1 || $id_tipo == 4) {
                foreach ($p['respostas'] as $r) {
                    $rdesc = $conn->real_escape_string($r['descricao']);
                    $certo = !empty($r['certo']) ? 1 : 0;
                    $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$rdesc', $certo, $pergunta_id)");
                }
            }

            // TEXTO
            if ($id_tipo == 2) {
                $resp = $conn->real_escape_string($p['resposta_texto']);
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$resp', 1, $pergunta_id)");
            }

            // VERDADEIRO/FALSO
            if ($id_tipo == 3) {
                $valor = $p['vf'] ? 'Verdadeiro' : 'Falso';
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$valor', 1, $pergunta_id)");
            }

            // ORDENAR / DRAG AND DROP
            if ($id_tipo == 5 || $id_tipo == 6) {
                $posicao = 1;

                foreach ($p['respostas'] as $r) {
                    $descItem = $conn->real_escape_string($r['descricao']);
                    $textoAlvo = '';

                    if ($id_tipo == 6 && isset($r['texto_alvo'])) {
                        $textoAlvo = $conn->real_escape_string($r['texto_alvo']);
                    }

                    $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta, ordem, texto_alvo) 
                                  VALUES ('$descItem', 1, $pergunta_id, $posicao, '$textoAlvo')");
                    $posicao++;
                }
            }
        }

        echo json_encode(["mensagem" => "Quiz criado com sucesso!"]);
        exit;
    }

    $conn->close();
?>