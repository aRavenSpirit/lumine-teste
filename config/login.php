<?php
    require "conexao.php";

    session_set_cookie_params(0, '/');
    session_start();

    $data = json_decode(file_get_contents("php://input"), true);

    $email = $conn->real_escape_string($data['email']);
    $senha = $data['senha'];

    $sql = "SELECT * FROM usuario WHERE email='$email'";
    $result = $conn->query($sql);

    if($result->num_rows == 0){
        echo json_encode(["status"=>false]);
        exit;
    }

    $user = $result->fetch_assoc();

    if(password_verify($senha, $user['senha'])){
        $_SESSION['usuario_id'] = $user['id'];
        $_SESSION['usuario_nome'] = $user['nome'];

        // VERIFICAÇÃO INDISPENSÁVEL: Se escolaridade_id for nulo ou 0, ele precisa preencher
        $precisa_escolaridade = is_null($user['escolaridade_id']) || $user['escolaridade_id'] == 0;

        echo json_encode([
            "status" => true, 
            "precisa_escolaridade" => $precisa_escolaridade
        ]);
    } else {
        echo json_encode(["status"=>false]);
    }
?>