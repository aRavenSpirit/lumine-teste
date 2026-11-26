USE luminebd;

-- =========================================================================
-- MATÉRIA 10: ARTES (CONTEÚDOS 78 A 87)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 78: História da Arte
-- -------------------------------------------------------------------------

-- Quiz 78.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Introdução e Funções da Arte', 1, 78);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o principal objetivo do estudo da História da Arte?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Compreender as manifestações artísticas em seus contextos históricos, culturais e sociais.', 1, 0),
(@p, 'Apenas decorar datas de nascimento de pintores famosos.', 0, 0),
(@p, 'Avaliar qual obra vale mais dinheiro em leilões.', 0, 0),
(@p, 'Substituir o estudo da matemática e das ciências.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada função da arte à sua característica principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Função Pragmática / Utilitária', 1, 1, 'Serve a uma finalidade prática ou religiosa'),
(@p, 'Função Naturalista', 1, 2, 'Busca representar fielmente a realidade visível'),
(@p, 'Função Formalista', 1, 3, 'Foca na estética, formas, cores e composição');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A arte sempre refletiu os valores, crenças e transformações tecnológicas de cada época.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as linguagens tradicionais das artes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Artes Visuais (pintura, escultura)', 1, 0),
(@p, 'Música', 1, 0),
(@p, 'Teatro e Dança', 1, 0),
(@p, 'Contabilidade tributária', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamado o espaço institucional dedicado à preservação e exposição de obras de arte?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Museu', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os grandes períodos da História da Arte:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Arte Pré-Histórica', 1, 1),
(@p, 'Arte Clássica (Grécia e Roma)', 1, 2),
(@p, 'Renascimento', 1, 3),
(@p, 'Arte Moderna', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual termo designa o conjunto de bens culturais e artísticos herdados de gerações passadas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Patrimônio Cultural', 1, 0),
(@p, 'Direito autoral comercial', 0, 0),
(@p, 'Arte efêmera', 0, 0),
(@p, 'Design industrial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Cada sociedade define seus próprios critérios estéticos, não existindo um único padrão universal de beleza.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 78.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Arte na Antiguidade: Egito, Grécia e Roma', 2, 78);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era a convenção visual característica da pintura egípcia antiga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lei da Frontalidade (tronco e olho de frente; cabeça, pernas e pés de perfil).', 1, 0),
(@p, 'Perspectiva linear com ponto de fuga único.', 0, 0),
(@p, 'Pontilhismo com cores fluorescentes.', 0, 0),
(@p, 'Abstracionismo geométrico puro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A arte egípcia estava profundamente ligada à religião, à vida após a morte e à exaltação dos faraós.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características marcantes da arte da Grécia Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antropocentrismo (o ser humano como medida)', 1, 0),
(@p, 'Busca pela harmonia, proporção e simetria', 1, 0),
(@p, 'Valorização do nu artístico idealizado', 1, 0),
(@p, 'Proibição total de esculturas humanas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada civilização antiga à sua obra ou construção emblemática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Egito Antigo', 1, 1, 'Pirâmides de Gizé e Esfinge'),
(@p, 'Grécia Antiga', 1, 2, 'Parthenon de Atenas'),
(@p, 'Império Romano', 1, 3, 'Coliseu e Panteão');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama a técnica artística romana que utiliza pequenos fragmentos de pedra ou vidro colorido para formar imagens?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Mosaico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução da representação humana da Antiguidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Rigidez hierática e frontalidade no Egito', 1, 1),
(@p, 'Idealização equilibrada no Período Clássico Grego', 1, 2),
(@p, 'Dramaticidade e movimento no Helenismo', 1, 3),
(@p, 'Realismo fisionômico nos bustos-retrato Romanos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Diferente da idealização grega, os retratos esculpidos romanos destacavam-se pelo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Realismo fiel aos traços individuais, incluindo rugas e imperfeições.', 1, 0),
(@p, 'Uso exclusivo de madeira pintada.', 0, 0),
(@p, 'Desprezo por figuras históricas e imperadores.', 0, 0),
(@p, 'Formato exclusivamente abstrato.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na pintura egípcia, o tamanho das figuras representadas variava de acordo com sua importância social e religiosa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 78.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Arte Medieval: Bizantina, Românica e Gótica', 2, 78);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era o tema central predominante na arte da Idade Média europeia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O cristianismo e a instrução religiosa (teocentrismo).', 1, 0),
(@p, 'A exaltação da indústria e das máquinas a vapor.', 0, 0),
(@p, 'A mitologia nórdica pagã exclusivamente.', 0, 0),
(@p, 'Cenas cotidianas da burguesia industrial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada estilo medieval à sua principal característica arquitetônica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Arte Bizantina', 1, 1, 'Cúpulas majestosas e mosaicos dourados'),
(@p, 'Arte Românica', 1, 2, 'Paredes grossas, poucas janelas e arcos de volta perfeita'),
(@p, 'Arte Gótica', 1, 3, 'Verticalidade, arcos ogivais, arcobotantes e vitrais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As igrejas românicas eram conhecidas como "fortalezas de Deus" devido às suas paredes espessas e aspecto maciço.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione elementos típicos das catedrais góticas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vitrais coloridos e rosáceas', 1, 0),
(@p, 'Arcos ogivais (pontiagudos)', 1, 0),
(@p, 'Abóbadas de nervuras e verticalidade', 1, 0),
(@p, 'Ausência completa de iluminação natural', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as pinturas religiosas bizantinas feitas sobre painéis de madeira, muito veneradas no Oriente cristão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ícones', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os estilos da Arte Medieval:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Arte Paleocristã', 1, 1),
(@p, 'Arte Bizantina', 1, 2),
(@p, 'Estilo Românico', 1, 3),
(@p, 'Estilo Gótico', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual igreja construída em Constantinopla (atual Istambul) é a obra-prima da arquitetura bizantina?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Basílica de Santa Sofia (Hagia Sophia)', 1, 0),
(@p, 'Catedral de Notre-Dame de Paris', 0, 0),
(@p, 'Capela Sistina', 0, 0),
(@p, 'Palácio de Versalhes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As iluminuras eram ilustrações minuciosas feitas à mão nos livros manuscritos medievais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 78.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Do Barroco e Rococó ao Neoclassicismo e Romantismo', 3, 78);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza esteticamente a pintura do período Barroco?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dramaticidade, movimento intenso, composições diagonais e forte contraste entre luz e sombra (tenebrismo).', 1, 0),
(@p, 'Equilíbrio estático, linhas retas e cores frias apáticas.', 0, 0),
(@p, 'Geometrização cubista sem profundidade.', 0, 0),
(@p, 'Desprezo total por temas religiosos e emocionais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada movimento artístico ao seu principal representante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Barroco Italiano', 1, 1, 'Caravaggio e Gian Lorenzo Bernini'),
(@p, 'Barroco Brasileiro (Mineiro)', 1, 2, 'Aleijadinho e Mestre Ataíde'),
(@p, 'Neoclassicismo', 1, 3, 'Jacques-Louis David');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Rococó surgiu na França como um estilo aristocrático marcado por cores claras, curvas delicadas e temas leves e festivos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do movimento Romântico (Romantismo) nas artes visuais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Valorização da emoção, subjetividade e imaginação', 1, 0),
(@p, 'Representação da natureza sublime e indomável', 1, 0),
(@p, 'Nacionalismo e temas históricos dramáticos', 1, 0),
(@p, 'Submissão rígida às regras racionais da academia clássica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual escultor e arquiteto é o maior expoente do Barroco brasileiro, autor dos Doze Profetas em Congonhas (MG)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Aleijadinho', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os estilos artísticos entre os séculos XVII e XIX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Barroco', 1, 1),
(@p, 'Rococó', 1, 2),
(@p, 'Neoclassicismo', 1, 3),
(@p, 'Romantismo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O Neoclassicismo retomou os ideais estéticos da Antiguidade Greco-Romana em oposição direta aos excessos do:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Barroco e Rococó', 1, 0),
(@p, 'Cubismo e Futurismo', 0, 0),
(@p, 'Impressionismo', 0, 0),
(@p, 'Minimalismo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A obra "A Liberdade Guiando o Povo", de Eugène Delacroix, é um ícone da pintura romântica francesa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 79: Arte Rupestre
-- -------------------------------------------------------------------------

-- Quiz 79.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Primeiras Expressões Artísticas da Humanidade', 1, 79);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é a Arte Rupestre?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Representações artísticas pré-históricas feitas em paredes e tetos de cavernas ou abrigos rochosos.', 1, 0),
(@p, 'Pinturas digitais feitas em computadores modernos.', 0, 0),
(@p, 'Esculturas de mármore feitas na Grécia Antiga.', 0, 0),
(@p, 'Quadros a óleo pintados sobre tela de linho no Renascimento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Arte Rupestre surgiu antes da invenção da escrita, servindo como registro do cotidiano e das crenças dos povos pré-históricos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais temas eram mais retratados nas pinturas rupestres?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Animais (bisões, cavalos, mamutes, cervos)', 1, 0),
(@p, 'Cenas de caça e dança coletiva', 1, 0),
(@p, 'Mãos humanas em negativo ou positivo', 1, 0),
(@p, 'Castelos medievais e navios a vapor', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o tipo de registro rupestre à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Pintura rupestre', 1, 1, 'Aplicação de pigmentos sobre a superfície da rocha'),
(@p, 'Gravura rupestre (petróglifo)', 1, 2, 'Incisão ou raspagem feita diretamente na pedra'),
(@p, 'Mão em negativo', 1, 3, 'Sopro de pigmento ao redor da mão apoiada na parede');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual período da Pré-História marca o surgimento das primeiras pinturas nas cavernas (Idade da Pedra Lascada)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Paleolítico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os períodos da Pré-História do mais antigo ao mais recente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paleolítico (Pedra Lascada)', 1, 1),
(@p, 'Neolítico (Pedra Polida)', 1, 2),
(@p, 'Idade dos Metais', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que muitas pinturas rupestres foram feitas nas partes mais profundas e escuras das cavernas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque provavelmente tinham caráter ritualístico, sagrado ou mágico, e não apenas decorativo.', 1, 0),
(@p, 'Porque havia lâmpadas elétricas instaladas lá dentro.', 0, 0),
(@p, 'Para vender ingressos aos turistas da época.', 0, 0),
(@p, 'Porque os artistas tinham alergia à luz do sol.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As cores predominantes na arte rupestre eram tons terrosos, vermelho, ocre, amarelo e preto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 79.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Técnicas, Pigmentos e Temáticas Pré-Históricas', 2, 79);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais materiais eram utilizados pelos artistas pré-históricos para produzir seus pigmentos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Minerais triturados (como óxido de ferro), carvão vegetal, argila, sangue e gordura animal.', 1, 0),
(@p, 'Tintas acrílicas sintéticas importadas.', 0, 0),
(@p, 'Corantes químicos derivados do petróleo.', 0, 0),
(@p, 'Lápis de cor industrializados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o material natural à cor que ele produzia nas pinturas rupestres:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Óxido de ferro (hematita)', 1, 1, 'Vermelho e marrom'),
(@p, 'Carvão vegetal ou manganês', 1, 2, 'Preto'),
(@p, 'Argila e ocre mineral', 1, 3, 'Amarelo e alaranjado');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os artistas pré-históricos aproveitavam os relevos e saliências naturais das rochas para dar sensação de volume aos animais pintados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais ferramentas eram usadas para aplicar as tintas nas cavernas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os próprios dedos e mãos', 1, 0),
(@p, 'Pincéis improvisados com pelos de animais ou fibras vegetais', 1, 0),
(@p, 'Ossos ocos usados como tubos de sopro (aerógrafos primitivos)', 1, 0),
(@p, 'Rolos de espuma sintética', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual substância orgânica servia como aglutinante para fixar o pigmento em pó na parede rochosa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Gordura animal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de produção de uma pintura rupestre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Coletar minerais coloridos ou carvão', 1, 1),
(@p, 'Triturar o material até obter um pó fino', 1, 2),
(@p, 'Misturar o pó com aglutinante (gordura, água ou seiva)', 1, 3),
(@p, 'Aplicar sobre a rocha com os dedos, pincel ou sopro', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como mudou o estilo da pintura rupestre na passagem do Paleolítico para o Neolítico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tornou-se mais esquemática, estilizada e abstrata, representando grupos humanos em atividades cotidianas.', 1, 0),
(@p, 'Deixou de existir completamente em todo o planeta.', 0, 0),
(@p, 'Passou a retratar apenas retratos fotográficos detalhados.', 0, 0),
(@p, 'Passou a ser feita exclusivamente sobre papel pergaminho.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A técnica de "naturalismo" no Paleolítico buscava retratar os animais com grande fidelidade anatômica e movimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 79.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sítios Arqueológicos: Lascaux, Altamira e Serra da Capivara', 2, 79);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Onde está localizado o Parque Nacional Serra da Capivara, um dos maiores conjuntos de arte rupestre das Américas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'No estado do Piauí, Brasil.', 1, 0),
(@p, 'No estado de Santa Catarina, Brasil.', 0, 0),
(@p, 'No norte da França.', 0, 0),
(@p, 'No sul da Espanha.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sítio arqueológico famoso ao seu país:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Caverna de Lascaux e Chauvet', 1, 1, 'França'),
(@p, 'Caverna de Altamira', 1, 2, 'Espanha'),
(@p, 'Serra da Capivara e Vale do Peruaçu', 1, 3, 'Brasil');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Caverna de Lascaux foi fechada à visitação pública em 1963 porque a respiração e o calor dos visitantes estavam danificando as pinturas milenares.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características das pinturas rupestres da Serra da Capivara (Piauí):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cenas dinâmicas de dança, caça, rituais e acrobatas', 1, 0),
(@p, 'Figuras humanas pequenas e muito expressivas em movimento', 1, 0),
(@p, 'Representações da fauna local como emas, tatus e veados', 1, 0),
(@p, 'Esculturas gigantes de faraós egípcios', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual arqueóloga brasileira dedicou décadas de pesquisa à preservação e estudo da Serra da Capivara?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Niède Guidon', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o protocolo de preservação de um sítio de arte rupestre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificação e catalogação arqueológica', 1, 1),
(@p, 'Delimitação de área de proteção ambiental', 1, 2),
(@p, 'Controle rigoroso de umidade, luz e visitação', 1, 3),
(@p, 'Criação de réplicas ou museus virtuais para o público', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A Caverna de Altamira, descoberta em 1879 na Espanha, ficou mundialmente célebre pelo teto pintado com:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bisões policromáticos em tamanho quase natural.', 1, 0),
(@p, 'Mapas estelares da galáxia de Andrômeda.', 0, 0),
(@p, 'Retratos de imperadores romanos.', 0, 0),
(@p, 'Inscrições em alfabeto latino.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Caverna de Chauvet, na França, possui algumas das pinturas figurativas mais antigas conhecidas, datadas de mais de 30 mil anos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 79.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Interpretações Antropológicas e Arte Mobiliar', 3, 79);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia a "arte parietal" da "arte mobiliar" na Pré-História?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A parietal é feita fixa nas paredes das cavernas; a mobiliar consiste em pequenos objetos transportáveis (estatuetas, amuletos).', 1, 0),
(@p, 'A parietal é feita de plástico; a mobiliar é feita de ferro fundido.', 0, 0),
(@p, 'Não há diferença entre os dois conceitos.', 0, 0),
(@p, 'A arte mobiliar refere-se exclusivamente a móveis de madeira.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As estatuetas femininas pré-históricas, como a "Vênus de Willendorf", apresentam formas volumosas associadas a cultos de fertilidade e abundância.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais hipóteses são discutidas por arqueólogos e antropólogos para explicar a função da arte rupestre?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Magia simpática (crença de que representar a caça garante sucesso na captura)', 1, 0),
(@p, 'Rituais xamânicos e estados alterados de consciência', 1, 0),
(@p, 'Comunicação, memória coletiva e marcação territorial', 1, 0),
(@p, 'Publicidade comercial para venda de ferramentas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada monumento ou artefato pré-histórico à sua classificação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Vênus de Willendorf', 1, 1, 'Arte mobiliar (estatueta esculpida)'),
(@p, 'Stonehenge (Inglaterra)', 1, 2, 'Arquitetura megalítica (cromlech)'),
(@p, 'Menires e Dólmens', 1, 3, 'Monumentos megalíticos do Neolítico');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamados os monumentos pré-históricos construídos com enormes blocos de pedra bruta no Neolítico (ex.: Stonehenge)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Megalitos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o desenvolvimento técnico da escultura pré-histórica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Entalhe em osso, marfim e pedra macia no Paleolítico Superior', 1, 1),
(@p, 'Modelagem em argila e cerâmica decorada no Neolítico', 1, 2),
(@p, 'Fundição de estatuetas e adornos em bronze e ferro na Idade dos Metais', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No Brasil, a chamada "Tradição Nordeste" de arte rupestre distingue-se principalmente por:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Figuras humanas e animais em composições narrativas e lúdicas, com grande senso de movimento.', 1, 0),
(@p, 'Apenas linhas geométricas retas sem nenhuma figura humana.', 0, 0),
(@p, 'Escritas hieroglíficas idênticas às do Egito.', 0, 0),
(@p, 'Pinturas exclusivas de embarcações europeias do século XVI.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A descoberta da cerâmica no período Neolítico esteve diretamente ligada ao sedentarismo e à necessidade de armazenar grãos e água.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 80: Arte Clássica
-- -------------------------------------------------------------------------

-- Quiz 80.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fundamentos da Arte Greco-Romana', 1, 80);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A expressão "Arte Clássica" refere-se tradicionalmente à produção artística de quais duas civilizações?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Grécia Antiga e Roma Antiga', 1, 0),
(@p, 'China Antiga e Japão Feudal', 0, 0),
(@p, 'Civilização Maia e Civilização Inca', 0, 0),
(@p, 'Mesopotâmia e Índia Antiga', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Arte Clássica serviu de base e referência estética para movimentos posteriores, como o Renascimento e o Neoclassicismo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais princípios estéticos definem o ideal clássico grego?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Racionalismo e equilíbrio', 1, 0),
(@p, 'Proporção matemática e simetria', 1, 0),
(@p, 'Harmonia e beleza idealizada', 1, 0),
(@p, 'Caos visual e deformação intencional', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o termo grego ao seu significado na cultura clássica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Acrópole', 1, 1, 'Parte alta da cidade onde ficavam os templos'),
(@p, 'Ágora', 1, 2, 'Praça pública de debates e comércio'),
(@p, 'Anfiteatro', 1, 3, 'Arena circular ou oval para espetáculos públicos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual material nobre foi amplamente utilizado na escultura e arquitetura monumental da Grécia Clássica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Mármore', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a transmissão histórica da tradição clássica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Desenvolvimento dos cânones na Grécia Antiga', 1, 1),
(@p, 'Assimilação e expansão técnica pelo Império Romano', 1, 2),
(@p, 'Redescoberta e valorização no Renascimento italiano', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Além das esculturas, uma das principais fontes para conhecermos a pintura grega antiga é:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A cerâmica pintada (vasos com figuras negras e figuras vermelhas).', 1, 0),
(@p, 'Telas pintadas com tinta acrílica.', 0, 0),
(@p, 'Fotografias preservadas em bibliotecas.', 0, 0),
(@p, 'Gravuras digitais em metal.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na Antiguidade Clássica, muitas esculturas e templos de mármore eram originalmente pintados com cores vivas (policromia).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 80.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Arquitetura Grega e as Ordens Clássicas', 2, 80);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são as três ordens arquitetônicas clássicas desenvolvidas na Grécia Antiga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dórica, Jônica e Coríntia', 1, 0),
(@p, 'Românica, Gótica e Barroca', 0, 0),
(@p, 'Egípcia, Persa e Babilônica', 0, 0),
(@p, 'Toscana, Moderna e Contemporânea', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada ordem arquitetônica grega à característica do seu capitel:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ordem Dórica', 1, 1, 'Simples, geométrico, sem ornamentos e sem base na coluna'),
(@p, 'Ordem Jônica', 1, 2, 'Ornamentado com duas volutas (espirais) laterais'),
(@p, 'Ordem Coríntia', 1, 3, 'Ricamente decorado com folhas de acanto esculpidas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Parthenon, localizado na Acrópole de Atenas, foi construído predominantemente na Ordem Dórica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os elementos estruturais típicos de um templo grego clássico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Colunas com fuste canelado', 1, 0),
(@p, 'Frontão triangular decorado com esculturas', 1, 0),
(@p, 'Friso e arquitrave (entablamento)', 1, 0),
(@p, 'Arranha-céus de vidro e aço', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama a parte superior da coluna que faz a transição entre o fuste e o entablamento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Capitel', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as partes de uma coluna clássica de baixo para cima:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Base (presente nas ordens Jônica e Coríntia)', 1, 1),
(@p, 'Fuste (corpo cilíndrico principal)', 1, 2),
(@p, 'Capitel (topo ornamentado)', 1, 3),
(@p, 'Entablamento e Frontão', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são as "cariátides" na arquitetura grega antiga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Esculturas femininas usadas no lugar de colunas para sustentar o entablamento.', 1, 0),
(@p, 'Pinturas feitas no chão dos templos.', 0, 0),
(@p, 'Portas de bronze maciço.', 0, 0),
(@p, 'Sistemas subterrâneos de aquecimento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os arquitetos do Parthenon aplicaram sutis correções ópticas (como a ligeira curvatura das linhas horizontais) para que o templo parecesse perfeitamente reto ao olho humano.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 80.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Escultura Grega: Períodos Arcaico, Clássico e Helenístico', 2, 80);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual técnica escultórica grega consiste em apoiar o peso do corpo sobre uma perna enquanto a outra fica relaxada, criando naturalidade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Contrapposto', 1, 0),
(@p, 'Sfumato', 0, 0),
(@p, 'Pontilhismo', 0, 0),
(@p, 'Action painting', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada período da escultura grega à sua característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Período Arcaico', 1, 1, 'Postura rígida frontal e o "sorriso arcaico" (Kouros)'),
(@p, 'Período Clássico', 1, 2, 'Equilíbrio ideal, proporção matemática e serenidade'),
(@p, 'Período Helenístico', 1, 3, 'Realismo dramático, emoção intensa e movimento dinâmico');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O escultor Policleto estabeleceu um "cânone" matemático determinando que a altura ideal do corpo humano correspondia a sete cabeças e meia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique esculturas célebres da Grécia Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Discóbolo (de Míron)', 1, 0),
(@p, 'Vitória de Samotrácia', 1, 0),
(@p, 'Laocoonte e seus Filhos', 1, 0),
(@p, 'O Pensador (de Rodin)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual escultor grego do Período Clássico dirigiu as obras escultóricas do Parthenon e criou a estátua de Atena?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Fídias', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os três grandes períodos da escultura grega:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Período Arcaico (séc. VII - VI a.C.)', 1, 1),
(@p, 'Período Clássico (séc. V - IV a.C.)', 1, 2),
(@p, 'Período Helenístico (séc. IV - I a.C.)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A escultura "Laocoonte e seus Filhos", marcada pela expressão de dor e tensão muscular extrema, pertence ao período:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Helenístico', 1, 0),
(@p, 'Arcaico', 0, 0),
(@p, 'Geométrico', 0, 0),
(@p, 'Paleolítico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Além do mármore, os gregos dominavam a fundição em bronze pelo método da cera perdida, embora poucas peças originais tenham sobrevivido.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 80.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Engenharia e Arte Romana: Arcos, Afrescos e Mosaicos', 3, 80);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual inovação técnica permitiu aos arquitetos romanos construir grandes cúpulas, aquedutos e anfiteatros monumentais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O domínio do arco pleno, da abóbada e do concreto romano (opus caementicium).', 1, 0),
(@p, 'O uso exclusivo de vigas de madeira sem argamassa.', 0, 0),
(@p, 'A importação de aço inoxidável.', 0, 0),
(@p, 'A eliminação total de paredes e pilares.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A cúpula do Panteão de Roma, com seu óculo central aberto ao céu, permanece como a maior cúpula de concreto não armado do mundo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique construções típicas da arquitetura e engenharia romana:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aquedutos para transporte de água', 1, 0),
(@p, 'Arcos do Triunfo e Colunas Comemorativas', 1, 0),
(@p, 'Termas públicas e Anfiteatros', 1, 0),
(@p, 'Zigurate mesopotâmico de tijolos crus', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o monumento romano à sua função principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Coliseu (Anfiteatro Flaviano)', 1, 1, 'Combates de gladiadores e espetáculos públicos'),
(@p, 'Coluna de Trajano', 1, 2, 'Narrar em relevo espiralado as vitórias militares'),
(@p, 'Panteão', 1, 3, 'Templo dedicado a todos os deuses');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual técnica de pintura mural feita sobre reboco ainda úmido foi preservada nas cidades de Pompeia e Herculano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Afresco', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a superposição clássica das ordens nas fachadas do Coliseu (de baixo para cima):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1º pavimento: Ordem Toscana (derivada da Dórica)', 1, 1),
(@p, '2º pavimento: Ordem Jônica', 1, 2),
(@p, '3º pavimento: Ordem Coríntia', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A erupção do monte Vesúvio em 79 d.C. foi fundamental para a História da Arte Romana porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Soterrou e preservou sob cinzas vulcânicas os afrescos e mosaicos de Pompeia e Herculano.', 1, 0),
(@p, 'Destruiu todas as cópias de esculturas gregas existentes.', 0, 0),
(@p, 'Inaugurou o estilo gótico na Itália.', 0, 0),
(@p, 'Impediu a construção do Coliseu.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A arte romana tinha um caráter eminentemente prático, público e voltado à exaltação do poder cívico e imperial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 81: Renascimento
-- -------------------------------------------------------------------------

-- Quiz 81.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Humanismo, Antropocentrismo e Mecenato', 1, 81);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em qual país europeu teve início o movimento cultural e artístico do Renascimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Itália (especialmente em Florença)', 1, 0),
(@p, 'Inglaterra', 0, 0),
(@p, 'Rússia', 0, 0),
(@p, 'Noruega', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O termo "Renascimento" refere-se ao renascer dos valores culturais e estéticos da Antiguidade Clássica Greco-Romana.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique valores fundamentais da mentalidade renascentista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Humanismo e Antropocentrismo', 1, 0),
(@p, 'Racionalismo e observação científica da natureza', 1, 0),
(@p, 'Individualismo e valorização da assinatura do artista', 1, 0),
(@p, 'Rejeição total à ciência e à anatomia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ao seu papel no Renascimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mecenato', 1, 1, 'Patrocínio financeiro de artistas por famílias ricas ou pela Igreja'),
(@p, 'Antropocentrismo', 1, 2, 'O ser humano no centro das atenções intelectuais e artísticas'),
(@p, 'Polímata', 1, 3, 'Indivíduo que domina várias áreas do saber (arte, ciência, engenharia)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual poderosa família de banqueiros de Florença foi a principal mecenas dos artistas renascentistas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Médici', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a mudança de visão de mundo da Idade Média para o Renascimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Predomínio do Teocentrismo medieval', 1, 1),
(@p, 'Ascensão do comércio e das cidades italianas', 1, 2),
(@p, 'Redescoberta dos textos e esculturas clássicas', 1, 3),
(@p, 'Consolidação do Humanismo e da arte científica', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Durante o Renascimento, o artista deixou de ser visto apenas como um artesão anônimo para ser reconhecido como:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um criador intelectual e gênio individual.', 1, 0),
(@p, 'Um servo feudal sem liberdade.', 0, 0),
(@p, 'Um operário de linha de montagem.', 0, 0),
(@p, 'Um comerciante de especiarias.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Embora valorizasse o ser humano e a ciência, o Renascimento não abandonou os temas religiosos, reinterpretando-os com realismo e anatomia precisa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 81.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Técnicas Renascentistas: Perspectiva, Sfumato e Chiaroscuro', 2, 81);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual técnica matemática desenvolvida no Renascimento permitiu criar a ilusão de profundidade tridimensional em uma superfície plana?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Perspectiva linear (com ponto de fuga)', 1, 0),
(@p, 'Lei da Frontalidade', 0, 0),
(@p, 'Colagem cubista', 0, 0),
(@p, 'Dripping (gotejamento)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada técnica pictórica renascentista à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sfumato', 1, 1, 'Transição suave e esfumaçada entre tons, sem contornos rígidos'),
(@p, 'Chiaroscuro', 1, 2, 'Contraste entre luz e sombra para criar volume tridimensional'),
(@p, 'Perspectiva aérea', 1, 3, 'Perda gradual de nitidez e mudança de cor nos planos distantes');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A tinta a óleo difundiu-se amplamente no Renascimento por permitir secagem lenta, maior riqueza de detalhes e misturas suaves de cor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais estudos científicos auxiliavam diretamente os pintores e escultores renascentistas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Anatomia humana (dissecação de cadáveres)', 1, 0),
(@p, 'Geometria e matemática (proporção áurea)', 1, 0),
(@p, 'Óptica e comportamento da luz', 1, 0),
(@p, 'Informática quântica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual técnica consiste em construir um esqueleto geométrico invisível (como um triângulo) para organizar as figuras na tela?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Composição piramidal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o funcionamento da perspectiva linear renascentista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Definir a linha do horizonte na altura do olhar', 1, 1),
(@p, 'Marcar o ponto de fuga central sobre o horizonte', 1, 2),
(@p, 'Traçar linhas convergentes para o ponto de fuga', 1, 3),
(@p, 'Reduzir proporcionalmente as figuras conforme se afastam', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quem foi o arquiteto florentino creditado por formular matematicamente as leis da perspectiva linear no século XV?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Filippo Brunelleschi', 1, 0),
(@p, 'Pablo Picasso', 0, 0),
(@p, 'Vincent van Gogh', 0, 0),
(@p, 'Andy Warhol', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A técnica do "sfumato" foi aperfeiçoada por Leonardo da Vinci e pode ser observada no rosto da Mona Lisa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 81.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Os Mestres da Alta Renascença: Da Vinci, Michelangelo e Rafael', 2, 81);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual obra de Leonardo da Vinci retrata o momento em que Jesus anuncia que um de seus apóstolos o trairá?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Última Ceia', 1, 0),
(@p, 'O Nascimento de Vênus', 0, 0),
(@p, 'A Escola de Atenas', 0, 0),
(@p, 'Guernica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada artista renascentista à sua obra-prima:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Leonardo da Vinci', 1, 1, 'Mona Lisa e Homem Vitruviano'),
(@p, 'Michelangelo Buonarroti', 1, 2, 'Davi, Pietà e teto da Capela Sistina'),
(@p, 'Rafael Sanzio', 1, 3, 'A Escola de Atenas e Madonas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na pintura "A Escola de Atenas", Rafael Sanzio reuniu grandes filósofos da Antiguidade, colocando Platão e Aristóteles no centro da perspectiva.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique obras criadas por Michelangelo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Criação de Adão (afresco na Capela Sistina)', 1, 0),
(@p, 'Escultura Davi em mármore', 1, 0),
(@p, 'Escultura Pietà (Basílica de São Pedro)', 1, 0),
(@p, 'A Primavera', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual pintor florentino do Quattrocento é o autor das célebres obras mitológicas "O Nascimento de Vênus" e "A Primavera"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sandro Botticelli', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de realização dos afrescos do teto da Capela Sistina por Michelangelo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Encomenda feita pelo Papa Júlio II em 1508', 1, 1),
(@p, 'Construção de andaimes elevados sob a abóbada', 1, 2),
(@p, 'Pintura das cenas do Gênesis sobre reboco fresco', 1, 3),
(@p, 'Conclusão e inauguração em 1512', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O desenho "Homem Vitruviano", de Leonardo da Vinci, ilustra:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As proporções matemáticas ideais do corpo humano inscritas no círculo e no quadrado.', 1, 0),
(@p, 'A planta baixa de uma catedral gótica.', 0, 0),
(@p, 'O mapa das rotas marítimas para as Índias.', 0, 0),
(@p, 'Um projeto de locomotiva a vapor.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Michelangelo considerava-se acima de tudo um escultor, aplicando a tridimensionalidade e a musculatura escultórica também em suas pinturas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 81.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Trecento, Quattrocento, Cinquecento e Renascimento Nórdico', 3, 81);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual pintor do Trecento (século XIV) é considerado o precursor do Renascimento por romper com a rigidez bizantina e dar volume às figuras?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Giotto di Bondone', 1, 0),
(@p, 'Salvador Dalí', 0, 0),
(@p, 'Claude Monet', 0, 0),
(@p, 'Jackson Pollock', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fase do Renascimento italiano ao seu século e centro principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Trecento (séc. XIV)', 1, 1, 'Transição pré-renascentista com Giotto'),
(@p, 'Quattrocento (séc. XV)', 1, 2, 'Auge em Florença com Masaccio, Brunelleschi e Botticelli'),
(@p, 'Cinquecento (séc. XVI)', 1, 3, 'Alta Renascença em Roma e Veneza');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Renascimento Nórdico (Flandres e Alemanha), representado por Jan van Eyck e Albrecht Dürer, destacou-se pelo realismo minucioso e aperfeiçoamento da pintura a óleo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do Maneirismo, estilo de transição no final do Cinquecento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alongamento intencional das proporções humanas', 1, 0),
(@p, 'Composições serpentinadas e tensas', 1, 0),
(@p, 'Cores mais irreais e dramáticas', 1, 0),
(@p, 'Cópia mecânica sem estilo pessoal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual obra-prima do pintor flamengo Jan van Eyck (1434) é célebre pelo espelho convexo ao fundo que reflete o próprio artista?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'O Casal Arnolfini', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as fases do Renascimento italiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trecento (século XIV)', 1, 1),
(@p, 'Quattrocento (século XV)', 1, 2),
(@p, 'Cinquecento / Alta Renascença (início do séc. XVI)', 1, 3),
(@p, 'Maneirismo (meados/final do séc. XVI)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A Escola Veneziana do Renascimento (com Ticiano e Giorgione) diferenciava-se da Escola Florentina por priorizar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A riqueza cromática, a luz atmosférica e a pincelada solta sobre o desenho rígido.', 1, 0),
(@p, 'Apenas esculturas em pedra-sabão.', 0, 0),
(@p, 'Pinturas exclusivamente em preto e branco.', 0, 0),
(@p, 'A rejeição completa da pintura a óleo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Albrecht Dürer foi um dos maiores mestres da gravura (xilogravura e calcogravura) do Renascimento alemão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 82: Arte Moderna
-- -------------------------------------------------------------------------

-- Quiz 82.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ruptura Acadêmica e Impressionismo', 1, 82);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal proposta do movimento Impressionista no final do século XIX?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Captar os efeitos instantâneos da luz natural e as impressões visuais ao ar livre com pinceladas soltas.', 1, 0),
(@p, 'Copiar fielmente estátuas gregas dentro de ateliês fechados.', 0, 0),
(@p, 'Pintar apenas cenas bíblicas com contornos pretos grossos.', 0, 0),
(@p, 'Eliminar completamente o uso de cores.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A invenção da fotografia no século XIX impulsionou os artistas modernos a buscarem novas formas de expressão além da cópia fiel da realidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pintores ligados ao Impressionismo e Pós-Impressionismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Claude Monet', 1, 0),
(@p, 'Pierre-Auguste Renoir', 1, 0),
(@p, 'Vincent van Gogh', 1, 0),
(@p, 'Aleijadinho', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o artista ao seu estilo ou obra marcante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Claude Monet', 1, 1, 'Impressão, Nascer do Sol (Impressionismo)'),
(@p, 'Georges Seurat', 1, 2, 'Pontilhismo (Divisismo)'),
(@p, 'Vincent van Gogh', 1, 3, 'Pinceladas espiraladas e expressivas (A Noite Estrelada)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual técnica pós-impressionista consiste em aplicar pequenos pontos de cores puras lado a lado para que se misturem no olho do observador?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pontilhismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a transição do academismo para as vanguardas modernas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Arte Acadêmica tradicional nos salões oficiais', 1, 1),
(@p, 'Realismo social de Gustave Courbet', 1, 2),
(@p, 'Impressionismo ao ar livre de Monet', 1, 3),
(@p, 'Vanguardas europeias do início do século XX', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na pintura impressionista, como eram representadas as sombras?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Coloridas (tons de violeta, azul e verde), evitando o preto puro.', 1, 0),
(@p, 'Sempre com tinta preta chapada.', 0, 0),
(@p, 'Não existiam sombras nas pinturas.', 0, 0),
(@p, 'Com recortes de jornal colados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A invenção das tintas em tubos metálicos portáteis facilitou que os impressionistas pintassem fora do ateliê (plein air).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 82.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Vanguardas Europeias: Cubismo, Expressionismo e Surrealismo', 2, 82);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual vanguarda europeia fragmentou os objetos em formas geométricas e mostrou vários ângulos simultaneamente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cubismo', 1, 0),
(@p, 'Impressionismo', 0, 0),
(@p, 'Neoclassicismo', 0, 0),
(@p, 'Barroco', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada vanguarda europeia ao seu conceito central:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Expressionismo', 1, 1, 'Exteriorização da angústia, emoção e subjetividade humana'),
(@p, 'Cubismo', 1, 2, 'Geometrização das formas e múltiplos pontos de vista'),
(@p, 'Surrealismo', 1, 3, 'Exploração do inconsciente, dos sonhos e do irracional');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A obra "O Grito", do norueguês Edvard Munch, é um dos maiores símbolos do Expressionismo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique artistas representantes do Surrealismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Salvador Dalí', 1, 0),
(@p, 'René Magritte', 1, 0),
(@p, 'Joan Miró', 1, 0),
(@p, 'Jacques-Louis David', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual obra monumental de Pablo Picasso denuncia os horrores do bombardeio ocorrido durante a Guerra Civil Espanhola em 1937?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Guernica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as fases do Cubismo liderado por Pablo Picasso e Georges Braque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cubismo Cezanniano (influência de Paul Cézanne)', 1, 1),
(@p, 'Cubismo Analítico (fragmentação intensa e cores sóbrias)', 1, 2),
(@p, 'Cubismo Sintético (introdução de colagens e cores mais vivas)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O quadro "Les Demoiselles d''Avignon" (1907), de Picasso, é considerado o marco inicial do:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cubismo', 1, 0),
(@p, 'Romantismo', 0, 0),
(@p, 'Rococó', 0, 0),
(@p, 'Renascimento', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Surrealismo foi fortemente influenciado pelas teorias da psicanálise de Sigmund Freud sobre o inconsciente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 82.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Modernismo no Brasil e a Semana de Arte Moderna de 1922', 2, 82);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Onde e quando ocorreu a Semana de Arte Moderna, marco oficial do Modernismo brasileiro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'No Theatro Municipal de São Paulo, em fevereiro de 1922.', 1, 0),
(@p, 'No Palácio Imperial de Petrópolis, em 1889.', 0, 0),
(@p, 'No Museu do Louvre, em Paris, em 1900.', 0, 0),
(@p, 'Na Bienal de Veneza, em 1950.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada artista modernista brasileiro à sua obra icônica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tarsila do Amaral', 1, 1, 'Abaporu e Operários'),
(@p, 'Anita Malfatti', 1, 2, 'A Boba e O Homem Amarelo'),
(@p, 'Candido Portinari', 1, 3, 'Os Retirantes e painéis Guerra e Paz');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Manifesto Antropofágico propunha "deglutir" criticamente as influências culturais estrangeiras para criar uma arte genuinamente brasileira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique participantes fundamentais do movimento modernista brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mário de Andrade e Oswald de Andrade', 1, 0),
(@p, 'Anita Malfatti e Di Cavalcanti', 1, 0),
(@p, 'Heitor Villa-Lobos e Victor Brecheret', 1, 0),
(@p, 'Mestre Ataíde', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tela pintada por Tarsila do Amaral em 1928 inspirou o Movimento Antropofágico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Abaporu', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os eventos históricos do Modernismo nas artes visuais do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Exposição polêmica de Anita Malfatti (1917)', 1, 1),
(@p, 'Realização da Semana de Arte Moderna (1922)', 1, 2),
(@p, 'Fase Pau-Brasil e Movimento Antropofágico (1924-1928)', 1, 3),
(@p, 'Fase social de Tarsila (Operários) e Portinari (anos 1930)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a exposição de Anita Malfatti em 1917 gerou forte reação conservadora, criticada por Monteiro Lobato?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque trazia influências expressionistas e cores vibrantes que rompiam com o academismo tradicional.', 1, 0),
(@p, 'Porque continha apenas fotografias em preto e branco.', 0, 0),
(@p, 'Porque copiava exatamente os quadros do Museu do Prado.', 0, 0),
(@p, 'Porque não havia nenhuma pintura exposta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Di Cavalcanti foi um dos idealizadores da Semana de 1922 e destacou-se por retratar temas populares brasileiros, como o samba e o carnaval.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 82.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Futurismo, Dadaísmo, Fauvismo e Abstracionismo', 3, 82);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual movimento de vanguarda pregava a "antiarte", o acaso e a crítica irônica à lógica burguesa após a Primeira Guerra Mundial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dadaísmo', 1, 0),
(@p, 'Fauvismo', 0, 0),
(@p, 'Neoclassicismo', 0, 0),
(@p, 'Realismo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada vanguarda ao seu principal representante e característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fauvismo (Henri Matisse)', 1, 1, 'Cores puras, intensas e arbitrárias ("feras")'),
(@p, 'Futurismo (Umberto Boccioni)', 1, 2, 'Exaltação da velocidade, máquinas e dinamismo'),
(@p, 'Neoplasticismo (Piet Mondrian)', 1, 3, 'Abstração geométrica com linhas ortogonais e cores primárias');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Wassily Kandinsky é amplamente reconhecido como um dos pioneiros da pintura abstrata lírica, relacionando cores e formas à música.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do Abstracionismo nas artes visuais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Abandono da representação figurativa de objetos reconhecíveis', 1, 0),
(@p, 'Valorização autônoma de linhas, cores, formas e texturas', 1, 0),
(@p, 'Divisão em vertentes lírica (expressiva) e geométrica', 1, 0),
(@p, 'Obrigatoriedade de retratar paisagens históricas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como Marcel Duchamp chamou os objetos industriais cotidianos (como um urinol) elevados à condição de obra de arte?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ready-made', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de abstração progressiva na arte moderna:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Representação figurativa realista tradicional', 1, 1),
(@p, 'Simplificação e geometrização cubista', 1, 2),
(@p, 'Supressão total da figuração no Abstracionismo', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A obra "A Fonte" (1917), um urinol de porcelana assinado como "R. Mutt", revolucionou a arte do século XX ao questionar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O próprio conceito de arte e o papel da escolha intelectual do artista frente à técnica artesanal.', 1, 0),
(@p, 'A qualidade da porcelana fabricada na Europa.', 0, 0),
(@p, 'O uso de perspectiva linear no Renascimento.', 0, 0),
(@p, 'As regras da métrica poética clássica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A escola alemã Bauhaus integrou artes visuais, arquitetura e design industrial, influenciando profundamente o modernismo mundial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 83: Arte Contemporânea
-- -------------------------------------------------------------------------

-- Quiz 83.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos e Linguagens da Arte Contemporânea', 1, 83);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza principalmente a Arte Contemporânea (desenvolvida a partir da segunda metade do século XX)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A diversidade de linguagens, o hibridismo de meios, a interação com o público e a reflexão conceitual.', 1, 0),
(@p, 'O retorno obrigatório às regras rígidas das academias do século XVIII.', 0, 0),
(@p, 'A proibição de usar tecnologia, vídeo ou materiais cotidianos.', 0, 0),
(@p, 'A produção exclusiva de afrescos religiosos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na Arte Contemporânea, o espectador muitas vezes deixa de ser apenas um observador passivo e passa a interagir fisicamente com a obra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique linguagens e suportes frequentes na Arte Contemporânea:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Instalação artística', 1, 0),
(@p, 'Performance e Body Art', 1, 0),
(@p, 'Videoarte e Arte Digital', 1, 0),
(@p, 'Apenas pintura a têmpera sobre madeira medieval', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada linguagem contemporânea à sua descrição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Instalação', 1, 1, 'Obra tridimensional montada em um espaço específico para ser percorrida'),
(@p, 'Performance', 1, 2, 'Ação artística ao vivo em que o corpo do artista é o meio de expressão'),
(@p, 'Videoarte', 1, 3, 'Uso criativo de imagens em movimento e som como obra plástica');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a arte criada para durar por um período limitado e depois desaparecer ou ser desmontada (ex.: esculturas de gelo)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Arte efêmera', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a ampliação dos suportes artísticos ao longo do tempo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paredes de cavernas e pedra (Pré-História)', 1, 1),
(@p, 'Tela esticada em chassi e mármore (Arte Clássica/Moderna)', 1, 2),
(@p, 'Objetos cotidianos, o próprio corpo, espaços urbanos e meios digitais (Contemporânea)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O termo "Site-Specific" na arte contemporânea designa uma obra que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Foi planejada e criada especificamente para dialogar com um determinado lugar.', 1, 0),
(@p, 'Só pode ser vista através de um site de compras.', 0, 0),
(@p, 'Não possui nenhum vínculo com o ambiente ao redor.', 0, 0),
(@p, 'É produzida em série para decoração de escritórios.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Arte Contemporânea rompe frequentemente as fronteiras tradicionais entre pintura, escultura, teatro, dança e tecnologia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 83.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Pop Art, Arte Conceitual e Minimalismo', 2, 83);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual movimento artístico utilizou ícones da cultura de massa, publicidade, histórias em quadrinhos e produtos de consumo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pop Art', 1, 0),
(@p, 'Arte Rupestre', 0, 0),
(@p, 'Arte Bizantina', 0, 0),
(@p, 'Romantismo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada movimento contemporâneo ao seu artista ou característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Pop Art', 1, 1, 'Andy Warhol e Roy Lichtenstein'),
(@p, 'Minimalismo', 1, 2, 'Formas geométricas simples, repetição e redução ao essencial'),
(@p, 'Arte Conceitual', 1, 3, 'A ideia ou conceito importa mais que o objeto físico');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Andy Warhol utilizou a serigrafia (silk-screen) para reproduzir em série imagens de latas de sopa Campbell e retratos de Marilyn Monroe.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características da Arte Conceitual:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Primazia da ideia e da reflexão crítica', 1, 0),
(@p, 'Uso frequente de textos, fotografias, mapas e documentos', 1, 0),
(@p, 'Crítica à mercantilização tradicional do objeto de arte', 1, 0),
(@p, 'Valorização exclusiva da habilidade manual acadêmica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual artista norte-americano da Pop Art ficou famoso por pintar quadros inspirados nas histórias em quadrinhos com pontos Ben-Day?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Roy Lichtenstein', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a leitura da obra conceitual "Uma e Três Cadeiras" (1965), de Joseph Kosuth:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma cadeira física real colocada na galeria', 1, 1),
(@p, 'Uma fotografia em tamanho real dessa mesma cadeira', 1, 2),
(@p, 'A definição de dicionário da palavra "cadeira" na parede', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O lema "menos é mais" (less is more) está diretamente associado à estética do:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Minimalismo', 1, 0),
(@p, 'Barroco', 0, 0),
(@p, 'Rococó', 0, 0),
(@p, 'Surrealismo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Pop Art aproximou a arte erudita dos símbolos cotidianos da sociedade de consumo e dos meios de comunicação.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 83.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Instalações, Performance, Land Art e Arte Urbana', 2, 83);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é a "Land Art" (ou Earth Art)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vertente artística em que a própria paisagem natural serve de suporte e matéria-prima para intervenções em grande escala.', 1, 0),
(@p, 'Pintura de vasos de flores em estúdio fechado.', 0, 0),
(@p, 'Ilustração de livros infantis sobre animais.', 0, 0),
(@p, 'Escultura feita exclusivamente em ouro maciço.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada expressão contemporânea ao seu exemplo ou característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Land Art', 1, 1, 'Spiral Jetty (Robert Smithson) no Grande Lago Salgado'),
(@p, 'Arte Urbana (Street Art)', 1, 2, 'Grafite, estêncil e muralismo em espaços públicos'),
(@p, 'Arte Cinética', 1, 3, 'Obras com movimento real ou ilusão óptica de movimento');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O grafite contemporâneo é uma expressão da arte urbana que utiliza os muros e fachadas das cidades como suporte de crítica social e poética visual.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique artistas brasileiros reconhecidos internacionalmente na Arte Urbana e Muralismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'OSGEMEOS (Otávio e Gustavo Pandolfo)', 1, 0),
(@p, 'Eduardo Kobra', 1, 0),
(@p, 'Alex Vallauri (pioneiro do grafite no Brasil)', 1, 0),
(@p, 'Victor Meirelles', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual artista britânico anônimo ficou mundialmente famoso por suas obras de estêncil com forte crítica política e social nas ruas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Banksy', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de criação de uma obra de Land Art:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Escolher uma paisagem natural ampla (deserto, lago, montanha)', 1, 1),
(@p, 'Intervir no terreno usando terra, pedras ou vegetação local', 1, 2),
(@p, 'Documentar a obra por meio de fotografias e vídeos aéreos', 1, 3),
(@p, 'Permitir que a natureza transforme a obra ao longo do tempo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A "Op Art" (Arte Óptica) caracteriza-se por:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Criar ilusões de ótica, vibração visual e sensação de movimento através de padrões geométricos.', 1, 0),
(@p, 'Retratar cenas históricas da Revolução Francesa.', 0, 0),
(@p, 'Utilizar apenas sons sem elementos visuais.', 0, 0),
(@p, 'Modelar esculturas de cera.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A artista sérvia Marina Abramović é uma das maiores referências mundiais da arte da performance.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 83.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Arte Contemporânea Brasileira: Neoconcretismo, Hélio Oiticica e Lygia Clark', 3, 83);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o Manifesto Neoconcreto (1959), assinado por Ferreira Gullar, Lygia Clark e Hélio Oiticica, defendia frente ao Concretismo ortodoxo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A valorização da sensibilidade, da subjetividade, da organicidade e da participação ativa do espectador.', 1, 0),
(@p, 'O retorno à pintura acadêmica de paisagens imperiais.', 0, 0),
(@p, 'A submissão mecânica da arte às leis da indústria pesada.', 0, 0),
(@p, 'A proibição de cores quentes.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada artista contemporâneo brasileiro à sua obra emblemática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Hélio Oiticica', 1, 1, 'Parangolés e penetrável Tropicália'),
(@p, 'Lygia Clark', 1, 2, 'Série Bichos e Caminhando'),
(@p, 'Cildo Meireles', 1, 3, 'Inserções em Circuitos Ideológicos e Desvio para o Vermelho');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os "Parangolés" de Hélio Oiticica são capas, bandeiras e estandartes feitos para serem vestidos e dançados, integrando corpo, cor e movimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique artistas de destaque na Arte Contemporânea Brasileira:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vik Muniz (fotografia e materiais inusitados)', 1, 0),
(@p, 'Adriana Varejão (azulejaria, história e barroco)', 1, 0),
(@p, 'Ernesto Neto (instalações sensoriais orgânicas)', 1, 0),
(@p, 'Pedro Américo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual importante instituição cultural fundada em 1951 em São Paulo consolidou o Brasil no circuito internacional da arte moderna e contemporânea?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bienal de São Paulo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a trajetória experimental de Lygia Clark:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Superfícies moduladas e quebra da moldura tradicional', 1, 1),
(@p, 'Esculturas articuladas manipuláveis pelo público (série Bichos)', 1, 2),
(@p, 'Proposições sensoriais e terapêuticas (Objetos Relacionais)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na obra "Inserções em Circuitos Ideológicos", Cildo Meireles carimbou mensagens críticas em:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Garrafas retornáveis de refrigerante e cédulas de dinheiro em circulação.', 1, 0),
(@p, 'Quadros guardados em cofres particulares.', 0, 0),
(@p, 'Paredes de cavernas pré-históricas.', 0, 0),
(@p, 'Telas de mármore esculpidas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Instituto Inhotim, em Brumadinho (MG), é um dos maiores museus de arte contemporânea a céu aberto do mundo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 84: Elementos das Artes Visuais
-- -------------------------------------------------------------------------

-- Quiz 84.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ponto, Linha, Forma e Plano', 1, 84);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é considerado o elemento visual mais simples e fundamental da linguagem visual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ponto', 1, 0),
(@p, 'A perspectiva isométrica', 0, 0),
(@p, 'O chiaroscuro', 0, 0),
(@p, 'A moldura dourada', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento visual básico à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ponto', 1, 1, 'Unidade mínima de comunicação visual'),
(@p, 'Linha', 1, 2, 'Trajetória contínua de um ponto em movimento'),
(@p, 'Forma (Plano)', 1, 3, 'Superfície bidimensional delimitada por linhas ou cores');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Linhas horizontais costumam transmitir sensação de estabilidade e repouso, enquanto linhas diagonais sugerem dinamismo e movimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique tipos de linhas utilizados no desenho e nas artes visuais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Linha reta (vertical, horizontal, diagonal)', 1, 0),
(@p, 'Linha curva e ondulada', 1, 0),
(@p, 'Linha quebrada (zigue-zague)', 1, 0),
(@p, 'Linha sonora audível', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama a superfície plana bidimensional (altura e largura) onde se organiza uma imagem?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Plano', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a construção geométrica da dimensão zero até a terceira dimensão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ponto (adimensional)', 1, 1),
(@p, 'Linha (unidimensional - comprimento)', 1, 2),
(@p, 'Plano / Forma (bidimensional - largura e altura)', 1, 3),
(@p, 'Volume / Sólido (tridimensional - com profundidade)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando vários pontos são colocados muito próximos uns dos outros, o olho humano tende a percebê-los como:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma linha, mancha ou área de sombreado.', 1, 0),
(@p, 'Um som agudo.', 0, 0),
(@p, 'Um espaço completamente vazio.', 0, 0),
(@p, 'Uma escultura em bronze.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A espessura e o traço de uma linha (fina, grossa, contínua ou tracejada) alteram a expressividade de um desenho.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 84.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Textura, Volume, Luz e Sombra', 2, 84);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "textura tátil" e "textura visual (óptica)"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A tátil pode ser sentida pelo toque físico; a visual é simulada graficamente em uma superfície lisa.', 1, 0),
(@p, 'A tátil só existe em telas de computador; a visual só existe em pedras.', 0, 0),
(@p, 'Ambas são exatamente a mesma coisa.', 0, 0),
(@p, 'Texturas só existem na música.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O jogo de luz e sombra (degradê tonal) é o principal recurso para criar a ilusão de volume tridimensional em um desenho bidimensional.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os elementos que compõem o estudo de iluminação sobre um objeto sólido:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Luz direta e brilho (ponto mais iluminado)', 1, 0),
(@p, 'Meio-tom (transição tonal)', 1, 0),
(@p, 'Sombra própria (no objeto) e sombra projetada (na superfície)', 1, 0),
(@p, 'Rima alternada', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe a técnica de sombreado à sua descrição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Hachura', 1, 1, 'Conjunto de linhas paralelas ou cruzadas para criar sombra'),
(@p, 'Esfumato / Esfuminho', 1, 2, 'Transição tonal suave sem marcas de traço'),
(@p, 'Pontilhismo tonal', 1, 3, 'Concentração maior ou menor de pontos para dar volume');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama a sombra que um objeto lança sobre o chão ou sobre a parede atrás dele?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sombra projetada', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as zonas tonais de uma esfera iluminada, da mais clara para a mais escura:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ponto de brilho / Luz direta', 1, 1),
(@p, 'Meio-tom iluminado', 1, 2),
(@p, 'Sombra própria (núcleo da sombra)', 1, 3),
(@p, 'Sombra projetada (base de contato)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na escultura, o conceito de "volume" refere-se diretamente à:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ocupação real do espaço em três dimensões (altura, largura e profundidade).', 1, 0),
(@p, 'Intensidade sonora da obra.', 0, 0),
(@p, 'Quantidade de tinta usada na moldura.', 0, 0),
(@p, 'Apenas a largura de uma folha de papel.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A técnica da "frotagem" consiste em colocar um papel sobre uma superfície texturizada e esfregar giz ou lápis para transferir sua textura.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 84.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Composição, Enquadramento e Proporção', 2, 84);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa "composição" nas artes visuais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A organização harmoniosa e intencional dos elementos visuais dentro do espaço da obra.', 1, 0),
(@p, 'A compra de tintas em uma papelaria.', 0, 0),
(@p, 'A limpeza da galeria após uma exposição.', 0, 0),
(@p, 'O transporte de esculturas em caminhões.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada princípio compositivo ao seu efeito visual:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Simetria', 1, 1, 'Equilíbrio espelhado a partir de um eixo central'),
(@p, 'Assimetria equilibrada', 1, 2, 'Distribuição desigual de pesos visuais que ainda mantém harmonia'),
(@p, 'Ponto focal', 1, 3, 'Área de maior destaque que atrai primeiro o olhar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Regra dos Terços" divide a imagem em nove partes iguais por duas linhas horizontais e duas verticais, posicionando os elementos principais nas interseções.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique tipos de enquadramento utilizados na fotografia, cinema e desenho:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Plano Geral (mostra amplamente o ambiente)', 1, 0),
(@p, 'Plano Médio (enquadra da cintura para cima)', 1, 0),
(@p, 'Close-up / Primeiro Plano (destaca o rosto ou detalhe)', 1, 0),
(@p, 'Plano Econômico Fiscal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a diferença entre "figura" e "fundo" na percepção visual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Contraste', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os planos de enquadramento do mais aberto ao mais fechado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Grande Plano Geral (paisagem ampla)', 1, 1),
(@p, 'Plano Inteiro (corpo todo da personagem)', 1, 2),
(@p, 'Plano Americano (dos joelhos para cima)', 1, 3),
(@p, 'Plano Detalhe (foco em um olho ou objeto pequeno)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A "Proporção Áurea" (número de ouro, aproximadamente 1,618) é utilizada nas artes para:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estabelecer divisões espaciais naturalmente agradáveis e equilibradas.', 1, 0),
(@p, 'Calcular o preço do ouro no mercado financeiro.', 0, 0),
(@p, 'Medir a temperatura do forno de cerâmica.', 0, 0),
(@p, 'Contar o número de páginas de um catálogo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O "espaço negativo" corresponde às áreas vazias ao redor e entre os objetos principais de uma composição.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 84.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Perspectiva, Ritmo Visual e Semiótica da Imagem', 3, 84);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na perspectiva cônica, o que diferencia a perspectiva com 1 ponto de fuga da perspectiva com 2 pontos de fuga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Com 1 ponto, o objeto é visto de frente; com 2 pontos, o objeto é visto pela aresta (ângulo oblíquo).', 1, 0),
(@p, 'Com 1 ponto não existe linha do horizonte.', 0, 0),
(@p, 'Com 2 pontos os objetos ficam maiores à medida que se afastam.', 0, 0),
(@p, 'Não existe perspectiva com 2 pontos de fuga.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito visual à sua definição técnica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ritmo visual', 1, 1, 'Repetição alternada ou progressiva de elementos criando movimento'),
(@p, 'Escorço', 1, 2, 'Representação de uma figura em ângulo agudo projetado para frente ou para trás'),
(@p, 'Perspectiva isométrica', 1, 3, 'Projeção paralela sem ponto de fuga, comum no desenho técnico');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As leis da Gestalt (proximidade, semelhança, fechamento e continuidade) explicam como o cérebro humano organiza formas visuais em um todo coerente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique princípios da Psicologia da Forma (Gestalt) aplicados ao design e às artes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lei do Fechamento (o cérebro completa contornos interrompidos)', 1, 0),
(@p, 'Lei da Proximidade (elementos próximos são agrupados)', 1, 0),
(@p, 'Lei da Semelhança (formas ou cores iguais parecem pertencer ao mesmo grupo)', 1, 0),
(@p, 'Lei da Gravidade Universal de Newton', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual ciência estuda os signos, símbolos e a produção de significados nas imagens e linguagens?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Semiótica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três níveis de análise iconográfica propostos pelo historiador Erwin Panofsky:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Descrição pré-iconográfica (identificação das formas e objetos visíveis)', 1, 1),
(@p, 'Análise iconográfica (identificação dos temas, histórias e alegorias)', 1, 2),
(@p, 'Interpretação iconológica (significado cultural, filosófico e histórico profundo)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na perspectiva com 3 pontos de fuga, o terceiro ponto geralmente localiza-se acima ou abaixo da linha do horizonte para representar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A convergência das linhas verticais em vistas muito altas (plongée) ou muito baixas (contre-plongée).', 1, 0),
(@p, 'Apenas objetos esféricos sem arestas.', 0, 0),
(@p, 'A cor exata do céu ao meio-dia.', 0, 0),
(@p, 'O centro de uma circunferência plana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A leitura denotativa de uma imagem descreve o que está objetivamente visível, enquanto a leitura conotativa interpreta seus sentidos simbólicos e subjetivos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 85: Cores e Formas
-- -------------------------------------------------------------------------

-- Quiz 85.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Cores Primárias, Secundárias e Terciárias', 1, 85);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na teoria tradicional das cores-pigmento (tintas), quais são as três cores primárias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vermelho, amarelo e azul', 1, 0),
(@p, 'Verde, laranja e roxo', 0, 0),
(@p, 'Preto, branco e cinza', 0, 0),
(@p, 'Marrom, bege e rosa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada mistura de cores primárias à cor secundária resultante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Amarelo + Azul', 1, 1, 'Verde'),
(@p, 'Vermelho + Amarelo', 1, 2, 'Laranja'),
(@p, 'Azul + Vermelho', 1, 3, 'Roxo (Violeta)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Cores primárias são consideradas puras porque não podem ser obtidas pela mistura de outras cores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Selecione as cores classificadas como SECUNDÁRIAS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verde', 1, 0),
(@p, 'Laranja', 1, 0),
(@p, 'Violeta (Roxo)', 1, 0),
(@p, 'Amarelo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as cores obtidas pela mistura de uma cor primária com uma cor secundária vizinha?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Terciárias', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a hierarquia de formação das cores no sistema pigmento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cores Primárias (puras)', 1, 1),
(@p, 'Cores Secundárias (mistura de duas primárias)', 1, 2),
(@p, 'Cores Terciárias (mistura de uma primária com uma secundária)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Preto, branco e tons de cinza são tradicionalmente classificados na teoria das cores como:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cores neutras (acromáticas)', 1, 0),
(@p, 'Cores primárias quentes', 0, 0),
(@p, 'Cores terciárias fluorescentes', 0, 0),
(@p, 'Cores complementares do verde', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Misturar branco a uma cor aumenta sua luminosidade (criando tons pastéis), enquanto misturar preto a escurece.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 85.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Círculo Cromático, Cores Complementares e Análogas', 2, 85);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No Círculo Cromático, o que são "cores complementares"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cores posicionadas em lados diretamente opostos do círculo, que geram o maior contraste entre si.', 1, 0),
(@p, 'Cores exatamente iguais colocadas lado a lado.', 0, 0),
(@p, 'Apenas tons de cinza e marrom.', 0, 0),
(@p, 'Cores que não aparecem no arco-íris.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada cor primária à sua cor complementar oposta no círculo cromático:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Vermelho', 1, 1, 'Verde'),
(@p, 'Azul', 1, 2, 'Laranja'),
(@p, 'Amarelo', 1, 3, 'Roxo (Violeta)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As cores análogas são aquelas posicionadas lado a lado no círculo cromático (ex.: amarelo, amarelo-esverdeado e verde), criando harmonia suave.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as três propriedades fundamentais que definem qualquer cor:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Matiz (a identidade da cor: azul, vermelho, verde)', 1, 0),
(@p, 'Saturação (grau de pureza ou intensidade da cor)', 1, 0),
(@p, 'Luminosidade / Valor (grau de claro ou escuro)', 1, 0),
(@p, 'Frequência cardíaca', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a harmonia cromática que utiliza variações de claro e escuro de uma única cor?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Monocromia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o espectro visível da luz (cores do arco-íris) do maior ao menor comprimento de onda:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vermelho e Laranja', 1, 1),
(@p, 'Amarelo e Verde', 1, 2),
(@p, 'Azul e Anil', 1, 3),
(@p, 'Violeta', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual cientista demonstrou no século XVII, usando um prisma de vidro, que a luz branca solar se decompõe nas cores do espectro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Isaac Newton', 1, 0),
(@p, 'Albert Einstein', 0, 0),
(@p, 'Galileu Galilei', 0, 0),
(@p, 'Charles Darwin', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando duas cores complementares (como vermelho e verde) são misturadas fisicamente na paleta em partes iguais, elas tendem a se neutralizar, formando um tom acinzentado ou marrom.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 85.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Temperatura das Cores e Psicologia Cromática', 2, 85);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais cores compõem o grupo das "cores quentes"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vermelho, laranja e amarelo (associadas ao sol, fogo e energia)', 1, 0),
(@p, 'Azul, verde e violeta', 0, 0),
(@p, 'Apenas branco e preto', 0, 0),
(@p, 'Cinza chumbo e azul-marinho', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo cromático às sensações psicológicas mais comuns:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cores Quentes', 1, 1, 'Calor, alegria, dinamismo, proximidade e alerta'),
(@p, 'Cores Frias', 1, 2, 'Calma, frescor, tranquilidade, introspecção e distância'),
(@p, 'Cores Neutras', 1, 3, 'Equilíbrio, sobriedade e suporte visual');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na pintura de paisagens, cores quentes tendem a parecer mais próximas do observador, enquanto cores frias sugerem afastamento e profundidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique cores classificadas como FRIAS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Azul', 1, 0),
(@p, 'Verde', 1, 0),
(@p, 'Violeta / Lilás', 1, 0),
(@p, 'Laranja vibrante', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o uso de várias cores diferentes em uma mesma obra ou composição visual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Policromia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a transição de temperatura cromática do mais quente ao mais frio:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vermelho e Laranja (muito quentes)', 1, 1),
(@p, 'Amarelo (quente luminoso)', 1, 2),
(@p, 'Verde (transição fresca)', 1, 3),
(@p, 'Azul e Violeta (frios profundos)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na "Fase Azul" de Pablo Picasso (1901-1904), o uso predominante de tons frios azulados expressava:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Melancolia, solidão, tristeza e empatia pelos marginalizados.', 1, 0),
(@p, 'Euforia festiva e comemoração esportiva.', 0, 0),
(@p, 'Publicidade de produtos de limpeza.', 0, 0),
(@p, 'Estudos técnicos de arquitetura naval.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O simbolismo das cores varia conforme a cultura; por exemplo, o branco representa luto em algumas culturas asiáticas e paz ou pureza no Ocidente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 85.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Síntese Aditiva (RGB), Subtrativa (CMYK) e Formas Geométricas vs Orgânicas', 3, 85);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença fundamental entre o sistema de cores RGB e o sistema CMYK?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'RGB é síntese aditiva de luz (telas digitais); CMYK é síntese subtrativa de pigmentos (impressão gráfica).', 1, 0),
(@p, 'RGB é usado apenas em impressoras; CMYK é usado apenas em monitores.', 0, 0),
(@p, 'Ambos possuem exatamente as mesmas cores primárias.', 0, 0),
(@p, 'RGB não possui cor azul.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sistema de cor à sua resultante máxima:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Síntese Aditiva (RGB - Vermelho, Verde, Azul)', 1, 1, 'A soma das três luzes resulta no BRANCO'),
(@p, 'Síntese Subtrativa (CMY - Ciano, Magenta, Amarelo)', 1, 2, 'A soma dos três pigmentos resulta no PRETO/ESCURO'),
(@p, 'Canal K no sistema CMYK', 1, 3, 'Tinta preta (Key) para contraste e definição');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As formas geométricas possuem contornos regulares e matemáticos (círculo, quadrado, triângulo), enquanto as formas orgânicas têm contornos livres e irregulares inspirados na natureza.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as cores primárias da síntese subtrativa utilizada na indústria gráfica (CMYK):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ciano (Cyan)', 1, 0),
(@p, 'Magenta', 1, 0),
(@p, 'Amarelo (Yellow)', 1, 0),
(@p, 'Verde-limão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as formas tridimensionais com faces planas poligonais (como cubos, pirâmides e prismas)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Poliedros', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de reprodução cromática em uma gráfica offset:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Converter o arquivo digital de RGB para CMYK', 1, 1),
(@p, 'Separar a imagem em quatro matrizes (Ciano, Magenta, Amarelo e Preto)', 1, 2),
(@p, 'Imprimir sobre o papel em retículas de pontos sobrepostos', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um objeto nos parece vermelho sob a luz solar porque sua superfície:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Absorve quase todas as outras frequências do espectro e reflete a luz vermelha.', 1, 0),
(@p, 'Absorve apenas a luz vermelha e reflete todas as outras.', 0, 0),
(@p, 'Emite radiação infravermelha invisível.', 0, 0),
(@p, 'Não interage com a luz.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "simetria radial" ocorre quando formas e elementos se irradiam a partir de um ponto central, como em mandalas e rosáceas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 86: Teatro
-- -------------------------------------------------------------------------

-- Quiz 86.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Origens do Teatro e Elementos Cênicos', 1, 86);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Onde nasceu o teatro ocidental na Antiguidade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na Grécia Antiga, a partir dos rituais e festivais em homenagem ao deus Dionísio.', 1, 0),
(@p, 'Nos Estados Unidos, com a invenção do cinema falado.', 0, 0),
(@p, 'Na Inglaterra, durante a Revolução Industrial.', 0, 0),
(@p, 'No Brasil colonial, com as novelas de rádio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os três elementos essenciais mínimos para que o fenômeno teatral aconteça são: o ator, o texto/ação e o público.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento cênico à sua função no espetáculo teatral:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cenografia', 1, 1, 'Criação e ambientação visual do espaço cênico'),
(@p, 'Figurino', 1, 2, 'Vestimentas e acessórios que caracterizam as personagens'),
(@p, 'Sonoplastia', 1, 3, 'Efeitos sonoros e trilha musical da peça');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique profissionais envolvidos na produção de uma peça teatral:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dramaturgo (autor do texto teatral)', 1, 0),
(@p, 'Diretor / Encenador', 1, 0),
(@p, 'Iluminador e Cenógrafo', 1, 0),
(@p, 'Engenheiro petroquímico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama a fala longa proferida por uma única personagem sozinha em cena?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Monólogo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de montagem de um espetáculo teatral:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Escolha ou escrita do texto dramático', 1, 1),
(@p, 'Leitura de mesa e distribuição dos papéis', 1, 2),
(@p, 'Ensaios de marcação, corpo e voz', 1, 3),
(@p, 'Ensaio geral com figurino, luz e estreia ao público', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No texto teatral, as indicações escritas pelo autor para orientar gestos, entradas e cenário (geralmente entre parênteses) chamam-se:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Rubricas (ou didascálias)', 1, 0),
(@p, 'Rimas ricas', 0, 0),
(@p, 'Notas de rodapé bancárias', 0, 0),
(@p, 'Estrofes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No teatro grego antigo, os atores usavam máscaras expressivas e calçados altos (coturnos) para serem vistos e ouvidos nos grandes teatros ao ar livre.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 86.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Gêneros Teatrais: Tragédia, Comédia e Drama', 2, 86);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a característica central da Tragédia clássica grega?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conflito elevado envolvendo heróis ou deuses diante do destino implacável, culminando em desfecho funesto.', 1, 0),
(@p, 'Zombaria leve de situações cotidianas com final sempre festivo.', 0, 0),
(@p, 'Apresentação exclusiva de números acrobáticos de circo.', 0, 0),
(@p, 'Ausência total de conflitos entre as personagens.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada gênero teatral à sua característica principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tragédia', 1, 1, 'Tom solene, destino trágico e catarse emocional'),
(@p, 'Comédia', 1, 2, 'Humor, sátira aos costumes e resolução feliz'),
(@p, 'Farsa', 1, 3, 'Comédia curta, caricatural e exagerada');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo Aristóteles, a "catarse" é a purificação das emoções (terror e piedade) vivenciada pelo público ao assistir a uma tragédia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três grandes dramaturgos trágicos da Grécia Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ésquilo', 1, 0),
(@p, 'Sófocles (autor de Édipo Rei)', 1, 0),
(@p, 'Eurípides (autor de Medeia)', 1, 0),
(@p, 'Aristófanes (comediógrafo)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual gênero teatral moderno combina elementos sérios e cômicos, aproximando-se dos conflitos humanos cotidianos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Drama', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura clássica da ação dramática em uma peça:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Exposição inicial da situação e das personagens', 1, 1),
(@p, 'Surgimento e complicação do conflito', 1, 2),
(@p, 'Clímax (ponto máximo de tensão dramática)', 1, 3),
(@p, 'Desenlace / Resolução final', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual gênero teatral medieval de caráter religioso ou moralizante foi muito utilizado no Brasil pelo padre José de Anchieta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Auto', 1, 0),
(@p, 'Ópera bufa', 0, 0),
(@p, 'Stand-up comedy', 0, 0),
(@p, 'Vaudeville', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Commedia dell''Arte" surgiu na Itália renascentista com trupes itinerantes, improvisação e personagens fixos como Arlequim, Colombina e Pantaleão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 86.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('História do Teatro: Da Grécia Antiga ao Teatro Elisabetano', 2, 86);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quem é considerado pela tradição grega o primeiro ator da história por destacar-se do coro e dialogar com ele?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Téspis', 1, 0),
(@p, 'Homero', 0, 0),
(@p, 'Platão', 0, 0),
(@p, 'Alexandre, o Grande', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada dramaturgo à sua época e obra célebre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'William Shakespeare (Teatro Elisabetano)', 1, 1, 'Hamlet, Macbeth e Romeu e Julieta'),
(@p, 'Molière (Classicismo Francês)', 1, 2, 'O Avarento e O Doente Imaginário'),
(@p, 'Gil Vicente (Humanismo Português)', 1, 3, 'Auto da Barca do Inferno');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Teatro Elisabetano inglês (época de Shakespeare), os papéis femininos eram interpretados por homens jovens, pois mulheres eram proibidas de atuar profissionalmente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique partes arquitetônicas do teatro grego antigo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Theatron (arquibancada semicircular na encosta)', 1, 0),
(@p, 'Orquestra (espaço circular onde atuava o coro)', 1, 0),
(@p, 'Skene (construção ao fundo usada como camarim e cenário)', 1, 0),
(@p, 'Tela de projeção IMAX', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual era o nome do famoso teatro circular ao ar livre de Londres associado às peças de William Shakespeare?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Globe Theatre', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os períodos históricos do teatro ocidental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Teatro Grego Clássico (séc. V a.C.)', 1, 1),
(@p, 'Teatro Medieval (Autos e Mistérios)', 1, 2),
(@p, 'Teatro Elisabetano (final do séc. XVI)', 1, 3),
(@p, 'Teatro Realista e Moderno (séc. XIX e XX)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No século XIX, o dramaturgo brasileiro Martins Pena ficou célebre por criar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A comédia de costumes brasileira (como "O Juiz de Paz na Roça").', 1, 0),
(@p, 'O teatro épico alemão.', 0, 0),
(@p, 'As tragédias gregas originais.', 0, 0),
(@p, 'O cinema mudo hollywoodiano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "deus ex machina" originou-se no teatro grego quando um guindaste baixava um ator representando um deus para resolver o enredo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 86.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teatro Moderno e Contemporâneo: Stanislavski, Brecht e Teatro do Oprimido', 3, 86);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era o objetivo do "efeito de distanciamento" (Verfremdungseffekt) criado pelo dramaturgo alemão Bertolt Brecht?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Impedir a ilusão passiva do público para despertar a reflexão crítica e política sobre a sociedade.', 1, 0),
(@p, 'Fazer o público chorar sem pensar nas causas sociais.', 0, 0),
(@p, 'Esconder completamente os refletores e músicos.', 0, 0),
(@p, 'Imitar fielmente a ópera barroca italiana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada teórico/diretor teatral à sua contribuição fundamental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Constantin Stanislavski', 1, 1, 'Sistema de atuação realista e memória emotiva'),
(@p, 'Bertolt Brecht', 1, 2, 'Teatro Épico e distanciamento crítico'),
(@p, 'Augusto Boal', 1, 3, 'Teatro do Oprimido e o conceito de espect-ator');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No "Teatro-Fórum", uma das técnicas do Teatro do Oprimido de Augusto Boal, o público pode interromper a cena e substituir o protagonista para testar soluções reais de opressão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do "Teatro do Absurdo" (como em Samuel Beckett e Eugène Ionesco):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Diálogos fragmentados, ilógicos ou repetitivos', 1, 0),
(@p, 'Questionamento do sentido da existência humana após as guerras mundiais', 1, 0),
(@p, 'Ruptura com a narrativa linear tradicional', 1, 0),
(@p, 'Enredo histórico linear glorificando monarquias', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual encenador polonês, autor de "Em Busca de um Teatro Pobre", focou a arte teatral na essência do corpo e da voz do ator?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Jerzy Grotowski', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução da relação palco-plateia no teatro moderno:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Palco italiano tradicional com a "quarta parede" invisível (Realismo)', 1, 1),
(@p, 'Quebra da quarta parede e narração direta ao público (Teatro Épico)', 1, 2),
(@p, 'Transformação do espectador em participante ativo da cena (Teatro do Oprimido)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A encenação de "Vestido de Noiva" (1943), de Nelson Rodrigues e dirigida por Ziembinski, é considerada o marco inicial do:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Teatro moderno brasileiro (com planos simultâneos de realidade, memória e alucinação).', 1, 0),
(@p, 'Teatro jesuítico colonial.', 0, 0),
(@p, 'Teatro de sombras chinês.', 0, 0),
(@p, 'Teatro grego clássico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O conceito de "quarta parede" refere-se à barreira imaginária na boca de cena do palco italiano através da qual o público observa a ação sem interferir.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 87: Música
-- -------------------------------------------------------------------------

-- Quiz 87.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propriedades do Som: Altura, Duração, Intensidade e Timbre', 1, 87);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual propriedade do som permite diferenciar um som grave (grosso) de um som agudo (fino)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Altura', 1, 0),
(@p, 'Intensidade', 0, 0),
(@p, 'Duração', 0, 0),
(@p, 'Timbre', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada propriedade física do som à sua percepção musical:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Altura', 1, 1, 'Sons graves, médios ou agudos (frequência)'),
(@p, 'Intensidade', 1, 2, 'Sons fortes ou fracos (volume / amplitude)'),
(@p, 'Duração', 1, 3, 'Sons longos ou curtos (tempo)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O timbre é a "identidade sonora" que nos permite distinguir a voz de duas pessoas diferentes ou um violão de um piano tocando a mesma nota.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais são as quatro propriedades fundamentais do som na música?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Altura', 1, 0),
(@p, 'Duração', 1, 0),
(@p, 'Intensidade', 1, 0),
(@p, 'Timbre', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a ausência intencional de som que organiza o tempo e a respiração dentro de uma obra musical?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Silêncio (ou Pausa)', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as sete notas musicais da escala natural ascendente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dó - Ré', 1, 1),
(@p, 'Mi - Fá', 1, 2),
(@p, 'Sol - Lá', 1, 3),
(@p, 'Si', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O termo "paisagem sonora" (soundscape), cunhado pelo compositor Murray Schafer, refere-se:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ao conjunto de todos os sons naturais, humanos e mecânicos que caracterizam um ambiente.', 1, 0),
(@p, 'Apenas a pinturas de montanhas feitas a óleo.', 0, 0),
(@p, 'Ao silêncio absoluto do espaço sideral.', 0, 0),
(@p, 'À capa impressa de um disco de vinil.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Fisicamente, o som é uma onda mecânica que precisa de um meio material (como o ar ou a água) para se propagar.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 87.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Elementos da Música: Melodia, Harmonia e Ritmo', 2, 87);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual elemento musical corresponde à sucessão linear de notas tocadas ou cantadas uma após a outra, formando a "linha cantável" da música?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Melodia', 1, 0),
(@p, 'Harmonia', 0, 0),
(@p, 'Andamento', 0, 0),
(@p, 'Dinâmica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento estrutural da música à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Melodia', 1, 1, 'Sucessão horizontal de sons musicais com sentido'),
(@p, 'Harmonia', 1, 2, 'Combinação vertical e simultânea de sons (acordes)'),
(@p, 'Ritmo', 1, 3, 'Organização dos sons e silêncios no tempo (pulsação)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um acorde ocorre quando três ou mais notas diferentes são tocadas simultaneamente, formando a base da harmonia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique conceitos ligados ao ritmo e ao tempo musical:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pulso (batida regular da música)', 1, 0),
(@p, 'Compasso (agrupamento de tempos: binário, ternário, quaternário)', 1, 0),
(@p, 'Andamento (velocidade da execução: lento, moderato, allegro)', 1, 0),
(@p, 'Perspectiva atmosférica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual aparelho mecânico ou digital produz pulsos regulares para ajudar músicos a manterem o andamento exato?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Metrônomo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os andamentos musicais do mais lento ao mais rápido:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Largo / Adagio (muito lento)', 1, 1),
(@p, 'Andante (moderadamente lento, como caminhar)', 1, 2),
(@p, 'Allegro (rápido e alegre)', 1, 3),
(@p, 'Presto (muito rápido)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa "polifonia" na textura musical?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Várias vozes ou linhas melódicas independentes soando simultaneamente.', 1, 0),
(@p, 'Apenas uma única voz cantando sem nenhum acompanhamento.', 0, 0),
(@p, 'Um instrumento de percussão sem altura definida.', 0, 0),
(@p, 'O volume máximo de um amplificador.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "dinâmica" musical refere-se às variações de intensidade (como piano = suave e forte = intenso) ao longo de uma peça.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 87.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Notação Musical, Claves e Famílias de Instrumentos', 2, 87);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De quantas linhas e quantos espaços é composto o pentagrama (pauta musical tradicional)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5 linhas e 4 espaços (contados de baixo para cima)', 1, 0),
(@p, '3 linhas e 2 espaços', 0, 0),
(@p, '10 linhas e 10 espaços', 0, 0),
(@p, '4 linhas e 5 espaços', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada família de instrumentos da orquestra ao seu modo de produção sonora:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cordas (violino, violoncelo, harpa)', 1, 1, 'Vibração de cordas friccionadas ou dedilhadas'),
(@p, 'Sopros / Madeiras e Metais (flauta, trompete)', 1, 2, 'Vibração de uma coluna de ar'),
(@p, 'Percussão (tímpano, pandeiro, xilofone)', 1, 3, 'Impacto, agitação ou raspagem');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Clave de Sol é escrita a partir da segunda linha do pentagrama e é utilizada principalmente para instrumentos e vozes agudas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique figuras rítmicas da notação musical tradicional:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Semibreve e Mínima', 1, 0),
(@p, 'Semínima e Colcheia', 1, 0),
(@p, 'Semicolcheia', 1, 0),
(@p, 'Hexágono regular', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual clave é usada na partitura para registrar as notas graves (como a mão esquerda do piano e o contrabaixo)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Clave de Fá', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as figuras musicais da maior duração para a menor duração:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Semibreve (4 tempos no compasso 4/4)', 1, 1),
(@p, 'Mínima (2 tempos)', 1, 2),
(@p, 'Semínima (1 tempo)', 1, 3),
(@p, 'Colcheia (meio tempo)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na classificação organológica moderna (Hornbostel-Sachs), instrumentos como sintetizadores e guitarras elétricas pertencem aos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eletrofones', 1, 0),
(@p, 'Membranofones', 0, 0),
(@p, 'Aerofones', 0, 0),
(@p, 'Idiofones', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As cifras musicais utilizam as letras de A a G para representar as notas musicais (A = Lá, B = Si, C = Dó, D = Ré, E = Mi, F = Fá, G = Sol).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 87.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('História da Música Ocidental e Gêneros Musicais Brasileiros', 3, 87);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual compositor alemão é considerado o ápice da música polifônica e contrapontística do período Barroco?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Johann Sebastian Bach', 1, 0),
(@p, 'Ludwig van Beethoven', 0, 0),
(@p, 'Igor Stravinsky', 0, 0),
(@p, 'Tom Jobim', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada compositor ou gênero musical ao seu período ou movimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Wolfgang Amadeus Mozart', 1, 1, 'Classicismo musical (séc. XVIII)'),
(@p, 'Heitor Villa-Lobos', 1, 2, 'Nacionalismo Modernista Brasileiro (Bachianas Brasileiras)'),
(@p, 'João Gilberto e Tom Jobim', 1, 3, 'Bossa Nova (final dos anos 1950)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ludwig van Beethoven promoveu a transição entre o Classicismo e o Romantismo musical, ampliando a expressividade dramática da sinfonia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique gêneros musicais reconhecidos como Patrimônio Cultural do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Samba de Roda do Recôncavo Baiano', 1, 0),
(@p, 'Frevo pernambucano', 1, 0),
(@p, 'Choro (considerado o primeiro gênero urbano tipicamente brasileiro)', 1, 0),
(@p, 'Canto gregoriano medieval europeu', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual movimento cultural brasileiro do final da década de 1960 (com Caetano Veloso, Gilberto Gil e Os Mutantes) fundiu guitarra elétrica, ritmos brasileiros e poesia de vanguarda?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tropicália (Tropicalismo)', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os grandes períodos da História da Música Erudita Ocidental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Música Medieval (Canto Gregoriano) e Renascentista', 1, 1),
(@p, 'Música Barroca (Bach, Vivaldi, Handel)', 1, 2),
(@p, 'Classicismo (Haydn, Mozart) e Romantismo (Chopin, Tchaikovsky)', 1, 3),
(@p, 'Música Moderna e Contemporânea do século XX (Stravinsky, Schoenberg)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O "Dodecafonismo", sistema de composição atonal criado por Arnold Schoenberg no início do século XX, baseia-se na:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Utilização igualitária das doze notas da escala cromática sem centro tonal hierárquico.', 1, 0),
(@p, 'Repetição exclusiva de apenas duas notas musicais.', 0, 0),
(@p, 'Proibição de instrumentos de corda na orquestra.', 0, 0),
(@p, 'Retomada rigorosa das regras do canto gregoriano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pixinguinha foi um dos maiores compositores, flautistas e arranjadores da história do Choro e da música popular brasileira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);