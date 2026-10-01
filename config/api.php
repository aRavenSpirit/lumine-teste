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

                $sql = "SELECT id_escolaridade, nome_escolaridade FROM escolaridade";

                $result = $conn->query($sql);

                $dados = [];

                while ($row = $result->fetch_assoc()) {
                    $dados[] = $row;
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

            while ($row = $result->fetch_assoc()) {
                $dados[] = $row;
            }

            echo json_encode($dados);

        break;

        case 'POST':

            $data = json_decode(file_get_contents("php://input"), true);

            $nome = $conn->real_escape_string($data['nome']);
            $email = $conn->real_escape_string($data['email']);
            $senha = password_hash($data['senha'], PASSWORD_DEFAULT);
            $escolaridade = intval($data['escolaridade_id']);

            $sql = "
                INSERT INTO usuario
                (nome, email, senha, escolaridade_id, criacao)
                VALUES
                ('$nome', '$email', '$senha', $escolaridade, CURDATE())
            ";

            if ($conn->query($sql)) {

                echo json_encode(["mensagem" => "Usuário inserido"]);

            } else {

                echo json_encode(["erro" => "Erro ao inserir"]);

            }

        break;

        case 'PUT': 

            $data = json_decode(file_get_contents("php://input"), true);

            $id = intval($data['id']);
            $nome = $conn->real_escape_string($data['nome']);
            $email = $conn->real_escape_string($data['email']);
            $escolaridade = intval($data['escolaridade_id']);

            $sql = "
                UPDATE usuario SET
                    nome = '$nome',
                    email = '$email',
                    escolaridade_id = $escolaridade
                WHERE id = $id
            ";

            if ($conn->query($sql)) {

                echo json_encode(["mensagem" => "Usuário atualizado"]);

            } else {

                echo json_encode(["erro" => "Erro ao atualizar"]);

            }

        break;

        case 'DELETE':

            $data = json_decode(file_get_contents("php://input"), true);

            $id = intval($data['id']);

            $sql = "DELETE FROM usuario WHERE id = $id";

            if ($conn->query($sql)) {

                echo json_encode(["mensagem" => "Usuário excluído"]);

            } else {

                echo json_encode(["erro" => "Erro ao excluir"]);

            }

        break;

    }

    $conn->close();

?>