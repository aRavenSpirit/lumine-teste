<?php
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
    header("Access-Control-Allow-Headers: Content-Type");

    require "conexao.php";

    $method = $_SERVER['REQUEST_METHOD'];

    switch ($method) {

        case 'GET':
            $id_quiz = isset($_GET['id_quiz']) ? intval($_GET['id_quiz']) : 0;

            if ($id_quiz <= 0) {
                echo json_encode([]);
                break;
            }

            $stmt = $conn->prepare("
                SELECT
                    f.id,
                    f.id_usuario,
                    f.id_quiz,
                    f.mensagem,
                    f.data_envio,
                    u.nome AS nome_usuario,
                    u.email AS email_usuario,
                    u.foto_perfil AS foto_usuario
                FROM feedbacks_usuarios f
                LEFT JOIN usuario u ON f.id_usuario = u.id
                WHERE f.id_quiz = ?
                ORDER BY f.data_envio DESC
            ");
            $stmt->bind_param("i", $id_quiz);
            $stmt->execute();
            $result = $stmt->get_result();

            $dados = [];
            while ($row = $result->fetch_assoc()) {
                $dados[] = $row;
            }

            echo json_encode($dados);
            $stmt->close();
            break;

        case 'POST':
            $data = json_decode(file_get_contents("php://input"), true);

            if (!isset($data['id_usuario']) || !isset($data['comentario']) || !isset($data['id_quiz'])) {
                echo json_encode(["erro" => "Dados incompletos de formulário."]);
                exit;
            }

            $id_usuario = intval($data['id_usuario']);
            $id_quiz = intval($data['id_quiz']);
            $comentario = trim($data['comentario']);

            if ($id_quiz <= 0 || $comentario === '') {
                echo json_encode(["erro" => "Quiz inválido ou comentário vazio."]);
                exit;
            }

            $stmt = $conn->prepare("INSERT INTO feedbacks_usuarios (id_usuario, id_quiz, mensagem, data_envio) VALUES (?, ?, ?, NOW())");
            $stmt->bind_param("iis", $id_usuario, $id_quiz, $comentario);

            if ($stmt->execute()) {
                echo json_encode(["mensagem" => "Comentário enviado com sucesso!"]);
            } else {
                echo json_encode(["erro" => "Erro ao enviar comentário no banco de dados."]);
            }

            $stmt->close();
            break;

        default:
            echo json_encode(["erro" => "Método não suportado."]);
            break;
    }

    $conn->close();
?>