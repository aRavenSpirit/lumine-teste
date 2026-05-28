<?php
       include_once("../config/session.php");
        include_once("../config/layout.php"); // Inclui o novo arquivo
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resolvendo Quiz - Lumine</title>
    <link rel="stylesheet" href="style/quiz.css">
     <link rel="stylesheet" href="./style/home.css">
</head>
<body>

    <?php renderSidebar(); // Renderiza a sidebar ?>
    <?php renderHeader(); ?>
    <header id="quiz-header">
        <h1 id="quiz-titulo">Quiz Interativo</h1>
        <p>Matéria: <span id="quiz-materia">Matemática</span> | Conteúdo: <span id="quiz-conteudo">Operações e Geometria</span></p>
        <div id="cronometro">Tempo: 00:00</div>
    </header>

    <hr style="width: 100%; max-width: 900px; border: 1px solid #e6f5ff; margin: 10px 0 20px 0;">

    <main id="quiz-container">
        
        <div id="pergunta-atual">
            
            </div>			

            
    </main>

    <div id="modal-resultado" style="display: none; position: fixed; z-index: 9999; left: 0; top: 0; width: 100%; height: 100%; background-color: rgba(0,0,0,0.6); align-items: center; justify-content: center;">
        <div style="background-color: #fff; padding: 30px; border-radius: 12px; width: 90%; max-width: 450px; text-align: center; box-shadow: 0 4px 20px rgba(0,0,0,0.2); font-family: sans-serif;">
            <h2 style="color: #2c3e50; margin-top: 0;">Quiz Finalizado! 🎉</h2>
            <hr style="border: 1px solid #f2f4f4; margin: 15px 0;">
            
            <p style="font-size: 18px; color: #34495e; margin: 10px 0;">
                Registo de Acertos: <strong id="modal-acertos" style="color: #27ae60;">0/0</strong>
            </p>

            <p style="font-size: 18px; color: #34495e; margin: 10px 0;">
                Total de Erros: <strong id="modal-erros" style="color: #e74c3c;">0/0</strong>
            </p>

            <p style="font-size: 16px; color: #7f8c8d; margin: 10px 0;">
                Tempo Total: <span id="modal-tempo" style="font-weight: bold; color: #2c3e50;">00:00</span>
            </p>
            
            <button id="btn-modal-home" style="margin-top: 25px; width: 100%; padding: 12px; background-color: #3498db; color: white; border: none; border-radius: 8px; font-size: 16px; font-weight: bold; cursor: pointer; transition: 0.2s;">
                Voltar para a Home
            </button>
        </div>
    </div>

    <footer id="quiz-controls">
        <button id="btn-voltar" onclick="perguntaAnterior()" style="display:none;">Anterior</button>
        <span id="progresso">Pergunta 1 de X</span>
        <button id="btn-proximo" onclick="proximaPergunta()">Próximo</button>
        <button id="btn-finalizar" onclick="finalizarQuiz()" style="display:none;">Finalizar e Ver Resultado</button>
    </footer>

    <script src="js/resolucao_quiz.js"></script>
</body>
</html>