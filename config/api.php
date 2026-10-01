<?php
    header("Content-Type: application/json; charset=UTF-8");
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");
    header("Access-Control-Allow-Headers: Content-Type");

    require "conexao.php";

    $method = $_SERVER['REQUEST_METHOD'];

    switch ($method) {

        case 'GET':

            if (isset($_GET['tipo']) && $_GET['tipo'] == "escolaridade") {

                $sql = "SELECT id_escolaridade, nome_escolaridade FROM escolaridade ORDER BY id_escolaridade ASC";
                $result = $conn->query($sql);

                $dados = [];
                if ($result) {
                    while ($row = $result->fetch_assoc()) {
                        $dados[] = $row;
                    }
                }

                echo json_encode($dados);
                exit;
            }

            $sql = "
                SELECT
                    u.id,
                    u.nome,
                    u.email,
                    u.escolaridade_id,
                    e.nome_escolaridade AS escolaridade
                FROM usuario u
                LEFT JOIN escolaridade e
                ON u.escolaridade_id = e.id_escolaridade
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

            $data = json_decode(file_get_contents("php://input"), true);

            $nome = $conn->real_escape_string($data['nome'] ?? '');
            $email = $conn->real_escape_string($data['email'] ?? '');
            $senha = password_hash($data['senha'] ?? '', PASSWORD_DEFAULT);
            
            // Tratamento correto para aceitar NULL ou número positivo (evita erro de FOREIGN KEY)
            $escolaridade_input = isset($data['escolaridade_id']) ? intval($data['escolaridade_id']) : 0;
            $escolaridade = ($escolaridade_input > 0) ? $escolaridade_input : "NULL";

            $sql = "
                INSERT INTO usuario
                (nome, email, senha, escolaridade_id, criacao)
                VALUES
                ('$nome', '$email', '$senha', $escolaridade, CURDATE())
            ";

            if ($conn->query($sql)) {
                echo json_encode(["mensagem" => "Usuário inserido com sucesso"]);
            } else {
                echo json_encode(["erro" => "Erro ao inserir: " . $conn->error]);
            }

        break;

        case 'PUT':

            $data = json_decode(file_get_contents("php://input"), true);

            $id = intval($data['id'] ?? 0);
            $nome = $conn->real_escape_string($data['nome'] ?? '');
            $email = $conn->real_escape_string($data['email'] ?? '');
            
            $escolaridade_input = isset($data['escolaridade_id']) ? intval($data['escolaridade_id']) : 0;
            $escolaridade = ($escolaridade_input > 0) ? $escolaridade_input : "NULL";

            $sql = "
                UPDATE usuario SET
                    nome = '$nome',
                    email = '$email',
                    escolaridade_id = $escolaridade
                WHERE id = $id
            ";

            if ($conn->query($sql)) {
                echo json_encode(["mensagem" => "Usuário atualizado com sucesso"]);
            } else {
                echo json_encode(["erro" => "Erro ao atualizar: " . $conn->error]);
            }

        break;

        case 'DELETE':

            $data = json_decode(file_get_contents("php://input"), true);
            $id = intval($data['id'] ?? 0);

            $sql = "DELETE FROM usuario WHERE id = $id";

            if ($conn->query($sql)) {
                echo json_encode(["mensagem" => "Usuário excluído com sucesso"]);
            } else {
                echo json_encode(["erro" => "Erro ao excluir: " . $conn->error]);
            }

        break;

    }

    $conn->close();
?>