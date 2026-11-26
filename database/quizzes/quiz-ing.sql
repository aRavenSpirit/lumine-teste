USE luminebd;

-- =========================================================================
-- MATÉRIA 9: INGLÊS (CONTEÚDOS 71 A 77)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 71: Verbo To Be
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Verbo To Be' AND id_materia = 9 LIMIT 1);

-- Quiz 71.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Verbo To Be no Presente: Afirmativa, Negativa e Interrogativa', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase: "My sister and I ___ very happy with our English classes"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'are', 1, 0),
(@p, 'is', 0, 0),
(@p, 'am', 0, 0),
(@p, 'be', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pronome pessoal à sua forma correta do verbo To Be no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'I', 1, 1, 'am'),
(@p, 'He / She / It', 1, 2, 'is'),
(@p, 'You / We / They', 1, 3, 'are');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para transformar uma frase afirmativa com o verbo To Be em interrogativa (como em "She is a doctor"), basta inverter a posição do verbo e do sujeito ("Is she a doctor?"), sem usar auxiliares como Do ou Does.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases que estão gramaticalmente corretas no Simple Present do verbo To Be:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'They aren''t at home right now.', 1, 0),
(@p, 'Is your father a civil engineer?', 1, 0),
(@p, 'I''m from Brazil, and my best friend is from Canada.', 1, 0),
(@p, 'We is ready for the exam today.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva a forma contraída negativa correspondente a "is not" usada com os pronomes he, she ou it:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'isn''t', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma pergunta gramaticalmente correta em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Are', 1, 1),
(@p, 'your', 1, 2),
(@p, 'parents', 1, 3),
(@p, 'from', 1, 4),
(@p, 'Portugal?', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a resposta curta (short answer) afirmativa correta para a pergunta "Are you a high school student?"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Yes, I am.', 1, 0),
(@p, 'Yes, I''m.', 0, 0),
(@p, 'Yes, you are.', 0, 0),
(@p, 'Yes, I do.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em inglês formal ou informal, a forma "am not" possui uma contração padrão de uma única palavra equivalente a "isn''t" e "aren''t" em frases declarativas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 71.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Usos Comunicativos do Verbo To Be: Idade, Estados e Expressões', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se expressa corretamente em inglês a frase "Meu irmão tem dezoito anos"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'My brother is eighteen years old.', 1, 0),
(@p, 'My brother has eighteen years old.', 0, 0),
(@p, 'My brother have eighteen years.', 0, 0),
(@p, 'My brother are eighteen years old.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada expressão idiomática com o verbo To Be ao seu significado em português:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'To be hungry / thirsty', 1, 1, 'Estar com fome / estar com sede'),
(@p, 'To be afraid of', 1, 2, 'Ter medo de algo ou alguém'),
(@p, 'To be in a hurry', 1, 3, 'Estar com pressa');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferentemente do português, em que usamos o verbo "ter" para falar de idade, fome, sede, frio e calor, o inglês utiliza o verbo To Be acompanhado de adjetivos (como old, hungry, thirsty, cold e hot).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique sentenças que empregam corretamente expressões com o verbo To Be:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Please close the window because I am cold.', 1, 0),
(@p, 'You are right about the schedule change.', 1, 0),
(@p, 'She is late for the job interview.', 1, 0),
(@p, 'They have twenty-five years old.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a pergunta usada para saber a idade de alguém em inglês: "How ___ are you?"');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'old', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o diálogo curto entre duas pessoas se conhecendo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hi! Where are you from?', 1, 1),
(@p, 'I''m from Recife, Brazil. And you?', 1, 2),
(@p, 'I''m from Dublin. Nice to meet you!', 1, 3),
(@p, 'Nice to meet you too!', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa a expressão "It''s up to you" em uma conversa em inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fica a seu critério / Você decide.', 1, 0),
(@p, 'Está em cima da sua cabeça.', 0, 0),
(@p, 'Você está atrasado para o trabalho.', 0, 0),
(@p, 'Isso é proibido por lei.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A frase "My dog is five years" está completa e natural em inglês padrão, pois a palavra "years" nunca precisa de complemento ou pode ser omitida junto com "old".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 71.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('There To Be: Existência no Presente e no Passado', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase: "___ two libraries and a museum near the central square"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'There are', 1, 0),
(@p, 'There is', 0, 0),
(@p, 'Have', 0, 0),
(@p, 'It has', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de "There to be" ao tipo de substantivo ou tempo verbal adequado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'There is', 1, 1, 'Substantivos contáveis no singular ou incontáveis no presente'),
(@p, 'There are', 1, 2, 'Substantivos contáveis no plural no presente'),
(@p, 'There were', 1, 3, 'Substantivos contáveis no plural no passado');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para indicar existência no sentido do verbo "haver" do português, usa-se "There is / There are" e nunca o verbo "Have" sozinho no início da oração.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases que usam corretamente "There to be":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'There is some cold water in the fridge.', 1, 0),
(@p, 'Are there any questions about the text?', 1, 0),
(@p, 'There wasn''t enough time to finish the test.', 1, 0),
(@p, 'Have many cars on the avenue today.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a pergunta no plural: "How many students ___ there in your classroom?"');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'are', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase negativa correta com "There to be":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'There', 1, 1),
(@p, 'aren''t', 1, 2),
(@p, 'any', 1, 3),
(@p, 'available', 1, 4),
(@p, 'tickets.', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual opção completa corretamente a frase: "Look! ___ a strange cat sleeping on the sofa"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'There''s', 1, 0),
(@p, 'There are', 0, 0),
(@p, 'There were', 0, 0),
(@p, 'Has', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Com substantivos incontáveis como "milk", "traffic" e "information", utiliza-se "There are" porque eles representam grandes quantidades.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 71.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Verbo To Be no Passado, Subjuntivo, Futuro e Voz Passiva', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a estrutura condicional hipotética: "If I ___ you, I would accept that scholarship immediately"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'were', 1, 0),
(@p, 'am', 0, 0),
(@p, 'be', 0, 0),
(@p, 'been', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma do verbo To Be ao tempo verbal ou construção gramatical correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'was / were', 1, 1, 'Simple Past'),
(@p, 'will be', 1, 2, 'Simple Future'),
(@p, 'have been / has been', 1, 3, 'Present Perfect');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na formação da Voz Passiva em inglês (como em "The bridge was built in 1995"), o verbo To Be funciona como verbo auxiliar conjugado no tempo da ação, seguido pelo particípio passado (Past Participle) do verbo principal.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique sentenças gramaticalmente corretas envolvendo formas avançadas do verbo To Be:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'She has been a teacher for over ten years.', 1, 0),
(@p, 'The results will be announced tomorrow morning.', 1, 0),
(@p, 'Why were you so tired yesterday evening?', 1, 0),
(@p, 'They was studying when the lights went out.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a forma do particípio passado (Past Participle) do verbo To Be utilizada nos tempos perfeitos (Present Perfect e Past Perfect)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'been', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase na voz passiva no passado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'The', 1, 1),
(@p, 'emails', 1, 2),
(@p, 'were', 1, 3),
(@p, 'sent', 1, 4),
(@p, 'yesterday.', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Stop being so impatient with your teammates!", por que o verbo To Be aparece na forma "being"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o verbo "stop" (no sentido de cessar uma ação) exige o verbo seguinte no gerúndio (-ing).', 1, 0),
(@p, 'Porque "being" é o passado simples de "be".', 0, 0),
(@p, 'Porque "stop" exige sempre o particípio passado.', 0, 0),
(@p, 'Porque o verbo To Be não pode ser usado no modo imperativo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na frase "He is being very polite today", o uso de "is being" indica um comportamento temporário e incomum no momento, diferente de "He is polite" (característica permanente).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 72: Simple Present
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Simple Present' AND id_materia = 9 LIMIT 1);

-- Quiz 72.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Simple Present: Rotinas, Hábitos e Verdades Universais', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase sobre rotina: "Every morning, Lucas ___ coffee before going to work"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'drinks', 1, 0),
(@p, 'drink', 0, 0),
(@p, 'drinking', 0, 0),
(@p, 'is drink', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada frase ao motivo pelo qual ela está no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Water boils at 100 degrees Celsius.', 1, 1, 'Verdade universal / fato científico'),
(@p, 'I wake up at 6:30 AM on weekdays.', 1, 2, 'Hábito ou rotina diária'),
(@p, 'They live in Belo Horizonte.', 1, 3, 'Situação permanente');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Simple Present afirmativo, os verbos mantêm sua forma base (sem acréscimo de -s) quando o sujeito for I, you, we ou they.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases que estão corretamente conjugadas no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'The Earth revolves around the Sun.', 1, 0),
(@p, 'My parents work at the local hospital.', 1, 0),
(@p, 'Julia speaks three languages fluently.', 1, 0),
(@p, 'We plays soccer every Saturday afternoon.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a frase com a forma correta do verbo entre parênteses: "She ___ (read) a chapter of her book every night."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'reads', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as ações da rotina matinal descrita no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'First, Anna wakes up at seven o''clock.', 1, 1),
(@p, 'Then, she brushes her teeth and takes a shower.', 1, 2),
(@p, 'After that, she has breakfast with her family.', 1, 3),
(@p, 'Finally, she catches the bus to school.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual opção completa corretamente a frase: "My cousins ___ in a small town near the beach"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'live', 1, 0),
(@p, 'lives', 0, 0),
(@p, 'living', 0, 0),
(@p, 'is live', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Simple Present é utilizado principalmente para descrever ações que estão acontecendo exatamente no instante em que a pessoa fala.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 72.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regras Ortográficas da 3ª Pessoa do Singular (-s, -es, -ies)', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a forma correta do verbo "study" na frase: "Carlos ___ medicine at a public university"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'studies', 1, 0),
(@p, 'studys', 0, 0),
(@p, 'studyes', 0, 0),
(@p, 'study', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada terminação verbal à regra ortográfica aplicada para he/she/it no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Verbos terminados em -o, -s, -sh, -ch, -x, -z', 1, 1, 'Recebem -es (ex.: goes, watches, fixes)'),
(@p, 'Verbos terminados em consoante + y', 1, 2, 'Trocam o y por -ies (ex.: tries, cries, flies)'),
(@p, 'Verbos terminados em vogal + y', 1, 3, 'Apenas recebem -s (ex.: plays, enjoys, stays)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "have" é irregular na terceira pessoa do singular do Simple Present, transformando-se em "has" (e não "haves").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as conjugações corretas para a terceira pessoa do singular (he/she/it) no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'watches (do verbo watch)', 1, 0),
(@p, 'plays (do verbo play)', 1, 0),
(@p, 'goes (do verbo go)', 1, 0),
(@p, 'flys (do verbo fly)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva a forma correta do verbo "wash" na frase: "He ___ his car every Sunday morning."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'washes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase correta na terceira pessoa do singular:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'She', 1, 1),
(@p, 'always', 1, 2),
(@p, 'finishes', 1, 3),
(@p, 'her', 1, 4),
(@p, 'homework.', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase: "The mechanic ___ all types of motorcycles in his garage"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'fixes', 1, 0),
(@p, 'fixs', 0, 0),
(@p, 'fix', 0, 0),
(@p, 'fixies', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Como o verbo "play" termina em "-y", sua forma correta para "he" é "plaies".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 72.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Negativa e Interrogativa no Simple Present (Do/Does) e Frequência', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase negativa: "My brother ___ eat seafood because he is allergic"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'doesn''t', 1, 0),
(@p, 'don''t', 0, 0),
(@p, 'isn''t', 0, 0),
(@p, 'doesn''t eats', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada advérbio de frequência ao seu grau aproximado de ocorrência:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Always', 1, 1, '100% das vezes (sempre)'),
(@p, 'Sometimes', 1, 2, 'Cerca de 50% das vezes (às vezes)'),
(@p, 'Never', 1, 3, '0% das vezes (nunca)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando usamos os auxiliares "does" ou "doesn''t" em perguntas e negativas, o verbo principal volta para a sua forma base, perdendo a terminação -s/-es/-ies.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases que estão gramaticalmente corretas no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Does your mother work on weekends?', 1, 0),
(@p, 'We don''t usually watch TV at night.', 1, 0),
(@p, 'She is always punctual for class.', 1, 0),
(@p, 'Does he likes classical music?', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a pergunta com o verbo auxiliar correto: "___ you speak Spanish or French?"');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Do', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os advérbios de frequência do maior (100%) para o menor (0%):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Always', 1, 1),
(@p, 'Usually', 1, 2),
(@p, 'Sometimes', 1, 3),
(@p, 'Rarely', 1, 4),
(@p, 'Never', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Onde se posiciona normalmente um advérbio de frequência como "usually" em relação ao verbo principal em uma frase afirmativa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antes do verbo principal (ex.: "They usually travel in July"), mas depois do verbo To Be (ex.: "They are usually busy").', 1, 0),
(@p, 'Sempre entre o verbo auxiliar e o ponto de interrogação.', 0, 0),
(@p, 'Antes do sujeito em todas as orações.', 0, 0),
(@p, 'Sempre depois do verbo principal, mesmo quando não há verbo To Be.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em inglês, a frase "She doesn''t never drink soda" está correta porque a dupla negação reforça a ideia de nunca.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 72.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Simple Present Avançado: State Verbs, Condicionais e Horários', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o Simple Present é empregado na frase: "The flight to Lisbon departs at 11:45 PM tonight"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o Simple Present também expressa eventos futuros vinculados a horários fixos, cronogramas e tabelas de transporte.', 1, 0),
(@p, 'Porque a palavra "tonight" exige sempre o verbo no passado simples.', 0, 0),
(@p, 'Porque o verbo "depart" não existe no futuro.', 0, 0),
(@p, 'Porque se trata de uma ordem imperativa negativa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada categoria de State Verb (verbo de estado) aos seus exemplos típicos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cognição e opinião', 1, 1, 'know, believe, understand, remember'),
(@p, 'Emoção e desejo', 1, 2, 'love, hate, prefer, want'),
(@p, 'Posse e medida', 1, 3, 'belong, own, contain, cost');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na First Conditional (ex.: "If it rains tomorrow, we will stay home"), a oração introduzida por "If" utiliza o Simple Present mesmo se referindo a uma condição futura.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases que empregam corretamente verbos de estado (State Verbs) no Simple Present:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'I don''t understand what this paragraph means.', 1, 0),
(@p, 'This backpack belongs to my younger cousin.', 1, 0),
(@p, 'She prefers tea to coffee in the morning.', 1, 0),
(@p, 'I am knowing the answer to that question right now.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a oração condicional corretamente: "If she ___ (study) hard, she will pass the entrance exam."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'studies', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma oração condicional (Zero Conditional):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'If', 1, 1),
(@p, 'you', 1, 2),
(@p, 'heat', 1, 3),
(@p, 'ice,', 1, 4),
(@p, 'it', 1, 5),
(@p, 'melts.', 1, 6);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em manchetes de jornais em inglês (ex.: "President signs new climate agreement"), por que o Simple Present costuma ser usado para noticiar fatos recentes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para dar tom de atualidade, imediatismo e impacto jornalístico à manchete.', 1, 0),
(@p, 'Porque os jornalistas desconhecem as regras do passado.', 0, 0),
(@p, 'Porque o acordo só será assinado daqui a dez anos.', 0, 0),
(@p, 'Porque o verbo "sign" é invariável no passado.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em orações subordinadas temporais iniciadas por "when", "as soon as" ou "before" com sentido de futuro (ex.: "Call me when you arrive"), utiliza-se o Simple Present em vez de "will".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 73: Simple Past
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Simple Past' AND id_materia = 9 LIMIT 1);

-- Quiz 73.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Simple Past: Ações Concluídas e Verbos Regulares (-ed)', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase no passado: "We ___ a great documentary about space exploration last night"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'watched', 1, 0),
(@p, 'watch', 0, 0),
(@p, 'watches', 0, 0),
(@p, 'watching', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada verbo regular à sua regra ortográfica no Simple Past:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'arrive -> arrived', 1, 1, 'Verbo terminado em -e recebe apenas -d'),
(@p, 'carry -> carried', 1, 2, 'Verbo terminado em consoante + y troca o y por -ied'),
(@p, 'stop -> stopped', 1, 3, 'Verbo monossilábico CVC dobra a consoante final antes de -ed');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Expressões temporais como "yesterday", "last week", "two years ago" e "in 2018" são marcadores típicos do Simple Past porque indicam um tempo definido e já encerrado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as formas verbais regulares corretamente grafadas no Simple Past:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'visited (de visit)', 1, 0),
(@p, 'studied (de study)', 1, 0),
(@p, 'planned (de plan)', 1, 0),
(@p, 'enjoyed -> enjoied', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva o Simple Past do verbo regular "work" na frase: "My grandfather ___ at that factory for thirty years."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'worked', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os marcadores temporais do passado do mais distante para o mais recente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ten years ago', 1, 1),
(@p, 'Last year', 1, 2),
(@p, 'Last month', 1, 3),
(@p, 'Yesterday morning', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Diferentemente do Simple Present, como se comporta a terminação "-ed" dos verbos regulares no Simple Past em relação aos sujeitos (I, you, he, she, it, we, they)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Permanece exatamente igual para todas as pessoas gramaticais, sem alteração na 3ª pessoa do singular.', 1, 0),
(@p, 'Ganha um -s adicional quando o sujeito é he, she ou it.', 0, 0),
(@p, 'Só é usada no plural (we, you, they).', 0, 0),
(@p, 'Desaparece quando há um objeto direto na frase.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O passado simples do verbo regular "play" é escrito "plaied" porque termina na letra Y.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 73.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Verbos Irregulares Essenciais no Simple Past', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa preenche corretamente as lacunas: "Yesterday I ___ to the bookstore and ___ two novels"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'went / bought', 1, 0),
(@p, 'goed / buyed', 0, 0),
(@p, 'go / bought', 0, 0),
(@p, 'went / buy', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada verbo irregular no infinitivo à sua forma correta no Simple Past:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'see', 1, 1, 'saw'),
(@p, 'write', 1, 2, 'wrote'),
(@p, 'take', 1, 3, 'took');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os verbos irregulares em inglês não seguem a regra do acréscimo de "-ed" no Simple Past, apresentando formas próprias que devem ser aprendidas pelo uso e consulta às tabelas verbais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pares corretos de (Infinitivo -> Simple Past) entre verbos irregulares:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'make -> made', 1, 0),
(@p, 'speak -> spoke', 1, 0),
(@p, 'find -> found', 1, 0),
(@p, 'teach -> teached', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva a forma do Simple Past do verbo irregular "have" na frase: "They ___ a wonderful trip to Salvador last summer."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'had', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a narrativa no passado usando verbos irregulares:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'First, Pedro left home early in the morning.', 1, 1),
(@p, 'Next, he met his friends at the train station.', 1, 2),
(@p, 'Then, they took the express train to the museum.', 1, 3),
(@p, 'Finally, they came back home at dusk.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa apresenta a forma correta no Simple Past dos verbos "give", "eat" e "drink", respectivamente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'gave / ate / drank', 1, 0),
(@p, 'gived / eated / drinked', 0, 0),
(@p, 'given / eaten / drunk', 0, 0),
(@p, 'gave / eat / drunk', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Alguns verbos irregulares, como "cut", "put" e "read" (mudando apenas a pronúncia neste último), mantêm a mesma grafia no infinitivo e no Simple Past.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 73.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Negativa e Interrogativa no Simple Past (Did / Didn''t)', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a pergunta: "Where ___ your parents ___ on their last vacation?"');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'did / go', 1, 0),
(@p, 'did / went', 0, 0),
(@p, 'do / went', 0, 0),
(@p, 'were / go', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pergunta no Simple Past à sua resposta curta coerente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Did you finish the project on time?', 1, 1, 'Yes, I did.'),
(@p, 'Did Clara call you yesterday?', 1, 2, 'No, she didn''t.'),
(@p, 'Were they at the concert?', 1, 3, 'Yes, they were.');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em frases negativas e interrogativas no Simple Past com o auxiliar "did" ou "didn''t", o verbo principal deve permanecer na forma base (infinitivo sem "to"), e não flexionado no passado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases que estão gramaticalmente corretas no Simple Past:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'He didn''t understand the teacher''s explanation.', 1, 0),
(@p, 'Did they arrive before the movie started?', 1, 0),
(@p, 'What time did the meeting end?', 1, 0),
(@p, 'She didn''t went to the party last Friday.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Transforme a frase afirmativa "They bought a new apartment" para a negativa escrevendo apenas a forma verbal composta: "They ___ a new apartment."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'didn''t buy', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma pergunta interrogativa com Wh-word no Simple Past:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Why', 1, 1),
(@p, 'did', 1, 2),
(@p, 'you', 1, 3),
(@p, 'leave', 1, 4),
(@p, 'early?', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre usar "did" e "was/were" em perguntas no passado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Usa-se "was/were" quando o verbo principal da oração é o próprio verbo To Be; usa-se "did" como auxiliar para os demais verbos.', 1, 0),
(@p, 'Usa-se "did" apenas para verbos regulares e "was" para verbos irregulares.', 0, 0),
(@p, 'Usa-se "was/were" somente no plural e "did" somente no singular.', 0, 0),
(@p, 'Ambos podem ser usados juntos na mesma pergunta, como "Did you were tired?".', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A pergunta "Who wrote Dom Casmurro?" dispensa o auxiliar "did" porque o pronome interrogativo "Who" funciona como o próprio sujeito da oração.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 73.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Simple Past vs. Present Perfect e Hábitos Passados (Used To)', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa escolhe corretamente entre Simple Past e Present Perfect: "Machado de Assis ___ dozens of short stories, and readers ___ his books for generations"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'wrote / have admired', 1, 0),
(@p, 'has written / admired', 0, 0),
(@p, 'wrote / admire', 0, 0),
(@p, 'was writing / admired', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada construção do passado ao seu sentido específico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Simple Past (lived in Paris in 2019)', 1, 1, 'Ação concluída em período de tempo definido e encerrado'),
(@p, 'Present Perfect (have lived in Paris since 2019)', 1, 2, 'Ação iniciada no passado que continua no presente ou tem relevância atual'),
(@p, 'Used to (used to live in Paris)', 1, 3, 'Hábito ou estado passado que não ocorre mais atualmente');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na forma negativa com "did", a estrutura "used to" perde o "-d" final, grafando-se "didn''t use to" (ex.: "I didn''t use to like vegetables when I was a child").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique frases que contrastam adequadamente Simple Past e outras formas do passado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'I was reading a novel when the phone rang.', 1, 0),
(@p, 'Have you ever visited London? Yes, I went there two years ago.', 1, 0),
(@p, 'People used to send letters before email became popular.', 1, 0),
(@p, 'I have seen that movie yesterday afternoon.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a frase sobre hábito passado que não existe mais: "When she was younger, she ___ to play the piano every day."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'used', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase combinando Past Continuous e Simple Past:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'We', 1, 1),
(@p, 'were', 1, 2),
(@p, 'having', 1, 3),
(@p, 'dinner', 1, 4),
(@p, 'when', 1, 5),
(@p, 'it', 1, 6),
(@p, 'started', 1, 7),
(@p, 'raining.', 1, 8);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a frase "Shakespeare has written Hamlet" é considerada gramaticalmente inadequada em inglês padrão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque Shakespeare já faleceu, tornando a produção de suas obras um fato totalmente encerrado no passado, o que exige o Simple Past ("wrote").', 1, 0),
(@p, 'Porque o verbo "write" não possui forma no particípio passado.', 0, 0),
(@p, 'Porque nomes próprios não podem ser sujeitos do Present Perfect.', 0, 0),
(@p, 'Porque "Hamlet" é um substantivo no plural.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando uma ação mais longa em progresso no passado (Past Continuous) é interrompida por uma ação pontual, a ação que interrompe é expressa no Simple Past.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 74: Present Continuous
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Present Continuous' AND id_materia = 9 LIMIT 1);

-- Quiz 74.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Present Continuous: Ações em Andamento no Momento da Fala', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a estrutura básica obrigatória para formar o Present Continuous em inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sujeito + verbo To Be no presente (am / is / are) + verbo principal terminado em -ing.', 1, 0),
(@p, 'Sujeito + auxiliar do/does + verbo principal no infinitivo.', 0, 0),
(@p, 'Sujeito + verbo principal terminado em -ed.', 0, 0),
(@p, 'Sujeito + will + verbo principal terminado em -ing.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sujeito à forma correta do Present Continuous do verbo "study":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'I', 1, 1, 'am studying'),
(@p, 'She', 1, 2, 'is studying'),
(@p, 'They', 1, 3, 'are studying');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Expressões como "now", "right now", "at the moment" e exclamações como "Look!" ou "Listen!" indicam frequentemente o uso do Present Continuous.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as frases corretamente estruturadas no Present Continuous:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Listen! Someone is playing the violin upstairs.', 1, 0),
(@p, 'The children are sleeping in their bedroom right now.', 1, 0),
(@p, 'I am preparing dinner at the moment.', 1, 0),
(@p, 'She working at the bank right now.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a frase com a forma correta do verbo "rain": "Take your umbrella because it is ___ outside."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'raining', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase afirmativa no Present Continuous:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'The', 1, 1),
(@p, 'students', 1, 2),
(@p, 'are', 1, 3),
(@p, 'reading', 1, 4),
(@p, 'the', 1, 5),
(@p, 'article', 1, 6),
(@p, 'now.', 1, 7);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase: "Look at the sky! The birds ___ south for the winter"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'are flying', 1, 0),
(@p, 'is flying', 0, 0),
(@p, 'flying', 0, 0),
(@p, 'flies', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na frase "He playing video games now", o verbo To Be pode ser omitido sem prejudicar a correção gramatical da língua inglesa padrão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 74.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regras Ortográficas do Gerúndio (-ing), Negativa e Interrogativa', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa apresenta a grafia correta da forma "-ing" dos verbos "make", "run" e "lie", respectivamente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'making / running / lying', 1, 0),
(@p, 'makeing / runing / lieing', 0, 0),
(@p, 'making / runing / lying', 0, 0),
(@p, 'makeing / running / liing', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada verbo à regra ortográfica aplicada ao acrescentar "-ing":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'write -> writing', 1, 1, 'Verbo terminado em -e mudo perde o -e antes de -ing'),
(@p, 'swim -> swimming', 1, 2, 'Verbo monossilábico CVC dobra a consoante final antes de -ing'),
(@p, 'die -> dying', 1, 3, 'Verbo terminado em -ie troca -ie por -y antes de -ing');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para formar perguntas no Present Continuous, invertemos o verbo To Be (am/is/are) com o sujeito, como em "Are they waiting for the bus?".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as formas com "-ing" corretamente escritas em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'sitting (de sit)', 1, 0),
(@p, 'having (de have)', 1, 0),
(@p, 'studying (de study)', 1, 0),
(@p, 'stoping (de stop)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Escreva a forma correta com "-ing" do verbo "dance" na frase: "Look! Everyone is ___ at the festival."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'dancing', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma pergunta interrogativa no Present Continuous:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'What', 1, 1),
(@p, 'are', 1, 2),
(@p, 'you', 1, 3),
(@p, 'doing', 1, 4),
(@p, 'right', 1, 5),
(@p, 'now?', 1, 6);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o verbo "open" forma "opening" (sem dobrar o "n"), enquanto "begin" forma "beginning" (dobrando o "n")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque em palavras de duas sílabas terminadas em CVC, a consoante final só dobra quando a sílaba tônica é a última (be-GIN), e não a primeira (O-pen).', 1, 0),
(@p, 'Porque verbos iniciados com vogal nunca dobram letras.', 0, 0),
(@p, 'Porque "open" é um verbo irregular no gerúndio.', 0, 0),
(@p, 'Porque o "n" mudo desaparece na pronúncia britânica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Verbos terminados em "-y" (como "study" e "play") mantêm o "-y" ao receber "-ing" ("studying", "playing"), diferentemente do que ocorre no Simple Present e no Simple Past.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 74.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Present Continuous para Planos Futuros e Situações Temporárias', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual sentido o Present Continuous expressa na frase: "We are flying to Buenos Aires next Friday morning; we already bought the tickets"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um plano ou compromisso futuro já confirmado e organizado (fixed arrangement).', 1, 0),
(@p, 'Uma ação que está ocorrendo exatamente enquanto o avião decola agora.', 0, 0),
(@p, 'Uma rotina semanal praticada todas as sextas-feiras há anos.', 0, 0),
(@p, 'Um fato histórico ocorrido no século passado.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada frase no Present Continuous ao seu uso comunicativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'I am meeting Dr. Silva tomorrow at 3 PM.', 1, 1, 'Compromisso futuro agendado'),
(@p, 'She is living with her aunt while her house is renovated.', 1, 2, 'Situação temporária no presente'),
(@p, 'Global temperatures are rising every decade.', 1, 3, 'Tendência ou mudança em desenvolvimento');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Present Continuous pode ser utilizado para indicar ações temporárias que ocorrem ao redor do presente (como "this week", "this month", "nowadays"), mesmo que não estejam acontecendo no segundo exato da fala.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique sentenças em que o Present Continuous expressa planos futuros já acertados:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'What are you doing tonight? I''m having dinner with my cousins.', 1, 0),
(@p, 'The band is performing in São Paulo next month.', 1, 0),
(@p, 'Are you coming to the party on Saturday?', 1, 0),
(@p, 'Water is freezing at zero degrees Celsius.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a frase sobre uma situação temporária: "Usually I drive to work, but this week I am ___ (take) the subway."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'taking', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase sobre um plano futuro confirmado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'My', 1, 1),
(@p, 'parents', 1, 2),
(@p, 'are', 1, 3),
(@p, 'moving', 1, 4),
(@p, 'to', 1, 5),
(@p, 'Curitiba', 1, 6),
(@p, 'next', 1, 7),
(@p, 'month.', 1, 8);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "You are always losing your keys!", qual nuance emocional o Present Continuous com "always" transmite?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Irritação ou reclamação diante de um hábito repetitivo considerado incômodo.', 1, 0),
(@p, 'Elogio formal pela organização pessoal do ouvinte.', 0, 0),
(@p, 'Previsão meteorológica para a próxima semana.', 0, 0),
(@p, 'Instrução técnica de um manual de segurança.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao usar o Present Continuous com sentido de futuro, geralmente mencionamos uma expressão temporal futura (como "tomorrow", "tonight", "next weekend") para evitar ambiguidade com o momento presente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 74.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Simple Present vs. Present Continuous e Verbos com Duplo Sentido', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente o contraste: "Normally Gabriel ___ jeans and a T-shirt, but today he ___ a formal suit for the conference"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'wears / is wearing', 1, 0),
(@p, 'is wearing / wears', 0, 0),
(@p, 'wear / is wearing', 0, 0),
(@p, 'wears / wears', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada frase ao sentido específico do verbo que pode ser estático ou dinâmico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'I think this movie is brilliant.', 1, 1, 'Expressa opinião (estado mental -> Simple Present)'),
(@p, 'I am thinking about changing my major.', 1, 2, 'Expressa processo de reflexão ativo (ação -> Present Continuous)'),
(@p, 'She is having lunch with the director.', 1, 3, 'Significa fazer refeição (ação -> Present Continuous)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Enquanto "She has two brothers" usa o Simple Present porque "have" indica posse (estado), a frase "She is having a great time at the beach" é correta porque "have" indica experiência ou atividade em curso.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique sentenças gramaticalmente adequadas que respeitam a distinção entre estado e ação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'This soup tastes delicious!', 1, 0),
(@p, 'The chef is tasting the soup to check the seasoning.', 1, 0),
(@p, 'I am seeing the dentist at 4 PM today.', 1, 0),
(@p, 'This smartphone is costing two thousand dollars right now.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete a frase escolhendo a forma adequada do verbo "look": "Why are you ___ at that painting so closely?"');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'looking', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma pergunta contrastando hábito e momento atual:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Why', 1, 1),
(@p, 'are', 1, 2),
(@p, 'you', 1, 3),
(@p, 'drinking', 1, 4),
(@p, 'tea', 1, 5),
(@p, 'today?', 1, 6);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa completa corretamente a frase: "Be quiet, please! The baby ___ and he usually ___ for only one hour"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'is sleeping / sleeps', 1, 0),
(@p, 'sleeps / is sleeping', 0, 0),
(@p, 'is sleeping / is sleeping', 0, 0),
(@p, 'sleep / sleeps', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O verbo "love" nunca pode aparecer com "-ing" em nenhum contexto, mesmo em slogans publicitários informais como "I''m loving it" para enfatizar entusiasmo imediato.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 75: Vocabulary
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Vocabulary' AND id_materia = 9 LIMIT 1);

-- Quiz 75.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Vocabulary: Cotidiano, Família, Tempo e Lugares da Cidade', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual termo em inglês designa os filhos da sua tia ou do seu tio (primos/primas)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'cousins', 1, 0),
(@p, 'nephews', 0, 0),
(@p, 'siblings', 0, 0),
(@p, 'parents', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada termo de parentesco em inglês ao seu significado em português:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Siblings', 1, 1, 'Irmãos e irmãs em geral'),
(@p, 'Nephew and Niece', 1, 2, 'Sobrinho e sobrinha'),
(@p, 'Parents', 1, 3, 'Pai e mãe (genitores)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em inglês, os dias da semana (como Monday, Wednesday e Friday) e os meses do ano (como January, May e October) são sempre escritos com letra inicial maiúscula.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique estabelecimentos urbanos em inglês com suas traduções corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bakery — padaria', 1, 0),
(@p, 'Drugstore / Pharmacy — farmácia', 1, 0),
(@p, 'Subway station — estação de metrô', 1, 0),
(@p, 'Butcher shop — biblioteca pública', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual dia da semana em inglês vem imediatamente depois de Wednesday e antes de Friday?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Thursday', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as estações do ano em inglês começando pela primavera:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Spring', 1, 1),
(@p, 'Summer', 1, 2),
(@p, 'Autumn / Fall', 1, 3),
(@p, 'Winter', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa reúne apenas profissões escritas corretamente em inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lawyer, nurse, architect, firefighter', 1, 0),
(@p, 'Kitchen, window, pillow, blanket', 0, 0),
(@p, 'Elbow, shoulder, ankle, knee', 0, 0),
(@p, 'Cloudy, windy, foggy, sunny', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A palavra "Tuesday" significa quinta-feira, enquanto "Thursday" significa terça-feira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 75.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('False Friends (Falsos Cognatos) Mais Cobrados em Provas', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "I went to the library to borrow three history books, and then I went to the bookstore to buy a dictionary", qual é a diferença entre "library" e "bookstore"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '"Library" significa biblioteca (empréstimo de livros), enquanto "bookstore" significa livraria (venda de livros).', 1, 0),
(@p, '"Library" significa livraria, enquanto "bookstore" significa biblioteca.', 0, 0),
(@p, 'Ambas significam papelaria especializada em cadernos.', 0, 0),
(@p, '"Library" significa laboratório de química.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada falso cognato (False Friend) ao seu real significado em português:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Actually', 1, 1, 'Na verdade / efetivamente (e não atualmente)'),
(@p, 'Pretend', 1, 2, 'Fingir (e não pretender)'),
(@p, 'Attend', 1, 3, 'Frequentar / comparecer a (e não atender telefone ou cliente)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As palavras "push" e "pull" impressas em portas de vidro significam, respectivamente, "empurrar" e "puxar" (exatamente o oposto do que sua semelhança sonora com o português sugere).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique traduções corretas de falsos cognatos frequentes em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Relatives — parentes (enquanto parents significa pai e mãe)', 1, 0),
(@p, 'Fabric — tecido (enquanto factory significa fábrica)', 1, 0),
(@p, 'College — faculdade / ensino superior (enquanto high school significa ensino médio)', 1, 0),
(@p, 'Prejudice — prejuízo financeiro em uma empresa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual advérbio em inglês traduz corretamente a palavra "atualmente" (não confundir com "actually")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'currently', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase empregando corretamente o falso cognato "realize" (perceber/dar-se conta):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'I', 1, 1),
(@p, 'didn''t', 1, 2),
(@p, 'realize', 1, 3),
(@p, 'how', 1, 4),
(@p, 'late', 1, 5),
(@p, 'it', 1, 6),
(@p, 'was.', 1, 7);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa o substantivo "prejudice" em textos jornalísticos e acadêmicos em inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Preconceito (enquanto prejuízo financeiro é "loss" ou "damage").', 1, 0),
(@p, 'Prejuízo comercial.', 0, 0),
(@p, 'Prêmio literário.', 0, 0),
(@p, 'Orçamento doméstico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "to support a family" significa "suportar/aturar uma família", e não "sustentar ou apoiar financeiramente e emocionalmente".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 75.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Phrasal Verbs Essenciais no Cotidiano', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual phrasal verb substitui corretamente o verbo destacado na frase: "Never abandon your dreams, even when things get difficult"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'give up', 1, 0),
(@p, 'wake up', 0, 0),
(@p, 'turn on', 0, 0),
(@p, 'put on', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada phrasal verb com "look" ao seu significado correto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Look for', 1, 1, 'Procurar algo ou alguém perdido'),
(@p, 'Look after', 1, 2, 'Cuidar de crianças, idosos ou animais'),
(@p, 'Look forward to', 1, 3, 'Aguardar ansiosamente por um evento futuro');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um phrasal verb é formado por um verbo combinado com uma preposição ou advérbio (partícula), criando muitas vezes um significado idiomático diferente do verbo original isolado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique phrasal verbs associados corretamente aos seus significados:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Find out — descobrir uma informação', 1, 0),
(@p, 'Put off — adiar um compromisso ou reunião', 1, 0),
(@p, 'Run out of — ficar sem estoque de algo (ex.: acabar o leite ou a bateria)', 1, 0),
(@p, 'Turn off — aumentar o volume da televisão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Complete o phrasal verb na frase: "Please ___ off your cell phones before the theater play begins."');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'turn', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência lógica de ações ao acordar usando phrasal verbs:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'First, I wake up when the alarm rings.', 1, 1),
(@p, 'Next, I get up out of bed.', 1, 2),
(@p, 'Then, I put on my school uniform.', 1, 3),
(@p, 'Finally, I set off for school.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa o phrasal verb "call off" na manchete: "Organizers decided to call off the outdoor concert due to the heavy storm"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cancelar o evento.', 1, 0),
(@p, 'Telefonar para todos os músicos.', 0, 0),
(@p, 'Antecipar o horário do show.', 0, 0),
(@p, 'Transmitir o show pela internet.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em phrasal verbs separáveis, quando o objeto é um pronome pessoal (como "it" ou "them"), o pronome deve vir entre o verbo e a partícula (ex.: "Turn it on", e não "Turn on it").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 75.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Collocations (Make vs. Do), Formação de Palavras e Idioms', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alternativa preenche corretamente as lacunas com "make" ou "do": "To ___ progress in English, you need to ___ your homework and avoid ___ the same mistakes"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'make / do / making', 1, 0),
(@p, 'do / make / doing', 0, 0),
(@p, 'make / make / doing', 0, 0),
(@p, 'do / do / making', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada afixo (prefixo ou sufixo) à sua função na formação de palavras em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Prefixos un-, in-, im-, dis-', 1, 1, 'Formam antônimos ou negação (ex.: unhappy, impossible, disagree)'),
(@p, 'Sufixo -less', 1, 2, 'Forma adjetivos indicando ausência (ex.: hopeless, wireless, careless)'),
(@p, 'Sufixos -tion, -ment, -ness', 1, 3, 'Formam substantivos abstratos (ex.: education, development, kindness)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em inglês, "collocations" são combinações naturais e consagradas de palavras usadas por falantes nativos (como "heavy rain", "fast food" e "make a decision"), que não devem ser traduzidas literalmente palavra por palavra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique collocations naturais e corretas na língua inglesa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Do the dishes / do the laundry', 1, 0),
(@p, 'Make a reservation / make an effort', 1, 0),
(@p, 'Take a break / pay attention', 1, 0),
(@p, 'Make a favor / do a mistake', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual prefixo negativo transforma o adjetivo "patient" em seu antônimo ("impaciente") em inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'im', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma frase usando a expressão idiomática "once in a blue moon" (raramente):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'We', 1, 1),
(@p, 'go', 1, 2),
(@p, 'to', 1, 3),
(@p, 'the', 1, 4),
(@p, 'cinema', 1, 5),
(@p, 'once', 1, 6),
(@p, 'in', 1, 7),
(@p, 'a', 1, 8),
(@p, 'blue', 1, 9),
(@p, 'moon.', 1, 10);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa a expressão idiomática "break a leg" dita a um ator antes de entrar no palco?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Boa sorte na apresentação!', 1, 0),
(@p, 'Cuidado para não cair da escada!', 0, 0),
(@p, 'Cancele o espetáculo imediatamente!', 0, 0),
(@p, 'Fale mais devagar com a plateia!', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão idiomática "piece of cake" (como em "The math test was a piece of cake") significa que a tarefa foi extremamente fácil de realizar.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 76: Reading
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Reading' AND id_materia = 9 LIMIT 1);

-- Quiz 76.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Estratégias de Leitura: Cognatos, Palavras-Chave e Skimming', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em leitura em língua inglesa, no que consiste a técnica conhecida como "Skimming"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fazer uma leitura rápida e global do texto observando título, subtítulos, imagens e palavras-chave para captar o tema principal.', 1, 0),
(@p, 'Traduzir mentalmente cada palavra no dicionário antes de ler a frase seguinte.', 0, 0),
(@p, 'Memorizar todas as preposições e artigos do texto em ordem alfabética.', 0, 0),
(@p, 'Ler apenas a última palavra de cada parágrafo de trás para frente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada recurso de apoio à leitura de textos em inglês à sua utilidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Palavras Cognatas (Transparent Words)', 1, 1, 'Vocábulos com grafia e significado semelhantes ao português (ex.: important, music, technology)'),
(@p, 'Elementos Não Verbais (Layout e Imagens)', 1, 2, 'Gráficos, fotos, legendas e fontes que ajudam a identificar o gênero e o contexto'),
(@p, 'Palavras-Chave (Keywords)', 1, 3, 'Substantivos, verbos e adjetivos repetidos que carregam o núcleo informativo do texto');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Identificar o gênero textual (notícia, anúncio publicitário, tirinha, infográfico ou resumo científico) antes da leitura detalhada ajuda o leitor a prever a finalidade comunicativa do texto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique palavras cognatas verdadeiras (com significado equivalente ao português) retiradas de um texto sobre meio ambiente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pollution (poluição)', 1, 0),
(@p, 'Renewable energy (energia renovável)', 1, 0),
(@p, 'Biodiversity (biodiversidade)', 1, 0),
(@p, 'Eventually (eventualmente — falso cognato que significa finalmente)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Leia o aviso: "WARNING: Wet floor. Please watch your step." Qual é o objetivo principal desse aviso público?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Alertar sobre piso molhado', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas recomendadas para uma leitura estratégica eficiente em provas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Observar título, fonte, data e elementos visuais do texto', 1, 1),
(@p, 'Realizar o Skimming para identificar o assunto geral e o propósito do autor', 1, 2),
(@p, 'Ler o enunciado da questão para saber qual informação é solicitada', 1, 3),
(@p, 'Voltar ao trecho específico do texto para confirmar a resposta com precisão', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Leia a placa: "NO FOOD OR DRINKS ALLOWED INSIDE THE MUSEUM." O que essa mensagem informa aos visitantes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Não é permitido entrar com alimentos ou bebidas dentro do museu.', 1, 0),
(@p, 'O museu oferece comida e bebida gratuitamente aos visitantes.', 0, 0),
(@p, 'A lanchonete do museu funciona dentro das salas de exposição.', 0, 0),
(@p, 'É obrigatório comprar água antes de entrar no museu.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um leitor competente precisa conhecer 100% das palavras de um texto em inglês para conseguir compreender sua mensagem principal.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 76.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Scanning, Referência Pronominal e Compreensão de Textos', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença fundamental entre as estratégias de leitura "Skimming" e "Scanning"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Skimming busca a ideia geral do texto, enquanto o Scanning varre o texto rapidamente em busca de informações específicas (datas, nomes, números, locais).', 1, 0),
(@p, 'O Skimming é usado apenas em poemas e o Scanning apenas em receitas culinárias.', 0, 0),
(@p, 'O Scanning exige ler o texto em voz alta palavra por palavra.', 0, 0),
(@p, 'Não há nenhuma diferença entre os dois termos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pronome relativo ou pessoal à função de coesão referencial em um texto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Who / Whom', 1, 1, 'Retoma pessoas mencionadas anteriormente na frase'),
(@p, 'Which', 1, 2, 'Retoma coisas, animais ou ideias inteiras mencionadas antes'),
(@p, 'Whose', 1, 3, 'Indica posse (cujo / cuja) ligando dois substantivos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A coesão referencial por meio de pronomes (como "it", "they", "them", "this", "those") evita repetições desnecessárias e exige que o leitor identifique o termo antecedente ao qual o pronome se refere.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Leia o trecho: "Scientists studied coral reefs in Australia. They found that rising ocean temperatures threaten them." Sobre esse trecho, assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O pronome "They" refere-se a "Scientists".', 1, 0),
(@p, 'O pronome "them" refere-se a "coral reefs".', 1, 0),
(@p, 'O texto aponta o aumento da temperatura dos oceanos como ameaça aos recifes de coral.', 1, 0),
(@p, 'O pronome "them" refere-se aos próprios cientistas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Leia o anúncio: "The Annual Book Fair opens on October 14th at 9 AM and closes at 8 PM. Admission is free for students." Usando Scanning, em que dia de outubro a feira abre?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '14', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as frases para reconstruir um parágrafo coeso sobre hábitos de leitura:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reading regularly improves both vocabulary and critical thinking.', 1, 1),
(@p, 'However, many teenagers spend most of their free time scrolling on smartphones.', 1, 2),
(@p, 'To change this habit, schools are creating interactive reading clubs.', 1, 3),
(@p, 'These initiatives encourage young people to share book recommendations.', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Marie Curie, whose discoveries in radioactivity earned her two Nobel Prizes, inspired generations of women in science", o pronome "whose" indica que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As descobertas sobre radioatividade pertenciam a Marie Curie.', 1, 0),
(@p, 'Marie Curie era contrária aos prêmios Nobel.', 0, 0),
(@p, 'Nenhuma mulher estudou ciência após Marie Curie.', 0, 0),
(@p, 'Marie Curie recusou-se a pesquisar radioatividade.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em inglês, o pronome relativo "that" pode substituir tanto "who" (para pessoas) quanto "which" (para coisas) em orações restritivas sem vírgulas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 76.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conectivos Lógicos (Linking Words): Contraste, Causa e Consequência', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual conectivo completa corretamente a frase expressando contraste: "___ the heavy traffic, she arrived at the airport thirty minutes before boarding"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Despite', 1, 0),
(@p, 'Because', 0, 0),
(@p, 'Therefore', 0, 0),
(@p, 'Moreover', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conectivo em inglês à relação lógica que estabelece no texto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'However / Although / Nevertheless', 1, 1, 'Contraste ou concessão (entretanto, embora)'),
(@p, 'Therefore / Thus / Consequently', 1, 2, 'Conclusão ou consequência (portanto, consequentemente)'),
(@p, 'Moreover / Furthermore / In addition', 1, 3, 'Adição de argumentos (além disso)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A conjunção "Although" deve ser seguida de sujeito + verbo (ex.: "Although it was raining..."), enquanto a preposição "Despite" ou "In spite of" é seguida de substantivo ou verbo no gerúndio (ex.: "Despite the rain...").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique sentenças em que os conectivos estão empregados de forma logicamente coerente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solar energy is clean; however, initial installation costs can be high.', 1, 0),
(@p, 'The flight was delayed because of dense fog.', 1, 0),
(@p, 'She studied every single day; therefore, she achieved the highest score.', 1, 0),
(@p, 'He was exhausted, so he decided to run a full marathon immediately.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conectivo de oposição em inglês equivale a "contudo" ou "entretanto" e costuma aparecer entre ponto e vírgula e vírgula (ex.: "The plan was risky; ___, it succeeded")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'however', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras para formar uma oração concessiva com "Although":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Although', 1, 1),
(@p, 'he', 1, 2),
(@p, 'was', 1, 3),
(@p, 'nervous,', 1, 4),
(@p, 'he', 1, 5),
(@p, 'spoke', 1, 6),
(@p, 'clearly.', 1, 7);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase "Unless we reduce plastic waste, marine ecosystems will suffer irreversible damage", o conectivo "Unless" significa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A menos que / Se não (condição negativa).', 1, 0),
(@p, 'Desde que / Assim que.', 0, 0),
(@p, 'Por causa de / Devido a.', 0, 0),
(@p, 'Da mesma forma que.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os conectivos "whereas" e "while" podem ser usados para estabelecer contraste direto comparando duas situações diferentes (ex.: "Northern regions are arid, whereas southern areas receive heavy rainfall").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 76.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Inferência Textual, Ironia e Interpretação Estilo ENEM', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Leia o trecho: "While social media platforms claim to bring people closer together, recent studies suggest that heavy passive scrolling often deepens feelings of loneliness among adolescents." Qual é a tese central do trecho?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Há uma contradição entre a promessa de conexão das redes sociais e o aumento do sentimento de solidão associado ao uso passivo excessivo por adolescentes.', 1, 0),
(@p, 'As redes sociais eliminaram completamente a solidão entre os jovens.', 0, 0),
(@p, 'Estudos comprovam que adolescentes não utilizam plataformas digitais.', 0, 0),
(@p, 'O uso passivo das redes sociais é recomendado por médicos para tratar isolamento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito de interpretação textual avançada à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Inferência (Inference)', 1, 1, 'Conclusão lógica deduzida pelo leitor a partir de pistas implícitas do texto'),
(@p, 'Ironia (Irony)', 1, 2, 'Uso de palavras com sentido oposto ao literal para criticar ou gerar humor'),
(@p, 'Viés ou Ponto de Vista (Bias / Tone)', 1, 3, 'Atitude crítica, neutra, otimista ou cética do autor diante do tema');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em questões de interpretação do ENEM, alternativas que extrapolam o texto (afirmando algo que não pode ser sustentado nem implícita nem explicitamente pelo trecho) ou que generalizam demais ("always", "never", "all") costumam ser distratores incorretos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Leia a tirinha descrita: Um funcionário diz ao chefe "I love working unpaid overtime on weekends!" enquanto boceja exausto sobre uma pilha de papéis. O que se pode inferir da cena?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A fala do personagem é irônica, expressando insatisfação com a sobrecarga de trabalho não remunerado', 1, 0),
(@p, 'A linguagem não verbal (bocejo e pilha de papéis) contradiz o sentido literal das palavras', 1, 0),
(@p, 'A tirinha critica a precarização das condições de trabalho e o excesso de horas extras', 1, 0),
(@p, 'O funcionário está genuinamente entusiasmado por trabalhar sem receber salário', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Leia o trecho: "Despite numerous pledges at climate summits, global carbon emissions reached another record high last year." Qual palavra no trecho significa "promessas/compromissos formais"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'pledges', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura argumentativa clássica de um artigo de opinião em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Contextualização do problema e apresentação da tese (Thesis Statement)', 1, 1),
(@p, 'Desenvolvimento de argumentos respaldados por dados ou exemplos', 1, 2),
(@p, 'Apresentação e refutação de um contra-argumento (Counterargument)', 1, 3),
(@p, 'Conclusão retomando a tese e apontando perspectivas ou soluções', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Leia a manchete: "Tech Giants Face Scrutiny Over Data Privacy." O que significa a expressão "Face Scrutiny"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Enfrentam investigação rigorosa / fiscalização minuciosa.', 1, 0),
(@p, 'Recebem isenção total de impostos.', 0, 0),
(@p, 'Lançam novos aparelhos gratuitos.', 0, 0),
(@p, 'Encerram suas atividades na internet.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "double-edged sword" (espada de dois gumes) usada em textos sobre inteligência artificial indica que a tecnologia traz simultaneamente grandes benefícios e sérios riscos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 77: Listening
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Listening' AND id_materia = 9 LIMIT 1);

-- Quiz 77.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Listening e Pronúncia: Vogais Curtas e Longas, Pares Mínimos e Homófonos', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na compreensão auditiva em inglês, por que a distinção entre vogais curtas (/ɪ/) e longas (/iː/) no par mínimo "ship" e "sheep" é essencial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a duração e a tensão da vogal alteram completamente o significado da palavra ("ship" = navio; "sheep" = ovelha).', 1, 0),
(@p, 'Porque ambas as palavras têm exatamente o mesmo significado e pronúncia.', 0, 0),
(@p, 'Porque "ship" é sempre pronunciada com som de /u/ longo.', 0, 0),
(@p, 'Porque apenas o inglês britânico utiliza vogais na fala.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada par de homófonos (palavras com pronúncia idêntica e grafia/sentido diferentes) aos seus significados:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sea / See', 1, 1, 'Mar / Ver'),
(@p, 'Write / Right', 1, 2, 'Escrever / Certo ou direita'),
(@p, 'Know / No', 1, 3, 'Saber ou conhecer / Não');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Como palavras homófonas (como "two", "too" e "to", ou "here" e "hear") têm o mesmo som na fala, o ouvinte identifica qual palavra foi dita por meio do contexto gramatical e semântico da frase.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pares mínimos (palavras que se diferenciam por apenas um fonema) importantes para treinar o ouvido em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Live (/lɪv/ — morar) e Leave (/liːv/ — partir)', 1, 0),
(@p, 'Cat (/kæt/ — gato) e Cut (/kʌt/ — cortar)', 1, 0),
(@p, 'Three (/θriː/ — três) e Tree (/triː/ — árvore)', 1, 0),
(@p, 'Table e Window (palavras sem relação fonética mínima)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual palavra em inglês é homófona de "son" (filho) e significa "sol"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'sun', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a progressão auditiva recomendada para desenvolver a habilidade de Listening:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ouvir o áudio completo pela primeira vez sem legendas para captar o contexto geral', 1, 1),
(@p, 'Ouvir novamente anotando palavras-chave e ideias principais', 1, 2),
(@p, 'Conferir a transcrição (transcript) para identificar palavras não reconhecidas pelo som', 1, 3),
(@p, 'Reouvir acompanhando o áudio para associar a grafia à pronúncia real', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na frase falada "Please buy some flour to bake the cake", qual palavra homófona de "flour" (farinha) poderia confundir um ouvinte desatento ao contexto?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'flower (flor)', 1, 0),
(@p, 'floor (chão)', 0, 0),
(@p, 'fly (mosca)', 0, 0),
(@p, 'forest (floresta)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A pronúncia do dígrafo "th" (como em "think" e "this") exige colocar a ponta da língua suavemente entre os dentes, diferenciando palavras como "think" (pensar) de "sink" (afundar/pia).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 77.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Word Stress, Silent Letters e Pronúncia do -ED e -S', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em qual alternativa todas as palavras possuem uma consoante muda (silent letter) que não deve ser pronunciada ao falar ou ouvir inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'knife, island, castle, hour', 1, 0),
(@p, 'desk, lamp, milk, stop', 0, 0),
(@p, 'plan, best, camp, frog', 0, 0),
(@p, 'river, winter, sister, doctor', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo de verbos regulares no Simple Past à pronúncia final da terminação "-ed":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'wanted, needed, decided', 1, 1, 'Pronunciado com sílaba extra /ɪd/ (após sons de /t/ ou /d/)'),
(@p, 'worked, watched, kissed', 1, 2, 'Pronunciado com som surdo /t/ (após consoantes surdas)'),
(@p, 'played, lived, cleaned', 1, 3, 'Pronunciado com som sonoro /d/ (após vogais e consoantes sonoras)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na pronúncia padrão da língua inglesa, o verbo regular "worked" é pronunciado em uma única sílaba (/wɜːrkt/), e nunca como "wor-ked" em duas sílabas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique corretamente qual letra é muda (silent) em cada palavra abaixo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A letra "k" em "know" e "knee"', 1, 0),
(@p, 'A letra "w" em "write" e "wrong"', 1, 0),
(@p, 'A letra "b" em "climb" e "debt"', 1, 0),
(@p, 'A letra "m" em "mother" e "music"', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na pronúncia dos números em inglês, qual sílaba recebe a tonicidade principal (stress) em "thirTEEN" (13) em contraste com "THIRty" (30)? Escreva "segunda" ou "primeira" referindo-se a "thirteen":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'segunda', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as palavras segundo o número de sílabas pronunciadas em inglês (da menor para a maior):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'walked (1 sílaba pronunciada)', 1, 1),
(@p, 'Wednesday (2 sílabas pronunciadas: Wenz-day)', 1, 2),
(@p, 'comfortable (3 sílabas pronunciadas: comf-ta-ble)', 1, 3),
(@p, 'university (5 sílabas pronunciadas: u-ni-ver-si-ty)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como a tonicidade (Word Stress) diferencia a palavra "record" quando usada como substantivo ("a world record") e quando usada como verbo ("to record a song")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como substantivo a sílaba tônica é a primeira (RE-cord); como verbo a sílaba tônica desloca-se para a segunda (re-CORD).', 1, 0),
(@p, 'Ambas são pronunciadas exatamente com a mesma tonicidade na última sílaba.', 0, 0),
(@p, 'O substantivo perde todas as consoantes na fala.', 0, 0),
(@p, 'O verbo é pronunciado sem vogais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A diferença sonora entre números terminados em "-teen" (13 a 19) e dezenas terminadas em "-ty" (30 a 90) baseia-se tanto na tonicidade quanto no som final nasal /n/ versus vogal aberta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 77.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Estratégias de Compreensão Auditiva: Gist, Detail e Contexto', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Ao ouvir um aviso sonoro em um aeroporto internacional ("Attention passengers on Flight 408 to Madrid: boarding is now beginning at Gate B12"), qual estratégia de Listening o passageiro aplica para identificar o portão de embarque?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Listening for Specific Information (escuta seletiva focada em dados concretos como número do voo e portão).', 1, 0),
(@p, 'Transcrição fonética completa de todas as palavras funcionais.', 0, 0),
(@p, 'Leitura silenciosa de um romance.', 0, 0),
(@p, 'Tradução simultânea palavra por palavra do discurso inteiro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada situação auditiva (Listening) ao objetivo principal da escuta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Listening for Gist', 1, 1, 'Ouvir um podcast para entender o tema geral debatido'),
(@p, 'Listening for Detail', 1, 2, 'Ouvir a previsão do tempo para saber a temperatura máxima de amanhã'),
(@p, 'Listening for Attitude / Emotion', 1, 3, 'Perceber pelo tom de voz se o falante está surpreso, irritado ou animado');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em inglês falado, as "Content Words" (substantivos, verbos principais, adjetivos e advérbios) são pronunciadas com maior ênfase e clareza do que as "Function Words" (artigos, preposições e auxiliares), o que ajuda o ouvinte a captar o sentido da mensagem.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Considere a transcrição de uma mensagem de voz: "Hi Mark, it''s Sarah. Sorry to call so late, but tomorrow''s meeting was moved from 9 AM to 10:30 AM in Room 4. Let me know if you got this." Quais informações são verdadeiras?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A reunião de amanhã foi adiada para as 10h30 da manhã', 1, 0),
(@p, 'O encontro ocorrerá na sala 4 (Room 4)', 1, 0),
(@p, 'Sarah pediu que Mark confirmasse o recebimento do recado', 1, 0),
(@p, 'A reunião foi cancelada definitivamente por Mark', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na expressão auditiva usada ao telefone "Could you speak up, please?", o que o ouvinte está pedindo ao interlocutor? Escreva "falar mais alto" ou "desligar":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'falar mais alto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o diálogo de atendimento em uma cafeteria em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Barista: Hi there! What can I get started for you today?', 1, 1),
(@p, 'Customer: Could I have a medium iced latte, please?', 1, 2),
(@p, 'Barista: Sure thing. Would you like anything else with that?', 1, 3),
(@p, 'Customer: No, thank you. How much is it?', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o falante pede quando diz "Sorry, I didn''t catch that. Could you repeat it, please?" durante uma conversa em inglês?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pede desculpas por não ter entendido/ouvido o que foi dito e solicita que a pessoa repita.', 1, 0),
(@p, 'Avisa que pegou uma bola durante um jogo esportivo.', 0, 0),
(@p, 'Encerra a ligação telefônica imediatamente.', 0, 0),
(@p, 'Recusa-se a responder qualquer pergunta em inglês.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Antecipar o vocabulário provável de um áudio observando o tema ou as perguntas antes de ouvi-lo (Prediction) melhora significativamente o desempenho na compreensão auditiva.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 77.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Connected Speech, Contrações Informais e Entonação Nativa', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na fala cotidiana rápida (Connected Speech), o que um falante nativo quer dizer ao pronunciar a frase "I''m gonna grab a bite before the lecture"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'I am going to grab a bite (vou comer algo rápido antes da palestra), onde "gonna" é a redução oral de "going to".', 1, 0),
(@p, 'I am gone forever (fui embora para sempre).', 0, 0),
(@p, 'I got a bike (comprei uma bicicleta nova).', 0, 0),
(@p, 'I want to go to bed (quero ir dormir agora).', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada redução informal da fala em inglês à sua forma escrita completa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'wanna', 1, 1, 'want to / want a'),
(@p, 'gotta', 1, 2, 'have got to (ter que)'),
(@p, 'kinda / sorta', 1, 3, 'kind of / sort of (meio que / tipo)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na entonação padrão do inglês, perguntas de resposta "Sim ou Não" (Yes/No Questions, como "Are you ready?") costumam terminar com entonação ascendente (rising intonation), enquanto perguntas com pronome interrogativo (Wh-Questions, como "Where do you live?") terminam com entonação descendente (falling intonation).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fenômenos reais do Connected Speech que explicam por que os nativos parecem "emendar" as palavras ao falar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Linking (ligação entre a consoante final de uma palavra e a vogal inicial da seguinte, como em "turn_it_off")', 1, 0),
(@p, 'Elision (omissão de certos sons em encontros consonantais rápidos, como o /d/ em "next_day")', 1, 0),
(@p, 'Weak forms (redução de vogais átonas ao som neutro schwa /ə/ em palavras como "for", "to" e "and")', 1, 0),
(@p, 'Pausa obrigatória de dois segundos entre cada artigo e substantivo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na fala informal norte-americana, qual redução oral de duas palavras corresponde a "Did you" no início de perguntas rápidas como "___ eat yet?" (escrita informalmente como "Didja")? Escreva a forma padrão de duas palavras:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Did you', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os elementos que compõem a compreensão plena de um discurso falado autêntico em inglês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Decodificação fonética dos sons, liaisons e reduções da fala natural', 1, 1),
(@p, 'Reconhecimento lexical e sintático das estruturas em tempo real', 1, 2),
(@p, 'Interpretação da entonação, pausas e ênfases expressivas do falante', 1, 3),
(@p, 'Integração com o contexto situacional e cultural da comunicação', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No inglês norte-americano falado, o fenômeno chamado "Flap T" faz com que o "t" intervocálico em palavras como "water", "better" e "city" soe muito parecido com qual som do português?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Com o som de "r" brando entre vogais (como na palavra "arara" ou "cara" em português).', 1, 0),
(@p, 'Com o som de "ch" de "chave".', 0, 0),
(@p, 'Com o som de "nh" de "ninho".', 0, 0),
(@p, 'Com o som de "z" vibrante.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Contrações informais como "gonna" e "wanna" são muito comuns na fala espontânea, músicas e diálogos informais, mas devem ser evitadas em redações acadêmicas ou documentos formais escritos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);