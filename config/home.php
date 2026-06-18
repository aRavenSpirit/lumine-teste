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
    echo json_encode(["success" => false, "error" => "Ação não reconhecida"]);
    exit;
}

// ==========================================================
// 2. CONSULTAS DE DADOS (MÉTODO GET)
// ==========================================================

// Unificamos tudo dentro de um único Switch para evitar conflitos
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
                    nome 
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
            LEFT JOIN perguntas p 
                ON p.id_quiz = q.id
            WHERE q.id_conteudo = ?
            GROUP BY q.id
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