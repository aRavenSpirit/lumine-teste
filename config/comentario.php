<?php
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
    header("Access-Control-Allow-Headers: Content-Type");

    require "conexao.php";

    $method = $_SERVER['REQUEST_METHOD'];

    switch ($method) {

        case 'GET':
            $sql = "
                SELECT
                    f.id,
                    f.id_usuario,
                    f.mensagem,
                    f.data_envio,
                    u.nome AS nome_usuario,
                    u.foto_perfil AS foto_usuario
                FROM feedbacks_usuarios f
                LEFT JOIN usuario u ON f.id_usuario = u.id
                ORDER BY f.data_envio DESC
            ";

            $result = $conn->query($sql);
            $dados = [];

            if ($result) {
                while ($row = $result->fetch_assoc()) {
                    $dados[] = $row;
                }
            }
            
            echo json_encode($dados);
            break;

        case 'POST':
            // Recebe os dados do JavaScript
            $data = json_decode(file_get_contents("php://input"), true);

            // Valida se os campos obrigatórios vieram na requisição
            if (!isset($data['id_usuario']) || !isset($data['comentario'])) {
                echo json_encode(["erro" => "Dados incompletos de formulário."]);
                exit;
            }

            $id_usuario = intval($data['id_usuario']); // Garante que é um número inteiro
            $comentario = $data['comentario'];

            // Utilizando Prepared Statements para segurança contra SQL Injection
            $stmt = $conn->prepare("INSERT INTO feedbacks_usuarios (id_usuario, mensagem, data_envio) VALUES (?, ?, NOW())");
            $stmt->bind_param("is", $id_usuario, $comentario);

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