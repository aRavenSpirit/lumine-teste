<?php
header("Content-Type: application/json; charset=UTF-8");
require __DIR__ . "/conexao.php";

$data = json_decode(file_get_contents("php://input"), true);
$id_quiz = isset($data['id_quiz']) ? intval($data['id_quiz']) : 0;

if (!$id_quiz) {
    echo json_encode(["status" => false, "erro" => "ID do quiz inválido"]);
    exit;
}

// Inicia a transação MySQL para garantir atomicidade nos updates
$conn->begin_transaction();

try {
    // 1. Atualização dos Dados Principais do Quiz
    $nome = isset($data['nome']) ? trim($data['nome']) : '';
    $id_dif = isset($data['id_dificuldade']) ? intval($data['id_dificuldade']) : 0;
    $id_cont = isset($data['id_conteudo']) ? intval($data['id_conteudo']) : 0;
    $imagem_quiz = isset($data['imagem_quiz']) ? $data['imagem_quiz'] : null;

    if (empty($nome)) {
        throw new Exception("O nome do quiz não pode estar vazio.");
    }

    $camposParaAtualizar = ["nome = ?"];
    $tipos = "s";
    $valores = [&$nome];

    if ($id_dif > 0) {
        $camposParaAtualizar[] = "id_dificuldade = ?";
        $tipos .= "i";
        $valores[] = &$id_dif;
    }
    if ($id_cont > 0) {
        $camposParaAtualizar[] = "id_conteudo = ?";
        $tipos .= "i";
        $valores[] = &$id_cont;
    }
    if ($imagem_quiz !== null) {
        $camposParaAtualizar[] = "imagem_quiz = ?";
        $tipos .= "s";
        $valores[] = &$imagem_quiz;
    }

    $tipos .= "i";
    $valores[] = &$id_quiz;

    $sql_update = "UPDATE quizzes SET " . implode(", ", $camposParaAtualizar) . " WHERE id = ?";
    $stmt = $conn->prepare($sql_update);
    call_user_func_array([$stmt, 'bind_param'], array_merge([$tipos], $valores));
    $stmt->execute();
    $stmt->close();

    // 2. Limpeza do histórico antigo de perguntas e respostas para reinserção limpa
    $resAntigas = $conn->query("SELECT id FROM perguntas WHERE id_quiz = $id_quiz");
    while ($row = $resAntigas->fetch_assoc()) {
        $id_p_antiga = $row['id'];
        $conn->query("DELETE FROM respostas WHERE id_pergunta = $id_p_antiga");
    }
    $conn->query("DELETE FROM perguntas WHERE id_quiz = $id_quiz");

    // 3. Insere o novo conjunto de perguntas e respostas
    if (isset($data['perguntas']) && is_array($data['perguntas'])) {
        foreach ($data['perguntas'] as $p) {
            $desc = trim($p['descricao']);
            $id_tipo = intval($p['tipo']);
            $img_pergunta = isset($p['imagem_perguntas']) ? $p['imagem_perguntas'] : null;

            $stmtP = $conn->prepare("INSERT INTO perguntas (descricao, id_quiz, id_tipo, imagem_perguntas) VALUES (?, ?, ?, ?)");
            $stmtP->bind_param("siis", $desc, $id_quiz, $id_tipo, $img_pergunta);
            $stmtP->execute();
            $pergunta_id = $stmtP->insert_id;
            $stmtP->close();

            // MULTIPLA ESCOLHA (1 e 4)
            if ($id_tipo == 1 || $id_tipo == 4) {
                $stmtR = $conn->prepare("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES (?, ?, ?, 0)");
                foreach ($p['respostas'] as $r) {
                    if (empty($r['descricao'])) continue;
                    $rdesc = trim($r['descricao']);
                    $certo = !empty($r['certo']) ? 1 : 0;
                    $stmtR->bind_param("sii", $rdesc, $certo, $pergunta_id);
                    $stmtR->execute();
                }
                $stmtR->close();
            }
            // TEXTO / DISCURSIVA (2)
            elseif ($id_tipo == 2) {
                $resp = trim($p['resposta_texto']);
                $stmtR = $conn->prepare("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES (?, 1, ?, 0)");
                $stmtR->bind_param("si", $resp, $pergunta_id);
                $stmtR->execute();
                $stmtR->close();
            }
            // VERDADEIRO OU FALSO (3)
            elseif ($id_tipo == 3) {
                $valor = $p['vf'] ? 'Verdadeiro' : 'Falso';
                $stmtR = $conn->prepare("INSERT INTO respostas (descricao, certo, id_pergunta, ordem) VALUES (?, 1, ?, 0)");
                $stmtR->bind_param("si", $valor, $pergunta_id);
                $stmtR->execute();
                $stmtR->close();
            }
            // ORDENAR / DRAG AND DROP (5 e 6)
            elseif ($id_tipo == 5 || $id_tipo == 6) {
                $posicao = 1;
                $stmtR = $conn->prepare("INSERT INTO respostas (descricao, certo, id_pergunta, ordem, texto_alvo) VALUES (?, 1, ?, ?, ?)");
                foreach ($p['respostas'] as $r) {
                    if (empty($r['descricao'])) continue;
                    $rdesc = trim($r['descricao']);
                    $texto_alvo = !empty($r['texto_alvo']) ? trim($r['texto_alvo']) : null;
                    
                    $stmtR->bind_param("siis", $rdesc, $pergunta_id, $posicao, $texto_alvo);
                    $stmtR->execute();
                    $posicao++;
                }
                $stmtR->close();
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