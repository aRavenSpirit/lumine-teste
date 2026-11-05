    <?php

header("Content-Type: application/json; charset=UTF-8");

require __DIR__ . "/conexao.php";

session_set_cookie_params(0, '/');

if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

$id_usuario = $_SESSION['usuario_id'] ?? 0;

if ($id_usuario === 0) {
    echo json_encode(["error" => "Usuário não autenticado"]);
    exit;
}

$tipo = $_GET['tipo'] ?? '';

$response = null;

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $acao = $_POST['acao'] ?? '';

    if ($acao === 'atualizar_perfil_completo') {
        $id = intval($_POST['id_usuario']);
        $nome = $conn->real_escape_string($_POST['nome']);
        $email = $conn->real_escape_string($_POST['email']);
        $escolaridade = intval($_POST['escolaridade']);
        $senhaRaw = $_POST['senha'] ?? '';

        // valida campos
        if (!$nome || !$email || !$escolaridade) {
            echo json_encode(["erro" => "Campos obrigatórios não preenchidos"]);
            exit;
            
        }

        // Se informou uma nova senha, valida os requisitos antes de atualizar
        if (!empty($senhaRaw)) {

            // 1. Mínimo 8 caracteres
            if (strlen($senhaRaw) < 8) {
                echo json_encode(["success" => false, "error" => "A senha deve ter no mínimo 8 caracteres."]);
                exit;
            }

            // 2. Pelo menos uma letra maiúscula
            if (!preg_match('/[A-Z]/', $senhaRaw)) {
                echo json_encode(["success" => false, "error" => "A senha deve conter pelo menos uma letra maiúscula."]);
                exit;
            }

            // 3. Pelo menos um número
            if (!preg_match('/[0-9]/', $senhaRaw)) {
                echo json_encode(["success" => false, "error" => "A senha deve conter pelo menos um número."]);
                exit;
            }

            // 4. Pelo menos um caractere especial
            if (!preg_match('/[^A-Za-z0-9]/', $senhaRaw)) {
                echo json_encode(["success" => false, "error" => "A senha deve conter pelo menos um caractere especial (ex: !@#$)."]);
                exit;
            }

            $senha = password_hash($senhaRaw, PASSWORD_DEFAULT);
            $sql = "UPDATE usuario SET nome='$nome', email='$email', escolaridade_id=$escolaridade, senha='$senha' WHERE id=$id";
        } else {
            $sql = "UPDATE usuario SET nome='$nome', email='$email', escolaridade_id=$escolaridade WHERE id=$id";
        }

        if ($conn->query($sql)) {
            echo json_encode(["success" => true, "mensagem" => "Perfil atualizado!"]);
        } else {
            echo json_encode(["success" => false, "error" => $conn->error]);
        }
        exit;
    }
}   


if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $acao = $_POST['acao'] ?? '';
    $id = intval($_POST['id_usuario'] ?? $id_usuario);

    if ($acao === 'atualizar_preferencias' || $acao === 'atualizar_preferencias_prepared') {

        $tema = intval($_POST['tema'] ?? 0);
        $fonte = intval($_POST['fonte'] ?? 2);
        $cores = $_POST['cores'] ?? '{}';

        $sql_check = "SELECT id FROM configuracoes WHERE id_usuario = ?";
        $stmt_check = $conn->prepare($sql_check);
        $stmt_check->bind_param("i", $id);
        $stmt_check->execute();
        $resultado_check = $stmt_check->get_result();

        if ($resultado_check->num_rows > 0) {

            $sql = "UPDATE configuracoes SET 
                        tema_escuro = ?, 
                        tamanho_fonte = ?, 
                        cores_materia = ?
                    WHERE id_usuario = ?";

            $stmt = $conn->prepare($sql);

            if ($stmt) {
                $stmt->bind_param("iisi", $tema, $fonte, $cores, $id);

                if ($stmt->execute()) {
                    echo json_encode(["success" => true]);
                } else {
                    echo json_encode(["success" => false, "error" => $stmt->error]);
                }

                $stmt->close();

            } else {
                echo json_encode(["success" => false, "error" => $conn->error]);
            }

        } else {

            $sql = "INSERT INTO configuracoes 
                        (id_usuario, tema_escuro, tamanho_fonte, cores_materia)
                    VALUES (?, ?, ?, ?)";

            $stmt = $conn->prepare($sql);
            if ($stmt) {
                $stmt->bind_param("iiis", $id, $tema, $fonte, $cores);
                if ($stmt->execute()) {
                    echo json_encode(["success" => true]);
                } else {
                    echo json_encode(["success" => false, "error" => $stmt->error]);
                }
                $stmt->close();
            } else {
                echo json_encode(["success" => false, "error" => $conn->error]);
            }
        }
        $stmt_check->close();
        exit;
    }
    if ($acao === 'atualizar_perfil') {
        $campo = $_POST['campo'] ?? '';
        $valor = $conn->real_escape_string($_POST['valor'] ?? '');
        $coluna = '';
        if ($campo === 'nome') {
            $coluna = 'nome';
        } elseif ($campo === 'email') {
            $coluna = 'email';
        } elseif ($campo === 'escolaridade') {
            $coluna = 'escolaridade_id';
        } elseif ($campo === 'foto_perfil') {
            $coluna = 'foto_perfil';
        }
        if ($coluna !== '') {
            $sql = "UPDATE usuario SET $coluna = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);
            if ($stmt) {
                $stmt->bind_param("si", $valor, $id);
                if ($stmt->execute()) {
                    echo json_encode(["success" => true]);
                } else {
                    echo json_encode(["success" => false, "error" => $stmt->error]);
                }
                $stmt->close();
            } else {
                echo json_encode(["success" => false, "error" => $conn->error]);
            }
        } else {
            echo json_encode(["success" => false, "error" => "Campo inválido"]);
        }
        exit;
    }

    if (isset($_POST['acao']) && $_POST['acao'] === 'excluir_conta') {
        $id_usuario = intval($_POST['id_usuario'] ?? 0);
        $id_sessao = intval($_SESSION['usuario_id'] ?? 0);

        if ($id_usuario <= 0 || $id_usuario !== $id_sessao) {
            echo json_encode(["success" => false, "error" => "Ação não autorizada."]);
            exit;
        }

        $stmt = $conn->prepare("DELETE FROM usuario WHERE id = ?");
        $stmt->bind_param("i", $id_usuario);

        if ($stmt->execute()) {
            // APAGA O COOKIE DO NAVEGADOR DEFININDO DATA NO PASSADO
            setcookie("user_consent", "", [
                'expires' => time() - 3600,
                'path'    => '/'
            ]);

            // Encerra a sessão
            session_unset();
            session_destroy();

            echo json_encode(["success" => true, "mensagem" => "Conta excluída com sucesso."]);
        } else {
            echo json_encode(["success" => false, "error" => "Erro ao excluir conta: " . $stmt->error]);
        }
        $stmt->close();
        exit;
    }

    if ($acao === 'excluir_historico') {
        $id_tentativa = intval($_POST['id_tentativa'] ?? 0);
        $sql = "DELETE FROM tentativas 
                WHERE id = ? 
                AND id_usuario = ?";

        $stmt = $conn->prepare($sql);

        if ($stmt) {
            $stmt->bind_param("ii", $id_tentativa, $id);
            if ($stmt->execute()) {
                echo json_encode(["success" => true]);
            } else {
                echo json_encode(["success" => false, "error" => $stmt->error]);
            }
            $stmt->close();
        } else {
            echo json_encode(["success" => false, "error" => $conn->error]);
        }
        exit;
    }

    // Adicione no config/home.php
    if (isset($_POST['acao']) && $_POST['acao'] === 'excluir_historicos_selecionados') {
        $id_usuario = intval($_SESSION['usuario_id'] ?? 0);
        $ids = json_decode($_POST['ids'] ?? '[]', true);

        if ($id_usuario <= 0 || empty($ids)) {
            echo json_encode(["success" => false, "error" => "Parâmetros inválidos ou nenhum item selecionado."]);
            exit;
        }

        // Cria placeholders (?) dinâmicos para a query IN (?, ?, ...)
        $placeholders = implode(',', array_fill(0, count($ids), '?'));
        $tipos = str_repeat('i', count($ids) + 1); // +1 para o id_usuario

        $sql = "DELETE FROM tentativas WHERE id_usuario = ? AND id IN ($placeholders)";
        $stmt = $conn->prepare($sql);

        // Une o id_usuario com o array de IDs para o bind_param
        $params = array_merge([$id_usuario], array_map('intval', $ids));
        $stmt->bind_param($tipos, ...$params);

        if ($stmt->execute()) {
            echo json_encode(["success" => true, "mensagem" => "Itens excluídos com sucesso."]);
        } else {
            echo json_encode(["success" => false, "error" => "Erro ao excluir itens: " . $stmt->error]);
        }
        $stmt->close();
        exit;
    }

    if ($acao === 'upload_foto') {
        $id_usuario = intval($_POST['id_usuario'] ?? $_SESSION['usuario_id'] ?? 0);

        if (!isset($_FILES['foto']) || $_FILES['foto']['error'] !== UPLOAD_ERR_OK) {
            echo json_encode(['success' => false, 'error' => 'Nenhum arquivo enviado ou erro no upload.']);
            exit;
        }

        $foto = $_FILES['foto'];
        $extensao = strtolower(pathinfo($foto['name'], PATHINFO_EXTENSION));
        $extensoesPermitidas = ['jpg', 'jpeg', 'png', 'webp', 'gif'];

        if (!in_array($extensao, $extensoesPermitidas)) {
            echo json_encode(['success' => false, 'error' => 'Formato de imagem inválido. Use JPG, PNG ou WEBP.']);
            exit;
        }

        // Cria a pasta uploads se não existir
        $diretorioUploads = '../uploads/';
        if (!is_dir($diretorioUploads)) {
            mkdir($diretorioUploads, 0755, true);
        }

        // Gera um nome único para a imagem
        $novoNome = 'perfil_' . $id_usuario . '_' . time() . '.' . $extensao;
        $caminhoCompleto = $diretorioUploads . $novoNome;
        $caminhoRelativoBD = '../uploads/' . $novoNome;

        if (move_uploaded_file($foto['tmp_name'], $caminhoCompleto)) {
            // Atualiza o caminho na tabela e colunas corretas usando MySQLi
            $sql = "UPDATE usuario SET foto_perfil = ? WHERE id = ?";
            $stmt = $conn->prepare($sql);

            if ($stmt) {
                $stmt->bind_param("si", $caminhoRelativoBD, $id_usuario);
                if ($stmt->execute()) {
                    echo json_encode([
                        'success' => true, 
                        'foto_perfil' => $caminhoRelativoBD,
                        'mensagem' => 'Foto atualizada com sucesso!'
                    ]);
                } else {
                    echo json_encode(['success' => false, 'error' => 'Erro ao guardar no banco de dados: ' . $stmt->error]);
                }
                $stmt->close();
            } else {
                echo json_encode(['success' => false, 'error' => 'Erro na preparação da consulta: ' . $conn->error]);
            }
        } else {
            echo json_encode(['success' => false, 'error' => 'Falha ao mover a imagem para o servidor.']);
        }
        exit;
    }
    echo json_encode(["success" => false, "error" => "Ação não reconhecida"]);
    exit;
}

// ==========================================================
// 2. CONSULTAS DE DADOS (MÉTODO GET)
// ==========================================================

switch ($tipo) {
    case 'usuario':
        $sql = "SELECT 
                    u.nome, 
                    u.email, 
                    u.escolaridade_id, 
                    u.foto_perfil, 
                    e.nome_escolaridade
                FROM usuario u
                LEFT JOIN escolaridade e 
                    ON u.escolaridade_id = e.id_escolaridade
                WHERE u.id = ?";

        $stmt = $conn->prepare($sql);

        if ($stmt) {

            $stmt->bind_param("i", $id_usuario);
            $stmt->execute();

            $result = $stmt->get_result();

            if ($result->num_rows > 0) {
                $response = $result->fetch_assoc();
            } else {
                $response = ["error" => "Usuário não encontrado"];
            }

            $stmt->close();

        } else {
            $response = ["error" => $conn->error];
        }
        break;

    case 'lista_escolaridades':

        $sql = "SELECT 
                    id_escolaridade, 
                    nome_escolaridade 
                FROM escolaridade 
                ORDER BY id_escolaridade ASC";

        $result = $conn->query($sql);
        $response = [];

        if ($result) {

            while ($row = $result->fetch_assoc()) {
                $response[] = $row;
            }
        }
        break;

    case 'materias':
        $sql = "SELECT 
                    id, 
                    nome_materia 
                FROM materia 
                ORDER BY nome_materia ASC";

        $result = $conn->query($sql);
        $response = [];
        if ($result) {
            while ($row = $result->fetch_assoc()) {
                $response[] = $row;
            }
        }
        break;

    case 'conteudos':

        $id_materia = intval($_GET['id_materia'] ?? 0);

        $sql = "SELECT 
                    id, 
                    nome,
                    imagem_conteudo
                FROM conteudo 
                WHERE id_materia = ?
                ORDER BY nome ASC";

        $stmt = $conn->prepare($sql);
        $response = [];

        if ($stmt) {
            $stmt->bind_param("i", $id_materia);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($row = $result->fetch_assoc()) {
                $response[] = $row;
            }
            $stmt->close();
        }
        break;

    case 'quizzes':
        $id_conteudo = intval($_GET['id_conteudo'] ?? 0);

        // Alterado de LEFT JOIN para JOIN com HAVING COUNT(p.id) > 0 para só retornar quizzes com perguntas
        $sql = "
            SELECT 
                q.id,
                q.nome,
                q.id_dificuldade,
                d.dificuldade,
                c.nome AS conteudo,
                m.nome_materia,
                COUNT(p.id) AS total_questoes
            FROM quizzes q
            JOIN dificuldade d 
                ON q.id_dificuldade = d.id
            JOIN conteudo c 
                ON q.id_conteudo = c.id
            JOIN materia m 
                ON c.id_materia = m.id
            JOIN perguntas p 
                ON p.id_quiz = q.id
            WHERE q.id_conteudo = ?
            GROUP BY q.id
            HAVING total_questoes > 0
        ";
        $stmt = $conn->prepare($sql);
        $response = [];
        if ($stmt) {
            $stmt->bind_param("i", $id_conteudo);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($row = $result->fetch_assoc()) {
                $response[] = $row;
            }
            $stmt->close();
        }
        break;

    // 🎯 NOVA ROTA DE RECOMENDAÇÕES INTEGRADAS DE ACORDO COM A ESCOLARIDADE
    case 'recomendados':
        // 1. Busca a escolaridade do usuário logado
        $sql_user = "SELECT escolaridade_id FROM usuario WHERE id = ?";
        $stmt_user = $conn->prepare($sql_user);
        
        if ($stmt_user) {
            $stmt_user->bind_param("i", $id_usuario);
            $stmt_user->execute();
            $res_user = $stmt_user->get_result()->fetch_assoc();
            $stmt_user->close();

            $id_escolaridade = $res_user['escolaridade_id'] ?? null;

            if (is_null($id_escolaridade)) {
                $response = ["erro" => "Você precisa selecionar sua escolaridade para ver as recomendações.", "precisa_escolaridade" => true];
                break;
            }

            // 2. Busca os quizzes usando Prepared Statements cruzando a tabela relacional
            $sql_recomendados = "
                SELECT 
                    q.id,
                    q.nome,
                    q.id_dificuldade,
                    d.dificuldade,
                    c.nome AS conteudo,
                    m.nome_materia
                FROM quizzes q
                JOIN dificuldade d ON q.id_dificuldade = d.id
                JOIN conteudo c ON q.id_conteudo = c.id
                JOIN materia m ON c.id_materia = m.id
                JOIN conteudo_escolaridade ce ON c.id = ce.id_conteudo
                WHERE ce.id_escolaridade = ?
                ORDER BY q.id DESC
            ";

            $stmt_rec = $conn->prepare($sql_recomendados);
            $response = [];

            if ($stmt_rec) {
                $stmt_rec->bind_param("i", $id_escolaridade);
                $stmt_rec->execute();
                $result_rec = $stmt_rec->get_result();
                
                while ($row = $result_rec->fetch_assoc()) {
                    $response[] = $row;
                }
                $stmt_rec->close();
            }
        }
        break;

    case 'preferencias':

        $sql = "SELECT 
                    id,
                    id_usuario,
                    tema_escuro,
                    tamanho_fonte,
                    cores_materia
                FROM configuracoes
                WHERE id_usuario = ?";

        $stmt = $conn->prepare($sql);

        if ($stmt) {
            $stmt->bind_param("i", $id_usuario);
            $stmt->execute();
            $result = $stmt->get_result();
            if ($result->num_rows > 0) {
                $row = $result->fetch_assoc();
                $cores = json_decode($row['cores_materia'], true);
                if (!is_array($cores)) {
                    $cores = [];
                }
                $row['cores_materia'] = $cores;
                $response = $row;
            } else {

                $response = [
                    "id_usuario" => $id_usuario,
                    "tema_escuro" => 0,
                    "tamanho_fonte" => 2,
                    "cores_materia" => [
                        "bg_claro" => "#FFFFFF",
                        "bg_escuro" => "#121212",
                        "matematica" => "#3498db",
                        "portugues" => "#e74c3c",
                        "historia" => "#f1c40f",
                        "geografia" => "#2ecc71",
                        "biologia" => "#27ae60",
                        "fisica" => "#8e44ad",
                        "quimica" => "#d35400",
                        "ingles" => "#2980b9",
                        "artes" => "#e67e22",
                        "filosofia" => "#7f8c8d",
                        "sociologia" => "#16a085",
                        "educacao_fisica" => "#c0392b",
                        "literatura" => "#9b59b6"
                    ]
                ];
            }
            $stmt->close();

        }
        break;

    case 'historico':
        $sql = "
            SELECT 
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
            JOIN quizzes q 
                ON t.id_quiz = q.id
            JOIN dificuldade d 
                ON q.id_dificuldade = d.id
            JOIN conteudo c 
                ON q.id_conteudo = c.id
            JOIN materia m 
                ON c.id_materia = m.id
            WHERE t.id_usuario = ?
            ORDER BY t.data_resolucao DESC
        ";

        $stmt = $conn->prepare($sql);
        $response = [];
        if ($stmt) {
            $stmt->bind_param("i", $id_usuario);
            $stmt->execute();
            $result = $stmt->get_result();
            while ($row = $result->fetch_assoc()) {
                $row['data_resolucao'] = date(
                    'd/m/Y H:i',
                    strtotime($row['data_resolucao'])
                );
                $response[] = $row;
            }
            $stmt->close();
        }

        break;

    default:
        $response = [
            "error" => "Tipo de requisição inválido"
        ];

        break;
}
echo json_encode($response);
$conn->close();

?>