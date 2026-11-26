USE luminebd;

-- =========================================================================
-- MATÉRIA 1: MATEMÁTICA (CONTEÚDOS 1 A 12)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 1: Adição e Subtração
-- -------------------------------------------------------------------------

-- Quiz 1.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Operações Fundamentais: Adição e Subtração', 1, 1);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é 485 + 237?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '722', 1, 0),
(@p, '712', 0, 0),
(@p, '622', 0, 0),
(@p, '732', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na adição, a ordem das parcelas não altera a soma (propriedade comutativa).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o valor exato de 1000 - 468:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '532', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione as operações cujo resultado é igual a 150:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '95 + 55', 1, 0),
(@p, '230 - 80', 1, 0),
(@p, '75 + 75', 1, 0),
(@p, '300 - 140', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada termo da subtração ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Minuendo', 1, 1, 'Número do qual se subtrai uma quantidade'),
(@p, 'Subtraendo', 1, 2, 'Quantidade que está sendo retirada'),
(@p, 'Resto ou Diferença', 1, 3, 'Resultado final da subtração');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os resultados das expressões do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '80 - 35 (45)', 1, 1),
(@p, '40 + 28 (68)', 1, 2),
(@p, '120 - 25 (95)', 1, 3),
(@p, '75 + 45 (120)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o elemento neutro da adição?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0 (zero)', 1, 0),
(@p, '1 (um)', 0, 0),
(@p, '-1 (menos um)', 0, 0),
(@p, '10 (dez)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A subtração possui propriedade comutativa, ou seja, 15 - 8 é igual a 8 - 15.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 1.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Problemas Cotidianos com Adição e Subtração', 2, 1);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Carlos tinha R$ 850,00. Pagou uma conta de R$ 325,00 e recebeu R$ 190,00 de um amigo. Com quanto ficou?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 715,00', 1, 0),
(@p, 'R$ 615,00', 0, 0),
(@p, 'R$ 725,00', 0, 0),
(@p, 'R$ 525,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Em uma biblioteca havia 1.420 livros. Foram emprestados 385 e doados 115 novos exemplares. Quantos livros há agora?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '1150', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se a soma de dois números é 100 e um deles é 37, o outro número é obrigatoriamente 63.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as afirmações verdadeiras sobre a relação entre adição e subtração:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A subtração é a operação inversa da adição.', 1, 0),
(@p, 'Somando o subtraendo com a diferença, obtemos o minuendo.', 1, 0),
(@p, 'A propriedade associativa vale para a adição: (a + b) + c = a + (b + c).', 1, 0),
(@p, 'Toda subtração entre números naturais gera sempre um número natural.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Relacione cada propriedade da adição ao seu exemplo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '12 + 8 = 8 + 12', 1, 1, 'Propriedade Comutativa'),
(@p, '(5 + 3) + 2 = 5 + (3 + 2)', 1, 2, 'Propriedade Associativa'),
(@p, '29 + 0 = 29', 1, 3, 'Elemento Neutro');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para resolver: "Ana tinha R$ 500, gastou R$ 180 e depois R$ 95":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Somar os gastos totais: 180 + 95 = 275', 1, 1),
(@p, 'Subtrair os gastos do valor inicial: 500 - 275', 1, 2),
(@p, 'Obter o saldo restante: R$ 225', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre o maior número de três algarismos distintos e o menor número de três algarismos distintos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '885 (987 - 102)', 1, 0),
(@p, '899 (999 - 100)', 0, 0),
(@p, '864 (987 - 123)', 0, 0),
(@p, '876 (999 - 123)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao somar 10 unidades ao minuendo e 10 unidades ao subtraendo, o resto da subtração não se altera.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 1.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Adição e Subtração com Números Inteiros (Negativos)', 2, 1);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é (-18) + (-12)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-30', 1, 0),
(@p, '30', 0, 0),
(@p, '-6', 0, 0),
(@p, '6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Subtrair um número negativo equivale a somar o seu oposto positivo (ex.: 10 - (-4) = 14).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Um termômetro marcava -4 °C pela manhã e subiu 11 °C à tarde. Qual temperatura passou a marcar? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '7', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais expressões resultam em um número NEGATIVO?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-25 + 10', 1, 0),
(@p, '14 - 30', 1, 0),
(@p, '-8 - 9', 1, 0),
(@p, '-12 + 20', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada operação com inteiros ao seu resultado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '-15 + 22', 1, 1, '7'),
(@p, '-15 - 22', 1, 2, '-37'),
(@p, '15 - (-22)', 1, 3, '37');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os resultados do MENOR (mais negativo) para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-10 - 15 (-25)', 1, 1),
(@p, '-20 + 8 (-12)', 1, 2),
(@p, '-5 + 5 (0)', 1, 3),
(@p, '6 - (-4) (10)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A soma de um número inteiro com o seu simétrico (oposto) é sempre igual a:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0', 1, 0),
(@p, '1', 0, 0),
(@p, 'O dobro do número', 0, 0),
(@p, '-1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na soma de dois números com sinais diferentes, subtraímos os módulos e mantemos o sinal do número de maior módulo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 1.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expressões Numéricas e Desafios Lógicos', 3, 1);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Resolva a expressão: 45 - [18 - (12 - 7) + 4]');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '28', 1, 0),
(@p, '32', 0, 0),
(@p, '24', 0, 0),
(@p, '36', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a prioridade de eliminação dos sinais de associação em expressões numéricas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1º Parênteses ( )', 1, 1),
(@p, '2º Colchetes [ ]', 1, 2),
(@p, '3º Chaves { }', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Em uma subtração, a soma do minuendo, subtraendo e resto é igual a 240. Qual é o valor do minuendo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '120', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando há um sinal de menos (-) antes de parênteses, todos os sinais internos devem ser invertidos ao eliminá-los.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais igualdades são verdadeiras para quaisquer números reais a e b?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'a - (b + c) = a - b - c', 1, 0),
(@p, 'a - (b - c) = a - b + c', 1, 0),
(@p, 'a + (b - c) = a + b - c', 1, 0),
(@p, 'a - (b - c) = a - b - c', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a expressão ao seu resultado final:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '100 - (40 + 25)', 1, 1, '35'),
(@p, '100 - (40 - 25)', 1, 2, '85'),
(@p, '100 - (-40 + 25)', 1, 3, '115');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A soma de três números inteiros consecutivos é 72. Qual é o maior deles?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '25', 1, 0),
(@p, '24', 0, 0),
(@p, '23', 0, 0),
(@p, '26', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A soma de dois números ímpares consecutivos é sempre um número múltiplo de 4.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 2: Multiplicação e Divisão
-- -------------------------------------------------------------------------

-- Quiz 2.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fundamentos da Multiplicação e Divisão', 1, 2);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é 24 × 15?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '360', 1, 0),
(@p, '340', 0, 0),
(@p, '260', 0, 0),
(@p, '380', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na matemática, é impossível dividir qualquer número por zero.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o quociente da divisão exata 432 ÷ 12?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '36', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione os números que são divisores exatos de 36:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4', 1, 0),
(@p, '6', 1, 0),
(@p, '9', 1, 0),
(@p, '8', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada termo da divisão ao seu papel:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dividendo', 1, 1, 'Número que será repartido'),
(@p, 'Divisor', 1, 2, 'Número de partes em que se divide'),
(@p, 'Quociente', 1, 3, 'Resultado da divisão');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os produtos do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '7 × 8 (56)', 1, 1),
(@p, '9 × 7 (63)', 1, 2),
(@p, '12 × 6 (72)', 1, 3),
(@p, '9 × 9 (81)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o elemento neutro da multiplicação?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1', 1, 0),
(@p, '0', 0, 0),
(@p, '10', 0, 0),
(@p, '-1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todo número multiplicado por zero resulta em zero (elemento absorvente).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Divisão Não Exata, Resto e Critérios de Divisibilidade', 2, 2);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em uma divisão, o divisor é 8, o quociente é 14 e o resto é o maior possível. Qual é o dividendo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '119 (8 × 14 + 7)', 1, 0),
(@p, '112 (8 × 14)', 0, 0),
(@p, '120 (8 × 14 + 8)', 0, 0),
(@p, '113 (8 × 14 + 1)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um número é divisível por 3 quando a soma de seus algarismos é um múltiplo de 3.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale os números que são divisíveis simultaneamente por 2 e por 3 (logo, por 6):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '144', 1, 0),
(@p, '252', 1, 0),
(@p, '318', 1, 0),
(@p, '135', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o critério de divisibilidade ao respectivo divisor:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Termina em 0 ou 5', 1, 1, 'Divisível por 5'),
(@p, 'Termina em algarismo par', 1, 2, 'Divisível por 2'),
(@p, 'Soma dos algarismos é múltipla de 9', 1, 3, 'Divisível por 9');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o resto da divisão de 175 por 12?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '7', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a relação fundamental da divisão (Prova Real):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Multiplicar o divisor pelo quociente', 1, 1),
(@p, 'Somar o resto ao produto obtido', 1, 2),
(@p, 'Conferir se o resultado é igual ao dividendo', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o maior resto possível em uma divisão por 15?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '14', 1, 0),
(@p, '15', 0, 0),
(@p, '16', 0, 0),
(@p, '1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um número é divisível por 4 quando seus dois últimos algarismos formam um número divisível por 4.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regra de Sinais na Multiplicação e Divisão', 2, 2);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é (-12) × (-5)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '60', 1, 0),
(@p, '-60', 0, 0),
(@p, '-17', 0, 0),
(@p, '17', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a regra de sinais ao resultado da multiplicação/divisão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Positivo × Positivo', 1, 1, 'Resultado Positivo (+)'),
(@p, 'Negativo × Negativo', 1, 2, 'Resultado Positivo (+)'),
(@p, 'Positivo × Negativo', 1, 3, 'Resultado Negativo (-)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O produto de três números negativos resulta em um número negativo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as operações cujo resultado é POSITIVO:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(-48) ÷ (-6)', 1, 0),
(@p, '(-3) × (-4) × (+2)', 1, 0),
(@p, '(-10) × (-10)', 1, 0),
(@p, '(+36) ÷ (-9)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o resultado de (-84) ÷ (+7):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '-12', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os resultados do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(-6) × (+5) (-30)', 1, 1),
(@p, '(+24) ÷ (-3) (-8)', 1, 2),
(@p, '(-4) × (-3) (+12)', 1, 3),
(@p, '(-5) × (-8) (+40)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o valor de (-2) × (-3) × (-4)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-24', 1, 0),
(@p, '24', 0, 0),
(@p, '-9', 0, 0),
(@p, '9', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Zero dividido por qualquer número inteiro diferente de zero é igual a zero.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propriedade Distributiva, MMC e MDC', 3, 2);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Aplicando a propriedade distributiva em 7 × (10 + 4), obtemos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '70 + 28 = 98', 1, 0),
(@p, '70 + 4 = 74', 0, 0),
(@p, '17 × 11 = 187', 0, 0),
(@p, '10 + 28 = 38', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o Mínimo Múltiplo Comum (MMC) entre 12 e 18?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '36', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O produto de dois números naturais positivos é sempre igual ao produto do seu MMC pelo seu MDC.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais pares de números são primos entre si (MDC = 1)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '8 e 15', 1, 0),
(@p, '9 e 14', 1, 0),
(@p, '7 e 20', 1, 0),
(@p, '12 e 18', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o par de números ao seu Máximo Divisor Comum (MDC):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'MDC(12, 18)', 1, 1, '6'),
(@p, 'MDC(20, 30)', 1, 2, '10'),
(@p, 'MDC(15, 25)', 1, 3, '5');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução correta da expressão: 30 - 18 ÷ 3 × 2 + 4');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1º Resolver a divisão: 18 ÷ 3 = 6', 1, 1),
(@p, '2º Resolver a multiplicação: 6 × 2 = 12', 1, 2),
(@p, '3º Resolver subtração e soma na ordem: 30 - 12 + 4 = 22', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dois ônibus partem juntos de um terminal. Um retorna a cada 20 min e outro a cada 30 min. Após quantos minutos partirão juntos novamente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '60 minutos', 1, 0),
(@p, '50 minutos', 0, 0),
(@p, '10 minutos', 0, 0),
(@p, '120 minutos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em expressões sem parênteses contendo multiplicação e divisão seguidas, resolve-se da esquerda para a direita na ordem em que aparecem.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 3: Frações
-- -------------------------------------------------------------------------

-- Quiz 3.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito, Leitura e Tipos de Frações', 1, 3);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em uma fração, o número que fica abaixo do traço (denominador) indica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Em quantas partes iguais o inteiro foi dividido.', 1, 0),
(@p, 'Quantas partes foram tomadas do inteiro.', 0, 0),
(@p, 'O resultado da multiplicação.', 0, 0),
(@p, 'O resto da divisão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Classifique cada fração de acordo com seu tipo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '3/5', 1, 1, 'Fração própria (numerador < denominador)'),
(@p, '7/4', 1, 2, 'Fração imprópria (numerador > denominador)'),
(@p, '8/4', 1, 3, 'Fração aparente (representa um inteiro)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As frações 1/2 e 3/6 são frações equivalentes porque representam a mesma parte do todo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione todas as frações equivalentes a 2/3:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4/6', 1, 0),
(@p, '6/9', 1, 0),
(@p, '10/15', 1, 0),
(@p, '3/4', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Simplifique a fração 12/18 até a sua forma irredutível (escreva no formato a/b):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '2/3', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as frações da MENOR para a MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/8', 1, 1),
(@p, '1/4', 1, 2),
(@p, '1/2', 1, 3),
(@p, '3/4', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto vale 3/5 de 100?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '60', 1, 0),
(@p, '20', 0, 0),
(@p, '75', 0, 0),
(@p, '30', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando duas frações têm o mesmo numerador positivo, a maior é aquela que possui o MENOR denominador.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Adição e Subtração de Frações', 2, 3);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o resultado de 1/3 + 1/6?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/2', 1, 0),
(@p, '2/9', 0, 0),
(@p, '2/6', 0, 0),
(@p, '1/9', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para somar frações com denominadores diferentes, devemos primeiro reduzi-las ao mesmo denominador comum (usando o MMC).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule 5/8 - 1/8 e escreva a fração irredutível resultante (formato a/b):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '1/2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as somas de frações que resultam em 1 inteiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/4 + 3/4', 1, 0),
(@p, '1/2 + 2/4', 1, 0),
(@p, '2/5 + 6/10', 1, 0),
(@p, '1/3 + 1/2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada operação ao seu resultado simplificado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '1/2 + 1/4', 1, 1, '3/4'),
(@p, '3/4 - 1/2', 1, 2, '1/4'),
(@p, '1 - 2/5', 1, 3, '3/5');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas para somar 2/3 + 1/4:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular o MMC(3, 4) = 12', 1, 1),
(@p, 'Obter as frações equivalentes: 8/12 + 3/12', 1, 2),
(@p, 'Somar os numeradores: 11/12', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'João comeu 1/4 de uma pizza e Maria comeu 2/5. Que fração da pizza sobrou?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '7/20', 1, 0),
(@p, '13/20', 0, 0),
(@p, '3/9', 0, 0),
(@p, '6/9', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O número misto 2 1/3 equivale à fração imprópria 7/3.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Multiplicação e Divisão de Frações', 2, 3);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o resultado de (2/3) × (3/5)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2/5', 1, 0),
(@p, '6/8', 0, 0),
(@p, '10/9', 0, 0),
(@p, '5/8', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para dividir uma fração por outra, conservamos a primeira fração e multiplicamos pelo inverso da segunda.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule (3/4) ÷ (1/2) e escreva na forma fracionária irredutível (a/b):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '3/2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as igualdades corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(1/2) × (1/2) = 1/4', 1, 0),
(@p, '(1/2) ÷ (1/2) = 1', 1, 0),
(@p, '4 × (3/4) = 3', 1, 0),
(@p, '(2/3) ÷ (2/3) = 4/9', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada expressão ao seu resultado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Metade de 1/3', 1, 1, '1/6'),
(@p, 'O dobro de 3/8', 1, 2, '3/4'),
(@p, '3 ÷ (1/2)', 1, 3, '6');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o passo a passo para calcular (4/5) ÷ (2/3):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Manter a primeira fração: 4/5', 1, 1),
(@p, 'Inverter a segunda fração: 3/2', 1, 2),
(@p, 'Multiplicar e simplificar: 12/10 = 6/5', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantos copos de 1/4 de litro podem ser enchidos com uma garrafa de 2 litros?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '8 copos', 1, 0),
(@p, '4 copos', 0, 0),
(@p, '2 copos', 0, 0),
(@p, '6 copos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O inverso da fração 5/7 é 7/5, e o produto entre uma fração não nula e seu inverso é sempre 1.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expressões Fracionárias e Problemas Avançados', 3, 3);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um tanque está com 2/3 de sua capacidade. Retirando-se 100 litros, passa a ter 1/2 da capacidade. Qual é a capacidade total do tanque?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '600 litros', 1, 0),
(@p, '300 litros', 0, 0),
(@p, '450 litros', 0, 0),
(@p, '500 litros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Resolva a fração complexa: (1/2 + 1/3) ÷ (5/6). (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '1', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A fração 7/20 gera um número decimal exato, pois seu denominador possui apenas fatores primos 2 e 5.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais frações geram dízimas periódicas simples ou compostas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/3', 1, 0),
(@p, '5/6', 1, 0),
(@p, '2/7', 1, 0),
(@p, '3/8', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada dízima periódica à sua fração geratriz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '0,333...', 1, 1, '1/3'),
(@p, '0,777...', 1, 2, '7/9'),
(@p, '0,121212...', 1, 3, '4/33');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo de "2/3 de 3/4 de 80":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Multiplicar as frações: (2/3) × (3/4) = 1/2', 1, 1),
(@p, 'Aplicar o resultado sobre 80: (1/2) × 80', 1, 2),
(@p, 'Obter o valor final: 40', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Gastei 1/3 do meu salário com aluguel e 1/4 do RESTANTE com alimentação. Que fração do salário total sobrou?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/2', 1, 0),
(@p, '5/12', 0, 0),
(@p, '7/12', 0, 0),
(@p, '1/6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A dízima periódica 0,999... é matematicamente igual ao número inteiro 1.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 4: Números Decimais
-- -------------------------------------------------------------------------

-- Quiz 4.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Leitura, Comparação e Soma de Decimais', 1, 4);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é 3,45 + 2,8?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '6,25', 1, 0),
(@p, '3,73', 0, 0),
(@p, '5,25', 0, 0),
(@p, '6,15', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Acrescentar zeros à direita da parte decimal de um número (ex.: 2,5 = 2,50 = 2,500) não altera seu valor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule 10 - 3,75 (use vírgula como separador decimal):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '6,25', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais números decimais são MAIORES que 0,5?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,7', 1, 0),
(@p, '0,55', 1, 0),
(@p, '1,02', 1, 0),
(@p, '0,499', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada número decimal à sua forma fracionária:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '0,5', 1, 1, '1/2'),
(@p, '0,25', 1, 2, '1/4'),
(@p, '0,75', 1, 3, '3/4');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os números decimais do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,09', 1, 1),
(@p, '0,15', 1, 2),
(@p, '0,4', 1, 3),
(@p, '0,42', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se lê corretamente o número 0,007?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sete milésimos', 1, 0),
(@p, 'Sete décimos', 0, 0),
(@p, 'Sete centésimos', 0, 0),
(@p, 'Setenta milésimos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para somar ou subtrair números decimais no algoritmo tradicional, devemos alinhar vírgula embaixo de vírgula.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Multiplicação e Divisão de Decimais', 2, 4);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é 0,4 × 0,2?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,08', 1, 0),
(@p, '0,8', 0, 0),
(@p, '0,008', 0, 0),
(@p, '8', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao multiplicar um número decimal por 100, deslocamos a vírgula duas casas para a direita.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o resultado da divisão 6,4 ÷ 0,8 (apenas o número inteiro):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '8', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as operações que resultam em 45:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4,5 × 10', 1, 0),
(@p, '0,45 × 100', 1, 0),
(@p, '450 ÷ 10', 1, 0),
(@p, '4,5 ÷ 10', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada operação ao seu resultado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '12,5 × 10', 1, 1, '125'),
(@p, '12,5 ÷ 10', 1, 2, '1,25'),
(@p, '12,5 ÷ 100', 1, 3, '0,125');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento para dividir 3,6 ÷ 0,12:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Igualar as casas decimais: 3,60 ÷ 0,12', 1, 1),
(@p, 'Eliminar as vírgulas (multiplicar ambos por 100): 360 ÷ 12', 1, 2),
(@p, 'Efetuar a divisão inteira: 30', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um litro de combustível custa R$ 5,80. Quanto custarão 15 litros?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 87,00', 1, 0),
(@p, 'R$ 85,00', 0, 0),
(@p, 'R$ 77,00', 0, 0),
(@p, 'R$ 92,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Dividir um número por 0,5 é o mesmo que multiplicá-lo por 2.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conversão Fração-Decimal e Arredondamento', 2, 4);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a representação decimal da fração 3/8?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,375', 1, 0),
(@p, '0,38', 0, 0),
(@p, '0,35', 0, 0),
(@p, '0,625', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Arredondando 4,678 para duas casas decimais (centésimos), obtemos 4,68.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva o número decimal 0,04 como fração irredutível (formato a/b):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '1/25', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as igualdades verdadeiras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/5 = 0,2', 1, 0),
(@p, '3/2 = 1,5', 1, 0),
(@p, '7/100 = 0,07', 1, 0),
(@p, '1/4 = 0,4', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o número decimal à sua leitura em unidades monetárias:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'R$ 0,05', 1, 1, 'Cinco centavos'),
(@p, 'R$ 0,50', 1, 2, 'Cinquenta centavos'),
(@p, 'R$ 5,00', 1, 3, 'Cinco reais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/5 (0,2)', 1, 1),
(@p, '0,25', 1, 2),
(@p, '3/10 (0,3)', 1, 3),
(@p, '0,35', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual fração decimal equivale ao número 2,35?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '235/100', 1, 0),
(@p, '235/10', 0, 0),
(@p, '235/1000', 0, 0),
(@p, '23/5', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todo número decimal exato pode ser escrito na forma de uma fração cujo denominador é uma potência de 10.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expressões com Decimais e Dízimas Periódicas', 3, 4);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Calcule o valor de: (0,5)² + 0,75 ÷ 0,25');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3,25', 1, 0),
(@p, '3,50', 0, 0),
(@p, '5,50', 0, 0),
(@p, '1,25', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o valor de 0,444... + 0,555...? (apenas o número inteiro)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '1', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Dividir um número por 0,25 é equivalente a multiplicá-lo por 4.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale as expressões cujo resultado é igual a 10:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2,5 ÷ 0,25', 1, 0),
(@p, '1,25 × 8', 1, 0),
(@p, '0,1 × 100', 1, 0),
(@p, '0,2 × 5', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o atalho de cálculo mental ao seu equivalente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Multiplicar por 0,5', 1, 1, 'Dividir por 2'),
(@p, 'Multiplicar por 0,25', 1, 2, 'Dividir por 4'),
(@p, 'Dividir por 0,1', 1, 3, 'Multiplicar por 10');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo da expressão: 1,2 + 0,3 × 0,4');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1º Multiplicar: 0,3 × 0,4 = 0,12', 1, 1),
(@p, '2º Somar: 1,2 + 0,12', 1, 2),
(@p, '3º Resultado: 1,32', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um produto custava R$ 40,00 e sofreu um acréscimo de R$ 0,05 por real. Qual o novo preço?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 42,00', 1, 0),
(@p, 'R$ 40,05', 0, 0),
(@p, 'R$ 45,00', 0, 0),
(@p, 'R$ 40,50', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O quadrado de 0,1 é 0,01.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 5: Porcentagem
-- -------------------------------------------------------------------------

-- Quiz 5.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Básicos e Cálculo Mental de Porcentagem', 1, 5);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é 25% de 200?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '50', 1, 0),
(@p, '25', 0, 0),
(@p, '75', 0, 0),
(@p, '100', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada porcentagem à sua fração equivalente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '50%', 1, 1, '1/2 (metade)'),
(@p, '25%', 1, 2, '1/4 (um quarto)'),
(@p, '10%', 1, 3, '1/10 (um décimo)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Calcular 10% de qualquer número equivale a dividi-lo por 10.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quanto é 15% de 300? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '45', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale as expressões equivalentes a 20%:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '20/100', 1, 0),
(@p, '0,2', 1, 0),
(@p, '1/5', 1, 0),
(@p, '0,02', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os valores do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10% de 80 (8)', 1, 1),
(@p, '25% de 40 (10)', 1, 2),
(@p, '50% de 30 (15)', 1, 3),
(@p, '100% de 20 (20)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em uma sala com 40 alunos, 30 foram aprovados. Qual a porcentagem de aprovação?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '75%', 1, 0),
(@p, '30%', 0, 0),
(@p, '70%', 0, 0),
(@p, '80%', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: 5% na forma decimal escreve-se 0,05.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Acréscimos e Descontos Percentuais', 2, 5);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma camisa custava R$ 80,00 e teve um desconto de 15%. Qual é o novo preço?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 68,00', 1, 0),
(@p, 'R$ 65,00', 0, 0),
(@p, 'R$ 72,00', 0, 0),
(@p, 'R$ 12,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a variação percentual ao seu fator multiplicativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Aumento de 20%', 1, 1, 'Multiplicar por 1,20'),
(@p, 'Desconto de 20%', 1, 2, 'Multiplicar por 0,80'),
(@p, 'Aumento de 5%', 1, 3, 'Multiplicar por 1,05');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Dar um desconto de 30% sobre um produto equivale a cobrar 70% do seu valor original.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Um aluguel de R$ 1.200,00 sofreu reajuste de 10%. Qual passou a ser o valor do aluguel? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '1320', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os fatores multiplicativos corretos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento de 100% = multiplicar por 2', 1, 0),
(@p, 'Desconto de 50% = multiplicar por 0,5', 1, 0),
(@p, 'Aumento de 150% = multiplicar por 2,5', 1, 0),
(@p, 'Desconto de 10% = multiplicar por 0,1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo para descobrir o percentual de desconto de um item que caiu de R$ 200 para R$ 150:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular o valor abatido: 200 - 150 = 50', 1, 1),
(@p, 'Dividir o desconto pelo valor inicial: 50 / 200 = 0,25', 1, 2),
(@p, 'Converter para porcentagem: 25%', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um produto passou de R$ 50,00 para R$ 60,00. Qual foi o percentual de aumento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '20%', 1, 0),
(@p, '10%', 0, 0),
(@p, '16,6%', 0, 0),
(@p, '25%', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se um produto dobra de preço, ele teve um aumento de 100%.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Aumentos e Descontos Sucessivos', 2, 5);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um produto de R$ 100,00 sofre um aumento de 10% e, em seguida, um desconto de 10%. Qual é o preço final?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 99,00', 1, 0),
(@p, 'R$ 100,00', 0, 0),
(@p, 'R$ 101,00', 0, 0),
(@p, 'R$ 90,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Dois aumentos sucessivos de 10% equivalem a um aumento acumulado de 21%, e não de 20%.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Dois descontos sucessivos de 20% e 10% sobre R$ 100,00 resultam em qual valor final? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '72', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Sobre variações percentuais sucessivas, marque as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Basta multiplicar os fatores de cada etapa.', 1, 0),
(@p, 'A ordem dos descontos sucessivos não altera o valor final.', 1, 0),
(@p, 'Dois descontos de 50% reduzem o valor a 25% do inicial.', 1, 0),
(@p, 'Aumentar 50% e reduzir 50% volta ao valor original.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe as operações sucessivas ao fator final acumulado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '+10% seguido de +10%', 1, 1, '1,21 (+21%)'),
(@p, '-10% seguido de -10%', 1, 2, '0,81 (-19%)'),
(@p, '+20% seguido de -20%', 1, 3, '0,96 (-4%)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo de R$ 200,00 com aumento de 20% seguido de desconto de 10%:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aplicar +20%: 200 × 1,20 = 240', 1, 1),
(@p, 'Aplicar -10% sobre o novo valor: 240 × 0,90', 1, 2),
(@p, 'Resultado final: R$ 216,00', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Após um desconto de 20%, um tênis foi vendido por R$ 160,00. Qual era o preço original antes do desconto?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 200,00', 1, 0),
(@p, 'R$ 192,00', 0, 0),
(@p, 'R$ 180,00', 0, 0),
(@p, 'R$ 220,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para descobrir o valor original antes de um aumento de 25%, deve-se dividir o valor atual por 1,25.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Juros Simples, Lucro sobre Custo/Venda e Problemas Complexos', 3, 5);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um capital de R$ 1.000,00 aplicado a juros simples de 2% ao mês durante 5 meses renderá quanto de juros?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 100,00', 1, 0),
(@p, 'R$ 104,08', 0, 0),
(@p, 'R$ 20,00', 0, 0),
(@p, 'R$ 200,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Um produto comprado por R$ 80,00 foi vendido por R$ 100,00. Qual foi o percentual de lucro sobre o preço de VENDA? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '20', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se um produto sofre um aumento de 25%, para voltar ao preço original é necessário um desconto de 20%.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as afirmações verdadeiras sobre Juros Simples (J = C · i · t):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os juros incidem sempre sobre o capital inicial.', 1, 0),
(@p, 'O montante é a soma do capital com os juros (M = C + J).', 1, 0),
(@p, 'A taxa (i) e o tempo (t) devem estar na mesma unidade temporal.', 1, 0),
(@p, 'Os juros crescem exponencialmente a cada período.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a variável de Juros Simples ao seu símbolo padrão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Capital inicial', 1, 1, 'C'),
(@p, 'Taxa de juros', 1, 2, 'i'),
(@p, 'Montante final', 1, 3, 'M');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do montante de R$ 500,00 a 4% a.m. por 3 meses (juros simples):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular juros: J = 500 × 0,04 × 3 = 60', 1, 1),
(@p, 'Somar ao capital: M = 500 + 60', 1, 2),
(@p, 'Montante final: R$ 560,00', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em uma empresa, 40% dos funcionários são mulheres. Se 25% das mulheres e 50% dos homens têm curso superior, qual o percentual total de graduados na empresa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '40%', 1, 0),
(@p, '37,5%', 0, 0),
(@p, '75%', 0, 0),
(@p, '35%', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um lucro de 25% sobre o preço de custo corresponde a um lucro de 20% sobre o preço de venda.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 6: Regra de Três
-- -------------------------------------------------------------------------

-- Quiz 6.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Grandezas Diretamente Proporcionais', 1, 6);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Se 3 cadernos custam R$ 24,00, quanto custarão 7 cadernos iguais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 56,00', 1, 0),
(@p, 'R$ 48,00', 0, 0),
(@p, 'R$ 64,00', 0, 0),
(@p, 'R$ 42,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Duas grandezas são diretamente proporcionais quando, dobrando uma delas, a outra também dobra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Um carro percorre 180 km com 15 litros de gasolina. Quantos quilômetros percorrerá com 25 litros? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '300', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pares de grandezas DIRETAMENTE proporcionais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quantidade de pães comprados e valor a pagar', 1, 0),
(@p, 'Distância percorrida e combustível gasto (velocidade constante)', 1, 0),
(@p, 'Horas trabalhadas e salário recebido (valor/hora fixo)', 1, 0),
(@p, 'Velocidade de um carro e tempo de viagem para um mesmo trajeto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a situação ao valor encontrado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '2 kg custam R$ 10 -> 5 kg custam', 1, 1, 'R$ 25,00'),
(@p, '4 horas produzem 80 peças -> 6 horas produzem', 1, 2, '120 peças'),
(@p, '5 metros custam R$ 35 -> 2 metros custam', 1, 3, 'R$ 14,00');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para resolver uma regra de três simples direta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Organizar as grandezas em colunas de mesma espécie', 1, 1),
(@p, 'Confirmar que são diretamente proporcionais', 1, 2),
(@p, 'Multiplicar cruzado e isolar a incógnita x', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma impressora imprime 45 páginas em 3 minutos. Em quanto tempo imprimirá 150 páginas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 minutos', 1, 0),
(@p, '9 minutos', 0, 0),
(@p, '12 minutos', 0, 0),
(@p, '15 minutos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na proporção a/b = c/d, o produto dos meios é igual ao produto dos extremos (a · d = b · c).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Grandezas Inversamente Proporcionais', 2, 6);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Se 6 pedreiros constroem um muro em 12 dias, em quantos dias 9 pedreiros (com mesmo ritmo) construirão o mesmo muro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '8 dias', 1, 0),
(@p, '18 dias', 0, 0),
(@p, '6 dias', 0, 0),
(@p, '10 dias', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando duas grandezas são inversamente proporcionais, multiplicamos em linha reta (horizontal) em vez de multiplicar cruzado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'A 80 km/h, um trem faz um percurso em 3 horas. A 60 km/h, em quantas horas fará o mesmo percurso? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '4', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique situações de grandezas INVERSAMENTE proporcionais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Número de torneiras abertas e tempo para encher um tanque', 1, 0),
(@p, 'Velocidade média e tempo de viagem para distância fixa', 1, 0),
(@p, 'Número de operários e dias para concluir uma obra', 1, 0),
(@p, 'Raio de um círculo e seu perímetro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o problema inversamente proporcional à sua resposta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '4 máquinas fazem em 10h -> 8 máquinas fazem em', 1, 1, '5 horas'),
(@p, '3 torneiras enchem em 12h -> 4 torneiras enchem em', 1, 2, '9 horas'),
(@p, '10 pessoas têm comida por 6 dias -> 15 pessoas têm por', 1, 3, '4 dias');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a montagem da regra de três inversa: "4 operários levam 15 dias; 6 operários levam x dias":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar que mais operários exigem menos dias (inversa)', 1, 1),
(@p, 'Inverter uma das razões: 4/6 = x/15', 1, 2),
(@p, 'Resolver: 6x = 60 -> x = 10 dias', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma torneira com vazão de 20 litros/min enche uma caixa em 18 minutos. Se a vazão for de 30 litros/min, quanto tempo levará?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '12 minutos', 1, 0),
(@p, '27 minutos', 0, 0),
(@p, '15 minutos', 0, 0),
(@p, '10 minutos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A idade de uma pessoa e a sua altura são grandezas matematicamente proporcionais durante toda a vida.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 6.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Escalas, Densidade e Proporcionalidade Aplicada', 2, 6);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em um mapa na escala 1 : 50.000, uma distância de 4 cm no papel representa quanto na realidade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2 km (200.000 cm)', 1, 0),
(@p, '20 km', 0, 0),
(@p, '500 m', 0, 0),
(@p, '200 m', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A escala cartográfica é a razão entre a medida no desenho e a medida real correspondente (na mesma unidade).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Para fazer um refresco, mistura-se suco concentrado e água na razão 1 : 4. Quantos litros de água são necessários para 3 litros de suco? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '12', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as razões equivalentes a 3 : 5:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '6 : 10', 1, 0),
(@p, '15 : 25', 1, 0),
(@p, '0,6', 1, 0),
(@p, '5 : 3', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a grandeza derivada à razão que a define:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Velocidade média', 1, 1, 'Distância ÷ Tempo'),
(@p, 'Densidade demográfica', 1, 2, 'População ÷ Área'),
(@p, 'Consumo médio', 1, 3, 'Distância ÷ Combustível');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a divisão de R$ 100,00 em partes diretamente proporcionais a 2 e 3:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Somar as partes: 2 + 3 = 5', 1, 1),
(@p, 'Achar o valor de cada parte: 100 ÷ 5 = 20', 1, 2),
(@p, 'Distribuir: R$ 40,00 e R$ 60,00', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Se x está para 12 assim como 5 está para 4, qual é o valor de x?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '15', 1, 0),
(@p, '10', 0, 0),
(@p, '20', 0, 0),
(@p, '9,6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um torneio com 12 equipes e outro com 24 equipes mantêm a mesma razão de classificação se classificarem 3 e 6 equipes, respectivamente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regra de Três Composta', 3, 6);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Se 4 máquinas produzem 200 peças em 5 dias, quantas peças 6 máquinas produzirão em 8 dias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '480 peças', 1, 0),
(@p, '360 peças', 0, 0),
(@p, '400 peças', 0, 0),
(@p, '240 peças', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Em 6 dias, 8 operários cavam 120 metros de vala. Quantos operários são necessários para cavar 150 metros em 5 dias? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '12', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na regra de três composta, cada grandeza deve ser comparada individualmente com a grandeza que contém a incógnita x.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'No método "Processo × Produto", quais elementos costumam compor o PRODUTO (resultado do trabalho)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Peças produzidas', 1, 0),
(@p, 'Metros construídos ou cavados', 1, 0),
(@p, 'Páginas digitadas', 1, 0),
(@p, 'Número de trabalhadores', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Classifique cada grandeza em relação ao TEMPO (dias) para concluir uma mesma obra fixa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Número de operários', 1, 1, 'Inversamente proporcional'),
(@p, 'Horas trabalhadas por dia', 1, 2, 'Inversamente proporcional'),
(@p, 'Tamanho da obra', 1, 3, 'Diretamente proporcional');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o método de resolução da Regra de Três Composta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Isolar a razão da grandeza que contém x de um lado da igualdade', 1, 1),
(@p, 'Analisar se cada outra grandeza é direta ou inversa em relação a x', 1, 2),
(@p, 'Inverter apenas as razões inversamente proporcionais e multiplicá-las', 1, 3),
(@p, 'Resolver a proporção resultante', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Trabalhando 6 horas por dia, 10 digitadores preparam um livro em 12 dias. Trabalhando 8 horas por dia, quantos digitadores farão o mesmo livro em 9 dias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 digitadores', 1, 0),
(@p, '12 digitadores', 0, 0),
(@p, '8 digitadores', 0, 0),
(@p, '15 digitadores', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se dobrarmos o número de trabalhadores e também dobrarmos as horas trabalhadas por dia, o tempo necessário para concluir a obra cai para um quarto (1/4).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 7: Equações do 1º grau
-- -------------------------------------------------------------------------

-- Quiz 7.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito de Incógnita e Equações Simples', 1, 7);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o valor de x na equação 3x + 5 = 20?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5', 1, 0),
(@p, '15', 0, 0),
(@p, '3', 0, 0),
(@p, '25/3', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Uma equação é uma sentença matemática expressa por uma igualdade que possui pelo menos uma incógnita (letra).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Resolva a equação: 4x - 8 = 16. Digite apenas o valor de x:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '6', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as equações cuja raiz (solução) é x = 4:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2x + 1 = 9', 1, 0),
(@p, '5x - 3 = 17', 1, 0),
(@p, 'x / 2 + 3 = 5', 1, 0),
(@p, '3x + 2 = 11', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada equação ao seu conjunto solução:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'x + 9 = 14', 1, 1, 'x = 5'),
(@p, '2x = -10', 1, 2, 'x = -5'),
(@p, 'x / 3 = 4', 1, 3, 'x = 12');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para resolver 5x - 7 = 18:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Isolar o termo com x: 5x = 18 + 7', 1, 1),
(@p, 'Somar os termos independentes: 5x = 25', 1, 2),
(@p, 'Dividir ambos os lados por 5: x = 5', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na forma geral ax + b = 0 de uma equação do 1º grau, qual condição é obrigatória?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'a ≠ 0', 1, 0),
(@p, 'b = 0', 0, 0),
(@p, 'a = 1', 0, 0),
(@p, 'x > 0', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se somarmos ou multiplicarmos ambos os membros de uma equação pelo mesmo número não nulo, a igualdade permanece verdadeira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Equações com Parênteses e Incógnita nos Dois Membros', 2, 7);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Resolva: 5x - 4 = 2x + 11');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'x = 5', 1, 0),
(@p, 'x = 3', 0, 0),
(@p, 'x = 7', 0, 0),
(@p, 'x = 15/7', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Determine o valor de x em: 3(x + 2) = 21');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '5', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A equação 2(x - 3) = 2x - 6 é uma identidade, pois é verdadeira para qualquer valor real de x.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os passos corretos na resolução de 4(x - 1) = 2x + 6:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aplicar distributiva: 4x - 4 = 2x + 6', 1, 0),
(@p, 'Agrupar termos semelhantes: 4x - 2x = 6 + 4', 1, 0),
(@p, 'Concluir que x = 5', 1, 0),
(@p, 'Concluir que x = 1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a equação à sua raiz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '2(x + 4) = 10', 1, 1, 'x = 1'),
(@p, '7x - 2 = 4x + 10', 1, 2, 'x = 4'),
(@p, '10 - 3x = 1', 1, 3, 'x = 3');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução de 6 - 2(x - 1) = 4:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eliminar parênteses: 6 - 2x + 2 = 4', 1, 1),
(@p, 'Reduzir termos: 8 - 2x = 4', 1, 2),
(@p, 'Isolar x: -2x = -4 -> x = 2', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a solução da equação -3x = 18?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'x = -6', 1, 0),
(@p, 'x = 6', 0, 0),
(@p, 'x = 21', 0, 0),
(@p, 'x = -15', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A equação x + 5 = x + 9 não possui solução (conjunto solução vazio).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tradução de Problemas para Linguagem Algébrica', 2, 7);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O dobro de um número somado a 15 é igual a 43. Qual é esse número?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '14', 1, 0),
(@p, '29', 0, 0),
(@p, '28', 0, 0),
(@p, '19', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada expressão verbal à sua representação algébrica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'O triplo de um número menos 4', 1, 1, '3x - 4'),
(@p, 'A metade de um número mais 7', 1, 2, 'x/2 + 7'),
(@p, 'O sucessor de um número inteiro x', 1, 3, 'x + 1');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se a soma de dois números é 30 e um deles é x, o outro pode ser representado por (30 - x).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'A soma da idade de Pedro com o triplo dela é igual a 48 anos. Quantos anos Pedro tem? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '12', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais equações traduzem: "A diferença entre o quádruplo de um número e 10 é igual ao dobro desse número mais 6"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4x - 10 = 2x + 6', 1, 0),
(@p, '2x = 16', 1, 0),
(@p, 'x = 8', 1, 0),
(@p, '4(x - 10) = 2(x + 6)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução: "Um retângulo tem base (x + 4) e altura x, com perímetro igual a 28":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Montar o perímetro: 2(x + 4) + 2x = 28', 1, 1),
(@p, 'Simplificar: 4x + 8 = 28', 1, 2),
(@p, 'Encontrar x = 5 (altura = 5 e base = 9)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Reparti R$ 90,00 entre dois irmãos de modo que o mais velho recebeu R$ 14,00 a mais que o mais novo. Quanto recebeu o mais novo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'R$ 38,00', 1, 0),
(@p, 'R$ 52,00', 0, 0),
(@p, 'R$ 45,00', 0, 0),
(@p, 'R$ 31,00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "o quadrado de um número" corresponde a 2x.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 7.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Equações Fracionárias e Sistemas do 1º Grau', 3, 7);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Resolva a equação com denominadores: x/2 + x/3 = 10');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'x = 12', 1, 0),
(@p, 'x = 20', 0, 0),
(@p, 'x = 6', 0, 0),
(@p, 'x = 50', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'No sistema { x + y = 14 e x - y = 4 }, qual é o valor de x? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '9', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em uma equação fracionária com incógnita no denominador (ex.: 6/x = 2), devemos verificar a condição de existência x ≠ 0.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais são os métodos clássicos para resolver um sistema de duas equações do 1º grau?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Método da Adição', 1, 0),
(@p, 'Método da Substituição', 1, 0),
(@p, 'Método da Comparação', 1, 0),
(@p, 'Fórmula de Bhaskara', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a equação fracionária à sua solução:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '(x + 1)/3 = 4', 1, 1, 'x = 11'),
(@p, '12/x = 3', 1, 2, 'x = 4'),
(@p, 'x/4 - 1 = 2', 1, 3, 'x = 12');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para resolver (x - 2)/3 + (x + 1)/2 = 4:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Multiplicar toda a equação pelo MMC(3, 2) = 6', 1, 1),
(@p, 'Obter: 2(x - 2) + 3(x + 1) = 24', 1, 2),
(@p, 'Reduzir: 5x - 1 = 24 -> x = 5', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em um estacionamento há carros e motos, totalizando 20 veículos e 56 rodas. Quantos carros há no local?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '8 carros', 1, 0),
(@p, '12 carros', 0, 0),
(@p, '10 carros', 0, 0),
(@p, '14 carros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Graficamente, a solução de um sistema linear possível e determinado (SPD) representa o ponto de interseção entre duas retas no plano cartesiano.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 8: Equações do 2º grau
-- -------------------------------------------------------------------------

-- Quiz 8.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Coeficientes e Equações Incompletas', 1, 8);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na equação 2x² - 7x + 3 = 0, quais são os coeficientes a, b e c, respectivamente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'a = 2, b = -7, c = 3', 1, 0),
(@p, 'a = 2, b = 7, c = 3', 0, 0),
(@p, 'a = 2x², b = -7x, c = 3', 0, 0),
(@p, 'a = 3, b = -7, c = 2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para que uma equação ax² + bx + c = 0 seja do 2º grau, o coeficiente "a" deve ser obrigatoriamente diferente de zero.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a raiz POSITIVA da equação incompleta x² - 49 = 0?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '7', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as raízes da equação incompleta x² - 5x = 0:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'x = 0', 1, 0),
(@p, 'x = 5', 1, 0),
(@p, 'x = -5', 0, 0),
(@p, 'x = 25', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada equação incompleta às suas raízes reais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'x² - 16 = 0', 1, 1, '{-4, 4}'),
(@p, 'x² + 3x = 0', 1, 2, '{-3, 0}'),
(@p, 'x² + 9 = 0', 1, 3, 'Não possui raízes reais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução por fatoração de 2x² - 8x = 0:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Colocar 2x em evidência: 2x(x - 4) = 0', 1, 1),
(@p, 'Igualar o primeiro fator a zero: 2x = 0 -> x = 0', 1, 2),
(@p, 'Igualar o segundo fator a zero: x - 4 = 0 -> x = 4', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando o termo independente c = 0 (ex.: ax² + bx = 0), uma das raízes será sempre igual a:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0', 1, 0),
(@p, '1', 0, 0),
(@p, '-1', 0, 0),
(@p, 'b/a', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A equação 3x² = 0 possui duas raízes reais e iguais a zero.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 8.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Discriminante (Delta) e Fórmula de Bhaskara', 2, 8);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a fórmula do discriminante (Delta) de uma equação do 2º grau ax² + bx + c = 0?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Δ = b² - 4ac', 1, 0),
(@p, 'Δ = b² + 4ac', 0, 0),
(@p, 'Δ = -b ± 4ac', 0, 0),
(@p, 'Δ = b - 4ac', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o valor de Delta (Δ) à quantidade de raízes reais da equação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Δ > 0', 1, 1, 'Duas raízes reais e distintas'),
(@p, 'Δ = 0', 1, 2, 'Duas raízes reais e iguais (raiz dupla)'),
(@p, 'Δ < 0', 1, 3, 'Nenhuma raiz real');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na equação x² - 6x + 9 = 0, o discriminante Δ é igual a zero.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as raízes da equação x² - 5x + 6 = 0:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'x = 2', 1, 0),
(@p, 'x = 3', 1, 0),
(@p, 'x = -2', 0, 0),
(@p, 'x = 6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o valor de Δ para a equação 2x² + 5x - 3 = 0:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '49', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o passo a passo da resolução pela Fórmula de Bhaskara:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar os coeficientes a, b e c', 1, 1),
(@p, 'Calcular Δ = b² - 4ac', 1, 2),
(@p, 'Aplicar x = (-b ± √Δ) / (2a)', 1, 3),
(@p, 'Separar x1 e x2 para formar o conjunto solução', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são as raízes da equação x² - 2x - 8 = 0?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-2 e 4', 1, 0),
(@p, '2 e -4', 0, 0),
(@p, '2 e 4', 0, 0),
(@p, '-2 e -4', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A equação x² + 2x + 5 = 0 não possui raízes no conjunto dos números reais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 8.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Relações de Girard (Soma e Produto)', 2, 8);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na equação ax² + bx + c = 0, a soma (S) e o produto (P) das raízes valem, respectivamente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'S = -b/a e P = c/a', 1, 0),
(@p, 'S = b/a e P = -c/a', 0, 0),
(@p, 'S = c/a e P = -b/a', 0, 0),
(@p, 'S = -a/b e P = a/c', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para a equação x² - 9x + 20 = 0, a soma das raízes é 9 e o produto é 20.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o produto das raízes da equação 3x² - 11x + 15 = 0?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '5', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as raízes de x² - 7x + 12 = 0 pelo método de Soma e Produto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3', 1, 0),
(@p, '4', 1, 0),
(@p, '6', 0, 0),
(@p, '2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o par de raízes à equação mônica (a = 1) correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Raízes 2 e 5', 1, 1, 'x² - 7x + 10 = 0'),
(@p, 'Raízes -3 e 4', 1, 2, 'x² - x - 12 = 0'),
(@p, 'Raízes -2 e -3', 1, 3, 'x² + 5x + 6 = 0');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o raciocínio para achar as raízes de x² - 8x + 15 = 0 por Soma e Produto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar Soma = 8 e Produto = 15', 1, 1),
(@p, 'Listar pares que multiplicados dão 15 (1×15, 3×5)', 1, 2),
(@p, 'Selecionar o par cuja soma é 8: raízes 3 e 5', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Se uma das raízes de x² - 10x + k = 0 é igual a 3, qual é o valor de k?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '21', 1, 0),
(@p, '7', 0, 0),
(@p, '30', 0, 0),
(@p, '13', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Toda equação do 2º grau com raízes reais x1 e x2 pode ser escrita na forma fatorada a(x - x1)(x - x2) = 0.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 8.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Equações Biquadradas, Irracionais e Problemas Geométricos', 3, 8);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantas raízes reais possui a equação biquadrada x⁴ - 13x² + 36 = 0?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4 raízes reais (-3, -2, 2, 3)', 1, 0),
(@p, '2 raízes reais (2 e 3)', 0, 0),
(@p, 'Nenhuma raiz real', 0, 0),
(@p, '3 raízes reais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Um retângulo tem área igual a 48 cm² e seu comprimento mede 2 cm a mais que a largura. Quanto mede o comprimento em cm?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '8', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao resolver uma equação irracional elevando ambos os lados ao quadrado, é obrigatório testar as raízes na equação original para descartar raízes estranhas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Para quais valores de m a equação x² - 6x + m = 0 possui raízes reais (duas distintas ou duas iguais)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'm = 9 (Δ = 0)', 1, 0),
(@p, 'm = 5 (Δ > 0)', 1, 0),
(@p, 'm = 0 (Δ > 0)', 1, 0),
(@p, 'm = 10 (Δ < 0)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o tipo de equação à estratégia de resolução:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'x⁴ - 5x² + 4 = 0', 1, 1, 'Substituir x² = y (equação biquadrada)'),
(@p, '√(x + 2) = x', 1, 2, 'Elevar ao quadrado e testar solução'),
(@p, 'x² - 4 = 0', 1, 3, 'Isolar x² e extrair raiz ±√4');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução da equação irracional √(2x + 3) = 3:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Elevar ambos os membros ao quadrado: 2x + 3 = 9', 1, 1),
(@p, 'Resolver a equação do 1º grau: 2x = 6 -> x = 3', 1, 2),
(@p, 'Testar na original: √(6 + 3) = √9 = 3 (Válida)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O produto de dois números naturais ímpares consecutivos é 63. Qual é a soma desses dois números?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '16 (7 + 9)', 1, 0),
(@p, '14 (5 + 9)', 0, 0),
(@p, '18 (7 + 11)', 0, 0),
(@p, '12 (5 + 7)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A parábola que representa a função f(x) = ax² + bx + c terá concavidade voltada para cima sempre que a > 0.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 9: Geometria Plana
-- -------------------------------------------------------------------------

-- Quiz 9.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Polígonos, Perímetro e Áreas Básicas', 1, 9);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a área de um retângulo de base 8 cm e altura 5 cm?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '40 cm²', 1, 0),
(@p, '26 cm²', 0, 0),
(@p, '20 cm²', 0, 0),
(@p, '13 cm²', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada figura plana à sua fórmula de área:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quadrado de lado L', 1, 1, 'L²'),
(@p, 'Triângulo de base b e altura h', 1, 2, '(b · h) / 2'),
(@p, 'Trapézio de bases B, b e altura h', 1, 3, '((B + b) · h) / 2');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A soma dos ângulos internos de qualquer triângulo no plano euclidiano é sempre 180°.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Um quadrado tem perímetro igual a 36 cm. Qual é a sua área em cm²? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '81', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Classifique os triângulos quanto aos seus lados:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Equilátero (3 lados iguais)', 1, 0),
(@p, 'Isósceles (2 lados iguais)', 1, 0),
(@p, 'Escaleno (3 lados diferentes)', 1, 0),
(@p, 'Obtusângulo (classificação por ângulo)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os polígonos pelo número de lados (do menor para o maior):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Triângulo (3 lados)', 1, 1),
(@p, 'Quadrilátero (4 lados)', 1, 2),
(@p, 'Pentágono (5 lados)', 1, 3),
(@p, 'Hexágono (6 lados)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a soma dos ângulos internos de um quadrilátero convexo qualquer?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '360°', 1, 0),
(@p, '180°', 0, 0),
(@p, '540°', 0, 0),
(@p, '90°', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Perímetro é a medida do contorno de uma figura plana, obtida pela soma de todos os seus lados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 9.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorema de Pitágoras e Triângulos Retângulos', 2, 9);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em um triângulo retângulo, os catetos medem 6 cm e 8 cm. Quanto mede a hipotenusa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 cm', 1, 0),
(@p, '14 cm', 0, 0),
(@p, '12 cm', 0, 0),
(@p, '7 cm', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No triângulo retângulo, a hipotenusa é sempre o maior lado e fica oposta ao ângulo reto (90°).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'A hipotenusa de um triângulo retângulo mede 13 cm e um dos catetos mede 5 cm. Quanto mede o outro cateto em cm?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '12', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as ternas pitagóricas clássicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(3, 4, 5)', 1, 0),
(@p, '(5, 12, 13)', 1, 0),
(@p, '(8, 15, 17)', 1, 0),
(@p, '(4, 5, 6)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a figura ao cálculo usando Pitágoras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Diagonal de um quadrado de lado L', 1, 1, 'L√2'),
(@p, 'Altura de um triângulo equilátero de lado L', 1, 2, '(L√3) / 2'),
(@p, 'Diagonal de um retângulo 3 × 4', 1, 3, '5');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a aplicação do Teorema de Pitágoras para catetos 9 e 12:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Montar a equação: a² = 9² + 12²', 1, 1),
(@p, 'Calcular os quadrados: a² = 81 + 144 = 225', 1, 2),
(@p, 'Extrair a raiz quadrada: a = √225 = 15', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma escada de 5 m está encostada em um muro, com sua base a 3 m do muro. A que altura do solo a escada toca o muro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4 metros', 1, 0),
(@p, '2 metros', 0, 0),
(@p, '3,5 metros', 0, 0),
(@p, '5 metros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um triângulo cujos lados medem 2 cm, 3 cm e 6 cm existe geometricamente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 9.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Circunferência, Círculo e Ângulos', 2, 9);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o comprimento (perímetro) de uma circunferência de raio R = 5 cm? (Considere π = 3,14)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '31,4 cm', 1, 0),
(@p, '78,5 cm', 0, 0),
(@p, '15,7 cm', 0, 0),
(@p, '62,8 cm', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada par de ângulos à sua soma:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ângulos Complementares', 1, 1, 'Somam 90°'),
(@p, 'Ângulos Suplementares', 1, 2, 'Somam 180°'),
(@p, 'Ângulos Replementares', 1, 3, 'Somam 360°');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O diâmetro de uma circunferência equivale ao dobro do seu raio (D = 2R).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o complemento de um ângulo de 35°? (apenas o número em graus)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '55', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Sobre circunferência e círculo, assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A área do círculo é dada por A = π · R².', 1, 0),
(@p, 'O comprimento da circunferência é C = 2 · π · R.', 1, 0),
(@p, 'A maior corda de uma circunferência é o diâmetro.', 1, 0),
(@p, 'O número π é uma fração exata igual a 3,14.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os ângulos do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ângulo agudo (< 90°)', 1, 1),
(@p, 'Ângulo reto (= 90°)', 1, 2),
(@p, 'Ângulo obtuso (entre 90° e 180°)', 1, 3),
(@p, 'Ângulo raso (= 180°)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dobrando o raio de um círculo, o que acontece com a sua área?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quadruplica (multiplica por 4)', 1, 0),
(@p, 'Dobra (multiplica por 2)', 0, 0),
(@p, 'Triplica (multiplica por 3)', 0, 0),
(@p, 'Permanece igual', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ângulos opostos pelo vértice (OPV) são sempre congruentes (possuem a mesma medida).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 9.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorema de Tales, Semelhança e Polígonos Regulares', 3, 9);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantas diagonais possui um hexágono convexo? [Fórmula: d = n(n - 3)/2]');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '9 diagonais', 1, 0),
(@p, '6 diagonais', 0, 0),
(@p, '12 diagonais', 0, 0),
(@p, '18 diagonais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quanto mede cada ângulo interno de um hexágono regular? (apenas o número em graus)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '120', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A soma dos ângulos externos de qualquer polígono convexo é sempre igual a 360°.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Sobre semelhança de figuras planas com razão de semelhança k, marque as corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A razão entre os lados correspondentes é k.', 1, 0),
(@p, 'A razão entre os perímetros é k.', 1, 0),
(@p, 'A razão entre as áreas é k².', 1, 0),
(@p, 'Os ângulos correspondentes são multiplicados por k.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o polígono regular à medida do seu ângulo interno:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Triângulo equilátero', 1, 1, '60°'),
(@p, 'Quadrado', 1, 2, '90°'),
(@p, 'Pentágono regular', 1, 3, '108°');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo da área de um hexágono regular de lado L = 4 cm:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Decompor em 6 triângulos equiláteros congruentes', 1, 1),
(@p, 'Calcular a área de 1 triângulo: (4² · √3)/4 = 4√3 cm²', 1, 2),
(@p, 'Multiplicar por 6: Área total = 24√3 cm²', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um poste projeta uma sombra de 4 m no mesmo instante em que uma estaca vertical de 1,5 m projeta sombra de 1 m. Qual é a altura do poste?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '6 metros', 1, 0),
(@p, '4,5 metros', 0, 0),
(@p, '5,5 metros', 0, 0),
(@p, '8 metros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um losango com diagonais D = 10 cm e d = 6 cm possui área igual a 30 cm².');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 10: Geometria Espacial
-- -------------------------------------------------------------------------

-- Quiz 10.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sólidos Geométricos, Faces, Vértices e Arestas', 1, 10);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantas faces, vértices e arestas possui um cubo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '6 faces, 8 vértices e 12 arestas', 1, 0),
(@p, '6 faces, 6 vértices e 12 arestas', 0, 0),
(@p, '8 faces, 6 vértices e 12 arestas', 0, 0),
(@p, '6 faces, 8 vértices e 8 arestas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Relação de Euler afirma que para todo poliedro convexo vale V - A + F = 2.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o volume de um cubo cuja aresta mede 4 cm? (apenas o número em cm³)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '64', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Classifique os sólidos geométricos que são CORPOS REDONDOS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cilindro', 1, 0),
(@p, 'Cone', 1, 0),
(@p, 'Esfera', 1, 0),
(@p, 'Prisma triangular', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o sólido à descrição das suas bases:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Prisma', 1, 1, 'Duas bases poligonais paralelas e congruentes'),
(@p, 'Pirâmide', 1, 2, 'Uma base poligonal e faces laterais triangulares'),
(@p, 'Cilindro', 1, 3, 'Duas bases circulares paralelas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os Poliedros de Platão pelo número de faces (do menor para o maior):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tetraedro (4 faces)', 1, 1),
(@p, 'Hexaedro / Cubo (6 faces)', 1, 2),
(@p, 'Octaedro (8 faces)', 1, 3),
(@p, 'Dodecaedro (12 faces) e Icosaedro (20 faces)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantos litros equivalem a 1 metro cúbico (1 m³)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1.000 litros', 1, 0),
(@p, '100 litros', 0, 0),
(@p, '10 litros', 0, 0),
(@p, '10.000 litros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: 1 decímetro cúbico (1 dm³) corresponde exatamente a 1 litro.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 10.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Volume e Área de Prismas e Paralelepípedos', 2, 10);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma caixa-d''água em forma de paralelepípedo reto mede 2 m de comprimento, 1,5 m de largura e 1 m de altura. Qual sua capacidade em litros?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3.000 litros', 1, 0),
(@p, '300 litros', 0, 0),
(@p, '30 litros', 0, 0),
(@p, '4.500 litros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O volume de qualquer prisma é calculado multiplicando-se a área da base pela altura (V = Ab · h).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a área total de um cubo de aresta 5 cm? (apenas o número em cm²)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '150', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Sobre um cubo de aresta "a", assinale as fórmulas verdadeiras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Volume: V = a³', 1, 0),
(@p, 'Área total: At = 6a²', 1, 0),
(@p, 'Diagonal interna do cubo: D = a√3', 1, 0),
(@p, 'Soma de todas as arestas: 6a', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o paralelepípedo (dimensões a, b, c) à fórmula:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Volume', 1, 1, 'a · b · c'),
(@p, 'Área total', 1, 2, '2(ab + ac + bc)'),
(@p, 'Diagonal', 1, 3, '√(a² + b² + c²)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do volume de um prisma triangular reto (base: triângulo de b=4, h=3; altura do prisma H=10):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a área da base triangular: Ab = (4 × 3)/2 = 6', 1, 1),
(@p, 'Multiplicar pela altura do prisma: V = 6 × 10', 1, 2),
(@p, 'Volume final: 60 unidades cúbicas', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um poliedro convexo tem 8 faces triangulares. Quantas arestas ele possui?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '12 arestas (8 × 3 ÷ 2)', 1, 0),
(@p, '24 arestas', 0, 0),
(@p, '16 arestas', 0, 0),
(@p, '6 arestas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pelo Princípio de Cavalieri, dois sólidos de mesma altura têm volumes iguais se qualquer plano horizontal os seccionar formando áreas iguais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 10.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Cilindros, Pirâmides e Cones', 2, 10);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a relação entre o volume de um cone e o volume de um cilindro de mesma base e mesma altura?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O volume do cone é 1/3 do volume do cilindro.', 1, 0),
(@p, 'O volume do cone é metade do volume do cilindro.', 0, 0),
(@p, 'Possuem o mesmo volume.', 0, 0),
(@p, 'O volume do cone é 1/4 do volume do cilindro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O volume de uma pirâmide é dado por V = (Ab · h) / 3.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Uma pirâmide tem base quadrada de lado 6 cm e altura 10 cm. Qual é o seu volume em cm³? (apenas o número)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '120', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os elementos de um cone circular reto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Geratriz (g)', 1, 0),
(@p, 'Raio da base (R)', 1, 0),
(@p, 'Altura (h), valendo g² = h² + R²', 1, 0),
(@p, 'Aresta lateral poligonal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o sólido à sua fórmula de volume:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cilindro', 1, 1, 'π · R² · h'),
(@p, 'Cone', 1, 2, '(π · R² · h) / 3'),
(@p, 'Esfera', 1, 3, '(4/3) · π · R³');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do volume de um cilindro de raio 2 cm e altura 5 cm (use π = 3):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a área da base circular: Ab = 3 × 2² = 12', 1, 1),
(@p, 'Multiplicar pela altura: V = 12 × 5', 1, 2),
(@p, 'Volume aproximado: 60 cm³', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Planificando a superfície lateral de um cilindro circular reto, obtemos qual figura plana?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um retângulo de base 2πR e altura h', 1, 0),
(@p, 'Um setor circular', 0, 0),
(@p, 'Um triângulo isósceles', 0, 0),
(@p, 'Um trapézio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um cilindro equilátero é aquele em que a altura é igual ao diâmetro da base (h = 2R).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 10.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Esferas, Sólidos Inscritos e Troncos', 3, 10);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a área da superfície de uma esfera de raio R?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4 · π · R²', 1, 0),
(@p, '2 · π · R²', 0, 0),
(@p, '(4/3) · π · R³', 0, 0),
(@p, 'π · R²', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Uma esfera tem raio igual a 3 cm. Qual é o seu volume em termos de π? (digite apenas o coeficiente numérico antes de π)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '36', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se o raio de uma esfera for duplicado, seu volume será multiplicado por 8.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Sobre uma esfera inscrita em um cubo de aresta "a", assinale as corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O diâmetro da esfera é igual à aresta do cubo (2R = a).', 1, 0),
(@p, 'O raio da esfera vale a/2.', 1, 0),
(@p, 'A esfera tangencia todas as 6 faces do cubo.', 1, 0),
(@p, 'O raio da esfera é igual à diagonal do cubo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a razão de semelhança k entre dois sólidos semelhantes ao impacto nas medidas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Comprimento / Altura', 1, 1, 'Multiplica por k'),
(@p, 'Área superficial', 1, 2, 'Multiplica por k²'),
(@p, 'Volume / Capacidade', 1, 3, 'Multiplica por k³');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução: "Um cone de raio 3 cm e altura 4 cm tem área lateral igual a...":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a geratriz por Pitágoras: g = √(3² + 4²) = 5 cm', 1, 1),
(@p, 'Aplicar a fórmula da área lateral: Al = π · R · g', 1, 2),
(@p, 'Obter: Al = π · 3 · 5 = 15π cm²', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Cortando-se uma pirâmide por um plano paralelo à base na metade de sua altura, o volume da pirâmide menor obtida no topo equivale a que fração da pirâmide original?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/8 (pois (1/2)³ = 1/8)', 1, 0),
(@p, '1/2', 0, 0),
(@p, '1/4', 0, 0),
(@p, '1/6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A esfera não possui planificação exata no plano sem distorções geométricas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 11: Potenciação
-- -------------------------------------------------------------------------

-- Quiz 11.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito de Potência, Base e Expoente', 1, 11);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto vale 2⁵?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '32', 1, 0),
(@p, '10', 0, 0),
(@p, '25', 0, 0),
(@p, '64', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todo número diferente de zero elevado ao expoente 0 é igual a 1.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o valor de 3⁴:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '81', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as potências cujo resultado é igual a 1:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '15⁰', 1, 0),
(@p, '1⁹⁹', 1, 0),
(@p, '(-7)⁰', 1, 0),
(@p, '5¹', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada potência ao seu resultado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '(-3)²', 1, 1, '9'),
(@p, '-3²', 1, 2, '-9'),
(@p, '(-3)³', 1, 3, '-27');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as potências do MENOR para o MAIOR resultado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(-2)³ (-8)', 1, 1),
(@p, '5⁰ (1)', 1, 2),
(@p, '2³ (8)', 1, 3),
(@p, '3² (9)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre (-4)² e -4²?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(-4)² = +16 (base negativa); -4² = -16 (sinal fora da potência)', 1, 0),
(@p, 'Ambas valem +16', 0, 0),
(@p, 'Ambas valem -16', 0, 0),
(@p, '(-4)² = -8 e -4² = 8', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Base negativa elevada a expoente ímpar sempre gera resultado negativo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 11.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propriedades das Potências', 2, 11);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Reduzindo a expressão 5⁴ · 5³ ÷ 5⁵ a uma única potência, obtemos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5² (25)', 1, 0),
(@p, '5⁷', 0, 0),
(@p, '5¹²', 0, 0),
(@p, '1²', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada propriedade operatória das potências à sua regra:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Produto de mesma base: a^m · a^n', 1, 1, 'Conserva a base e SOMA os expoentes'),
(@p, 'Divisão de mesma base: a^m ÷ a^n', 1, 2, 'Conserva a base e SUBTRAI os expoentes'),
(@p, 'Potência de potência: (a^m)^n', 1, 3, 'Conserva a base e MULTIPLICA os expoentes');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão (2³)² é igual a 2⁶ (64), enquanto 2^(3²) é igual a 2⁹ (512).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o valor numérico de (2⁴ · 2²) ÷ 2⁵:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as igualdades verdadeiras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '(a · b)³ = a³ · b³', 1, 0),
(@p, '(a / b)² = a² / b² (com b ≠ 0)', 1, 0),
(@p, '10³ · 10⁴ = 10⁷', 1, 0),
(@p, '(a + b)² = a² + b²', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a simplificação de (3² · 3⁴) ÷ (3³)²:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Numerador: 3^(2+4) = 3⁶', 1, 1),
(@p, 'Denominador: 3^(3×2) = 3⁶', 1, 2),
(@p, 'Divisão final: 3^(6-6) = 3⁰ = 1', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a metade de 2¹⁰?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2⁹', 1, 0),
(@p, '2⁵', 0, 0),
(@p, '1¹⁰', 0, 0),
(@p, '1⁵', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A propriedade distributiva da potenciação NÃO se aplica à adição ou subtração: (2 + 3)² ≠ 2² + 3².');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 11.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expoente Negativo e Notação Científica', 2, 11);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto vale 2⁻³?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1/8', 1, 0),
(@p, '-8', 0, 0),
(@p, '-6', 0, 0),
(@p, '1/6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na notação científica (a · 10^n), a mantissa "a" deve ser um número tal que 1 ≤ |a| < 10.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o valor inteiro de (1/3)⁻²:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '9', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Assinale os números escritos corretamente em NOTAÇÃO CIENTÍFICA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3,5 × 10⁸', 1, 0),
(@p, '1,2 × 10⁻⁵', 1, 0),
(@p, '9,99 × 10²', 1, 0),
(@p, '15 × 10⁴', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada número à sua forma em notação científica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '450.000', 1, 1, '4,5 × 10⁵'),
(@p, '0,00045', 1, 2, '4,5 × 10⁻⁴'),
(@p, '4.500', 1, 3, '4,5 × 10³');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo de (2/5)⁻²:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Inverter a base para tornar o expoente positivo: (5/2)²', 1, 1),
(@p, 'Elevar numerador e denominador ao quadrado: 5² / 2²', 1, 2),
(@p, 'Obter a fração final: 25/4 (ou 6,25)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A distância média da Terra ao Sol é de aproximadamente 150.000.000 km. Em notação científica, esse valor é:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1,5 × 10⁸ km', 1, 0),
(@p, '15 × 10⁷ km', 0, 0),
(@p, '1,5 × 10⁷ km', 0, 0),
(@p, '0,15 × 10⁹ km', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um expoente negativo transforma o resultado da potência em um número negativo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 11.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expoente Fracionário e Equações Exponenciais Simples', 3, 11);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto vale 27^(2/3)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '9', 1, 0),
(@p, '18', 0, 0),
(@p, '3', 0, 0),
(@p, '81', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Resolva a equação exponencial: 2^x = 128. Digite apenas o valor de x:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '7', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todo número elevado ao expoente 1/2 equivale à sua raiz quadrada (a^(1/2) = √a, para a ≥ 0).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as igualdades verdadeiras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '16^(1/4) = 2', 1, 0),
(@p, '8^(1/3) = 2', 1, 0),
(@p, '4^(-1/2) = 1/2', 1, 0),
(@p, '9^(1/2) = 4,5', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a equação exponencial à sua solução:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '3^x = 81', 1, 1, 'x = 4'),
(@p, '5^x = 1/25', 1, 2, 'x = -2'),
(@p, '4^x = 8', 1, 3, 'x = 3/2');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução de 9^x = 27:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fatorar ambos os lados na base 3: (3²)^x = 3³', 1, 1),
(@p, 'Aplicar potência de potência: 3^(2x) = 3³', 1, 2),
(@p, 'Igualar os expoentes: 2x = 3 -> x = 1,5', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Simplificando a expressão (2¹⁰ + 2¹⁰) / 2⁹, obtemos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4', 1, 0),
(@p, '2', 0, 0),
(@p, '2¹¹', 0, 0),
(@p, '1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão 2ⁿ + 2ⁿ é igual a 2^(n+1).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 12: Radiciação
-- -------------------------------------------------------------------------

-- Quiz 12.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Raiz Quadrada, Raiz Cúbica e Quadrados Perfeitos', 1, 12);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o valor de √144?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '12', 1, 0),
(@p, '72', 0, 0),
(@p, '14', 0, 0),
(@p, '11', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada radical ao seu valor exato:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '√81', 1, 1, '9'),
(@p, '∛27 (raiz cúbica de 27)', 1, 2, '3'),
(@p, '√169', 1, 3, '13');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No conjunto dos números reais, não existe raiz quadrada de número negativo (ex.: √(-9) ∉ ℝ).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o valor da raiz cúbica ∛64:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '4', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os números que são QUADRADOS PERFEITOS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '36', 1, 0),
(@p, '100', 1, 0),
(@p, '121', 1, 0),
(@p, '50', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os radicais do MENOR para o MAIOR:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '∛(-8) (-2)', 1, 1),
(@p, '√0 (0)', 1, 2),
(@p, '∛125 (5)', 1, 3),
(@p, '√49 (7)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto vale ∛(-27)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-3', 1, 0),
(@p, '3', 0, 0),
(@p, 'Não existe nos reais', 0, 0),
(@p, '-9', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando o índice do radical é ímpar, é possível extrair a raiz real de um número negativo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 12.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Simplificação de Radicais e Fatoração', 2, 12);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Simplificando o radical √50, obtemos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5√2', 1, 0),
(@p, '2√5', 0, 0),
(@p, '25√2', 0, 0),
(@p, '10√5', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada radical à sua forma simplificada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '√12', 1, 1, '2√3'),
(@p, '√18', 1, 2, '3√2'),
(@p, '√45', 1, 3, '3√5');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A propriedade √(a · b) = √a · √b é válida para quaisquer números reais não negativos a e b.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Introduzindo o fator externo para dentro do radical em 3√2, obtemos √x. Qual é o valor de x?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '18', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as igualdades verdadeiras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '√(9/25) = 3/5', 1, 0),
(@p, '√0,04 = 0,2', 1, 0),
(@p, '√72 = 6√2', 1, 0),
(@p, '√(9 + 16) = 3 + 4 = 7', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de simplificação de √75:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fatorar 75 em fatores primos: 3 × 5²', 1, 1),
(@p, 'Separar o quadrado perfeito: √(5² · 3) = √25 · √3', 1, 2),
(@p, 'Extrair a raiz exata: 5√3', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Entre quais dois números inteiros consecutivos está localizado o valor de √30?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Entre 5 e 6 (pois √25 = 5 e √36 = 6)', 1, 0),
(@p, 'Entre 4 e 5', 0, 0),
(@p, 'Entre 6 e 7', 0, 0),
(@p, 'Entre 14 e 16', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A raiz quadrada de uma soma NÃO é igual à soma das raízes quadradas: √(9 + 16) = √25 = 5 ≠ 7.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 12.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Operações com Radicais', 2, 12);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto é 4√3 + 5√3 - 2√3?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '7√3', 1, 0),
(@p, '7√9', 0, 0),
(@p, '11√3', 0, 0),
(@p, '7', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Só podemos somar ou subtrair diretamente radicais semelhantes (mesmo índice e mesmo radicando).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Calcule o produto √2 · √8 (apenas o número inteiro resultante):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '4', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as operações que resultam em um número RACIONAL inteiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '√3 · √12 (= √36 = 6)', 1, 0),
(@p, '√50 ÷ √2 (= √25 = 5)', 1, 0),
(@p, '(√7)² (= 7)', 1, 0),
(@p, '√2 + √3', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada expressão ao seu resultado simplificado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '√8 + √2', 1, 1, '3√2'),
(@p, '√27 - √3', 1, 2, '2√3'),
(@p, '√20 ÷ √5', 1, 3, '2');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo de √12 + √75:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Simplificar o primeiro radical: √12 = 2√3', 1, 1),
(@p, 'Simplificar o segundo radical: √75 = 5√3', 1, 2),
(@p, 'Somar os radicais semelhantes: 2√3 + 5√3 = 7√3', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto vale (2√5)²?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '20', 1, 0),
(@p, '10', 0, 0),
(@p, '40', 0, 0),
(@p, '4√5', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão √2 + √2 é igual a 2√2, e não a √4.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 12.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Racionalização de Denominadores e Radicais Duplos', 3, 12);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Racionalizando o denominador da fração 6 / √3, obtemos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2√3', 1, 0),
(@p, '6√3', 0, 0),
(@p, '3√2', 0, 0),
(@p, '2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Racionalizar o denominador significa transformar uma fração com denominador irracional em uma fração equivalente com denominador racional.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Simplifique o radical de radical √(∛64) (apenas o número inteiro resultante):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frações corretamente racionalizadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1 / √2 = √2 / 2', 1, 0),
(@p, '10 / √5 = 2√5', 1, 0),
(@p, '1 / (√3 - √2) = √3 + √2', 1, 0),
(@p, '4 / √2 = 4√2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o denominador ao fator racionalizante adequado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '√5', 1, 1, 'Multiplicar por √5 / √5'),
(@p, '√7 + √2', 1, 2, 'Multiplicar pelo conjugado (√7 - √2)'),
(@p, '∛2', 1, 3, 'Multiplicar por ∛(2²)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a racionalização de 4 / (√5 - 1):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Multiplicar numerador e denominador por (√5 + 1)', 1, 1),
(@p, 'Aplicar diferença de quadrados no denominador: (√5)² - 1² = 4', 1, 2),
(@p, 'Simplificar o 4: resultado final = √5 + 1', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o valor de √(10 + √36)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4', 1, 0),
(@p, '16', 0, 0),
(@p, '√46', 0, 0),
(@p, '6', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para qualquer número real x, √(x²) é igual ao módulo |x|.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);