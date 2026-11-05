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
                // APAGA O COOKIE DO BANNER DE COOKIES DO NAVEGADOR
                setcookie("user_consent", "", [
                    'expires' => time() - 3600,
                    'path'    => '/'
                ]);

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
    
   if ($tipo === 'quiz') {
        // Inicia a transação de segurança
        $conn->begin_transaction();

        try {
            // 0º Passo: Apaga as TENTATIVAS (O vilão secreto que estava bloqueando tudo!)
            $stmt0 = $conn->prepare("DELETE FROM tentativas WHERE id_quiz = ?");
            $stmt0->bind_param("i", $id);
            if (!$stmt0->execute()) throw new Exception("Falha ao apagar tentativas: " . $stmt0->error);
            $stmt0->close();

            // 1º Passo: Apaga as avaliações vinculadas a esse quiz
            $stmt1 = $conn->prepare("DELETE FROM avaliacoes WHERE id_quiz = ?");
            $stmt1->bind_param("i", $id);
            if (!$stmt1->execute()) throw new Exception("Falha ao apagar avaliações: " . $stmt1->error);
            $stmt1->close();

            // 2º Passo: Apaga as respostas 
            $stmt2 = $conn->prepare("DELETE r FROM respostas r JOIN perguntas p ON r.id_pergunta = p.id WHERE p.id_quiz = ?");
            $stmt2->bind_param("i", $id);
            if (!$stmt2->execute()) throw new Exception("Falha ao apagar respostas: " . $stmt2->error);
            $stmt2->close();

            // 3º Passo: Apaga as perguntas 
            $stmt3 = $conn->prepare("DELETE FROM perguntas WHERE id_quiz = ?");
            $stmt3->bind_param("i", $id);
            if (!$stmt3->execute()) throw new Exception("Falha ao apagar perguntas: " . $stmt3->error);
            $stmt3->close();

            // 4º Passo: Finalmente, apaga o QUIZ livre de amarras!
            $stmt4 = $conn->prepare("DELETE FROM quizzes WHERE id = ?");
            $stmt4->bind_param("i", $id);
            if (!$stmt4->execute()) throw new Exception("Falha ao apagar o quiz: " . $stmt4->error);
            $stmt4->close();

            // Se tudo deu certo, confirma as exclusões no banco!
            $conn->commit();
            echo json_encode(["status" => true]);

        } catch (Exception $e) {
            // Desfaz tudo e envia o erro exato para o console se der ruim
            $conn->rollback();
            echo json_encode(["status" => false, "erro" => $e->getMessage()]);
        }
        exit;
    }
    exit;
?>