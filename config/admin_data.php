<?php
    require "conexao.php";
    header("Content-Type: application/json");

    // 1. Contabilização dos Cards
    $totalUsuarios = $conn->query("SELECT COUNT(*) as total FROM usuario")->fetch_assoc()['total'];
    $totalQuizzes = $conn->query("SELECT COUNT(*) as total FROM quizzes")->fetch_assoc()['total'];
    // Se você ainda não tiver tabela de avaliações, retornamos 0 por enquanto
    $totalAvaliacoes = 0; 

    // 2. Gráfico de Escolaridade
    $sqlEscolaridade = "SELECT e.nome_escolaridade, COUNT(u.id) as qtd 
                        FROM escolaridade e 
                        LEFT JOIN usuario u ON e.id_escolaridade = u.escolaridade_id 
                        GROUP BY e.id_escolaridade";
    $resEsc = $conn->query($sqlEscolaridade);
    $escLabels = [];
    $escValores = [];
    while($row = $resEsc->fetch_assoc()){
        $escLabels[] = $row['nome_escolaridade'];
        $escValores[] = (int)$row['qtd'];
    }

    // 3. Gráfico de Cadastros por Dia da Semana
    // DAYOFWEEK retorna 1 para Domingo, 2 para Segunda...
    $sqlSemana = "SELECT DAYOFWEEK(criacao) as dia, COUNT(*) as qtd 
                FROM usuario 
                GROUP BY dia";
    $resSem = $conn->query($sqlSemana);
    $semanaDados = array_fill(0, 7, 0); // Preenche array com zeros [0,0,0,0,0,0,0]
    while($row = $resSem->fetch_assoc()){
        $semanaDados[$row['dia'] - 1] = (int)$row['qtd'];
    }

    echo json_encode([
        "cards" => [
            "usuarios" => $totalUsuarios,
            "quizzes" => $totalQuizzes,
            "avaliacoes" => $totalAvaliacoes
        ],
        "graficoEscolaridade" => [
            "labels" => $escLabels,
            "valores" => $escValores
        ],
        "graficoSemana" => $semanaDados
    ]);
?>

