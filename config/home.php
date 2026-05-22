<?php

    header("Content-Type: application/json; charset=UTF-8");

    require __DIR__ . "/conexao.php";
    session_start();

// Pegamos as variáveis globais que seu script usa
$tipo = $_GET['tipo'] ?? '';
// Usamos o ID da sessão para o usuário logado, ou o ID vindo da URL como fallback
$id_usuario = isset($_GET['id_conteudo']) ? (int)$_GET['id_conteudo'] : ($_SESSION['usuario_id'] ?? 1);

$response = null;

// ==========================================================
// 1. PROCESSAR ATUALIZAÇÕES (MÉTODO POST)
// ==========================================================
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Pegamos a ação primeiro para saber o que o POST quer fazer
    $acao = $_POST['acao'] ?? '';
    $id = intval($_POST['id_usuario'] ?? $id_usuario);

    // --- AÇÃO: ATUALIZAR PREFERÊNCIAS ---
    if ($acao === 'atualizar_preferencias') {
        $tema = intval($_POST['tema'] ?? 0);
        $fonte = intval($_POST['fonte'] ?? 2);
        $cores = $conn->real_escape_string($_POST['cores'] ?? '{}');
        $id = intval($_POST['id_usuario'] ?? $id_usuario);

        $sql = "UPDATE configuracoes SET 
                tema_escuro = $tema, 
                tamanho_fonte = $fonte, 
                cores_materia = '$cores' 
                WHERE id_usuario = $id";

        if ($conn->query($sql)) {
            echo json_encode(["success" => true]);
        } else {
            echo json_encode(["success" => false, "error" => $conn->error]);
        }
        exit;
    }

    // --- AÇÃO: ATUALIZAR PERFIL ---
    if ($acao === 'atualizar_perfil') {
        $campo = $_POST['campo'] ?? '';
        $valor = $conn->real_escape_string($_POST['valor'] ?? '');

        $coluna = '';
        if ($campo === 'nome') $coluna = 'nome';
        elseif ($campo === 'email') $coluna = 'email';
        elseif ($campo === 'escolaridade') $coluna = 'escolaridade_id';

        if ($coluna != '') {
            $sql = "UPDATE usuario SET $coluna = '$valor' WHERE id = $id";
            if ($conn->query($sql)) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["success" => false, "error" => $conn->error]);
            }
        } else {
            echo json_encode(["success" => false, "error" => "Campo inválido"]);
        }
        exit;
    }

    // --- AÇÃO: EXCLUIR HISTÓRICO (AGORA FORA DO IF DE ATUALIZAR) ---
    if ($acao === 'excluir_historico') {
        $id_tentativa = intval($_POST['id_tentativa'] ?? 0);
        
        // Deleta apenas se pertencer ao usuário logado por segurança
        $sql = "DELETE FROM tentativas WHERE id = $id_tentativa AND id_usuario = $id";
        
        if ($conn->query($sql)) {
            echo json_encode(["success" => true]);
        } else {
            echo json_encode(["success" => false, "error" => $conn->error]);
        }
        exit;
    }

    // Se houver um POST mas nenhuma ação válida
    echo json_encode(["success" => false, "error" => "Ação não reconhecida"]);
    exit;
}

// ==========================================================
// 2. CONSULTAS DE DADOS (MÉTODO GET)
// ==========================================================

// Unificamos tudo dentro de um único Switch para evitar conflitos
switch ($tipo) {

    // =========================
    // PERFIL DO USUÁRIO
    // =========================
    case 'usuario':
        // Busca nome, email e o ID da escolaridade para o select funcionar
        $sql = "SELECT u.nome, u.email, u.escolaridade_id, e.nome_escolaridade 
                FROM usuario u
                LEFT JOIN escolaridade e ON u.escolaridade_id = e.id_escolaridade
                WHERE u.id = $id_usuario";
        
        $result = $conn->query($sql);
        if ($result && $result->num_rows > 0) {
            $response = $result->fetch_assoc();
        } else {
            $response = ["error" => "Usuário não encontrado"];
        }
        break;

    // =========================
    // LISTA DE ESCOLARIDADES
    // =========================
    case 'lista_escolaridades':
        $sql = "SELECT id_escolaridade, nome_escolaridade FROM escolaridade ORDER BY id_escolaridade ASC";
        $result = $conn->query($sql);
        $response = [];
        while ($row = $result->fetch_assoc()) {
            $response[] = $row;
        }
        break;

    // =========================
    // MATÉRIAS
    // =========================
    case 'materias':
        $res = $conn->query("SELECT id, nome_materia FROM materia ORDER BY nome_materia ASC");
        $response = [];
        while ($row = $res->fetch_assoc()) {
            $response[] = $row;
        }
        break;

    // =========================
    // CONTEÚDOS
    // =========================
    case 'conteudos':
        $id_materia = intval($_GET['id_materia'] ?? 0);
        $res = $conn->query("SELECT id, nome FROM conteudo WHERE id_materia = $id_materia ORDER BY nome ASC");
        $response = [];
        while ($row = $res->fetch_assoc()) {
            $response[] = $row;
        }
        break;

    // =========================
    // QUIZZES
    // =========================
    case 'quizzes':
        $id_conteudo = intval($_GET['id_conteudo'] ?? 0);
        $res = $conn->query("
            SELECT q.id, q.nome, q.id_dificuldade, d.dificuldade, c.nome AS conteudo
            FROM quizzes q
            JOIN dificuldade d ON q.id_dificuldade = d.id
            JOIN conteudo c ON q.id_conteudo = c.id
            WHERE q.id_conteudo = $id_conteudo
        ");
        $response = [];
        while ($row = $res->fetch_assoc()) {
            $response[] = $row;
        }
        break;

    // =========================
    // PREFERÊNCIAS
    // =========================
    case 'preferencias':
    // Use o ID da sessão ou variável global
    $id_usuario_busca = 1; 
    
    $sql = "SELECT id, id_usuario, tema_escuro, tamanho_fonte, cores_materia 
            FROM configuracoes 
            WHERE id_usuario = $id_usuario_busca";
    $result = $conn->query($sql);

    if ($result && $result->num_rows > 0) {
        $row = $result->fetch_assoc();
        // IMPORTANTE: Transformar a string do banco em objeto para o JS
        $row['cores_materia'] = json_decode($row['cores_materia'], true);
        $response = $row;
    } else {
        // Se não existir registro, retorna o padrão compatível com a tabela
        $response = [
            "id_usuario" => $id_usuario_busca,
            "tema_escuro" => 0,
            "tamanho_fonte" => 2,
            "cores_materia" => [
                "bg_claro" => "#FFFFFF", "bg_escuro" => "#121212",
                "matematica" => "#3498db", "portugues" => "#e74c3c", "historia" => "#f1c40f"
            ]
        ];
    }
    break;

    case 'atualizar_preferencias':
    $id_usuario = $_POST['id_usuario'];
    $tema = $_POST['tema'];
    $fonte = $_POST['fonte'];
    $cores = $_POST['cores']; // Isso já deve vir como uma string JSON do JS

    // O segredo está em usar o valor vindo do POST direto na query para o campo JSON
    $sql = "UPDATE configuracoes SET 
            tema_escuro = ?, 
            tamanho_fonte = ?, 
            cores_materia = ? 
            WHERE id_usuario = ?";
            
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("iisi", $tema, $fonte, $cores, $id_usuario);
    
    if ($stmt->execute()) {
        echo json_encode(["success" => true]);
    } else {
        echo json_encode(["success" => false, "error" => $conn->error]);
    }
    exit;

    case 'historico':
        $sql = "SELECT 
                    t.id AS id_tentativa, 
                    q.nome AS titulo_quiz, 
                    t.acertos, 
                    t.total_questoes, 
                    t.tempo, 
                    t.data_resolucao, 
                    d.dificuldade, 
                    m.nome_materia,
                    c.nome AS nome_conteudo
                FROM tentativas t
                JOIN quizzes q ON t.id_quiz = q.id
                JOIN dificuldade d ON q.id_dificuldade = d.id
                JOIN conteudo c ON q.id_conteudo = c.id
                JOIN materia m ON c.id_materia = m.id
                WHERE t.id_usuario = $id_usuario
                ORDER BY t.data_resolucao DESC"; // Ordena pelo mais recente
        
        $result = $conn->query($sql);
        $response = [];
        
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                // Formata a data para o padrão brasileiro antes de enviar
                $row['data_resolucao'] = date('d/m/Y H:i', strtotime($row['data_resolucao']));
                $response[] = $row;
            }
        }
        break;

    default:
        $response = ["error" => "Tipo de requisição inválido"];
        break;
}

// Resposta única para as requisições GET
echo json_encode($response);
$conn->close();
