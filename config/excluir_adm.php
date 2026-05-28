<?php
    require "conexao.php";
    header("Content-Type: application/json; charset=UTF-8");

    $tipo = $_GET['tipo'] ?? '';
    $id = isset($_GET['id']) ? intval($_GET['id']) : 0;

    if (!$id) {
        echo json_encode(["status" => false, "erro" => "ID inválido"]);
        exit;
    }

    if ($tipo == 'usuario') {
        // Iniciando transação para garantir a integridade dos dados
        $conn->begin_transaction();

        try {
            // 1. Deleta o histórico de respostas/tentativas que pertencem a esse usuário
            $sql_tentativas = "DELETE FROM tentativas WHERE id_usuario = $id";
            $conn->query($sql_tentativas);

            // 2. Agora apaga o usuário com segurança
            $sql_usuario = "DELETE FROM usuario WHERE id = $id";
            $conn->query($sql_usuario);

            $conn->commit();

            // =========================================================================
            // NOVO: Verifica se o usuário deletado é o mesmo que está logado
            // =========================================================================
            // Inicia a sessão se ela ainda não tiver sido iniciada por outro arquivo incluído
            if (session_status() === PHP_SESSION_NONE) {
                session_start();
            }

            $deslogar = false;
            // Altere 'id_usuario' ou 'user_id' para a chave exata que você usa na sua $_SESSION para guardar o ID do usuário logado
            if (isset($_SESSION['id_usuario']) && intval($_SESSION['id_usuario']) === $id) {
                // Limpa todas as variáveis de sessão
                $_SESSION = array();
                
                // Destrói o cookie de sessão do navegador se existir
                if (ini_get("session.use_cookies")) {
                    $params = session_get_cookie_params();
                    setcookie(session_name(), '', time() - 42000,
                        $params["path"], $params["domain"],
                        $params["secure"], $params["httponly"]
                    );
                }
                
                // Destrói a sessão no servidor
                session_destroy();
                $deslogar = true;
            }
            // =========================================================================

            // Retorna no JSON se o usuário atual deve ser deslogado/redirecionado
            echo json_encode(["status" => true, "deslogar" => $deslogar]);

        } catch (Exception $e) {
            $conn->rollback();
            echo json_encode(["status" => false, "erro" => "Usuário possui dependências que não puderam ser apagadas: " . $e->getMessage()]);
        }
    }
    
    else if ($tipo == 'quiz') {
        
        // Iniciando transação para garantir que apague tudo ou nada
        $conn->begin_transaction();

        try {
            // 1. Deletar tentativas primeiro (Garante que a FK não trave o processo)
            $sql_tentativas = "DELETE FROM tentativas WHERE id_quiz = $id";
            $conn->query($sql_tentativas);

            // 2. Deletar as respostas vinculadas às perguntas deste quiz
            $sql_respostas = "DELETE FROM respostas WHERE id_pergunta IN (SELECT id FROM perguntas WHERE id_quiz = $id)";
            $conn->query($sql_respostas);

            // 3. Deletar as perguntas vinculadas a este quiz
            $sql_perguntas = "DELETE FROM perguntas WHERE id_quiz = $id";
            $conn->query($sql_perguntas);

            // 4. Deletar o quiz principal
            $sql_quiz = "DELETE FROM quizzes WHERE id = $id";
            $conn->query($sql_quiz);

            $conn->commit();
            echo json_encode(["status" => true]);

        } catch (Exception $e) {
            $conn->rollback();
            echo json_encode(["status" => false, "erro" => "Erro ao deletar quiz e dependências: " . $e->getMessage()]);
        }
    }
    exit;
?>