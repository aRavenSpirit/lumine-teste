<?php
header("Content-Type: application/json; charset=UTF-8");
require __DIR__ . "/conexao.php";

$data = json_decode(file_get_contents("php://input"), true);
$id_quiz = intval($data['id_quiz']);

if (!$id_quiz) {
    echo json_encode(["status" => false, "erro" => "ID do quiz inválido"]);
    exit;
}

// Inicia transação para garantir que não salve nada "pela metade"
$conn->begin_transaction();

try {
    // 1. Atualiza Dados Básicos
    $nome = $conn->real_escape_string($data['nome']);
    $id_dif = intval($data['id_dificuldade']);
    $id_cont = intval($data['id_conteudo']);

    $conn->query("UPDATE quizzes SET nome = '$nome', id_dificuldade = $id_dif, id_conteudo = $id_cont WHERE id = $id_quiz");

    // 2. Lógica de Perguntas: Para simplificar, vamos remover as perguntas antigas e inserir o novo array
    // (Isso evita ter que comparar pergunta por pergunta o que mudou)
    
    // Primeiro, pegamos os IDs das perguntas antigas para limpar as respostas delas
    $resAntigas = $conn->query("SELECT id FROM perguntas WHERE id_quiz = $id_quiz");
    while($row = $resAntigas->fetch_assoc()){
        $id_p_antiga = $row['id'];
        $conn->query("DELETE FROM respostas WHERE id_pergunta = $id_p_antiga");
    }
    $conn->query("DELETE FROM perguntas WHERE id_quiz = $id_quiz");

    // 3. Insere o novo array de perguntas (Reutilizando sua lógica de criação)
    foreach ($data['perguntas'] as $p) {
        $desc = $conn->real_escape_string($p['descricao']);
        $id_tipo = intval($p['tipo']);

        $conn->query("INSERT INTO perguntas (descricao, id_quiz, id_tipo) VALUES ('$desc', $id_quiz, $id_tipo)");
        $pergunta_id = $conn->insert_id;

        // MULTIPLA (1 e 4)
        if ($id_tipo == 1 || $id_tipo == 4) {
            foreach ($p['respostas'] as $r) {
                if (empty($r['descricao'])) continue;
                $rdesc = $conn->real_escape_string($r['descricao']);
                $certo = !empty($r['certo']) ? 1 : 0;
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$rdesc', $certo, $pergunta_id)");
            }
        }
        // TEXTO (2)
        elseif ($id_tipo == 2) {
            $resp = $conn->real_escape_string($p['resposta_texto']);
            $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$resp', 1, $pergunta_id)");
        }
        // VF (3)
        elseif ($id_tipo == 3) {
            $valor = $p['vf'] ? 'Verdadeiro' : 'Falso';
            $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$valor', 1, $pergunta_id)");
        }
        // ORDENAR / DRAG (5 e 6)
        elseif ($id_tipo == 5 || $id_tipo == 6) {
            $ordem = 1;
            foreach ($p['respostas'] as $r) {
                if (empty($r['descricao'])) continue;
                $rdesc = $conn->real_escape_string($r['descricao']);
                // Aqui usamos o campo 'certo' para guardar a ordem numérica
                $conn->query("INSERT INTO respostas (descricao, certo, id_pergunta) VALUES ('$rdesc', $ordem, $pergunta_id)");
                $ordem++;
            }
        }
    }

    $conn->commit(); // Finaliza e salva no banco
    echo json_encode(["status" => true, "mensagem" => "Quiz atualizado com sucesso!"]);

} catch (Exception $e) {
    $conn->rollback(); // Deu erro? Volta o banco ao que era antes
    echo json_encode(["status" => false, "erro" => "Erro ao atualizar: " . $e->getMessage()]);
}