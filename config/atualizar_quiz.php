<?php
    header("Content-Type: application/json; charset=UTF-8");
    require __DIR__ . "/conexao.php";

    $data = json_decode(file_get_contents("php://input"), true);
    $id_quiz = intval($data['id_quiz']);

    if (!$id_quiz) {
        echo json_encode(["status" => false, "erro" => "ID do quiz inválido"]);
        exit;
    }

    // Trava de segurança no backend: Impede salvar quiz sem perguntas
    if (empty($data['perguntas']) || count($data['perguntas']) === 0) {
        echo json_encode(["status" => false, "erro" => "Impossível salvar! O quiz precisa ter pelo menos 1 pergunta."]);
        exit;
    }

    // Inicia transação para garantir consistência de dados
    $conn->begin_transaction();

    try {
        // 1. Atualiza Dados Básicos
        $nome = $conn->real_escape_string($data['nome']);
        $id_dif = intval($data['id_dificuldade']);
        $id_cont = intval($data['id_conteudo']);

        if (empty(trim($nome))) {
            throw new Exception("O nome do quiz não pode estar vazio.");
        }

        $camposParaAtualizar = ["nome = '$nome'"];

        if ($id_dif > 0) {
            $camposParaAtualizar[] = "id_dificuldade = $id_dif";
        }

        if ($id_cont > 0) {
            $camposParaAtualizar[] = "id_conteudo = $id_cont";
        }

        $sql_update = "UPDATE quizzes SET " . implode(", ", $camposParaAtualizar) . " WHERE id = $id_quiz";
        $conn->query($sql_update);

        // 2. Limpeza do histórico antigo de perguntas e respostas para reinserção
        $resAntigas = $conn->query("SELECT id FROM perguntas WHERE id_quiz = $id_quiz");
        while($row = $resAntigas->fetch_assoc()){
            $id_p_antiga = $row['id'];
            $conn->query("DELETE FROM respostas WHERE id_pergunta = $id_p_antiga");
        }

        $conn->query("DELETE FROM perguntas WHERE id_quiz = $id_quiz");

        // 3. Insere o novo ecossistema de perguntas atualizado
        foreach ($data['perguntas'] as $p) {
            $desc = $conn->real_escape_string($p['descricao']);
            $id_tipo = intval($p['tipo']);

            $conn->query("INSERT INTO perguntas (descricao, id_quiz, id_tipo) VALUES ('$desc', $id_quiz, $id_tipo)");
            $pergunta_id = $conn->insert_id;

            // MULTIPLA ESCOLHA (1 e 4)
            if ($id_tipo == 1 || $id_tipo == 4) {
                foreach ($p['respostas'] as $r) {
                    if (empty(trim($r['descricao']))) continue;
                    $rdesc = $conn->real_escape_string($r['descricao']);
                    $certo = !empty($r['certo']) ? 1 : 0;
                    $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES ('$rdesc', $certo, $pergunta_id, 0)");
                }
            }
            
            // TEXTO / DISCURSIVA (2)
            elseif ($id_tipo == 2) {
                $resp = $conn->real_escape_string($p['resposta_texto']);
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES ('$resp', 1, $pergunta_id, 0)");
            }
            // VERDADEIRO OU FALSO (3)
            elseif ($id_tipo == 3) {
                $valor = $p['vf'] ? 'Verdadeiro' : 'Falso';
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES ('$valor', 1, $pergunta_id, 0)");
            }
            // ORDENAR / DRAG AND DROP (5 e 6)
            elseif ($id_tipo == 5 || $id_tipo == 6) {
                $posicao = 1;
                foreach ($p['respostas'] as $r) {
                    if (empty(trim($r['descricao']))) continue;
                    $rdesc = $conn->real_escape_string($r['descricao']);
                    
                    $texto_alvo = (!empty($r['texto_alvo'])) ? "'" . $conn->real_escape_string($r['texto_alvo']) . "'" : "NULL";
                    
                    $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta, ordem, texto_alvo) VALUES ('$rdesc', 1, $pergunta_id, $posicao, $texto_alvo)");
                    $posicao++;
                }
            }
        }

        $conn->commit();
        echo json_encode(["status" => true, "mensagem" => "Quiz atualizado com sucesso!"]);

    } catch (Exception $e) {
        $conn->rollback();
        echo json_encode(["status" => false, "erro" => "Erro ao atualizar: " . $e->getMessage()]);
    }
?>