USE luminebd;

-- =========================================================================
-- MATÉRIA 5: CIÊNCIAS DA NATUREZA (CONTEÚDOS 42 A 48)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 42: Sistema Solar
-- -------------------------------------------------------------------------

-- Quiz 42.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O Sol e os Planetas do Sistema Solar', 1, 42);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o astro central do Sistema Solar responsável por fornecer luz e calor para a Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Sol', 1, 0),
(@p, 'A Lua', 0, 0),
(@p, 'Júpiter', 0, 0),
(@p, 'Saturno', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada planeta do Sistema Solar à sua característica marcante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mercúrio', 1, 1, 'Planeta mais próximo do Sol'),
(@p, 'Terra', 1, 2, 'Único planeta conhecido com água líquida abundante e vida'),
(@p, 'Saturno', 1, 3, 'Famoso pelo seu grande e brilhante sistema de anéis');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Sistema Solar é formado por oito planetas principais que giram ao redor do Sol.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique quais destes astros são planetas do Sistema Solar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vênus', 1, 0),
(@p, 'Marte', 1, 0),
(@p, 'Netuno', 1, 0),
(@p, 'Lua', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o maior planeta de todo o Sistema Solar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Júpiter', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os quatro primeiros planetas a partir do Sol (do mais próximo para o mais distante):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mercúrio', 1, 1),
(@p, 'Vênus', 1, 2),
(@p, 'Terra', 1, 3),
(@p, 'Marte', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual planeta é conhecido como "Planeta Vermelho" devido à presença de óxido de ferro (ferrugem) em seu solo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Marte', 1, 0),
(@p, 'Urano', 0, 0),
(@p, 'Mercúrio', 0, 0),
(@p, 'Netuno', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Sol é uma estrela de quinta grandeza composta principalmente pelos gases hidrogênio e hélio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 42.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Planetas Rochosos, Gigantes Gasosos e Planetas-Anões', 2, 42);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os quatro planetas rochosos (telúricos) do Sistema Solar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mercúrio, Vênus, Terra e Marte', 1, 0),
(@p, 'Júpiter, Saturno, Urano e Netuno', 0, 0),
(@p, 'Terra, Marte, Júpiter e Saturno', 0, 0),
(@p, 'Mercúrio, Urano, Netuno e Plutão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo de astros à sua composição ou classificação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Planetas Telúricos', 1, 1, 'Superfície sólida formada por rochas e metais'),
(@p, 'Planetas Jovianos (Gasosos)', 1, 2, 'Enormes esferas compostas principalmente por gases e gelo'),
(@p, 'Plutão e Ceres', 1, 3, 'Classificados pela astronomia como planetas-anões');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Embora Mercúrio seja o planeta mais próximo do Sol, Vênus é o planeta mais quente do Sistema Solar por causa do seu intenso efeito estufa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os planetas gigantes externos (gasosos e gelados) do Sistema Solar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Júpiter e Saturno', 1, 0),
(@p, 'Urano', 1, 0),
(@p, 'Netuno', 1, 0),
(@p, 'Vênus', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual região localizada entre as órbitas de Marte e Júpiter concentra milhares de fragmentos rochosos que orbitam o Sol?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Cinturão de Asteroides', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os quatro planetas gasosos do mais próximo ao mais distante do Sol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Júpiter', 1, 1),
(@p, 'Saturno', 1, 2),
(@p, 'Urano', 1, 3),
(@p, 'Netuno', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Plutão deixou de ser considerado o nono planeta principal em 2006 pela União Astronômica Internacional?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque não limpou a vizinhança de sua órbita de outros corpos de tamanho semelhante.', 1, 0),
(@p, 'Porque ele saiu do Sistema Solar e desapareceu.', 0, 0),
(@p, 'Porque ele colidiu com a Lua.', 0, 0),
(@p, 'Porque ele passou a emitir luz própria como uma estrela.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todos os planetas gigantes gasosos (Júpiter, Saturno, Urano e Netuno) possuem sistemas de anéis ao seu redor, ainda que os de Saturno sejam os mais visíveis.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 42.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Movimentos da Terra, Estações do Ano e Fases da Lua', 2, 42);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual movimento da Terra ao redor de seu próprio eixo dura aproximadamente 24 horas e origina os dias e as noites?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Rotação', 1, 0),
(@p, 'Translação', 0, 0),
(@p, 'Precessão dos equinócios', 0, 0),
(@p, 'Erupção solar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fenômeno astronômico à sua causa principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sucessão de dias e noites', 1, 1, 'Movimento de rotação da Terra'),
(@p, 'Estações do ano bem definidas', 1, 2, 'Translação combinada com a inclinação do eixo terrestre'),
(@p, 'Marés oceânicas', 1, 3, 'Atração gravitacional principalmente da Lua e do Sol');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Lua não possui luz própria; nós a enxergamos no céu porque ela reflete a luz do Sol.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as quatro fases principais do ciclo lunar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lua Nova', 1, 0),
(@p, 'Quarto Crescente', 1, 0),
(@p, 'Lua Cheia e Quarto Minguante', 1, 0),
(@p, 'Lua Azul Eterna', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quanto tempo aproximado (em dias) a Terra leva para completar uma volta inteira ao redor do Sol (movimento de translação)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '365 dias', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene sequencialmente as fases da Lua ao longo de um ciclo lunar (~29,5 dias):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lua Nova', 1, 1),
(@p, 'Quarto Crescente', 1, 2),
(@p, 'Lua Cheia', 1, 3),
(@p, 'Quarto Minguante', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando é verão no Hemisfério Sul (como no Brasil), qual estação do ano ocorre simultaneamente no Hemisfério Norte?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Inverno', 1, 0),
(@p, 'Verão também', 0, 0),
(@p, 'Primavera', 0, 0),
(@p, 'Outono', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O ano bissexto (com 366 dias a cada 4 anos) existe para compensar as cerca de 6 horas extras que sobram além dos 365 dias na translação da Terra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 42.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Eclipses, Gravidade e Outros Astros do Sistema Solar', 3, 42);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual alinhamento astronômico ocorre durante um eclipse solar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Lua posiciona-se exatamente entre o Sol e a Terra, projetando sua sombra sobre a superfície terrestre.', 1, 0),
(@p, 'A Terra posiciona-se entre o Sol e a Lua durante a fase de Lua Cheia.', 0, 0),
(@p, 'O Sol passa entre a Terra e a Lua.', 0, 0),
(@p, 'Marte bloqueia totalmente a luz do Sol.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada corpo menor do Sistema Solar à sua definição correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cometa', 1, 1, 'Corpo de gelo, poeira e rocha que forma cauda brilhante perto do Sol'),
(@p, 'Meteoro ("estrela cadente")', 1, 2, 'Fenômeno luminoso do atrito de um fragmento na atmosfera terrestre'),
(@p, 'Meteorito', 1, 3, 'Fragmento espacial que atravessa a atmosfera e atinge o solo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um eclipse lunar só pode acontecer durante a fase de Lua Cheia, quando a Terra fica entre o Sol e a Lua.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a força da gravidade no Sistema Solar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mantém os planetas em órbita ao redor do Sol', 1, 0),
(@p, 'Quanto maior a massa de um astro, maior é sua atração gravitacional', 1, 0),
(@p, 'Mantém a Lua em órbita ao redor da Terra', 1, 0),
(@p, 'Só existe dentro da atmosfera terrestre', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o nome da unidade de medida usada na astronomia que corresponde à distância média entre a Terra e o Sol (~150 milhões de km)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Unidade Astronômica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as estruturas cósmicas da menor para a maior escala espacial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Planeta Terra', 1, 1),
(@p, 'Sistema Solar', 1, 2),
(@p, 'Galáxia Via Láctea', 1, 3),
(@p, 'Universo Observável', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a cauda gasosa de um cometa sempre aponta para o lado oposto ao Sol?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Devido à pressão da radiação solar e ao vento solar que empurram os gases sublimados.', 1, 0),
(@p, 'Porque o cometa voa sempre de costas para o espaço.', 0, 0),
(@p, 'Por causa da gravidade dos oceanos da Terra.', 0, 0),
(@p, 'Porque o gelo congela ainda mais perto do Sol.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A gravidade na superfície da Lua é cerca de um sexto da gravidade da Terra, fazendo com que um astronauta pese menos lá, embora sua massa permaneça igual.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 43: Corpo Humano
-- -------------------------------------------------------------------------

-- Quiz 43.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Organização do Corpo Humano e Órgãos dos Sentidos', 1, 43);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a menor unidade viva que forma todos os tecidos e órgãos do corpo humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Célula', 1, 0),
(@p, 'Osso', 0, 0),
(@p, 'Músculo', 0, 0),
(@p, 'Artéria', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sentido humano ao seu órgão principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Visão', 1, 1, 'Olhos'),
(@p, 'Audição e equilíbrio', 1, 2, 'Orelhas (ouvidos)'),
(@p, 'Tato (pressão, calor e dor)', 1, 3, 'Pele');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A pele é o maior órgão do corpo humano e atua como barreira protetora contra microrganismos e perda excessiva de água.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os cinco sentidos tradicionais do corpo humano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Visão e Audição', 1, 0),
(@p, 'Olfato e Paladar (gustação)', 1, 0),
(@p, 'Tato', 1, 0),
(@p, 'Fotossíntese', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual órgão localizado na língua possui papilas gustativas responsáveis por perceber os sabores dos alimentos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Língua', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os níveis de organização do corpo humano do mais simples para o mais complexo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Células', 1, 1),
(@p, 'Tecidos', 1, 2),
(@p, 'Órgãos', 1, 3),
(@p, 'Sistemas e Organismo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual estrutura do olho humano funciona como uma lente natural que ajusta o foco das imagens na retina?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cristalino', 1, 0),
(@p, 'Tímpano', 0, 0),
(@p, 'Cóclea', 0, 0),
(@p, 'Epiglote', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um conjunto de células semelhantes que desempenham uma mesma função forma um tecido (como o tecido muscular ou nervoso).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 43.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sistemas Digestório, Respiratório e Circulatório', 2, 43);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a função principal do sistema circulatório (cardiovascular) humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Transportar nutrientes, oxigênio, hormônios e resíduos metabólicos por meio do sangue impulsionado pelo coração.', 1, 0),
(@p, 'Triturar os alimentos sólidos antes da deglutição.', 0, 0),
(@p, 'Produzir ossos novos no crânio.', 0, 0),
(@p, 'Filtrar o ar inspirado pelas narinas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sistema do corpo humano à sua função essencial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sistema Digestório', 1, 1, 'Transformar alimentos em nutrientes absorvíveis'),
(@p, 'Sistema Respiratório', 1, 2, 'Absorver oxigênio do ar e eliminar gás carbônico'),
(@p, 'Sistema Urinário (Excretor)', 1, 3, 'Filtrar o sangue e eliminar excretas pela urina');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos pulmões, o oxigênio do ar passa dos alvéolos para o sangue, enquanto o gás carbônico faz o caminho inverso para ser expirado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três tipos principais de vasos sanguíneos do corpo humano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Artérias (levam sangue do coração para o corpo)', 1, 0),
(@p, 'Veias (trazem sangue de volta ao coração)', 1, 0),
(@p, 'Capilares sanguíneos (realizam trocas com os tecidos)', 1, 0),
(@p, 'Brônquios pulmonares', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual órgão muscular oco funciona como uma bomba dupla que impulsiona o sangue pelos vasos sanguíneos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Coração', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caminho do alimento desde a entrada até a absorção dos nutrientes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Boca (mastigação e saliva)', 1, 1),
(@p, 'Faringe e Esôfago', 1, 2),
(@p, 'Estômago (digestão ácida)', 1, 3),
(@p, 'Intestino Delgado (digestão final e absorção)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual componente do sangue é responsável pelo transporte de oxigênio graças à proteína hemoglobina?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hemácias (glóbulos vermelhos)', 1, 0),
(@p, 'Plaquetas', 0, 0),
(@p, 'Leucócitos (glóbulos brancos)', 0, 0),
(@p, 'Linfonodos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os leucócitos (glóbulos brancos) atuam na defesa do organismo contra vírus, bactérias e outros agentes invasores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 43.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sistemas Esquelético, Muscular e Nervoso', 2, 43);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são as principais funções do esqueleto humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sustentação do corpo, proteção de órgãos vitais, apoio para locomoção e produção de células sanguíneas.', 1, 0),
(@p, 'Digestão de gorduras e produção de insulina.', 0, 0),
(@p, 'Filtração da urina e bombeamento linfático.', 0, 0),
(@p, 'Troca gasosa direta com o ambiente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada estrutura esquelética ao órgão vital que ela protege:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Crânio', 1, 1, 'Encéfalo (cérebro, cerebelo e tronco encefálico)'),
(@p, 'Caixa torácica (costelas e esterno)', 1, 2, 'Coração e pulmões'),
(@p, 'Coluna vertebral', 1, 3, 'Medula espinhal');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os movimentos voluntários do corpo dependem da ação integrada entre o sistema nervoso, os músculos esqueléticos e os ossos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três tipos de tecido muscular presentes no corpo humano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Músculo estriado esquelético (contração voluntária)', 1, 0),
(@p, 'Músculo estriado cardíaco (coração, contração involuntária)', 1, 0),
(@p, 'Músculo liso ou não estriado (vísceras, contração involuntária)', 1, 0),
(@p, 'Músculo cartilaginoso rígido', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o osso mais longo e resistente do corpo humano, localizado na coxa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Fêmur', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caminho de uma resposta motora voluntária (ex.: chutar uma bola):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cérebro elabora o comando motor', 1, 1),
(@p, 'Impulso nervoso percorre a medula espinhal', 1, 2),
(@p, 'Nervos periféricos conduzem o sinal até a perna', 1, 3),
(@p, 'Músculos esqueléticos contraem e movem os ossos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se chamam os cordões fibrosos resistentes que ligam os músculos esqueléticos aos ossos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tendões', 1, 0),
(@p, 'Alvéolos', 0, 0),
(@p, 'Vilosidades', 0, 0),
(@p, 'Nefrónios', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um adulto humano possui aproximadamente 206 ossos articulados que formam o endoesqueleto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 43.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Integração dos Sistemas, Homeostase e Saúde', 3, 43);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa "homeostase" na fisiologia do corpo humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A capacidade do organismo manter seu meio interno estável (temperatura, pH, glicose e água) mesmo diante de variações externas.', 1, 0),
(@p, 'A paralisação completa de todos os órgãos durante o sono.', 0, 0),
(@p, 'O crescimento ilimitado dos ossos até os 80 anos.', 0, 0),
(@p, 'A digestão exclusiva de proteínas no intestino grosso.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada glândula endócrina ao hormônio que ela produz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Pâncreas', 1, 1, 'Insulina e glucagon (regulam a glicose no sangue)'),
(@p, 'Glândulas suprarrenais', 1, 2, 'Adrenalina (prepara o corpo para alertas e emergências)'),
(@p, 'Tireoide', 1, 3, 'Tiroxina (regula a velocidade do metabolismo celular)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As vacinas estimulam o sistema imunológico a produzir anticorpos e células de memória sem causar a doença, prevenindo infecções futuras.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique como diferentes sistemas trabalham juntos durante uma corrida intensa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sistema respiratório acelera a ventilação para captar mais O2 e eliminar CO2', 1, 0),
(@p, 'Sistema cardiovascular aumenta os batimentos cardíacos para irrigar os músculos', 1, 0),
(@p, 'Glândulas sudoríparas liberam suor para resfriar o corpo', 1, 0),
(@p, 'Sistema digestório interrompe o sangue nos músculos para digerir pedras', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quais órgãos pares do sistema urinário são responsáveis por filtrar o sangue e produzir a urina?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Rins', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o trajeto da urina desde a formação até a eliminação do corpo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Rins (filtração do sangue)', 1, 1),
(@p, 'Ureteres (condução até a pelve)', 1, 2),
(@p, 'Bexiga urinária (armazenamento)', 1, 3),
(@p, 'Uretra (eliminação para o meio externo)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal diferença entre vacina e soro terapêutico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A vacina previne doenças estimulando o corpo a produzir anticorpos; o soro contém anticorpos prontos para ação rápida (ex.: picada de cobra).', 1, 0),
(@p, 'A vacina é feita apenas de água; o soro é feito apenas de vitaminas.', 0, 0),
(@p, 'O soro dura a vida inteira; a vacina age em apenas 5 segundos.', 0, 0),
(@p, 'Não existe diferença médica entre vacina e soro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A energia utilizada pelas células musculares para contrair vem da respiração celular, que combina glicose (vinda da digestão) com oxigênio (vindo da respiração).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 44: Ecossistemas
-- -------------------------------------------------------------------------

-- Quiz 44.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Componentes dos Ecossistemas: Fatores Bióticos e Abióticos', 1, 44);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que constitui um ecossistema na natureza?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O conjunto formado pelos seres vivos (fatores bióticos) e pelos elementos físicos e químicos do ambiente (fatores abióticos) em interação.', 1, 0),
(@p, 'Apenas as pedras e a água de um rio sem nenhum ser vivo.', 0, 0),
(@p, 'Apenas animais domésticos criados em fazendas.', 0, 0),
(@p, 'Somente as nuvens da atmosfera.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada exemplo à sua categoria dentro de um ecossistema:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Árvores, peixes, fungos e bactérias', 1, 1, 'Fatores bióticos (seres vivos)'),
(@p, 'Luz solar, temperatura, água e solo', 1, 2, 'Fatores abióticos (não vivos)'),
(@p, 'Floresta Amazônica ou recife de corais', 1, 3, 'Ecossistema completo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O local específico onde uma espécie vive e encontra condições adequadas de abrigo e alimento é chamado de habitat.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de fatores ABIÓTICOS em uma lagoa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Temperatura da água', 1, 0),
(@p, 'Quantidade de luz solar que penetra na água', 1, 0),
(@p, 'Oxigênio dissolvido e sais minerais', 1, 0),
(@p, 'Peixes, sapos e plantas aquáticas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamado o conjunto de todos os ecossistemas do planeta Terra onde existe vida?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Biosfera', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os níveis ecológicos do menor para o maior:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Organismo (indivíduo)', 1, 1),
(@p, 'População (mesma espécie na mesma área)', 1, 2),
(@p, 'Comunidade (várias populações interagindo)', 1, 3),
(@p, 'Ecossistema e Biosfera', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia uma "população" de uma "comunidade biológica"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'População reúne indivíduos da mesma espécie; comunidade reúne todas as espécies diferentes que vivem juntas numa área.', 1, 0),
(@p, 'População refere-se apenas a plantas; comunidade apenas a insetos.', 0, 0),
(@p, 'Não há diferença entre os dois conceitos.', 0, 0),
(@p, 'Comunidade inclui apenas rochas e clima.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os ecossistemas podem ser naturais (como florestas e oceanos) ou artificiais/modificados pelo ser humano (como açudes e lavouras).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 44.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ecossistemas Terrestres e Aquáticos do Brasil', 2, 44);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual bioma brasileiro possui a maior floresta tropical úmida do mundo e a maior biodiversidade do planeta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Amazônia', 1, 0),
(@p, 'Caatinga', 0, 0),
(@p, 'Pampa', 0, 0),
(@p, 'Tundra', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada bioma ou ecossistema brasileiro às suas adaptações típicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Caatinga', 1, 1, 'Cactos com espinhos e plantas que perdem folhas na seca'),
(@p, 'Cerrado', 1, 2, 'Árvores de troncos retorcidos, casca grossa e raízes profundas'),
(@p, 'Manguezal', 1, 3, 'Solo lodoso salino e raízes aéreas respiratórias (pneumatóforos)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Caatinga é um bioma exclusivamente brasileiro, adaptado ao clima semiárido do Nordeste.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique biomas terrestres encontrados no território brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mata Atlântica e Amazônia', 1, 0),
(@p, 'Cerrado e Caatinga', 1, 0),
(@p, 'Pantanal e Pampa', 1, 0),
(@p, 'Taiga Boreal e Deserto Polar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual bioma brasileiro localizado no Centro-Oeste é considerado a maior planície inundável contínua do mundo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pantanal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as zonas de um ecossistema marinho da superfície para a profundidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Zona fótica superficial (iluminada pelo Sol, com fitoplâncton)', 1, 1),
(@p, 'Zona crepuscular (pouca luminosidade)', 1, 2),
(@p, 'Zona afótica abissal (escuridão total e alta pressão)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os manguezais são chamados de "berçários do mar"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque oferecem abrigo calmo e abundância de nutrientes para a reprodução e crescimento de filhotes de peixes, crustáceos e moluscos.', 1, 0),
(@p, 'Porque são cobertos de gelo durante todo o ano.', 0, 0),
(@p, 'Porque não existe nenhuma forma de vida em suas águas.', 0, 0),
(@p, 'Porque ficam no topo das montanhas mais altas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos oceanos, o fitoplâncton (algas microscópicas) é o principal responsável pela produção de oxigênio por meio da fotossíntese.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 44.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Relações entre os Seres Vivos nos Ecossistemas', 2, 44);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são relações ecológicas HARMÔNICAS?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Interações em que nenhum dos indivíduos envolvidos sofre prejuízo (pelo menos um se beneficia e o outro ganha ou fica neutro).', 1, 0),
(@p, 'Interações em que ambos os organismos morrem imediatamente.', 0, 0),
(@p, 'Apenas lutas territoriais entre predadores.', 0, 0),
(@p, 'Infecções causadas por parasitas mortais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada relação ecológica ao exemplo correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Polinização (abelha e flor)', 1, 1, 'Mutualismo (ambos se beneficiam)'),
(@p, 'Carrapato sugando sangue de um cão', 1, 2, 'Parasitismo (um se beneficia e outro é prejudicado)'),
(@p, 'Onça-pintada caçando uma capivara', 1, 3, 'Predatismo (predador e presa)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As colmeias de abelhas e os formigueiros são exemplos de sociedades, nas quais indivíduos da mesma espécie cooperam com divisão de tarefas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique relações ecológicas DESARMÔNICAS (onde há prejuízo para pelo menos um envolvido):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Competição por alimento ou território', 1, 0),
(@p, 'Parasitismo (ex.: piolhos e lombrigas)', 1, 0),
(@p, 'Predatismo', 1, 0),
(@p, 'Inquilinismo de bromélias sobre árvores sem prejudicá-las', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual relação ecológica harmônica ocorre quando uma espécie aproveita restos de alimento de outra sem prejudicá-la (ex.: peixe-rêmora e tubarão)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Comensalismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da polinização realizada por insetos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Abelha visita a flor atraída pelo néctar, cor e aroma', 1, 1),
(@p, 'Grãos de pólen aderem ao corpo do inseto', 1, 2),
(@p, 'Abelha visita outra flor da mesma espécie e transfere o pólen', 1, 3),
(@p, 'Ocorre a fecundação e a formação de frutos e sementes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Os líquens (crostas coloridas sobre troncos e pedras) são uma associação obrigatória e benéfica entre quais seres vivos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fungos e algas (ou cianobactérias)', 1, 0),
(@p, 'Insetos e anfíbios', 0, 0),
(@p, 'Peixes e aves marinhas', 0, 0),
(@p, 'Vírus e mamíferos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A camuflagem permite que um animal se confunda com o ambiente (como o bicho-pau), ajudando-o a escapar de predadores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 44.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Equilíbrio Ambiental, Desmatamento e Conservação', 3, 44);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a introdução de uma espécie exótica (invasora) em um ecossistema pode causar grave desequilíbrio ambiental?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque ela frequentemente não possui predadores naturais no novo local, reproduz-se em excesso e elimina espécies nativas.', 1, 0),
(@p, 'Porque espécies exóticas nunca conseguem respirar nem se alimentar.', 0, 0),
(@p, 'Porque ela transforma automaticamente água doce em petróleo.', 0, 0),
(@p, 'Porque aumenta imediatamente a chuva em desertos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada impacto ambiental à sua consequência ecológica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Desmatamento de matas ciliares', 1, 1, 'Erosão das margens e assoreamento dos rios'),
(@p, 'Queimadas florestais', 1, 2, 'Perda de biodiversidade, empobrecimento do solo e emissão de CO2'),
(@p, 'Caça predatória', 1, 3, 'Risco de extinção de espécies e desequilíbrio nas teias alimentares');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As matas ciliares funcionam como "cílios" protetores nas margens dos rios, segurando o solo com suas raízes e filtrando sedimentos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique ações efetivas para a conservação da biodiversidade e dos ecossistemas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Criação de Unidades de Conservação (Parques Nacionais e Reservas)', 1, 0),
(@p, 'Reflorestamento com espécies nativas e corredores ecológicos', 1, 0),
(@p, 'Combate ao tráfico de animais silvestres e ao desmatamento ilegal', 1, 0),
(@p, 'Lançamento de esgoto sem tratamento nos rios urbanos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as faixas de vegetação que ligam fragmentos florestais isolados, permitindo o deslocamento e a reprodução dos animais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Corredores ecológicos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a cadeia de impactos causada pelo desmatamento em encostas de morros:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Retirada da cobertura vegetal protetora', 1, 1),
(@p, 'Impacto direto das gotas de chuva sobre o solo exposto', 1, 2),
(@p, 'Erosão e deslizamento de terra para as partes baixas', 1, 3),
(@p, 'Assoreamento dos cursos d agua e enchentes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são "espécies endêmicas" de um ecossistema?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Espécies que ocorrem naturalmente apenas em uma região geográfica específica (como o mico-leão-dourado na Mata Atlântica).', 1, 0),
(@p, 'Espécies que vivem em todos os planetas do Sistema Solar.', 0, 0),
(@p, 'Espécies criadas exclusivamente em laboratórios.', 0, 0),
(@p, 'Espécies que não precisam de água para sobreviver.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A fragmentação de florestas isola populações animais e reduz a diversidade genética, aumentando o risco de extinção local.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 45: Cadeia Alimentar
-- -------------------------------------------------------------------------

-- Quiz 45.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Produtores, Consumidores e Decompositores', 1, 45);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais seres vivos ocupam sempre o início de toda cadeia alimentar terrestre ou aquática?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os produtores (plantas, algas e cianobactérias)', 1, 0),
(@p, 'Os grandes carnívoros de topo', 0, 0),
(@p, 'Os animais herbívoros', 0, 0),
(@p, 'Apenas os vírus', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo da cadeia alimentar ao seu papel:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Produtores', 1, 1, 'Fabricam seu próprio alimento usando energia solar (fotossíntese)'),
(@p, 'Consumidores', 1, 2, 'Obtêm energia alimentando-se de outros seres vivos'),
(@p, 'Decompositores', 1, 3, 'Decompõem restos orgânicos e devolvem sais minerais ao solo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os fungos e muitas bactérias atuam como decompositores, realizando a reciclagem natural da matéria nos ecossistemas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de organismos PRODUTORES:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Árvores e gramíneas (capim)', 1, 0),
(@p, 'Algas marinhas e fitoplâncton', 1, 0),
(@p, 'Musgos e samambaias', 1, 0),
(@p, 'Cogumelos e onças-pintadas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamados os animais consumidores primários que se alimentam exclusivamente de plantas e algas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Herbívoros', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene esta cadeia alimentar simples do produtor até o consumidor final:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Milho (produtor)', 1, 1),
(@p, 'Rato (consumidor primário)', 1, 2),
(@p, 'Cobra (consumidor secundário)', 1, 3),
(@p, 'Coruja (consumidor terciário)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na representação gráfica de uma cadeia alimentar (ex.: Capim -> Coelho -> Raposa), o que indicam as setas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O sentido da transferência de matéria e energia (quem serve de alimento para quem).', 1, 0),
(@p, 'O caminho geográfico para o norte magnético.', 0, 0),
(@p, 'Que o capim caça o coelho.', 0, 0),
(@p, 'A velocidade do vento na floresta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Animais onívoros (como o ser humano, o porco e o lobo-guará) alimentam-se tanto de vegetais quanto de outros animais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 45.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Níveis Tróficos e Teias Alimentares', 2, 45);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na cadeia "Algas -> Camarão -> Peixe pequeno -> Tubarão", qual nível trófico é ocupado pelo peixe pequeno?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Consumidor secundário (3º nível trófico)', 1, 0),
(@p, 'Produtor (1º nível trófico)', 0, 0),
(@p, 'Consumidor primário (2º nível trófico)', 0, 0),
(@p, 'Decompositor', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada termo ecológico ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cadeia alimentar', 1, 1, 'Sequência linear única de transferência de alimento'),
(@p, 'Teia alimentar', 1, 2, 'Conjunto de várias cadeias alimentares interligadas num ecossistema'),
(@p, 'Nível trófico', 1, 3, 'Posição nutricional ocupada por um grupo de organismos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em uma teia alimentar, um mesmo animal pode atuar como consumidor primário ao comer frutas e como consumidor secundário ao comer um inseto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre os decompositores nas teias alimentares:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Atuam sobre cadáveres e detritos de todos os níveis tróficos', 1, 0),
(@p, 'Transformam matéria orgânica complexa em sais minerais simples', 1, 0),
(@p, 'Fertilizam naturalmente o solo para os produtores', 1, 0),
(@p, 'Realizam fotossíntese no fundo escuro das cavernas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o conjunto entrelaçado de diversas cadeias alimentares que ocorrem simultaneamente em um ecossistema?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Teia alimentar', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os níveis tróficos de uma cadeia alimentar aquática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fitoplâncton (1º nível trófico - Produtor)', 1, 1),
(@p, 'Zooplâncton (2º nível trófico - Consumidor primário)', 1, 2),
(@p, 'Sardinha (3º nível trófico - Consumidor secundário)', 1, 3),
(@p, 'Atum (4º nível trófico - Consumidor terciário)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que teias alimentares com grande diversidade de espécies são mais resistentes a perturbações do que cadeias simples?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque se uma fonte de alimento diminuir, os consumidores têm opções alternativas para sobreviver.', 1, 0),
(@p, 'Porque animais de teias complexas não precisam comer nunca.', 0, 0),
(@p, 'Porque eliminam a necessidade de luz solar.', 0, 0),
(@p, 'Porque os produtores deixam de existir.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Organismos autótrofos sintetizam substâncias orgânicas a partir de água e gás carbônico, enquanto heterótrofos precisam ingerir alimento pronto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 45.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fluxo de Energia e Ciclo da Matéria na Natureza', 2, 45);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que acontece com a quantidade de energia disponível à medida que avançamos dos produtores para os consumidores de topo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A energia disponível diminui a cada nível trófico, pois grande parte é usada nas atividades vitais e dissipada como calor.', 1, 0),
(@p, 'A energia multiplica-se por dez a cada animal que come o outro.', 0, 0),
(@p, 'A energia permanece exatamente igual em todos os níveis.', 0, 0),
(@p, 'A energia volta dos predadores diretamente para o Sol.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o comportamento da energia e da matéria nos ecossistemas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fluxo de energia', 1, 1, 'Unidirecional e decrescente (entra pelo Sol e dissipa como calor)'),
(@p, 'Ciclo da matéria', 1, 2, 'Cíclico e reaproveitado continuamente pelos decompositores'),
(@p, 'Fotossíntese', 1, 3, 'Converte energia luminosa do Sol em energia química nos alimentos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Por causa da perda de energia ao longo dos níveis tróficos, as cadeias alimentares naturais raramente possuem mais de 4 ou 5 níveis.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique como os seres vivos gastam a energia obtida nos alimentos antes de passá-la ao próximo nível trófico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Respiração celular e manutenção da temperatura corporal', 1, 0),
(@p, 'Locomoção, caça e fuga', 1, 0),
(@p, 'Crescimento e eliminação de fezes/excretas', 1, 0),
(@p, 'Criação de novas estrelas no espaço', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a principal fonte externa de energia que abastece quase todas as cadeias alimentares da Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sol', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caminho da energia desde o espaço até um consumidor secundário:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Radiação luminosa emitida pelo Sol', 1, 1),
(@p, 'Captação pela clorofila das plantas na fotossíntese', 1, 2),
(@p, 'Ingestão dos vegetais por um herbívoro (consumidor primário)', 1, 3),
(@p, 'Predação do herbívoro por um carnívoro (consumidor secundário)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a matéria (átomos de carbono, nitrogênio e minerais) não se esgota na natureza mesmo após milhões de anos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque os decompositores reciclam a matéria orgânica morta, devolvendo nutrientes ao solo, água e ar.', 1, 0),
(@p, 'Porque chuvas de pedra trazem novos animais prontos todos os dias.', 0, 0),
(@p, 'Porque nenhum ser vivo morre na natureza.', 0, 0),
(@p, 'Porque os animais não eliminam resíduos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Apenas cerca de 10% da energia armazenada em um nível trófico é transferida efetivamente para o nível trófico seguinte.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 45.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Desequilíbrios nas Cadeias Alimentares e Bioacumulação', 3, 45);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na cadeia "Plantas -> Gafanhotos -> Sapos -> Cobras", o que tende a acontecer imediatamente se a população de sapos for eliminada por poluição?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A população de gafanhotos aumenta descontroladamente (praga) e a população de cobras diminui por falta de alimento.', 1, 0),
(@p, 'As plantas crescem o dobro e os gafanhotos desaparecem.', 0, 0),
(@p, 'As cobras passam a comer exclusivamente capim.', 0, 0),
(@p, 'Nada muda no ecossistema.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ecológico de impacto nas cadeias à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Bioacumulação / Magnificação trófica', 1, 1, 'Concentração crescente de toxinas (como mercúrio) nos predadores de topo'),
(@p, 'Controle biológico', 1, 2, 'Uso de predadores ou parasitas naturais para controlar pragas agrícolas'),
(@p, 'Extinção em cascata', 1, 3, 'Desaparecimento de várias espécies após a perda de uma espécie-chave');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Substâncias tóxicas não biodegradáveis (como mercúrio de garimpos ou certos agrotóxicos) acumulam-se em maior concentração nos consumidores de topo, como águias, grandes peixes e humanos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique vantagens do controle biológico de pragas em comparação ao uso excessivo de agrotóxicos químicos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Não contamina o solo nem os lençóis freáticos com venenos', 1, 0),
(@p, 'Evita a morte de insetos polinizadores benéficos, como as abelhas', 1, 0),
(@p, 'Impede a bioacumulação de toxinas nos alimentos humanos', 1, 0),
(@p, 'Elimina todas as plantas da lavoura junto com a praga', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual metal pesado altamente tóxico usado no garimpo ilegal de ouro sofre magnificação trófica nos peixes da Amazônia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Mercúrio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de magnificação trófica do mercúrio em um rio contaminado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mercúrio despejado na água é absorvido por algas e microrganismos', 1, 1),
(@p, 'Peixes pequenos comem milhares de algas e acumulam o metal no corpo', 1, 2),
(@p, 'Peixes predadores grandes comem vários peixes pequenos', 1, 3),
(@p, 'Predadores de topo e humanos atingem concentrações tóxicas elevadas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um exemplo clássico de controle biológico bem-sucedido na agricultura é o uso de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Joaninhas para devorar pulgões que atacam plantações.', 1, 0),
(@p, 'Óleo diesel jogado diretamente sobre as raízes.', 0, 0),
(@p, 'Queima total da vegetação ao redor dos rios.', 0, 0),
(@p, 'Plástico triturado misturado ao adubo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Predadores de topo (como onças, lobos e gaviões) são fundamentais para manter o equilíbrio das cadeias alimentares ao controlar as populações de herbívoros.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 46: Estados da Matéria
-- -------------------------------------------------------------------------

-- Quiz 46.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Estados Físicos: Sólido, Líquido e Gasoso', 1, 46);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os três estados físicos fundamentais da matéria encontrados no dia a dia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sólido, líquido e gasoso', 1, 0),
(@p, 'Quente, morno e frio', 0, 0),
(@p, 'Pesado, leve e transparente', 0, 0),
(@p, 'Doce, salgado e azedo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada estado físico da matéria às suas características de forma e volume:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estado Sólido', 1, 1, 'Possui forma própria e volume definido (ex.: pedra, gelo)'),
(@p, 'Estado Líquido', 1, 2, 'Tem volume definido, mas assume a forma do recipiente (ex.: suco)'),
(@p, 'Estado Gasoso', 1, 3, 'Não tem forma nem volume fixos, ocupando todo o recipiente (ex.: ar)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O ar atmosférico ao nosso redor é matéria no estado gasoso, pois possui massa e ocupa lugar no espaço.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de materiais que se encontram no estado SÓLIDO à temperatura ambiente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ferro e madeira', 1, 0),
(@p, 'Sal de cozinha e açúcar', 1, 0),
(@p, 'Vidro e plástico', 1, 0),
(@p, 'Oxigênio atmosférico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como chamamos tudo aquilo que possui massa e ocupa lugar no espaço?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Matéria', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os estados físicos da matéria do mais organizado (partículas muito próximas) para o mais agitado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estado Sólido', 1, 1),
(@p, 'Estado Líquido', 1, 2),
(@p, 'Estado Gasoso', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando despejamos 500 mL de água de uma garrafa cilíndrica para uma jarra quadrada, o que acontece com a água?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ela muda de forma para se adaptar à jarra, mas seu volume continua sendo 500 mL.', 1, 0),
(@p, 'Ela passa a ocupar 5.000 litros.', 0, 0),
(@p, 'Ela mantém o formato rígido da garrafa original.', 0, 0),
(@p, 'Ela desaparece instantaneamente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os gases são facilmente compressíveis porque há grandes espaços vazios entre suas partículas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 46.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Mudanças de Estado Físico e Temperatura', 2, 46);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se chama a passagem do estado sólido para o estado líquido (como um cubo de gelo derretendo)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fusão', 1, 0),
(@p, 'Solidificação', 0, 0),
(@p, 'Condensação', 0, 0),
(@p, 'Sublimação inversa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada mudança de estado físico à transformação correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Vaporização (ebulição / evaporação)', 1, 1, 'Passagem do estado líquido para o gasoso'),
(@p, 'Condensação (liquefação)', 1, 2, 'Passagem do estado gasoso para o líquido'),
(@p, 'Solidificação', 1, 3, 'Passagem do estado líquido para o sólido');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As gotículas de água que aparecem do lado de fora de um copo bem gelado formam-se pela condensação do vapor de água presente no ar.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique processos que ocorrem com ABSORÇÃO de calor (aquecimento):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fusão (sólido para líquido)', 1, 0),
(@p, 'Vaporização (líquido para gasoso)', 1, 0),
(@p, 'Sublimação (sólido direto para gasoso)', 1, 0),
(@p, 'Solidificação (líquido para sólido)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o nome da passagem direta do estado sólido para o estado gasoso, sem passar pelo líquido (como ocorre com o gelo-seco e a naftalina)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sublimação', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as transformações da água ao ser aquecida continuamente desde -10 °C até +110 °C:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Gelo sólido aquecendo até 0 °C', 1, 1),
(@p, 'Fusão (gelo derretendo em água líquida)', 1, 2),
(@p, 'Água líquida aquecendo até 100 °C', 1, 3),
(@p, 'Ebulição (água líquida virando vapor)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "evaporação" e "ebulição"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A evaporação é lenta e ocorre apenas na superfície do líquido (ex.: roupa secando no varal); a ebulição é rápida e turbulenta com bolhas.', 1, 0),
(@p, 'A evaporação só ocorre no gelo; a ebulição só ocorre em metais.', 0, 0),
(@p, 'A evaporação resfria o líquido até congelar; a ebulição cria sólidos.', 0, 0),
(@p, 'São exatamente o mesmo fenômeno sem diferença alguma.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A solidificação e a condensação são mudanças de estado que ocorrem quando a substância perde calor (resfriamento).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 46.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propriedades Gerais e Específicas da Matéria', 2, 46);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que um bloco de isopor flutua na água enquanto uma pedra de mesmo tamanho afunda?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a densidade do isopor é menor que a da água, enquanto a densidade da pedra é maior.', 1, 0),
(@p, 'Porque o isopor não possui massa nenhuma.', 0, 0),
(@p, 'Porque a água repele apenas objetos brancos.', 0, 0),
(@p, 'Porque a pedra dissolve instantaneamente na água.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada propriedade da matéria à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Massa', 1, 1, 'Quantidade de matéria de um corpo (medida em kg ou g)'),
(@p, 'Volume', 1, 2, 'Espaço ocupado por um corpo (medido em L, mL ou cm³)'),
(@p, 'Densidade', 1, 3, 'Relação entre a massa de um material e o volume que ele ocupa');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A impenetrabilidade é a propriedade geral da matéria segundo a qual dois corpos não podem ocupar o mesmo lugar no espaço ao mesmo tempo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique propriedades GERAIS (comuns a qualquer tipo de matéria):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Massa e Extensão (volume)', 1, 0),
(@p, 'Inércia e Impenetrabilidade', 1, 0),
(@p, 'Divisibilidade e Compressibilidade', 1, 0),
(@p, 'Magnetismo exclusivo do ferro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual propriedade física específica indica a capacidade de um material riscar outro (sendo o diamante o mineral natural mais elevado nessa escala)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Dureza', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene estas substâncias da menos densa (fica no topo) para a mais densa (fica no fundo) em um copo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cortiça (densidade ~0,25 g/cm³)', 1, 1),
(@p, 'Óleo de cozinha (densidade ~0,90 g/cm³)', 1, 2),
(@p, 'Água líquida pura (densidade 1,00 g/cm³)', 1, 3),
(@p, 'Moeda de ferro (densidade ~7,80 g/cm³)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são propriedades ORGANOLÉPTICAS da matéria?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Características percebidas pelos nossos órgãos dos sentidos, como cor, brilho, odor, sabor e textura.', 1, 0),
(@p, 'Apenas a temperatura de ebulição medida com termômetro.', 0, 0),
(@p, 'Propriedades que só existem em estrelas distantes.', 0, 0),
(@p, 'A resistência elétrica de fios de cobre.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um quilograma de chumbo e um quilograma de algodão têm exatamente a mesma massa (1 kg), mas o algodão ocupa um volume muito maior por ser menos denso.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 46.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Agitação das Partículas, Pontos de Fusão e Ebulição', 3, 46);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que acontece com a temperatura de uma substância pura (como a água destilada) durante todo o tempo em que ela está fervendo em ebulição?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A temperatura permanece constante (100 °C ao nível do mar) até que todo o líquido vire vapor.', 1, 0),
(@p, 'A temperatura sobe para 1.000 °C em dois segundos.', 0, 0),
(@p, 'A temperatura cai rapidamente até 0 °C.', 0, 0),
(@p, 'A temperatura oscila aleatoriamente entre -50 °C e +50 °C.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a organização microscópica das partículas ao respectivo estado físico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Partículas fortemente unidas vibrando em posições fixas', 1, 1, 'Estado Sólido'),
(@p, 'Partículas próximas que deslizam umas sobre as outras', 1, 2, 'Estado Líquido'),
(@p, 'Partículas muito afastadas movendo-se em alta velocidade e desordem', 1, 3, 'Estado Gasoso');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao nível do mar (pressão de 1 atm), a água pura possui ponto de fusão a 0 °C e ponto de ebulição a 100 °C.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fenômenos explicados pela dilatação térmica (aumento de volume com o aquecimento):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Subida da coluna líquida dentro de um termômetro', 1, 0),
(@p, 'Espaços (juntas de dilatação) deixados entre trilhos de trem e pontes', 1, 0),
(@p, 'Fios elétricos dos postes ficarem mais frouxos em dias muito quentes', 1, 0),
(@p, 'Congelamento imediato dos oceanos no verão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome se dá ao quarto estado físico da matéria, formado por um gás altamente ionizado e condutor de eletricidade (presente no Sol e nos raios)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Plasma', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o que acontece com as partículas de um metal quando ele é aquecido:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Absorção de energia térmica (calor)', 1, 1),
(@p, 'Aumento da agitação térmica das partículas', 1, 2),
(@p, 'Aumento da distância média entre as partículas', 1, 3),
(@p, 'Expansão do volume do material (dilatação térmica)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a água ferve a uma temperatura menor que 100 °C no topo de uma montanha muito alta (como o Monte Everest)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque em grandes altitudes a pressão atmosférica é menor, facilitando o escape das moléculas de vapor.', 1, 0),
(@p, 'Porque no alto das montanhas o fogo é mais quente.', 0, 0),
(@p, 'Porque a água da montanha não contém hidrogênio.', 0, 0),
(@p, 'Porque a gravidade é dez vezes maior no topo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A temperatura de um corpo é uma medida direta do grau médio de agitação térmica de suas partículas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 47: Energia
-- -------------------------------------------------------------------------

-- Quiz 47.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O que é Energia e suas Principais Formas', 1, 47);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Ciências da Natureza, como podemos definir "energia" de forma simples?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A capacidade de realizar trabalho, produzir movimento, gerar calor ou provocar transformações na matéria.', 1, 0),
(@p, 'Apenas os fios de cobre dentro das paredes.', 0, 0),
(@p, 'Um tipo de rocha magnética rara.', 0, 0),
(@p, 'Somente a água parada em um copo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de energia ao seu exemplo no cotidiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Energia Térmica', 1, 1, 'Calor emitido pelo fogo ou por um aquecedor'),
(@p, 'Energia Luminosa', 1, 2, 'Luz emitida pelo Sol ou por uma lâmpada acesa'),
(@p, 'Energia Sonora', 1, 3, 'Som produzido por um violão ou pela voz humana');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os alimentos que ingerimos armazenam energia química, que nosso corpo utiliza para se movimentar, pensar e manter-se aquecido.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique formas de energia presentes em nosso dia a dia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia elétrica e energia térmica', 1, 0),
(@p, 'Energia cinética (do movimento)', 1, 0),
(@p, 'Energia química (pilhas, combustíveis e alimentos)', 1, 0),
(@p, 'Energia invisível inexistente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual forma de energia está associada diretamente ao movimento dos corpos (como um carro correndo ou o vento soprando)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Energia cinética', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o percurso da energia elétrica até ligar um aparelho doméstico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Geração de eletricidade na usina', 1, 1),
(@p, 'Transmissão pelas torres e linhas de alta tensão', 1, 2),
(@p, 'Distribuição pelos postes da rua até a residência', 1, 3),
(@p, 'Consumo pelo eletrodoméstico conectado à tomada', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Que tipo de energia fica armazenada em uma pilha comum ou na bateria de um celular?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia química', 1, 0),
(@p, 'Energia eólica', 0, 0),
(@p, 'Energia nuclear de estrelas', 0, 0),
(@p, 'Energia maremotriz', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um objeto erguido a certa altura do chão possui energia potencial gravitacional, que se transforma em movimento se ele cair.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 47.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fontes de Energia Renováveis e Não Renováveis', 2, 47);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza uma fonte de energia RENOVÁVEL?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É aquela que se regenera naturalmente em curto prazo na natureza, não se esgotando com o uso humano (como Sol e vento).', 1, 0),
(@p, 'É aquela que leva milhões de anos para se formar e acaba rapidamente.', 0, 0),
(@p, 'É feita exclusivamente de carvão mineral e petróleo.', 0, 0),
(@p, 'Só pode ser usada uma única vez na história.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fonte de energia ao recurso natural que ela utiliza:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Energia Eólica', 1, 1, 'Força dos ventos movimentando aerogeradores'),
(@p, 'Energia Hidrelétrica', 1, 2, 'Força da queda d agua dos rios em turbinas'),
(@p, 'Energia Solar Fotovoltaica', 1, 3, 'Radiação luminosa do Sol captada por painéis');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O petróleo, o carvão mineral e o gás natural são combustíveis fósseis, classificados como fontes de energia não renováveis.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fontes de energia RENOVÁVEIS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia solar e energia eólica', 1, 0),
(@p, 'Energia hidrelétrica', 1, 0),
(@p, 'Biomassa (lenha reflorestada, bagaço de cana e etanol)', 1, 0),
(@p, 'Carvão mineral e gasolina', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual biocombustível líquido renovável é amplamente produzido no Brasil a partir da cana-de-açúcar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Etanol', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o funcionamento de uma usina hidrelétrica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Represamento da água do rio em um reservatório elevado', 1, 1),
(@p, 'Descida da água pelos dutos sob alta pressão', 1, 2),
(@p, 'Giro das pás das turbinas hidráulicas', 1, 3),
(@p, 'Conversão do movimento em eletricidade pelo gerador', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os combustíveis fósseis (petróleo, carvão e gás natural) são chamados de "fósseis"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque se formaram há milhões de anos a partir do soterramento e transformação de restos de seres vivos antigos.', 1, 0),
(@p, 'Porque são fabricados hoje em fábricas de plástico.', 0, 0),
(@p, 'Porque caem do espaço dentro de meteoritos.', 0, 0),
(@p, 'Porque são feitos de água congelada.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A energia geotérmica aproveita o calor proveniente do interior da Terra para gerar eletricidade e aquecimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 47.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Transformações de Energia no Cotidiano', 2, 47);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que afirma o Princípio da Conservação da Energia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A energia não pode ser criada do nada nem destruída; ela apenas se transforma de uma modalidade em outra.', 1, 0),
(@p, 'A energia desaparece completamente sempre que desligamos a luz.', 0, 0),
(@p, 'É possível criar energia infinita sem nenhuma fonte.', 0, 0),
(@p, 'A energia elétrica só se transforma em gelo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada aparelho doméstico à transformação principal de energia que ele realiza:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Chuveiro elétrico e ferro de passar', 1, 1, 'Energia elétrica -> Energia térmica (calor)'),
(@p, 'Ventilador e liquidificador', 1, 2, 'Energia elétrica -> Energia cinética (movimento)'),
(@p, 'Lâmpada LED', 1, 3, 'Energia elétrica -> Energia luminosa');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante a fotossíntese, as plantas transformam energia luminosa do Sol em energia química armazenada na glicose.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique transformações de energia que ocorrem em um automóvel em movimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia química do combustível -> Energia térmica e cinética no motor', 1, 0),
(@p, 'Energia elétrica da bateria -> Energia luminosa nos faróis', 1, 0),
(@p, 'Energia elétrica -> Energia sonora na buzina e no rádio', 1, 0),
(@p, 'Energia sonora -> Petróleo bruto no tanque', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o efeito físico pelo qual a passagem de corrente elétrica por um fio resistente gera calor (como no chuveiro elétrico)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Efeito Joule', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a cadeia de transformações de energia para acender uma lanterna a pilha:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia química armazenada no interior da pilha', 1, 1),
(@p, 'Energia elétrica circulando pelos fios ao ligar o botão', 1, 2),
(@p, 'Energia luminosa emitida pelo LED da lanterna', 1, 3),
(@p, 'Pequena parcela dissipada como energia térmica', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que uma lâmpada incandescente antiga esquentava muito e gastava mais eletricidade que uma lâmpada LED moderna?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a incandescente desperdiçava cerca de 90% da energia elétrica em forma de calor, enquanto o LED converte quase tudo em luz.', 1, 0),
(@p, 'Porque o LED funciona movido a carvão vegetal.', 0, 0),
(@p, 'Porque a incandescente não usava energia elétrica.', 0, 0),
(@p, 'Porque o calor torna a luz mais barata.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em quase todas as transformações de energia, uma parte dela é dissipada para o ambiente na forma de calor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 47.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Matriz Energética Brasileira, Eficiência e Impactos Ambientais', 3, 47);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal fonte responsável pela maior parte da geração de energia elétrica no Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Energia hidrelétrica (aproveitamento dos grandes rios)', 1, 0),
(@p, 'Energia nuclear de urânio', 0, 0),
(@p, 'Carvão mineral importado', 0, 0),
(@p, 'Energia geotérmica vulcânica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fonte energética ao seu principal desafio ou impacto ambiental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Usinas Termelétricas fósseis', 1, 1, 'Emissão de gases de efeito estufa e poluentes atmosféricos'),
(@p, 'Grandes Usinas Hidrelétricas', 1, 2, 'Alagamento de florestas, perda de habitats e deslocamento de populações'),
(@p, 'Usinas Nucleares', 1, 3, 'Necessidade de armazenamento seguro de lixo radioativo por séculos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A matriz elétrica brasileira é considerada uma das mais limpas e renováveis do mundo por combinar hidrelétricas com crescente participação eólica, solar e de biomassa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique atitudes de eficiência energética e consumo consciente de eletricidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Escolher eletrodomésticos com selo PROCEL de classificação A', 1, 0),
(@p, 'Aproveitar a iluminação natural e substituir lâmpadas antigas por LED', 1, 0),
(@p, 'Reduzir o tempo no banho quente e evitar abrir a geladeira sem necessidade', 1, 0),
(@p, 'Deixar aparelhos ligados em salas vazias o dia inteiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual região brasileira destaca-se nacionalmente pela maior produção de energia eólica devido aos ventos constantes e direcionados?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Nordeste', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de geração de energia em uma usina termelétrica a biomassa ou gás:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Queima do combustível na caldeira liberando calor', 1, 1),
(@p, 'Aquecimento da água até virar vapor sob alta pressão', 1, 2),
(@p, 'Jato de vapor movimenta as pás da turbina', 1, 3),
(@p, 'Gerador acoplado à turbina produz energia elétrica', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que durante períodos de seca prolongada no Brasil a conta de energia elétrica costuma ficar mais cara (bandeira vermelha)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o nível dos reservatórios das hidrelétricas baixa e torna-se necessário acionar usinas termelétricas, que têm custo maior.', 1, 0),
(@p, 'Porque os fios elétricos encolhem no calor.', 0, 0),
(@p, 'Porque o Sol para de brilhar durante a seca.', 0, 0),
(@p, 'Porque o vento desaparece de todos os oceanos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A energia solar e a eólica são fontes intermitentes (dependem do Sol e do vento), por isso se complementam muito bem com as hidrelétricas no sistema elétrico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 48: Água
-- -------------------------------------------------------------------------

-- Quiz 48.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Distribuição da Água no Planeta e Estados Naturais', 1, 48);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Aproximadamente qual porcentagem da superfície do planeta Terra é coberta por água?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cerca de 70% (aproximadamente 3/4 da superfície)', 1, 0),
(@p, 'Apenas 5%', 0, 0),
(@p, 'Exatamente 10%', 0, 0),
(@p, '100% sem nenhum continente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada reservatório natural da Terra ao estado físico predominante da água nele:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Oceanos, mares, rios e lagos', 1, 1, 'Estado líquido'),
(@p, 'Geleiras polares e neve nas montanhas', 1, 2, 'Estado sólido'),
(@p, 'Umidade do ar invisível na atmosfera', 1, 3, 'Estado gasoso (vapor de água)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maior parte de toda a água existente na Terra (cerca de 97,5%) é água salgada encontrada nos oceanos e mares.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique onde encontramos ÁGUA DOCE no planeta Terra:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calotas polares e geleiras', 1, 0),
(@p, 'Aquíferos subterrâneos (lençóis freáticos)', 1, 0),
(@p, 'Rios, riachos e lagos de água doce', 1, 0),
(@p, 'Oceanos Atlântico e Pacífico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a fórmula química da molécula de água, formada por dois átomos de hidrogênio e um de oxigênio?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'H2O', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os reservatórios de água da Terra do maior volume para o menor volume:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Oceanos e mares salgados (~97,5%)', 1, 1),
(@p, 'Geleiras e calotas polares (~1,7%)', 1, 2),
(@p, 'Águas subterrâneas (~0,7%)', 1, 3),
(@p, 'Rios e lagos superficiais (< 0,1%)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que, mesmo havendo tanta água no planeta, precisamos economizar água doce limpa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque menos de 1% de toda a água da Terra está disponível em estado líquido nos rios, lagos e aquíferos para consumo.', 1, 0),
(@p, 'Porque a água do oceano pode ser bebida diretamente sem tratamento.', 0, 0),
(@p, 'Porque a água doce vira ouro quando chove.', 0, 0),
(@p, 'Porque não existe ciclo da água na natureza.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Cerca de 60% a 70% da massa do corpo humano adulto é composta por água, essencial para todas as reações vitais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 48.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O Ciclo Hidrológico (Ciclo da Água)', 2, 48);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual fenômeno do ciclo da água ocorre quando o calor do Sol aquece mares, rios e lagos, transformando água líquida em vapor?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Evaporação', 1, 0),
(@p, 'Precipitação', 0, 0),
(@p, 'Infiltração', 0, 0),
(@p, 'Solidificação', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada etapa do ciclo hidrológico à sua descrição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Condensação', 1, 1, 'Resfriamento do vapor d agua nas alturas formando as nuvens'),
(@p, 'Precipitação', 1, 2, 'Queda da água das nuvens em forma de chuva, neve ou granizo'),
(@p, 'Infiltração', 1, 3, 'Penetração da água da chuva no solo abastecendo lençóis freáticos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As florestas participam ativamente do ciclo da água por meio da transpiração das plantas (evapotranspiração), devolvendo umidade à atmosfera.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique formas de PRECIPITAÇÃO atmosférica no ciclo da água:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Chuva (gotas líquidas)', 1, 0),
(@p, 'Neve (cristais de gelo)', 1, 0),
(@p, 'Granizo (pedras de gelo formadas em nuvens de tempestade)', 1, 0),
(@p, 'Evaporação dos oceanos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamados os grandes reservatórios subterrâneos de água doce armazenados entre rochas permeáveis (como o Aquífero Guarani)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Aquíferos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene sequencialmente as etapas básicas do ciclo da água:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Evaporação das águas superficiais e transpiração das plantas', 1, 1),
(@p, 'Subida e resfriamento do vapor formando nuvens (Condensação)', 1, 2),
(@p, 'Queda de chuva sobre continentes e oceanos (Precipitação)', 1, 3),
(@p, 'Infiltração no solo e escoamento superficial de volta aos rios e mares', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são os "rios voadores" que influenciam o regime de chuvas no Centro-Oeste, Sudeste e Sul do Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Correntes aéreas invisíveis carregadas de vapor de água liberado pela transpiração das árvores da Floresta Amazônica.', 1, 0),
(@p, 'Canos gigantes construídos acima das nuvens.', 0, 0),
(@p, 'Aviões que jogam água salgada nas cidades.', 0, 0),
(@p, 'Rios subterrâneos que correm abaixo do oceano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A impermeabilização do solo urbano com excesso de asfalto e concreto dificulta a infiltração da água da chuva e aumenta o risco de enchentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 48.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propriedades da Água, Potabilidade e Tratamento', 2, 48);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais características definem a "água potável" própria para o consumo humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Água limpa, incolor, inodora, insípida e livre de microrganismos causadores de doenças e substâncias tóxicas.', 1, 0),
(@p, 'Água barrenta retirada diretamente de valas abertas.', 0, 0),
(@p, 'Água do mar com alta concentração de sal.', 0, 0),
(@p, 'Água verde cheia de algas e esgoto.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada etapa de uma Estação de Tratamento de Água (ETA) à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Floculação e Decantação', 1, 1, 'Aglutinar sujeiras em flocos pesados que afundam no tanque'),
(@p, 'Filtração', 1, 2, 'Passar a água por camadas de areia, cascalho e carvão ativado'),
(@p, 'Cloração', 1, 3, 'Adicionar cloro para eliminar bactérias e vírus causadores de doenças');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A água é chamada de "solvente universal" porque consegue dissolver uma enorme variedade de substâncias sólidas, líquidas e gasosas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas caseiras seguras para tornar a água própria para beber caso não haja água tratada disponível:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Filtrar e ferver a água por pelo menos 5 minutos', 1, 0),
(@p, 'Usar hipoclorito de sódio (2 gotas por litro) e aguardar 30 minutos', 1, 0),
(@p, 'Utilizar filtros domésticos certificados com vela de carvão', 1, 0),
(@p, 'Apenas colocar gelo feito de água contaminada', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual substância química é adicionada na etapa final do tratamento de água pública no Brasil para ajudar a prevenir cáries dentárias na população?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Flúor', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas principais de uma Estação de Tratamento de Água (ETA):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Captação no rio ou represa', 1, 1),
(@p, 'Coagulação e Floculação', 1, 2),
(@p, 'Decantação e Filtração', 1, 3),
(@p, 'Desinfecção (Cloração) e Fluoretação', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o gelo flutua na superfície de um copo com água líquida ou de um lago congelado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque ao congelar, a água se expande e o gelo torna-se menos denso que a água líquida, isolando a água abaixo e protegendo a vida aquática.', 1, 0),
(@p, 'Porque o gelo é feito de ar comprimido sem água.', 0, 0),
(@p, 'Porque o gelo é mais pesado que o ferro.', 0, 0),
(@p, 'Porque a água líquida empurra apenas objetos quadrados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nem toda água cristalina e transparente é necessariamente potável, pois microrganismos e produtos químicos dissolvidos podem ser invisíveis a olho nu.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 48.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Poluição Hídrica, Saneamento Básico e Uso Sustentável', 3, 48);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal causa da mortandade de peixes quando esgoto doméstico não tratado é despejado em grande quantidade em um rio ou lago?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A proliferação de bactérias decompositoras que consomem o oxigênio dissolvido na água, causando asfixia dos peixes (eutrofização).', 1, 0),
(@p, 'O congelamento imediato da água causado pelo sabão.', 0, 0),
(@p, 'O aumento excessivo de oxigênio puro no fundo do rio.', 0, 0),
(@p, 'A evaporação instantânea de todo o rio em minutos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada doença de veiculação hídrica ao seu agente ou forma de transmissão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cólera e Febre Tifoide', 1, 1, 'Ingestão de água ou alimentos contaminados por bactérias fecais'),
(@p, 'Leptospirose', 1, 2, 'Contato da pele com água de enchentes contaminada por urina de ratos'),
(@p, 'Esquistossomose', 1, 3, 'Banho em lagoas com caramujos hospedeiros do verme Schistosoma');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O saneamento básico completo inclui abastecimento de água tratada, coleta e tratamento de esgoto, manejo de resíduos sólidos e drenagem pluvial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique práticas sustentáveis que ajudam a preservar os recursos hídricos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Não descartar óleo de cozinha usado nem lixo plástico nos ralos e rios', 1, 0),
(@p, 'Preservar as nascentes e as matas ciliares ao redor dos cursos d agua', 1, 0),
(@p, 'Reaproveitar água da chuva ou da máquina de lavar para limpeza externa', 1, 0),
(@p, 'Lavar calçadas diariamente usando mangueira aberta por horas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual instalação urbana recebe o esgoto das residências para remover poluentes e matéria orgânica antes de devolver a água tratada aos rios?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Estação de Tratamento de Esgoto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência de eventos da eutrofização em um lago poluído por fertilizantes e esgoto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Excesso de nutrientes (nitrogênio e fósforo) despejados na água', 1, 1),
(@p, 'Multiplicação acelerada de algas na superfície (floração)', 1, 2),
(@p, 'Bloqueio da luz solar e morte das plantas submersas', 1, 3),
(@p, 'Consumo de oxigênio pelas bactérias decompositoras e morte dos peixes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual setor econômico responde pelo maior consumo de água doce captada no Brasil e no mundo (cerca de 70%)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Agricultura e irrigação de lavouras', 1, 0),
(@p, 'Escovação de dentes nas casas', 0, 0),
(@p, 'Piscinas de clubes recreativos', 0, 0),
(@p, 'Aquários domésticos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um único litro de óleo de cozinha descartado incorretamente no ralo pode contaminar milhares de litros de água nos rios e dificultar a oxigenação aquática.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);