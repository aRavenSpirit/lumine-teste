USE luminebd;

-- =========================================================================
-- MATÉRIA 6: FÍSICA (CONTEÚDOS 49 A 56)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 49: Cinemática
-- -------------------------------------------------------------------------

-- Quiz 49.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Fundamentais da Cinemática', 1, 49);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os conceitos de repouso e movimento na Cinemática dependem do referencial adotado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque um mesmo corpo pode estar em repouso em relação a um observador e em movimento em relação a outro.', 1, 0),
(@p, 'Porque a massa do corpo muda conforme a velocidade do observador.', 0, 0),
(@p, 'Porque o tempo para completamente quando um corpo está parado.', 0, 0),
(@p, 'Porque apenas corpos no espaço sideral possuem referencial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grandeza cinemática à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Trajetória', 1, 1, 'Linha geométrica formada pelas sucessivas posições ocupadas por um móvel'),
(@p, 'Deslocamento escalar', 1, 2, 'Variação entre a posição final e a posição inicial do móvel'),
(@p, 'Velocidade escalar média', 1, 3, 'Razão entre o deslocamento escalar total e o intervalo de tempo gasto');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um ponto material é um corpo cujas dimensões são desprezíveis em comparação com as distâncias envolvidas no fenômeno estudado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique unidades de medida válidas para velocidade na Cinemática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metro por segundo (m/s - unidade do Sistema Internacional)', 1, 0),
(@p, 'Quilômetro por hora (km/h)', 1, 0),
(@p, 'Centímetro por segundo (cm/s)', 1, 0),
(@p, 'Quilograma por metro cúbico (kg/m³)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Por qual fator numérico devemos dividir uma velocidade em km/h para convertê-la exatamente para m/s?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '3,6', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas para calcular a velocidade escalar média de um automóvel em uma viagem:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar a posição inicial (S0) e a posição final (S) na trajetória', 1, 1),
(@p, 'Calcular a variação de espaço (Delta S = S - S0)', 1, 2),
(@p, 'Determinar o intervalo de tempo total gasto (Delta t = t - t0)', 1, 3),
(@p, 'Dividir a variação de espaço pelo intervalo de tempo (Vm = Delta S / Delta t)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um ciclista percorre 180 metros em 20 segundos em linha reta. Qual é sua velocidade escalar média?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '9 m/s', 1, 0),
(@p, '36 m/s', 0, 0),
(@p, '160 m/s', 0, 0),
(@p, '3600 m/s', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se um atleta dá uma volta completa em uma pista circular de 400 m e retorna exatamente ao ponto de partida, seu deslocamento vetorial resultante é nulo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 49.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Movimento Retilíneo Uniforme (MRU)', 2, 49);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a característica principal que define o Movimento Retilíneo Uniforme (MRU)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trajetória em linha reta com velocidade constante e aceleração nula.', 1, 0),
(@p, 'Velocidade que aumenta constantemente a cada segundo.', 0, 0),
(@p, 'Trajetória circular com aceleração tangencial crescente.', 0, 0),
(@p, 'Repouso absoluto sem variação de posição.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada classificação do MRU ao sinal de sua velocidade escalar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Movimento progressivo', 1, 1, 'Velocidade positiva (v > 0); o móvel desloca-se a favor da orientação da trajetória'),
(@p, 'Movimento retrógrado', 1, 2, 'Velocidade negativa (v < 0); o móvel desloca-se contra a orientação da trajetória'),
(@p, 'Repouso no referencial', 1, 3, 'Velocidade nula (v = 0); posição permanece constante ao longo do tempo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No gráfico da posição em função do tempo (S x t) de um Movimento Retilíneo Uniforme, a curva é sempre uma reta inclinada em relação aos eixos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a função horária do MRU (S = S0 + v . t):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'S0 representa a posição inicial do móvel no instante t = 0', 1, 0),
(@p, 'v representa a velocidade escalar constante do móvel', 1, 0),
(@p, 'O móvel percorre distâncias iguais em intervalos de tempo iguais', 1, 0),
(@p, 'A aceleração escalar do móvel é sempre maior que zero', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Em um gráfico de velocidade em função do tempo (v x t) de um movimento uniforme, qual grandeza física é numericamente igual à área sob a reta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Deslocamento escalar', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para determinar o instante de encontro entre dois móveis A e B em MRU na mesma rodovia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adotar um mesmo referencial de origem e orientação positiva da trajetória', 1, 1),
(@p, 'Escrever a função horária da posição de cada móvel (SA e SB)', 1, 2),
(@p, 'Igualar as posições dos dois móveis (SA = SB)', 1, 3),
(@p, 'Resolver a equação do 1º grau para encontrar o instante t do encontro', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um trem obedece à função horária S = 40 + 15.t (no SI). Qual será sua posição no instante t = 10 s?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '190 m', 1, 0),
(@p, '150 m', 0, 0),
(@p, '55 m', 0, 0),
(@p, '415 m', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando dois carros trafegam em sentidos opostos na mesma estrada, o módulo da velocidade relativa de aproximação entre eles é a soma dos módulos de suas velocidades.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 49.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Movimento Retilíneo Uniformemente Variado (MRUV) e Queda Livre', 2, 49);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o Movimento Retilíneo Uniformemente Variado (MRUV)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aceleração escalar constante e não nula, fazendo a velocidade variar linearmente com o tempo.', 1, 0),
(@p, 'Velocidade constante e aceleração nula durante todo o trajeto.', 0, 0),
(@p, 'Aceleração que muda aleatoriamente a cada instante.', 0, 0),
(@p, 'Ausência total de deslocamento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada equação do MRUV às grandezas que ela relaciona:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'v = v0 + a . t', 1, 1, 'Função horária da velocidade (relaciona velocidade e tempo)'),
(@p, 'S = S0 + v0.t + (a.t²)/2', 1, 2, 'Função horária da posição (gera uma parábola no gráfico S x t)'),
(@p, 'v² = v0² + 2 . a . Delta S', 1, 3, 'Equação de Torricelli (calcula velocidade ou deslocamento sem usar o tempo)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um movimento é chamado de "acelerado" quando o módulo da velocidade aumenta (velocidade e aceleração têm o mesmo sinal) e de "retardado" quando o módulo da velocidade diminui.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a Queda Livre vertical próxima à superfície da Terra (desprezando a resistência do ar):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É um caso particular de MRUV sob ação exclusiva da aceleração da gravidade (g ≈ 9,8 m/s²)', 1, 0),
(@p, 'Todos os corpos abandonados da mesma altura caem com a mesma aceleração, independentemente da massa', 1, 0),
(@p, 'No lançamento vertical para cima, a velocidade do corpo no ponto mais alto é instantaneamente nula', 1, 0),
(@p, 'No ponto mais alto do lançamento vertical, a aceleração da gravidade torna-se zero', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o nome da equação do MRUV que permite relacionar velocidade, aceleração e deslocamento sem conhecer o intervalo de tempo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Equação de Torricelli', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o comportamento de uma pedra lançada verticalmente para cima no vácuo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sobe em movimento retardado com velocidade diminuindo', 1, 1),
(@p, 'Atinge a altura máxima com velocidade instantânea igual a zero', 1, 2),
(@p, 'Inverte o sentido e desce em movimento acelerado', 1, 3),
(@p, 'Retorna ao nível de lançamento com o mesmo módulo de velocidade inicial', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um carro parte do repouso com aceleração constante de 3 m/s². Qual velocidade ele atinge após 6 segundos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '18 m/s', 1, 0),
(@p, '9 m/s', 0, 0),
(@p, '2 m/s', 0, 0),
(@p, '54 m/s', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Sistema Internacional de Unidades (SI), a unidade padrão de aceleração é o metro por segundo ao quadrado (m/s²).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 49.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Lançamento Oblíquo e Movimento Circular Uniforme (MCU)', 3, 49);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com o Princípio da Independência dos Movimentos de Galileu, como analisamos um lançamento oblíquo no vácuo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como a composição simultânea de um MRU na direção horizontal e um MRUV (sob ação da gravidade) na direção vertical.', 1, 0),
(@p, 'Como dois movimentos circulares uniformes perpendiculares.', 0, 0),
(@p, 'Como um MRUV na horizontal e um MRU na vertical.', 0, 0),
(@p, 'Como um movimento sem ação da gravidade.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grandeza do Movimento Circular Uniforme (MCU) à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Período (T)', 1, 1, 'Tempo necessário para o móvel completar uma volta inteira'),
(@p, 'Frequência (f)', 1, 2, 'Número de voltas completas realizadas por unidade de tempo (medida em Hz)'),
(@p, 'Aceleração centrípeta (acp)', 1, 3, 'Aceleração apontada para o centro da curva que altera a direção da velocidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em um lançamento oblíquo no vácuo sobre um terreno plano e horizontal, o alcance horizontal máximo é obtido quando o ângulo de lançamento é de 45°.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre o Movimento Circular Uniforme (MCU):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O módulo da velocidade escalar é constante, mas o vetor velocidade muda continuamente de direção', 1, 0),
(@p, 'A velocidade linear relaciona-se com a velocidade angular pela expressão v = omega . R', 1, 0),
(@p, 'O período e a frequência são inversamente proporcionais (T = 1 / f)', 1, 0),
(@p, 'Não existe nenhum tipo de aceleração no MCU', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual unidade do Sistema Internacional mede a frequência de um movimento periódico e equivale a uma rotação ou ciclo por segundo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Hertz', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do alcance horizontal de um projétil lançado obliquamente no vácuo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Decompor a velocidade inicial v0 em componentes horizontal (v0x) e vertical (v0y)', 1, 1),
(@p, 'Calcular o tempo de subida até a altura máxima usando v0y e a gravidade g', 1, 2),
(@p, 'Dobrar o tempo de subida para obter o tempo total de voo no plano', 1, 3),
(@p, 'Multiplicar a componente horizontal constante v0x pelo tempo total de voo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um ventilador gira a 300 rotações por minuto (rpm). Qual é a sua frequência em Hertz (Hz)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5 Hz', 1, 0),
(@p, '300 Hz', 0, 0),
(@p, '50 Hz', 0, 0),
(@p, '0,2 Hz', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No ponto mais alto da trajetória de um projétil lançado obliquamente, sua velocidade vertical é nula, mas sua velocidade horizontal permanece igual à componente inicial v0x.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 50: Dinâmica
-- -------------------------------------------------------------------------

-- Quiz 50.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Força, Massa, Peso e Equilíbrio de Partículas', 1, 50);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença fundamental entre "massa" e "peso" de um corpo na Física?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Massa é uma grandeza escalar invariável medida em kg; Peso é a força gravitacional (vetor) que atua sobre a massa, medida em Newtons (N).', 1, 0),
(@p, 'Massa é medida em metros; Peso é medido em segundos.', 0, 0),
(@p, 'Massa muda conforme o planeta; Peso é sempre igual em qualquer lugar do universo.', 0, 0),
(@p, 'Não existe diferença entre massa e peso.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da Dinâmica à sua unidade no Sistema Internacional:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Força (F)', 1, 1, 'Newton (N)'),
(@p, 'Massa (m)', 1, 2, 'Quilograma (kg)'),
(@p, 'Aceleração da gravidade (g)', 1, 3, 'Metro por segundo ao quadrado (m/s²)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um astronauta de massa 70 kg tem a mesma massa na Terra e na Lua, mas seu peso na Lua é cerca de seis vezes menor porque a gravidade lunar é menor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique efeitos que uma força resultante não nula pode produzir sobre um corpo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alterar o módulo da velocidade (acelerar ou frear)', 1, 0),
(@p, 'Alterar a direção ou o sentido do movimento (curvar a trajetória)', 1, 0),
(@p, 'Produzir deformação elástica ou plástica no corpo', 1, 0),
(@p, 'Criar matéria a partir do nada', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual instrumento de medição baseado na deformação de uma mola é utilizado em laboratórios para medir o módulo de forças como o peso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Dinamômetro', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento para encontrar a força resultante sobre um bloco:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar todas as forças externas que atuam sobre o bloco', 1, 1),
(@p, 'Representar os vetores força em um diagrama de corpo livre', 1, 2),
(@p, 'Decompor os vetores nos eixos horizontal e vertical, se necessário', 1, 3),
(@p, 'Realizar a soma vetorial de todas as forças atuantes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Sobre um caixote atuam duas forças horizontais opostas: 50 N para a direita e 32 N para a esquerda. Qual é o módulo e o sentido da força resultante?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '18 N para a direita', 1, 0),
(@p, '82 N para a direita', 0, 0),
(@p, '18 N para a esquerda', 0, 0),
(@p, '0 N (equilíbrio)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um ponto material encontra-se em equilíbrio dinâmico quando se desloca em Movimento Retilíneo Uniforme com força resultante nula.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 50.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Forças Mecânicas: Normal, Tração, Atrito e Força Elástica', 2, 50);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como atua a "Força Normal" (N) sobre um corpo apoiado em uma superfície?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É uma força de contato exercida pela superfície sempre na direção perpendicular (90°) ao plano de apoio.', 1, 0),
(@p, 'É uma força que aponta sempre para o centro da Terra, mesmo em rampas inclinadas.', 0, 0),
(@p, 'É uma força que atua apenas quando o corpo está voando no ar.', 0, 0),
(@p, 'É sempre par de ação e reação da força Peso.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada força mecânica à sua fórmula ou característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Força de Atrito Cinético', 1, 1, 'Fat = mu_c . N (opõe-se ao deslizamento relativo entre superfícies)'),
(@p, 'Força Elástica (Lei de Hooke)', 1, 2, 'Fel = k . x (proporcional à deformação x da mola)'),
(@p, 'Força de Tração', 1, 3, 'Força transmitida ao longo de fios, cabos ou cordas esticados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O coeficiente de atrito estático entre duas superfícies é geralmente maior que o coeficiente de atrito cinético, por isso custa mais esforço iniciar o movimento de um móvel pesado do que mantê-lo deslizando.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a Lei de Hooke (Fel = k . x):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'k é a constante elástica da mola, medida em N/m no Sistema Internacional', 1, 0),
(@p, 'A força elástica tem caráter restaurador, apontando sempre para a posição de equilíbrio', 1, 0),
(@p, 'A lei é válida dentro do limite de elasticidade do material', 1, 0),
(@p, 'Quanto menor o valor de k, mais rígida e difícil de esticar é a mola', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe a força de resistência ao movimento entre duas superfícies em contato devido às suas rugosidades microscópicas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Força de atrito', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o comportamento da força de atrito ao empurrar um armário inicialmente parado sobre o piso:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aplicação de força pequena: atrito estático iguala a força aplicada e o armário não se move', 1, 1),
(@p, 'Aumento da força até atingir a força de atrito estático máximo (iminência de movimento)', 1, 2),
(@p, 'Superação do atrito estático e início do deslizamento', 1, 3),
(@p, 'Atuação do atrito cinético constante com módulo menor que o estático máximo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma mola de constante elástica k = 400 N/m sofre uma deformação de 0,05 m (5 cm). Qual é o módulo da força elástica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '20 N', 1, 0),
(@p, '80 N', 0, 0),
(@p, '2000 N', 0, 0),
(@p, '8 N', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A força de atrito estático permite que caminhemos para a frente ao empurrarmos o chão para trás com os pés.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 50.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Plano Inclinado e Dinâmica do Movimento Curvilíneo', 2, 50);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em um plano inclinado de ângulo theta com a horizontal, como decompomos o peso P de um bloco nas direções paralela e perpendicular à rampa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Componente tangencial Px = P . sen(theta) e componente normal Py = P . cos(theta).', 1, 0),
(@p, 'Componente tangencial Px = P . cos(theta) e componente normal Py = P . sen(theta).', 0, 0),
(@p, 'Ambas as componentes são iguais a P em qualquer ângulo.', 0, 0),
(@p, 'O peso aponta paralelamente à rampa sem precisar ser decomposto.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da dinâmica curvilínea ao seu papel físico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Resultante centrípeta (Fcp)', 1, 1, 'Resultante das forças apontada para o centro da curva (Fcp = m.v²/R)'),
(@p, 'Resultante tangencial (Ft)', 1, 2, 'Resultante que altera o módulo da velocidade escalar ao longo da curva'),
(@p, 'Atrito lateral nos pneus', 1, 3, 'Força que atua como resultante centrípeta permitindo que um carro faça curva plana');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "força centrípeta" não é uma nova força fundamental da natureza, mas sim o nome dado à resultante das forças reais (como tração, gravidade, normal ou atrito) que apontam para o centro da trajetória curva.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre um bloco deslizando sem atrito em um plano inclinado de ângulo theta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O módulo da força Normal é igual a P . cos(theta)', 1, 0),
(@p, 'A aceleração de descida do bloco vale a = g . sen(theta)', 1, 0),
(@p, 'A aceleração de descida depende da gravidade e da inclinação, mas não da massa do bloco', 1, 0),
(@p, 'Quanto maior o ângulo theta (entre 0° e 90°), menor a aceleração de descida', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual força natural atua como resultante centrípeta mantendo a Lua e os satélites artificiais em órbita ao redor da Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Força gravitacional', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento para resolver problemas de dinâmica curvilínea (como um carro em um lombada ou looping):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar as forças reais atuantes no ponto da trajetória (Peso, Normal, Tração)', 1, 1),
(@p, 'Orientar o eixo radial positivo sempre apontando para o centro da curva', 1, 2),
(@p, 'Escrever a resultante radial (Forças para o centro menos Forças para fora)', 1, 3),
(@p, 'Igualar essa resultante à expressão m . v² / R', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um carro de massa 1.000 kg faz uma curva horizontal de raio 50 m com velocidade constante de 10 m/s. Qual é o módulo da resultante centrípeta necessária?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2.000 N', 1, 0),
(@p, '200 N', 0, 0),
(@p, '10.000 N', 0, 0),
(@p, '500 N', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em um globo da morte (looping vertical), a velocidade mínima no ponto mais alto para o motociclista não perder contato com a pista ocorre quando a força Normal se torna zero e apenas o Peso faz o papel de resultante centrípeta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 50.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Impulso, Quantidade de Movimento e Colisões', 3, 50);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estabelece o Teorema do Impulso na Dinâmica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O impulso da força resultante sobre um corpo em um intervalo de tempo é igual à variação de sua quantidade de movimento (I = Delta Q).', 1, 0),
(@p, 'O impulso é sempre igual à energia potencial gravitacional.', 0, 0),
(@p, 'A quantidade de movimento nunca varia quando uma força externa atua.', 0, 0),
(@p, 'O impulso é uma grandeza escalar medida em Watts.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de colisão mecânica às suas propriedades de conservação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Colisão perfeitamente elástica (e = 1)', 1, 1, 'Conserva a quantidade de movimento e a energia cinética total'),
(@p, 'Colisão parcialmente inelástica (0 < e < 1)', 1, 2, 'Conserva a quantidade de movimento, mas há dissipação parcial de energia cinética'),
(@p, 'Colisão perfeitamente inelástica (e = 0)', 1, 3, 'Os corpos seguem unidos após o choque com máxima dissipação de energia cinética');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em qualquer sistema mecanicamente isolado (onde a resultante das forças externas é nula), a quantidade de movimento total do sistema conserva-se antes e depois de colisões ou explosões.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique aplicações práticas do Teorema do Impulso (I = F . Delta t = Delta Q) para reduzir a força média de impacto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Airbags e cintos de segurança nos automóveis (aumentam o tempo de desaceleração Delta t)', 1, 0),
(@p, 'Zonas de deformação programada na carroceria dos veículos', 1, 0),
(@p, 'Flexionar os joelhos ao aterrissar de um salto', 1, 0),
(@p, 'Substituir colchões de salto em altura por placas rígidas de concreto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual grandeza vetorial é definida pelo produto da massa de um corpo pela sua velocidade (Q = m . v)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Quantidade de movimento', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o raciocínio para calcular a velocidade final de dois carrinhos que colidem e seguem grudados (colisão perfeitamente inelástica):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verificar que o sistema é horizontalmente isolado de forças externas', 1, 1),
(@p, 'Calcular a quantidade de movimento total antes da colisão (Q_antes = mA.vA + mB.vB)', 1, 2),
(@p, 'Escrever a quantidade de movimento final conjunta (Q_depois = (mA + mB).v_final)', 1, 3),
(@p, 'Igualar Q_antes = Q_depois e isolar a velocidade final v_final', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um patinador de 60 kg está parado no gelo e lança para a frente uma bola de 3 kg com velocidade de 10 m/s. Com qual velocidade de recuo o patinador desliza para trás?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,5 m/s', 1, 0),
(@p, '2,0 m/s', 0, 0),
(@p, '10,0 m/s', 0, 0),
(@p, '20,0 m/s', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O recuo de uma arma de fogo ao disparar um projétil e a propulsão de um foguete no vácuo são explicados pela conservação da quantidade de movimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 51: Leis de Newton
-- -------------------------------------------------------------------------

-- Quiz 51.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Panorama das Três Leis de Newton', 1, 51);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em qual obra histórica Isaac Newton sistematizou as três leis fundamentais do movimento e a Lei da Gravitação Universal em 1687?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Princípios Matemáticos da Filosofia Natural (Principia)', 1, 0),
(@p, 'Diálogo sobre os Dois Principais Sistemas do Mundo', 0, 0),
(@p, 'A Origem das Espécies', 0, 0),
(@p, 'Discurso do Método', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada uma das Três Leis de Newton ao seu enunciado resumido:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '1ª Lei de Newton (Inércia)', 1, 1, 'Todo corpo mantém seu estado de repouso ou MRU se a resultante das forças for nula'),
(@p, '2ª Lei de Newton (Fundamental)', 1, 2, 'A força resultante é igual ao produto da massa pela aceleração (FR = m . a)'),
(@p, '3ª Lei de Newton (Ação e Reação)', 1, 3, 'A toda ação corresponde uma reação de mesma intensidade, mesma direção e sentido oposto');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Leis de Newton formam a base da Mecânica Clássica e descrevem com altíssima precisão o movimento de objetos macroscópicos em velocidades muito menores que a da luz.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique situações cotidianas explicadas diretamente pelas Leis de Newton:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Passageiros serem projetados para a frente quando um ônibus freia bruscamente (1ª Lei)', 1, 0),
(@p, 'Um carrinho vazio acelerar mais que um carrinho cheio sob a mesma força (2ª Lei)', 1, 0),
(@p, 'Um nadador empurrar a água para trás para ser impulsionado para a frente (3ª Lei)', 1, 0),
(@p, 'A propagação do som sem precisar de nenhum meio material', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe a tendência natural de qualquer corpo material resistir a mudanças em seu estado de repouso ou de movimento retilíneo uniforme?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Inércia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução histórica do estudo do movimento até a síntese newtoniana:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Física aristotélica (acreditava ser necessária força contínua para manter movimento)', 1, 1),
(@p, 'Experimentos de planos inclinados e conceito de inércia de Galileu Galilei', 1, 2),
(@p, 'Leis do movimento planetário formuladas por Johannes Kepler', 1, 3),
(@p, 'Unificação da mecânica terrestre e celeste pelas Leis de Newton', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um objeto de 1 Newton de peso corresponde aproximadamente ao peso de qual massa na superfície da Terra (g ≈ 10 m/s²)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '100 gramas (0,1 kg)', 1, 0),
(@p, '10 quilogramas', 0, 0),
(@p, '1 tonelada', 0, 0),
(@p, '1 miligrama', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Leis de Newton são válidas exclusivamente em referenciais inerciais (que estão em repouso ou em movimento retilíneo uniforme).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 51.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('1ª Lei de Newton (Princípio da Inércia)', 2, 51);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Se uma sonda espacial viaja no espaço profundo, longe de qualquer campo gravitacional ou atrito, e seus motores são desligados, o que acontece com ela segundo a 1ª Lei de Newton?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Continua movendo-se em linha reta com velocidade constante indefinidamente.', 1, 0),
(@p, 'Para imediatamente no instante em que o combustível acaba.', 0, 0),
(@p, 'Começa a girar em círculos cada vez menores.', 0, 0),
(@p, 'Acelera infinitamente sem nenhuma força.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada situação física à manifestação da inércia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Arrancada brusca de um carro', 1, 1, 'Passageiros tendem a permanecer em repouso e parecem ser jogados para trás'),
(@p, 'Curva acentuada em alta velocidade', 1, 2, 'Corpos tendem a seguir pela tangente em linha reta'),
(@p, 'Puxão rápido de uma toalha sob pratos', 1, 3, 'Os pratos permanecem quase no mesmo lugar devido à sua massa inercial');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A massa de um corpo é a medida quantitativa de sua inércia: quanto maior a massa, mais difícil é acelerar, frear ou desviar o corpo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique condições em que um corpo obedece à 1ª Lei de Newton (força resultante nula):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um livro parado sobre uma mesa horizontal (Peso equilibrado pela Normal)', 1, 0),
(@p, 'Um paraquedista descendo com velocidade terminal constante', 1, 0),
(@p, 'Um carro deslocando-se em linha reta a 80 km/h constantes', 1, 0),
(@p, 'Uma pedra caindo em queda livre acelerada no vácuo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual dispositivo de segurança automotiva é obrigatório justamente para conter a inércia dos ocupantes durante uma colisão ou frenagem súbita?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Cinto de segurança', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o que acontece com um passageiro em pé dentro de um metrô durante uma viagem:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trem acelera para a frente: pés acompanham o piso e tronco inclina-se para trás', 1, 1),
(@p, 'Trem atinge velocidade constante em linha reta: passageiro permanece equilibrado sem esforço', 1, 2),
(@p, 'Trem freia bruscamente: pés param e tronco continua movendo-se para a frente', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que uma bola rolada sobre o gramado acaba parando após alguns metros, aparentemente contrariando a inércia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a força resultante sobre ela não é nula: o atrito com a grama e a resistência do ar desaceleram a bola.', 1, 0),
(@p, 'Porque a inércia só funciona dentro de laboratórios fechados.', 0, 0),
(@p, 'Porque a bola perde toda a sua massa ao rolar.', 0, 0),
(@p, 'Porque a gravidade desaparece quando a bola se move.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um elevador subindo com velocidade constante tem a tração no cabo igual ao peso total do elevador.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 51.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('2ª Lei de Newton (Princípio Fundamental da Dinâmica)', 2, 51);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com a 2ª Lei de Newton (FR = m . a), como a aceleração de um corpo relaciona-se com a força resultante e com sua massa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É diretamente proporcional à força resultante e inversamente proporcional à massa do corpo.', 1, 0),
(@p, 'É inversamente proporcional à força resultante e diretamente proporcional à massa.', 0, 0),
(@p, 'Não depende da massa nem da força aplicada.', 0, 0),
(@p, 'Tem sempre sentido oposto ao da força resultante.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada situação de um elevador à relação entre a força Normal (peso aparente) e o Peso real:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Subindo acelerado ou descendo freado', 1, 1, 'Normal maior que o Peso (N = P + m.a)'),
(@p, 'Descendo acelerado ou subindo freado', 1, 2, 'Normal menor que o Peso (N = P - m.a)'),
(@p, 'Em queda livre (cabo rompido)', 1, 3, 'Normal igual a zero (sensação de imponderabilidade)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O vetor aceleração adquirido por um corpo possui sempre a mesma direção e o mesmo sentido do vetor força resultante que atua sobre ele.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas a partir da equação FR = m . a:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Se dobrarmos a força resultante mantendo a massa constante, a aceleração dobra', 1, 0),
(@p, 'Se dobrarmos a massa mantendo a mesma força resultante, a aceleração cai pela metade', 1, 0),
(@p, '1 Newton equivale a 1 kg . m/s²', 1, 0),
(@p, 'Se a força resultante for nula, a aceleração será sempre igual a 10 m/s²', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual grandeza vetorial é obtida multiplicando-se a massa de um corpo pela sua aceleração?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Força resultante', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para calcular a força motora de um carro que acelera no plano horizontal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a aceleração do carro a partir da variação de velocidade e tempo', 1, 1),
(@p, 'Multiplicar a massa do carro pela aceleração para achar a força resultante (FR = m.a)', 1, 2),
(@p, 'Identificar as forças de resistência contrárias (atrito e arrasto do ar)', 1, 3),
(@p, 'Somar a força resultante às forças de resistência para obter a força motora total', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um bloco de 5 kg recebe uma força resultante de 20 N sobre uma superfície sem atrito. Qual é a aceleração adquirida?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4 m/s²', 1, 0),
(@p, '100 m/s²', 0, 0),
(@p, '0,25 m/s²', 0, 0),
(@p, '15 m/s²', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em sua formulação original mais geral, Newton expressou a 2ª Lei afirmando que a força resultante é igual à taxa de variação temporal da quantidade de movimento (FR = Delta Q / Delta t).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 51.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('3ª Lei de Newton (Ação e Reação) e Sistemas de Blocos', 3, 51);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que as forças de ação e reação da 3ª Lei de Newton jamais se equilibram ou se anulam?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque atuam sempre em corpos diferentes (A empurra B e B empurra A), nunca no mesmo corpo.', 1, 0),
(@p, 'Porque a força de reação é sempre menor que a força de ação.', 0, 0),
(@p, 'Porque a reação ocorre apenas dez segundos depois da ação.', 0, 0),
(@p, 'Porque ambas apontam exatamente para o mesmo sentido.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada força de ação à sua verdadeira reação segundo a 3ª Lei de Newton:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'A Terra atrai uma maçã para baixo (Peso da maçã)', 1, 1, 'A maçã atrai a Terra para cima com força de mesma intensidade'),
(@p, 'Um foguete expele gases quentes para baixo', 1, 2, 'Os gases empurram o foguete para cima'),
(@p, 'Um livro pressiona o tampo de uma mesa para baixo', 1, 3, 'O tampo da mesa empurra o livro para cima (Força Normal)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Peso de um livro sobre a mesa e a força Normal que a mesa exerce sobre o livro NÃO formam um par ação-reação, pois ambas atuam no mesmo corpo (o livro) e têm naturezas diferentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características obrigatórias de todo par de forças de Ação e Reação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Possuem exatamente o mesmo módulo (intensidade)', 1, 0),
(@p, 'Possuem a mesma direção e sentidos opostos', 1, 0),
(@p, 'Têm a mesma natureza física (ambas gravitacionais, ambas eletromagnéticas ou ambas de contato)', 1, 0),
(@p, 'Atuam simultaneamente no mesmo objeto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Em uma máquina de Atwood ideal (dois blocos de massas diferentes ligados por um fio inextensível passando por uma polia sem atrito), qual grandeza cinemática tem o mesmo módulo para ambos os blocos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Aceleração', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o método para resolver um sistema de dois blocos A e B em contato empurrados sobre piso liso:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Considerar os dois blocos como um único sistema de massa total (mA + mB)', 1, 1),
(@p, 'Calcular a aceleração comum do conjunto usando a força externa (a = F / (mA + mB))', 1, 2),
(@p, 'Isolar apenas o bloco da frente (B) que recebe exclusivamente a força de contato', 1, 3),
(@p, 'Calcular a força de contato entre eles multiplicando mB pela aceleração (FAB = mB . a)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dois blocos A (3 kg) e B (2 kg) estão encostados sobre uma mesa sem atrito. Uma força horizontal de 25 N empurra o bloco A contra B. Qual é a intensidade da força que A exerce sobre B?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 N', 1, 0),
(@p, '15 N', 0, 0),
(@p, '25 N', 0, 0),
(@p, '5 N', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando um caminhão colide frontalmente com um carro pequeno, a intensidade da força que o caminhão exerce sobre o carro é exatamente igual à intensidade da força que o carro exerce sobre o caminhão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 52: Trabalho e Energia
-- -------------------------------------------------------------------------

-- Quiz 52.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Trabalho Mecânico, Potência e Rendimento', 1, 52);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Física, quando uma força constante realiza "trabalho mecânico" sobre um corpo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quando provoca um deslocamento no corpo com componente na mesma direção da força aplicada (tau = F . d . cos theta).', 1, 0),
(@p, 'Sempre que uma pessoa segura uma caixa parada sem sair do lugar.', 0, 0),
(@p, 'Apenas quando o corpo não sofre nenhum deslocamento.', 0, 0),
(@p, 'Somente quando o ângulo entre a força e o deslocamento é de 90°.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada classificação do trabalho mecânico ao ângulo entre a força e o deslocamento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Trabalho motor (positivo)', 1, 1, 'Força a favor do deslocamento (0° <= theta < 90°); fornece energia'),
(@p, 'Trabalho resistente (negativo)', 1, 2, 'Força contrária ao deslocamento (90° < theta <= 180°); retira energia'),
(@p, 'Trabalho nulo (zero)', 1, 3, 'Força perpendicular ao deslocamento (theta = 90°), como a Normal no plano');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Sistema Internacional de Unidades, tanto o Trabalho quanto todas as formas de Energia são medidos em Joules (J), e a Potência é medida em Watts (W).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre Potência Mecânica e Rendimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Potência média mede a rapidez com que a energia é transferida ou transformada (Pot = tau / Delta t)', 1, 0),
(@p, '1 Watt equivale a 1 Joule por segundo (1 J/s)', 1, 0),
(@p, 'O rendimento (eta) é a razão entre a potência útil e a potência total fornecida à máquina', 1, 0),
(@p, 'Uma máquina real pode ter rendimento superior a 100% criando energia extra', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual unidade do Sistema Internacional mede a potência mecânica e elétrica, equivalendo a 1 Joule por segundo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Watt', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do rendimento percentual de um motor elétrico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Medir a potência total consumida da rede elétrica (Pot_total)', 1, 1),
(@p, 'Determinar a potência dissipada por atrito e efeito Joule (Pot_dissipada)', 1, 2),
(@p, 'Obter a potência útil aproveitada (Pot_util = Pot_total - Pot_dissipada)', 1, 3),
(@p, 'Dividir a potência útil pela potência total e multiplicar por 100%', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um guindaste ergue uma carga realizando um trabalho de 6.000 J em 12 segundos. Qual é a potência média desenvolvida?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '500 W', 1, 0),
(@p, '72.000 W', 0, 0),
(@p, '50 W', 0, 0),
(@p, '600 W', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A força centrípeta nunca realiza trabalho mecânico porque atua sempre perpendicularmente à direção instantânea da velocidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 52.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Energia Cinética e Teorema Trabalho-Energia', 2, 52);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De quais grandezas depende a Energia Cinética (Ec = m.v² / 2) de um corpo em movimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Diretamente da massa do corpo e do quadrado do módulo de sua velocidade.', 1, 0),
(@p, 'Apenas da altura em relação ao nível do mar.', 0, 0),
(@p, 'Da temperatura externa e da cor do objeto.', 0, 0),
(@p, 'Inversamente da velocidade do corpo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o efeito sobre a Energia Cinética ao alterar a massa ou a velocidade de um veículo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dobrar a velocidade (2v)', 1, 1, 'A energia cinética fica multiplicada por 4 (quadruplica)'),
(@p, 'Triplicar a velocidade (3v)', 1, 2, 'A energia cinética fica multiplicada por 9'),
(@p, 'Dobrar a massa (2m) com mesma velocidade', 1, 3, 'A energia cinética fica multiplicada por 2 (dobra)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Teorema Trabalho-Energia Cinética estabelece que o trabalho da força resultante sobre um corpo é igual à variação de sua energia cinética (tau_R = Ec_final - Ec_inicial).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a Energia Cinética:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É uma grandeza escalar sempre maior ou igual a zero (nunca é negativa)', 1, 0),
(@p, 'Depende do referencial adotado, pois a velocidade depende do referencial', 1, 0),
(@p, 'Se um carro dobra sua velocidade, sua distância mínima de frenagem quadruplica', 1, 0),
(@p, 'É uma grandeza vetorial medida em Newtons', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual forma de energia mecânica está associada diretamente ao estado de movimento de um corpo de massa m e velocidade v?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Energia cinética', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a aplicação do Teorema Trabalho-Energia Cinética para calcular a distância de frenagem de um carro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a energia cinética inicial do veículo (Ec0 = m.v0² / 2)', 1, 1),
(@p, 'Considerar que no repouso final a energia cinética é zero (Ecf = 0)', 1, 2),
(@p, 'Igualar o trabalho resistente da força de atrito (-Fat . d) à variação -Ec0', 1, 3),
(@p, 'Isolar a distância de frenagem d', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um corpo de massa 4 kg desloca-se a 5 m/s. Qual é o valor de sua energia cinética?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '50 J', 1, 0),
(@p, '20 J', 0, 0),
(@p, '100 J', 0, 0),
(@p, '10 J', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando um móvel realiza Movimento Retilíneo Uniforme, sua energia cinética permanece constante e o trabalho da força resultante é nulo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 52.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Energia Potencial Gravitacional e Energia Potencial Elástica', 2, 52);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que representa a "Energia Potencial" na Mecânica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia armazenada em um sistema devido à sua posição em um campo de forças (como o gravitacional) ou à sua deformação elástica.', 1, 0),
(@p, 'Energia perdida irreversivelmente sob forma de calor.', 0, 0),
(@p, 'Energia exclusiva de corpos que viajam à velocidade da luz.', 0, 0),
(@p, 'Uma grandeza que só existe na ausência de qualquer força.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de energia potencial à sua expressão matemática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Energia Potencial Gravitacional', 1, 1, 'Epg = m . g . h (proporcional à massa, gravidade e altura)'),
(@p, 'Energia Potencial Elástica', 1, 2, 'Epe = (k . x²) / 2 (proporcional à constante elástica e ao quadrado da deformação)'),
(@p, 'Trabalho da Força Peso na descida', 1, 3, 'tau_P = + m . g . h (independe da forma da trajetória, apenas do desnível)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A força Peso e a força Elástica são chamadas de "forças conservativas" porque o trabalho realizado por elas entre dois pontos não depende da trajetória seguida.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a Energia Potencial Gravitacional (Epg = m . g . h):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Seu valor numérico depende da escolha do nível horizontal de referência (h = 0)', 1, 0),
(@p, 'É o princípio energético utilizado pelas usinas hidrelétricas ao represar água em grandes alturas', 1, 0),
(@p, 'Aumenta à medida que um objeto é erguido contra a gravidade', 1, 0),
(@p, 'É igual para qualquer altura desde que o corpo seja feito de ferro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as forças (como o Peso e a Força Elástica) cujo trabalho entre dois pontos depende apenas das posições inicial e final, permitindo armazenar energia potencial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Forças conservativas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as transformações energéticas ocorridas no disparo de uma flecha por um arco:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trabalho muscular do arqueiro ao puxar a corda e envergar o arco', 1, 1),
(@p, 'Armazenamento de energia potencial elástica no arco tensionado', 1, 2),
(@p, 'Liberação da corda convertendo energia potencial elástica em energia cinética da flecha', 1, 3),
(@p, 'Conversão parcial em energia potencial gravitacional durante a subida da flecha', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma caixa de 15 kg está sobre uma prateleira a 2 m do chão (g = 10 m/s²). Qual é sua energia potencial gravitacional em relação ao chão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '300 J', 1, 0),
(@p, '30 J', 0, 0),
(@p, '150 J', 0, 0),
(@p, '75 J', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A energia potencial elástica armazenada em uma mola comprimida de 10 cm tem exatamente o mesmo valor que se a mesma mola fosse distendida de 10 cm.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 52.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conservação da Energia Mecânica e Sistemas Dissipativos', 3, 52);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Sob qual condição a Energia Mecânica Total (Em = Ec + Ep) de um sistema permanece constante ao longo do movimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quando apenas forças conservativas realizam trabalho (ausência de forças dissipativas como atrito e resistência do ar).', 1, 0),
(@p, 'Sempre que houver forte atrito cinético aquecendo o sistema.', 0, 0),
(@p, 'Apenas quando o corpo permanece imóvel no chão.', 0, 0),
(@p, 'Somente quando a massa do corpo aumenta durante o trajeto.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada posição de um carrinho em uma montanha-russa sem atrito ao seu balanço energético:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Topo da primeira colina (em repouso)', 1, 1, 'Energia potencial gravitacional máxima e energia cinética nula'),
(@p, 'Ponto mais baixo do vale (h = 0)', 1, 2, 'Energia cinética máxima e energia potencial gravitacional nula'),
(@p, 'Ponto intermediário de subida', 1, 3, 'Coexistência de energia cinética e energia potencial somando a mesma Em');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em um sistema dissipativo com atrito, a energia mecânica diminui, mas a energia total do universo permanece conservada, pois a parcela dissipada transforma-se em energia térmica e sonora.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a queda de um corpo de altura H sem resistência do ar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A velocidade ao atingir o solo vale v = raiz(2 . g . H)', 1, 0),
(@p, 'A velocidade final ao chegar ao solo não depende da massa do corpo', 1, 0),
(@p, 'A soma Ec + Epg tem o mesmo valor em todos os pontos da queda', 1, 0),
(@p, 'A energia mecânica total vai aumentando conforme o corpo ganha velocidade', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual grandeza energética é igual à soma da energia cinética com todas as formas de energia potencial de um sistema?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Energia mecânica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos para resolver um problema com dissipação de energia por atrito:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a energia mecânica inicial do sistema (Em_inicial = Ec0 + Ep0)', 1, 1),
(@p, 'Calcular a energia mecânica final do sistema (Em_final = Ecf + Epf)', 1, 2),
(@p, 'Subtrair a energia final da inicial para obter a energia dissipada', 1, 3),
(@p, 'Relacionar o módulo da energia dissipada ao trabalho da força de atrito (|tau_at| = Em_inicial - Em_final)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um skatista parte do repouso do topo de uma rampa sem atrito de 5 m de altura (g = 10 m/s²). Qual será sua velocidade na base da rampa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 m/s', 1, 0),
(@p, '50 m/s', 0, 0),
(@p, '5 m/s', 0, 0),
(@p, '100 m/s', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um pêndulo ideal oscilando no vácuo converte continuamente energia potencial gravitacional em energia cinética nos pontos extremos e no ponto mais baixo, mantendo constante sua energia mecânica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 53: Termologia
-- -------------------------------------------------------------------------

-- Quiz 53.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Temperatura, Calor e Escalas Termométricas', 1, 53);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a definição física correta de "Temperatura" de um corpo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É a grandeza física escalar que mede o grau médio de agitação térmica das partículas (átomos e moléculas) de um corpo.', 1, 0),
(@p, 'É a quantidade total de fogo armazenada dentro de um objeto.', 0, 0),
(@p, 'É a energia que flui exclusivamente do corpo mais frio para o mais quente.', 0, 0),
(@p, 'É a sensação subjetiva de frio ou calor na pele humana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada escala termométrica aos seus pontos fixos (fusão do gelo e ebulição da água ao nível do mar):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Escala Celsius (°C)', 1, 1, '0 °C (fusão do gelo) e 100 °C (ebulição da água)'),
(@p, 'Escala Fahrenheit (°F)', 1, 2, '32 °F (fusão do gelo) e 212 °F (ebulição da água)'),
(@p, 'Escala Kelvin (K - absoluta)', 1, 3, '273 K (fusão do gelo) e 373 K (ebulição da água)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Calor é energia térmica em trânsito que flui espontaneamente do corpo de maior temperatura para o corpo de menor temperatura até atingirem o equilíbrio térmico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a Escala Kelvin (escala absoluta):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É a unidade oficial de temperatura do Sistema Internacional (SI)', 1, 0),
(@p, 'Seu zero (0 K, equivalente a -273,15 °C) corresponde ao estado teórico de mínima agitação térmica', 1, 0),
(@p, 'Não admite valores negativos de temperatura', 1, 0),
(@p, 'Uma variação de 1 K equivale a uma variação de 1,8 °C', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual estado físico é alcançado quando dois corpos colocados em contato térmico passam a apresentar exatamente a mesma temperatura, cessando o fluxo líquido de calor?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Equilíbrio térmico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de medição da temperatura de um paciente com um termômetro clínico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Colocar o bulbo do termômetro em contato térmico com o corpo', 1, 1),
(@p, 'Aguardar a transferência de calor entre o corpo e a substância termométrica', 1, 2),
(@p, 'Esperar a estabilização da dilatação líquida ou resistência elétrica (equilíbrio térmico)', 1, 3),
(@p, 'Realizar a leitura do valor da temperatura do próprio termômetro, igual à do corpo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A temperatura média do corpo humano saudável é de 37 °C. Qual é esse valor aproximado na escala Kelvin?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '310 K', 1, 0),
(@p, '236 K', 0, 0),
(@p, '98,6 K', 0, 0),
(@p, '373 K', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Lei Zero da Termodinâmica estabelece que, se dois corpos A e B estão em equilíbrio térmico com um terceiro corpo C, então A e B estão em equilíbrio térmico entre si.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 53.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Calorimetria: Calor Sensível, Calor Latente e Mudanças de Estado', 2, 53);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "Calor Sensível" e "Calor Latente"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O calor sensível provoca variação de temperatura sem mudar o estado físico; o calor latente provoca mudança de estado físico mantendo a temperatura constante.', 1, 0),
(@p, 'O calor sensível ocorre apenas em sólidos; o calor latente ocorre apenas no vácuo.', 0, 0),
(@p, 'O calor sensível reduz a massa do corpo; o calor latente aumenta a massa.', 0, 0),
(@p, 'Não há diferença entre calor sensível e calor latente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grandeza da Calorimetria à sua equação fundamental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Equação Fundamental da Calorimetria (Calor Sensível)', 1, 1, 'Q = m . c . Delta T'),
(@p, 'Calor Latente de Mudança de Fase', 1, 2, 'Q = m . L'),
(@p, 'Capacidade Térmica de um corpo (C)', 1, 3, 'C = Q / Delta T = m . c');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O elevado calor específico da água líquida (1 cal/g.°C ou 4.186 J/kg.K) faz com que ela demore mais para aquecer e esfriar, atuando como reguladora térmica do clima litorâneo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique mudanças de estado físico endotérmicas (que ocorrem mediante absorção de calor pelo corpo):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fusão (passagem do estado sólido para o líquido)', 1, 0),
(@p, 'Vaporização (passagem do estado líquido para o gasoso)', 1, 0),
(@p, 'Sublimação direta (passagem do estado sólido diretamente para o gasoso)', 1, 0),
(@p, 'Solidificação e condensação (liquefação)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual princípio físico da Calorimetria afirma que, em um sistema termicamente isolado (calorímetro ideal), a soma algébrica das quantidades de calor trocadas entre os corpos é igual a zero?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Princípio das trocas de calor', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de aquecimento de um bloco de gelo inicialmente a -10 °C até se transformar totalmente em água líquida a 20 °C (a 1 atm):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calor sensível para aquecer o gelo de -10 °C até 0 °C', 1, 1),
(@p, 'Calor latente de fusão a 0 °C constantes até todo o gelo derreter', 1, 2),
(@p, 'Calor sensível para aquecer a água líquida de 0 °C até 20 °C', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantas calorias são necessárias para aquecer 200 g de água líquida (c = 1 cal/g.°C) de 25 °C para 75 °C?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10.000 cal (10 kcal)', 1, 0),
(@p, '5.000 cal', 0, 0),
(@p, '15.000 cal', 0, 0),
(@p, '250 cal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante a ebulição da água pura sob pressão constante de 1 atm, enquanto houver água líquida fervendo na panela, sua temperatura permanece constante em 100 °C.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 53.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propagação do Calor e Dilatação Térmica', 2, 53);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o único processo de propagação de calor que NÃO necessita de um meio material, podendo ocorrer através do vácuo (como o calor do Sol chegando à Terra)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Irradiação térmica (ondas eletromagnéticas, principalmente infravermelho)', 1, 0),
(@p, 'Condução térmica', 0, 0),
(@p, 'Convecção térmica', 0, 0),
(@p, 'Ebulição mecânica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada processo de transmissão de calor ao seu mecanismo físico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Condução térmica', 1, 1, 'Transferência de energia partícula a partícula sem transporte de matéria (predominante em sólidos)'),
(@p, 'Convecção térmica', 1, 2, 'Movimentação de massas fluidas (líquidos e gases) causada por diferenças de densidade'),
(@p, 'Irradiação térmica', 1, 3, 'Emissão e absorção de ondas eletromagnéticas térmicas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Aparelhos de ar-condicionado são instalados na parte superior das paredes porque o ar frio, sendo mais denso, desce enquanto o ar quente, menos denso, sobe, formando correntes de convecção.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique aplicações tecnológicas baseadas na Dilatação Térmica dos sólidos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Juntas de dilatação em pontes, viadutos e trilhos ferroviários', 1, 0),
(@p, 'Lâminas bimetálicas em termostatos de ferros elétricos e disjuntores térmicos', 1, 0),
(@p, 'Fios de redes elétricas instalados com certa folga (barriga) entre os postes', 1, 0),
(@p, 'Isolamento elétrico por fibra óptica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno anômalo da água líquida entre 0 °C e 4 °C faz com que o gelo seja menos denso que a água líquida e flutue na superfície de lagos congelados?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Dilatação anômala da água', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o funcionamento de uma garrafa térmica para evitar os três modos de troca de calor:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vácuo entre as paredes duplas de vidro para impedir condução e convecção', 1, 1),
(@p, 'Paredes internas espelhadas para refletir ondas e minimizar a irradiação térmica', 1, 2),
(@p, 'Tampa isolante bem vedada para bloquear correntes de convecção com o ar externo', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Sobre a dilatação térmica de uma chapa metálica homogênea contendo um furo circular no centro, quando a chapa é aquecida uniformemente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tanto a chapa externa quanto o diâmetro do furo interno dilatam-se na mesma proporção.', 1, 0),
(@p, 'A chapa dilata para fora e o furo interno diminui de tamanho.', 0, 0),
(@p, 'O furo permanece exatamente com o mesmo diâmetro.', 0, 0),
(@p, 'A chapa contrai-se ao ser aquecida.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Lei de Fourier estabelece que o fluxo de calor por condução através de uma parede é diretamente proporcional à sua área e à diferença de temperatura, e inversamente proporcional à espessura.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 53.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Gases Ideais e Leis da Termodinâmica', 3, 53);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estabelece a 1ª Lei da Termodinâmica (Delta U = Q - tau), expressão do princípio da conservação da energia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A variação da energia interna de um gás é igual ao calor trocado com o meio menos o trabalho realizado pelo gás.', 1, 0),
(@p, 'É possível construir uma máquina térmica que crie energia do nada.', 0, 0),
(@p, 'Todo o calor absorvido por um motor é convertido 100% em trabalho mecânico.', 0, 0),
(@p, 'A energia interna de um gás ideal depende apenas de seu volume.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada transformação gasosa particular à grandeza que permanece constante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Transformação Isotérmica (Lei de Boyle)', 1, 1, 'Temperatura constante (P . V = constante; Delta U = 0)'),
(@p, 'Transformação Isobárica (Lei de Charles)', 1, 2, 'Pressão constante (V / T = constante)'),
(@p, 'Transformação Isocórica ou Isométrica', 1, 3, 'Volume constante (P / T = constante; trabalho nulo tau = 0)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A 2ª Lei da Termodinâmica afirma que nenhuma máquina térmica operando em ciclos pode converter integralmente calor em trabalho sem rejeitar parte da energia para uma fonte fria.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre o Ciclo de Carnot e as máquinas térmicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Ciclo de Carnot define o rendimento teórico máximo possível entre duas fontes térmicas (eta = 1 - Tf/Tq)', 1, 0),
(@p, 'As temperaturas na fórmula do rendimento de Carnot devem ser usadas obrigatoriamente em Kelvin', 1, 0),
(@p, 'Nenhum motor real pode superar o rendimento de uma máquina de Carnot entre as mesmas temperaturas', 1, 0),
(@p, 'Uma máquina térmica funciona com apenas uma única fonte de calor sem fonte fria', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama a transformação termodinâmica extremamente rápida ou isolada na qual não ocorre troca de calor entre o gás e o ambiente externo (Q = 0)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Transformação adiabática', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as quatro etapas do Ciclo teórico de Carnot de um gás ideal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Expansão isotérmica reversível absorvendo calor da fonte quente', 1, 1),
(@p, 'Expansão adiabática reversível com queda de temperatura até a fonte fria', 1, 2),
(@p, 'Compressão isotérmica reversível rejeitando calor para a fonte fria', 1, 3),
(@p, 'Compressão adiabática reversível retornando à temperatura da fonte quente', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um gás recebe 800 J de calor de uma fonte e realiza um trabalho de 500 J ao expandir-se. Qual foi a variação de sua energia interna?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '+300 J (aumentou 300 J)', 1, 0),
(@p, '+1.300 J', 0, 0),
(@p, '-300 J', 0, 0),
(@p, '0 J', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A entropia é uma grandeza termodinâmica associada ao grau de desordem e à irreversibilidade dos processos naturais em sistemas isolados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 54: Óptica
-- -------------------------------------------------------------------------

-- Quiz 54.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fundamentos da Óptica Geométrica e Princípios da Luz', 1, 54);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre uma fonte de luz primária e uma fonte de luz secundária?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A primária emite luz própria (como o Sol e uma lâmpada acesa); a secundária apenas reflete a luz recebida (como a Lua e um livro).', 1, 0),
(@p, 'A primária só existe durante a noite; a secundária só existe de dia.', 0, 0),
(@p, 'A primária não emite ondas eletromagnéticas; a secundária emite som.', 0, 0),
(@p, 'A Lua é uma estrela primária e o Sol é um satélite secundário.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada meio óptico ao seu comportamento diante da passagem da luz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Meio transparente', 1, 1, 'Permite a passagem regular da luz e a visão nítida através dele (ex.: vidro liso)'),
(@p, 'Meio translúcido', 1, 2, 'Permite passagem irregular da luz com espalhamento, sem nitidez (ex.: vidro fosco)'),
(@p, 'Meio opaco', 1, 3, 'Bloqueia totalmente a passagem da luz visível (ex.: parede de concreto)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A formação de sombras, penumbras, eclipses solares e lunares e o funcionamento da câmara escura de orifício são consequências diretas do Princípio da Propagação Retilínea da Luz.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três princípios fundamentais da Óptica Geométrica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Princípio da Propagação Retilínea da Luz (em meios homogêneos e transparentes)', 1, 0),
(@p, 'Princípio da Independência dos Raios Luminosos (feixes cruzam-se sem se perturbar)', 1, 0),
(@p, 'Princípio da Reversibilidade dos Raios Luminosos (o caminho de ida é idêntico ao de volta)', 1, 0),
(@p, 'Princípio da Imobilidade Absoluta da Luz no Vácuo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno óptico ocorre quando um objeto iluminado por luz solar branca absorve todas as cores exceto a luz verde, que é refletida difusamente até nossos olhos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Reflexão seletiva', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o alinhamento astronômico responsável por um Eclipse Solar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Sol (fonte extensa de luz) emite raios luminosos em direção ao sistema Terra-Lua', 1, 1),
(@p, 'A Lua posiciona-se exatamente entre o Sol e a Terra (fase de Lua Nova)', 1, 2),
(@p, 'O cone de sombra e penumbra da Lua projeta-se sobre uma faixa da superfície terrestre', 1, 3),
(@p, 'Observadores na região de sombra presenciam o bloqueio total do disco solar', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o valor aproximado da velocidade de propagação da luz no vácuo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '300.000 km/s (3 . 10^8 m/s)', 1, 0),
(@p, '340 m/s', 0, 0),
(@p, '3.000 km/h', 0, 0),
(@p, '30 m/s', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um ano-luz é uma unidade de distância que equivale ao espaço percorrido pela luz no vácuo durante um ano terrestre.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 54.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Reflexão da Luz, Espelhos Planos e Espelhos Esféricos', 2, 54);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estabelece a Segunda Lei da Reflexão da Luz?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ângulo de reflexão é sempre igual ao ângulo de incidência, medidos em relação à reta Normal à superfície.', 1, 0),
(@p, 'O raio refletido retorna sempre perpendicularmente à superfície.', 0, 0),
(@p, 'O ângulo de reflexão é sempre o dobro do ângulo de incidência.', 0, 0),
(@p, 'A luz não sofre reflexão em superfícies metálicas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de espelho às características principais de suas imagens:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Espelho Plano', 1, 1, 'Forma sempre imagem virtual, direita, do mesmo tamanho e enantiomorfa'),
(@p, 'Espelho Esférico Convexo', 1, 2, 'Forma sempre imagem virtual, direita e menor, ampliando o campo visual'),
(@p, 'Espelho Esférico Côncavo', 1, 3, 'Pode formar imagens reais invertidas ou imagem virtual direita e ampliada');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Espelhos convexos são utilizados em retrovisores externos de veículos e corredores de supermercados porque aumentam o campo visual, embora façam os objetos parecerem menores e mais distantes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique usos práticos dos Espelhos Esféricos Côncavos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Espelhos de aumento para maquiagem ou uso odontológico (objeto entre foco e vértice)', 1, 0),
(@p, 'Refletores de faróis automotivos e lanternas (fonte luminosa posicionada no foco)', 1, 0),
(@p, 'Telescópios refletores astronômicos e fornos solares concentradores', 1, 0),
(@p, 'Aumentar o campo de visão panorâmico em cruzamentos de ruas estreitas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo óptico descreve a inversão lateral aparente (direita-esquerda) da imagem formada por um espelho plano, motivo pelo qual a palavra AMBULÂNCIA é escrita invertida na frente das viaturas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Enantiomorfismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a mudança da imagem de um objeto real que se aproxima de um espelho côncavo vindo do infinito até o foco:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Objeto além do centro de curvatura: imagem real, invertida e menor', 1, 1),
(@p, 'Objeto exatamente sobre o centro de curvatura: imagem real, invertida e do mesmo tamanho', 1, 2),
(@p, 'Objeto entre o centro de curvatura e o foco: imagem real, invertida e maior', 1, 3),
(@p, 'Objeto exatamente sobre o foco principal: imagem imprópria (raios refletidos paralelos)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma pessoa encontra-se a 1,5 m de distância de um espelho plano vertical. Se ela der um passo de 0,5 m se afastando do espelho, qual será a nova distância entre ela e sua imagem?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4,0 m', 1, 0),
(@p, '2,0 m', 0, 0),
(@p, '3,0 m', 0, 0),
(@p, '1,0 m', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A equação de Gauss (1/f = 1/p + 1/p_linha) relaciona a distância focal (f), a distância do objeto (p) e a distância da imagem (p_linha) em espelhos esféricos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 54.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Refração da Luz, Lei de Snell-Descartes e Reflexão Total', 2, 54);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o fenômeno óptico da "Refração da Luz"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A mudança na velocidade de propagação da luz ao passar de um meio transparente para outro com índice de refração diferente.', 1, 0),
(@p, 'O retorno completo da luz para o mesmo meio após bater em um espelho metálico.', 0, 0),
(@p, 'A absorção total da luz por uma superfície preta fosca.', 0, 0),
(@p, 'A alteração da frequência da onda luminosa ao mudar de meio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fenômeno óptico atmosférico ou tecnológico à refração da luz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dispersão da luz branca em prisma', 1, 1, 'Separação das cores do arco-íris porque cada cor tem um índice de refração próprio'),
(@p, 'Fibra óptica de telecomunicações', 1, 2, 'Transmissão de pulsos de luz por sucessivas reflexões internas totais'),
(@p, 'Posição aparente de um peixe na água', 1, 3, 'O peixe parece estar mais próximo da superfície do que realmente está');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante a refração de uma onda luminosa monocromática de um meio para outro, a frequência da luz permanece rigorosamente constante, alterando-se apenas a velocidade e o comprimento de onda.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as duas condições obrigatórias para que ocorra o fenômeno da Reflexão Interna Total:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A luz deve viajar do meio mais refringente (maior n) para o meio menos refringente (menor n)', 1, 0),
(@p, 'O ângulo de incidência deve ser maior que o ângulo limite (i > L)', 1, 0),
(@p, 'Os dois meios devem ter exatamente o mesmo índice de refração', 0, 0),
(@p, 'A luz deve incidir sempre perpendicularmente à superfície (i = 0°)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual lei fundamental da refração relaciona os índices de refração dos meios e os senos dos ângulos de incidência e refração (n1 . sen i = n2 . sen r)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Lei de Snell-Descartes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o que ocorre quando um raio de luz passa obliquamente do ar (n ≈ 1,0) para a água (n ≈ 1,33):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O raio incide na interface ar-água formando um ângulo i com a reta Normal', 1, 1),
(@p, 'A velocidade de propagação da luz diminui ao entrar na água', 1, 2),
(@p, 'O raio refratado aproxima-se da reta Normal (ângulo r menor que ângulo i)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O índice de refração absoluto do diamante é aproximadamente 2,4. Considerando c = 300.000 km/s, qual é a velocidade aproximada da luz no interior do diamante?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '125.000 km/s', 1, 0),
(@p, '720.000 km/s', 0, 0),
(@p, '300.000 km/s', 0, 0),
(@p, '240.000 km/s', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As miragens observadas em estradas asfaltadas em dias muito quentes ocorrem devido à refração e reflexão total da luz em camadas de ar com temperaturas e índices de refração diferentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 54.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Lentes Esféricas, Instrumentos Ópticos e Óptica da Visão', 3, 54);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como uma lente de bordas finas (como uma lente biconvexa de vidro imersa no ar) comporta-se ao receber um feixe de raios paralelos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como lente convergente, fazendo os raios refratados convergirem para o foco principal imagem.', 1, 0),
(@p, 'Como lente divergente, espalhando os raios para longe do eixo principal.', 0, 0),
(@p, 'Como um espelho plano opaco que bloqueia totalmente a imagem.', 0, 0),
(@p, 'Não provoca nenhum desvio nos raios luminosos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada defeito da visão humana (ametropia) à sua causa e lente corretiva:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Miopia', 1, 1, 'Imagem formada antes da retina; corrigida com lentes divergentes'),
(@p, 'Hipermetropia', 1, 2, 'Imagem formada depois da retina; corrigida com lentes convergentes'),
(@p, 'Astigmatismo', 1, 3, 'Irregularidade na curvatura da córnea; corrigida com lentes cilíndricas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No olho humano emétrope (visão normal), o cristalino funciona como uma lente convergente natural de distância focal variável que projeta sobre a retina uma imagem real e invertida.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a Vergência ou Convergência (C = 1 / f) de uma lente esférica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É medida no Sistema Internacional em dioptrias (di), popularmente chamadas de "graus"', 1, 0),
(@p, 'Lentes convergentes possuem distância focal e vergência positivas', 1, 0),
(@p, 'Lentes divergentes possuem distância focal e vergência negativas', 1, 0),
(@p, 'Quanto maior a distância focal em metros, maior é a vergência em dioptrias', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual unidade do Sistema Internacional mede a vergência (convergência) de uma lente óptica e corresponde ao inverso do metro (m^-1)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Dioptria', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o trajeto da luz através das principais estruturas do globo ocular humano até a percepção visual:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Refração inicial da luz na córnea transparente', 1, 1),
(@p, 'Passagem pela pupila cuja abertura é regulada pela íris', 1, 2),
(@p, 'Focalização final ajustada pelo cristalino (acomodação visual)', 1, 3),
(@p, 'Formação da imagem invertida na retina e envio de impulsos pelo nervo óptico', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um oftalmologista prescreve óculos com lentes de vergência igual a -2,5 dioptrias. Qual é a distância focal e o tipo dessas lentes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '-0,40 m (-40 cm), lente divergente', 1, 0),
(@p, '+2,50 m, lente convergente', 0, 0),
(@p, '-2,50 m, lente convergente', 0, 0),
(@p, '+0,40 m, lente divergente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A lupa (lente de aumento simples) consiste em uma lente convergente utilizada com o objeto posicionado entre o foco principal e o centro óptico, gerando uma imagem virtual, direita e maior.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 55: Ondulatória
-- -------------------------------------------------------------------------

-- Quiz 55.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Natureza, Classificação e Elementos de uma Onda', 1, 55);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que uma onda transporta ao se propagar através de um meio ou do espaço?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Transporta exclusivamente energia e quantidade de movimento, sem transportar matéria.', 1, 0),
(@p, 'Transporta grandes quantidades de matéria sólida de um ponto a outro.', 0, 0),
(@p, 'Transporta apenas carga elétrica estática.', 0, 0),
(@p, 'Não transporta energia nem informação.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento geométrico de uma onda periódica à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Crista e Vale', 1, 1, 'Pontos de máximo deslocamento positivo e negativo da onda'),
(@p, 'Amplitude (A)', 1, 2, 'Altura máxima da crista medida a partir da linha de equilíbrio'),
(@p, 'Comprimento de onda (lambda)', 1, 3, 'Distância entre duas cristas consecutivas ou dois vales consecutivos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As ondas mecânicas (como o som e as ondas em uma corda) precisam de um meio material para se propagar, enquanto as ondas eletromagnéticas (como a luz e o rádio) propagam-se também no vácuo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de ondas eletromagnéticas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Luz visível e radiação ultravioleta', 1, 0),
(@p, 'Ondas de rádio, micro-ondas e sinais de Wi-Fi', 1, 0),
(@p, 'Raios X e raios gama', 1, 0),
(@p, 'Ondas sonoras propagando-se no ar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são classificadas as ondas (como o som nos gases) nas quais a direção de vibração das partículas coincide com a mesma direção de propagação da onda?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ondas longitudinais', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o que acontece com uma rolha flutuando na superfície de um lago quando passa uma ondulação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma perturbação transmite energia pela superfície da água', 1, 1),
(@p, 'A rolha sobe e desce verticalmente acompanhando cristas e vales', 1, 2),
(@p, 'A onda continua se afastando horizontalmente pelo lago', 1, 3),
(@p, 'A rolha permanece na mesma posição horizontal sem ser arrastada pela onda', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que as explosões ocorridas no Sol ou no espaço profundo não podem ser ouvidas na Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o som é uma onda mecânica e não se propaga no vácuo interplanetário.', 1, 0),
(@p, 'Porque o som viaja mais rápido que a luz e passa antes de chegarmos.', 0, 0),
(@p, 'Porque a atmosfera terrestre bloqueia todas as ondas eletromagnéticas.', 0, 0),
(@p, 'Porque o Sol é completamente silencioso internamente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nas ondas transversais (como ondas em uma corda tensa e ondas eletromagnéticas), a direção de vibração é perpendicular à direção de propagação.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 55.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Equação Fundamental da Ondulatória e Espectro Eletromagnético', 2, 55);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a Equação Fundamental da Ondulatória que relaciona velocidade (v), comprimento de onda (lambda) e frequência (f)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'v = lambda . f', 1, 0),
(@p, 'v = lambda + f', 0, 0),
(@p, 'v = f / lambda', 0, 0),
(@p, 'v = lambda² . f', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada faixa do espectro eletromagnético à sua aplicação ou característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ondas de Rádio e Micro-ondas', 1, 1, 'Maior comprimento de onda e menor frequência; telecomunicações e radares'),
(@p, 'Radiação Infravermelha', 1, 2, 'Associada ao calor térmico e aos sensores de controle remoto'),
(@p, 'Raios X e Raios Gama', 1, 3, 'Altíssima frequência e alta energia ionizante; radiografias e radioterapia');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No vácuo, todas as ondas eletromagnéticas — desde as ondas de rádio até os raios gama — propagam-se exatamente com a mesma velocidade (c ≈ 3 . 10^8 m/s).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a equação v = lambda . f:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A frequência f da onda depende exclusivamente da fonte emissora que a produziu', 1, 0),
(@p, 'A velocidade v da onda depende das propriedades físicas do meio de propagação', 1, 0),
(@p, 'Em um mesmo meio, ondas de maior frequência possuem menor comprimento de onda', 1, 0),
(@p, 'Quando uma onda muda de meio, sua frequência dobra automaticamente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual cor do espectro da luz visível possui a maior frequência e o menor comprimento de onda?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Violeta', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as faixas do espectro eletromagnético em ordem crescente de frequência (da menor para a maior frequência):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ondas de rádio e micro-ondas', 1, 1),
(@p, 'Radiação infravermelha e luz visível', 1, 2),
(@p, 'Radiação ultravioleta', 1, 3),
(@p, 'Raios X e raios gama', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma emissora de rádio FM transmite na frequência de 100 MHz (10^8 Hz). Considerando c = 3 . 10^8 m/s, qual é o comprimento de onda desse sinal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3 m', 1, 0),
(@p, '300 m', 0, 0),
(@p, '0,33 m', 0, 0),
(@p, '30 m', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A energia transportada por cada fóton de uma radiação eletromagnética é diretamente proporcional à sua frequência (E = h . f, relação de Planck).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 55.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fenômenos Ondulatórios: Difração, Interferência e Polarização', 2, 55);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual fenômeno ondulatório permite que escutemos uma pessoa falando em outro cômodo mesmo sem vê-la diretamente, pois a onda contorna obstáculos e fendas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Difração', 1, 0),
(@p, 'Polarização', 0, 0),
(@p, 'Dispersão cromática', 0, 0),
(@p, 'Absorção total', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fenômeno ondulatório à sua descrição física:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Interferência construtiva', 1, 1, 'Superposição de duas cristas (em fase), resultando em aumento da amplitude'),
(@p, 'Interferência destrutiva', 1, 2, 'Superposição de uma crista com um vale (oposição de fase), atenuando a onda'),
(@p, 'Polarização', 1, 3, 'Filtragem de uma onda transversal para que vibre em um único plano');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A polarização é um fenômeno exclusivo das ondas transversais (como a luz); ondas longitudinais (como o som no ar) não podem ser polarizadas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique tecnologias e fenômenos baseados na Interferência ou Polarização de ondas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fones de ouvido com cancelamento ativo de ruído (interferência destrutiva sonora)', 1, 0),
(@p, 'Óculos de sol polarizados e telas de cristal líquido (LCD)', 1, 0),
(@p, 'Experimento da dupla fenda de Thomas Young demonstrando a natureza ondulatória da luz', 1, 0),
(@p, 'Aquecimento de água por condução direta em fogão a lenha', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno ondulatório ocorre quando duas ou mais ondas encontram-se no mesmo ponto do espaço, somando algebricamente suas amplitudes pelo princípio da superposição?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Interferência', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as condições para ocorrer difração acentuada de uma onda ao atravessar uma abertura:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A onda incide sobre uma fenda ou obstáculo no meio de propagação', 1, 1),
(@p, 'Compara-se a largura da fenda com o comprimento de onda (lambda)', 1, 2),
(@p, 'Quando a fenda tem ordem de grandeza próxima a lambda, a onda espalha-se amplamente', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O fenômeno dos "batimentos" acústicos (variação periódica na intensidade sonora ao tocar duas notas de frequências muito próximas) é um caso particular de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Interferência entre ondas de frequências ligeiramente diferentes.', 1, 0),
(@p, 'Polarização circular do som.', 0, 0),
(@p, 'Refração total no vácuo.', 0, 0),
(@p, 'Absorção magnética.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Após duas ondas se cruzarem e sofrerem interferência em um ponto, cada uma continua sua propagação original mantendo suas características intactas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 55.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Acústica: Qualidades do Som, Ressonância e Efeito Doppler', 3, 55);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Acústica, qual é a diferença entre "Altura" e "Intensidade" de um som?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Altura está ligada à frequência (diferencia som grave de agudo); Intensidade está ligada à amplitude/energia (diferencia som forte de fraco).', 1, 0),
(@p, 'Altura mede o volume em decibéis; Intensidade diferencia o violino do piano.', 0, 0),
(@p, 'Altura depende apenas da velocidade do vento; Intensidade depende da cor do instrumento.', 0, 0),
(@p, 'Não existe diferença física entre altura e intensidade sonora.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada qualidade fisiológica do som à grandeza ondulatória correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Altura sonora', 1, 1, 'Frequência da onda (baixa frequência = grave; alta frequência = agudo)'),
(@p, 'Intensidade sonora', 1, 2, 'Amplitude e potência por área (medida na escala logarítmica de decibéis)'),
(@p, 'Timbre', 1, 3, 'Formato da onda (conjunto de harmônicos que distingue cada instrumento ou voz)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A faixa audível média do ouvido humano situa-se entre 20 Hz e 20.000 Hz (20 kHz); abaixo de 20 Hz temos os infrassons e acima de 20 kHz temos os ultrassons.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre o Efeito Doppler sonoro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ocorre quando há movimento relativo entre a fonte sonora e o observador', 1, 0),
(@p, 'Na aproximação relativa, o observador percebe uma frequência aparente maior (som mais agudo)', 1, 0),
(@p, 'No afastamento relativo, o observador percebe uma frequência aparente menor (som mais grave)', 1, 0),
(@p, 'A frequência real emitida pela sirene da ambulância muda fisicamente dentro do aparelho', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno acústico ocorre quando um sistema recebe excitações periódicas com frequência igual à sua frequência natural de vibração, fazendo a amplitude oscilar ao máximo (como quebrar uma taça de cristal com a voz)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ressonância', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o mecanismo físico do eco sonoro em frente a um paredão rochoso:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Emissão de um pulso sonoro pelo observador situado a pelo menos 17 m do obstáculo', 1, 1),
(@p, 'Propagação da onda sonora no ar a cerca de 340 m/s até o paredão', 1, 2),
(@p, 'Reflexão da onda sonora na superfície rígida do obstáculo', 1, 3),
(@p, 'Recepção do som refletido após intervalo igual ou superior a 0,1 s (persistência acústica)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A velocidade do som é maior nos sólidos metálicos, nos líquidos ou nos gases como o ar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nos sólidos metálicos, devido à maior rigidez elástica e proximidade entre as partículas.', 1, 0),
(@p, 'Nos gases rarefeitos, pois não há moléculas no caminho.', 0, 0),
(@p, 'No vácuo absoluto, onde atinge 300.000 km/s.', 0, 0),
(@p, 'É rigorosamente igual em todos os estados físicos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na escala decibel (dB) de nível sonoro, cada aumento de 10 dB corresponde a multiplicar por 10 a intensidade física da onda sonora.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 56: Eletricidade
-- -------------------------------------------------------------------------

-- Quiz 56.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Carga Elétrica, Eletrização e Condutores vs. Isolantes', 1, 56);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como ocorre a eletrização de um corpo sólido eletricamente neutro na natureza?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela perda ou ganho de elétrons: quem perde elétrons fica positivo; quem ganha elétrons fica negativo.', 1, 0),
(@p, 'Pela transferência livre de prótons de um núcleo atômico para outro.', 0, 0),
(@p, 'Pela criação de carga elétrica a partir do nada.', 0, 0),
(@p, 'Pela destruição total dos nêutrons do material.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada processo de eletrização às cargas finais adquiridas pelos corpos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Eletrização por Atrito', 1, 1, 'Dois corpos inicialmente neutros adquirem cargas de mesmo módulo e sinais opostos'),
(@p, 'Eletrização por Contato', 1, 2, 'Os corpos condutores passam a ter cargas finais de mesmo sinal'),
(@p, 'Eletrização por Indução (com aterramento)', 1, 3, 'O induzido adquire carga de sinal oposto ao do indutor sem haver contato');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pelo Princípio da Atração e Repulsão Elétrica, cargas elétricas de mesmo sinal repelem-se e cargas de sinais opostos atraem-se.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique materiais classificados como bons condutores elétricos em condições normais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metais como cobre, prata, ouro e alumínio (possuem elétrons livres)', 1, 0),
(@p, 'Soluções aquosas iônicas (água com sais dissolvidos)', 1, 0),
(@p, 'Grafite', 1, 0),
(@p, 'Vidro seco, borracha e porcelana', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual unidade do Sistema Internacional mede a quantidade de carga elétrica (Q = n . e)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Coulomb', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento correto para eletrizar uma esfera metálica neutra por indução eletrostática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aproximar um bastão eletrizado (indutor) da esfera neutra isolada sem tocá-la', 1, 1),
(@p, 'Ligar a esfera à Terra através de um fio condutor mantendo o indutor próximo', 1, 2),
(@p, 'Desfazer a ligação com a Terra antes de afastar o indutor', 1, 3),
(@p, 'Afastar o indutor, deixando a esfera eletrizada com carga oposta à dele', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Duas esferas metálicas idênticas, uma com carga +8 microC e outra com carga -2 microC, são colocadas em contato e depois separadas. Qual será a carga final de cada uma?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '+3 microC cada uma', 1, 0),
(@p, '+5 microC cada uma', 0, 0),
(@p, '+6 microC cada uma', 0, 0),
(@p, '-3 microC cada uma', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um bastão eletrizado pode atrair pequenos pedaços de papel neutro devido ao fenômeno da polarização elétrica induzida nas moléculas do papel.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 56.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Eletrostática: Lei de Coulomb, Campo Elétrico e Potencial', 2, 56);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com a Lei de Coulomb, como varia a força eletrostática entre duas cargas puntiformes se dobrarmos a distância entre elas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A força fica reduzida à quarta parte (dividida por 4), pois é inversamente proporcional ao quadrado da distância.', 1, 0),
(@p, 'A força fica reduzida apenas pela metade.', 0, 0),
(@p, 'A força quadruplica de intensidade.', 0, 0),
(@p, 'A força não sofre nenhuma alteração.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grandeza da Eletrostática à sua definição e unidade no SI:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Campo Elétrico (E = F / q)', 1, 1, 'Grandeza vetorial medida em N/C ou V/m'),
(@p, 'Potencial Elétrico (V = Ep_el / q)', 1, 2, 'Grandeza escalar medida em Volts (V = J/C)'),
(@p, 'Blindagem Eletrostática (Gaiola de Faraday)', 1, 3, 'Campo elétrico nulo no interior de um condutor oco em equilíbrio eletrostático');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Por efeito da Gaiola de Faraday (blindagem eletrostática), o interior de um automóvel metálico fechado oferece proteção contra descargas atmosféricas (raios).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre as linhas de força do Campo Elétrico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Saem das cargas fonte positivas e chegam às cargas fonte negativas', 1, 0),
(@p, 'Duas linhas de força nunca se cruzam em um mesmo ponto do espaço', 1, 0),
(@p, 'Quanto maior a concentração de linhas em uma região, mais intenso é o campo elétrico', 1, 0),
(@p, 'Uma carga de prova negativa sempre se move no mesmo sentido do vetor campo elétrico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno eletrostático explica o acúmulo de cargas elétricas nas regiões pontiagudas de condutores, sendo utilizado no funcionamento dos para-raios de Franklin?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Poder das pontas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o comportamento espontâneo de cargas livres abandonadas em um campo elétrico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma carga positiva é acelerada no mesmo sentido do campo elétrico (para potenciais menores)', 1, 1),
(@p, 'Uma carga negativa é acelerada no sentido oposto ao campo elétrico (para potenciais maiores)', 1, 2),
(@p, 'Em ambos os casos, a energia potencial elétrica transforma-se em energia cinética', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma carga elétrica de 2 . 10^-6 C é colocada em um ponto onde o campo elétrico tem intensidade 5 . 10^4 N/C. Qual é o módulo da força elétrica sobre essa carga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,1 N', 1, 0),
(@p, '10 N', 0, 0),
(@p, '2,5 N', 0, 0),
(@p, '0,01 N', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em um campo elétrico uniforme entre duas placas paralelas separadas por distância d, a diferença de potencial relaciona-se com o campo pela fórmula U = E . d.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 56.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Eletrodinâmica: Corrente Elétrica, Leis de Ohm e Potência', 2, 56);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que constitui a corrente elétrica nos fios condutores metálicos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O movimento ordenado de elétrons livres impulsionados por uma diferença de potencial elétrico (ddp).', 1, 0),
(@p, 'O deslocamento de prótons livres pelo interior do fio.', 0, 0),
(@p, 'A agitação desordenada de moléculas neutras sem direção definida.', 0, 0),
(@p, 'O fluxo de ondas sonoras através do cobre.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grandeza da Eletrodinâmica à sua fórmula e unidade no SI:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Corrente Elétrica (i = Delta Q / Delta t)', 1, 1, 'Medida em Ampères (A = C/s)'),
(@p, '1ª Lei de Ohm (U = R . i)', 1, 2, 'Resistência elétrica R medida em Ohms (Omega)'),
(@p, 'Potência Elétrica (P = U . i)', 1, 3, 'Medida em Watts (W); energia medida em J ou kWh');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pelo Efeito Joule, a passagem de corrente elétrica por um resistor transforma energia elétrica em energia térmica devido às colisões dos elétrons com os átomos da rede cristalina.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores dos quais depende a resistência elétrica de um fio condutor homogêneo segundo a 2ª Lei de Ohm (R = rho . L / A):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Diretamente proporcional ao comprimento L do fio', 1, 0),
(@p, 'Inversamente proporcional à área da seção transversal A (espessura) do fio', 1, 0),
(@p, 'Diretamente proporcional à resistividade elétrica rho do material e à temperatura', 1, 0),
(@p, 'Depende da cor do plástico isolante que encapa o fio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual dispositivo de segurança presente nos quadros elétricos residenciais desarma automaticamente o circuito quando a corrente elétrica ultrapassa o limite seguro por sobrecarga ou curto-circuito?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Disjuntor', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do custo mensal de energia elétrica de um chuveiro residencial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Converter a potência do chuveiro de Watts para quilowatts (dividir por 1.000)', 1, 1),
(@p, 'Calcular o tempo total de uso mensal em horas (horas por dia x dias no mês)', 1, 2),
(@p, 'Multiplicar a potência em kW pelo tempo em horas para obter o consumo em kWh', 1, 3),
(@p, 'Multiplicar o consumo em kWh pela tarifa cobrada pela concessionária', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um resistor ôhmico de 20 Ohms é submetido a uma tensão elétrica de 110 V. Qual é a intensidade da corrente elétrica que o atravessa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5,5 A', 1, 0),
(@p, '2.200 A', 0, 0),
(@p, '90 A', 0, 0),
(@p, '0,18 A', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Por convenção internacional, o sentido convencional da corrente elétrica corresponde ao sentido oposto ao movimento real dos elétrons nos metais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 56.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Associação de Resistores, Circuitos Elétricos e Medidores', 3, 56);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se comportam a corrente elétrica e a diferença de potencial em uma associação de resistores em PARALELO (como as tomadas residenciais)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Todos os aparelhos recebem a mesma tensão (ddp), e a corrente total divide-se entre os ramos de forma independente.', 1, 0),
(@p, 'A corrente é idêntica em todos os aparelhos, e se um queimar todos apagam.', 0, 0),
(@p, 'A resistência equivalente é maior que a soma de todas as resistências.', 0, 0),
(@p, 'A tensão total divide-se igualmente mesmo entre resistores diferentes.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de associação ou instrumento elétrico à sua propriedade fundamental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Associação em Série', 1, 1, 'Mesma corrente i em todos os resistores; Req = R1 + R2 + ...'),
(@p, 'Amperímetro ideal', 1, 2, 'Ligado em série no circuito; possui resistência interna nula'),
(@p, 'Voltímetro ideal', 1, 3, 'Ligado em paralelo ao componente; possui resistência interna infinita');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um curto-circuito ocorre quando dois pontos de potenciais diferentes são ligados por um caminho de resistência elétrica praticamente nula, desviando a corrente e elevando perigosamente sua intensidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a associação de N resistores idênticos de valor R em paralelo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A resistência equivalente é dada por Req = R / N', 1, 0),
(@p, 'Quanto mais aparelhos são ligados em paralelo na mesma tomada, menor torna-se a resistência equivalente', 1, 0),
(@p, 'Ligar muitos aparelhos potentes na mesma tomada aumenta a corrente total, podendo causar sobrecarga', 1, 0),
(@p, 'A resistência equivalente é igual a N . R', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o elemento ativo de um circuito (como uma pilha ou bateria) responsável por transformar energia química ou mecânica em energia elétrica, mantendo uma força eletromotriz (fem)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Gerador elétrico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento para resolver um circuito elétrico misto alimentado por uma fonte de tensão U:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Simplificar primeiro os blocos internos em paralelo e em série para achar a Req total', 1, 1),
(@p, 'Calcular a corrente elétrica total que sai da fonte usando i_total = U / Req', 1, 2),
(@p, 'Retornar às ramificações usando U = R . i para achar tensões e correntes parciais', 1, 3),
(@p, 'Conferir se a soma das correntes nos nós respeita a conservação da carga (1ª Lei de Kirchhoff)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dois resistores de 6 Ohms e 3 Ohms são associados em paralelo. Qual é o valor da resistência equivalente dessa associação?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2 Ohms', 1, 0),
(@p, '9 Ohms', 0, 0),
(@p, '4,5 Ohms', 0, 0),
(@p, '18 Ohms', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Leis de Kirchhoff (Lei dos Nós e Lei das Malhas) expressam, respectivamente, a conservação da carga elétrica e a conservação da energia em circuitos elétricos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);