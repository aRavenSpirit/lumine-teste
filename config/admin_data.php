<?php
require "conexao.php";
header("Content-Type: application/json; charset=UTF-8");

// Desativa exibição de erros para não quebrar o JSON, mas registra internamente
error_reporting(0);
ini_set('display_errors', 0);

$response = [
    "cards" => ["usuarios" => 0, "quizzes" => 0, "avaliacoes" => 0],
    "detalhes" => ["usuários" => [], "quizzes" => [], "avaliacoes" => []],
    "graficoEscolaridade" => ["labels" => [], "valores" => []],
    "graficoSemana" => array_fill(0, 7, 0)
];

try {
    // 1. Totais
    $resUser = $conn->query("SELECT COUNT(*) as total FROM usuario");
    if($resUser) $response["cards"]["usuarios"] = (int)$resUser->fetch_assoc()['total'];

    $resQuiz = $conn->query("SELECT COUNT(*) as total FROM quizzes");
    if($resQuiz) $response["cards"]["quizzes"] = (int)$resQuiz->fetch_assoc()['total'];

    // 2. Detalhes Usuários
    $sqlDetUser = "SELECT u.id, u.nome, u.email, e.nome_escolaridade 
                   FROM usuario u 
                   LEFT JOIN escolaridade e ON u.escolaridade_id = e.id_escolaridade";
    $resDetUser = $conn->query($sqlDetUser);
    while($row = @$resDetUser->fetch_assoc()) $response["detalhes"]["usuários"][] = $row;

    // 3. Detalhes Quizzes
    $sqlDetQuiz = "SELECT q.id, q.nome as nome_quiz, m.nome_materia, c.nome as nome_conteudo 
                   FROM quizzes q
                   LEFT JOIN conteudo c ON q.id_conteudo = c.id
                   LEFT JOIN materia m ON c.id_materia = m.id";
    $resDetQuiz = $conn->query($sqlDetQuiz);
    while($row = @$resDetQuiz->fetch_assoc()) $response["detalhes"]["quizzes"][] = $row;

    // 4. Gráfico Escolaridade
    $sqlEsc = "SELECT e.nome_escolaridade, COUNT(u.id) as qtd 
               FROM escolaridade e 
               LEFT JOIN usuario u ON e.id_escolaridade = u.escolaridade_id 
               GROUP BY e.id_escolaridade";
    $resEsc = $conn->query($sqlEsc);
    while($row = @$resEsc->fetch_assoc()){
        $response["graficoEscolaridade"]["labels"][] = $row['nome_escolaridade'];
        $response["graficoEscolaridade"]["valores"][] = (int)$row['qtd'];
    }

    // 5. Gráfico Semana
    $resSem = $conn->query("SELECT DAYOFWEEK(criacao) as dia, COUNT(*) as qtd FROM usuario GROUP BY dia");
    while($row = @$resSem->fetch_assoc()){
        $index = (int)$row['dia'] - 1;
        if($index >= 0) $response["graficoSemana"][$index] = (int)$row['qtd'];
    }

} catch (Exception $e) {}

echo json_encode($response);