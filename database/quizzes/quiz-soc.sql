USE luminebd;

-- =========================================================================
-- MATÉRIA 13: SOCIOLOGIA (8 CONTEÚDOS)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 1: O que é Sociologia (Surgimento e Contexto)
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'O que é Sociologia (Surgimento e Contexto)' AND id_materia = 13 LIMIT 1);

-- Quiz 1.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Surgimento da Sociologia: Revolução Industrial, Revolução Francesa e Iluminismo', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais grandes acontecimentos históricos dos séculos XVIII e XIX criaram as condições sociais e intelectuais para o surgimento da Sociologia como ciência?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Revolução Industrial, a Revolução Francesa e o movimento filosófico do Iluminismo', 1, 0),
(@p, 'A queda do Império Romano do Ocidente e o início do feudalismo europeu', 0, 0),
(@p, 'As Grandes Navegações ibéricas e o Tratado de Tordesilhas no século XV', 0, 0),
(@p, 'A Guerra Fria e a corrida espacial entre Estados Unidos e União Soviética', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada processo histórico ao impacto que estimulou o nascimento da Sociologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Revolução Industrial', 1, 1, 'Urbanização acelerada, surgimento do operariado e agravamento da questão social'),
(@p, 'Revolução Francesa (1789)', 1, 2, 'Queda do Antigo Regime absolutista e afirmação da cidadania e dos direitos políticos'),
(@p, 'Iluminismo', 1, 3, 'Valorização da razão humana e do método científico para explicar a realidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Sociologia surgiu como uma tentativa de compreender e explicar cientificamente as profundas transformações econômicas, políticas e urbanas que desorganizaram a sociedade tradicional europeia no século XIX.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique problemas sociais que se intensificaram com a Revolução Industrial na Europa do século XIX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Jornadas de trabalho exaustivas de até 16 horas diárias, inclusive para mulheres e crianças', 1, 0),
(@p, 'Crescimento desordenado das cidades industriais sem saneamento básico adequado', 1, 0),
(@p, 'Aumento da pobreza urbana, epidemias e conflitos entre trabalhadores e proprietários das fábricas', 1, 0),
(@p, 'Distribuição igualitária de terras e fim imediato de todas as desigualdades econômicas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual pensador francês do século XIX cunhou o termo "Sociologia" para designar a ciência positiva dedicada ao estudo da sociedade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Auguste Comte', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os marcos históricos relacionados à formação da modernidade e da Sociologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Expansão do racionalismo iluminista na Europa (século XVIII)', 1, 1),
(@p, 'Início da Primeira Revolução Industrial na Inglaterra (década de 1760)', 1, 2),
(@p, 'Eclosão da Revolução Francesa e queda da monarquia absolutista (1789)', 1, 3),
(@p, 'Consolidação da Sociologia como disciplina acadêmica autônoma (final do século XIX)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Antes do surgimento das Ciências Sociais modernas, como os fenômenos políticos e as hierarquias sociais eram majoritariamente explicados na Europa medieval?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Por meio de explicações teológicas e religiosas, atribuindo a ordem social à vontade divina', 1, 0),
(@p, 'Por meio de pesquisas estatísticas e censos demográficos rigorosos', 0, 0),
(@p, 'Pela teoria da evolução biológica de Charles Darwin', 0, 0),
(@p, 'Pelo materialismo histórico-dialético', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A urbanização acelerada provocada pela industrialização enfraqueceu os laços comunitários tradicionais das aldeias rurais e deu origem a novas formas de convivência impessoal nas grandes metrópoles.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 1.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Imaginação Sociológica, Senso Comum e Estranhamento', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Segundo o sociólogo norte-americano Charles Wright Mills, o que significa desenvolver a "imaginação sociológica"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A capacidade de relacionar a biografia individual e os problemas pessoais com a história e as estruturas amplas da sociedade', 1, 0),
(@p, 'A habilidade artística de inventar sociedades utópicas sem nenhuma base empírica', 0, 0),
(@p, 'A crença de que o sucesso ou fracasso de alguém depende exclusivamente de sua genética', 0, 0),
(@p, 'O abandono de toda pesquisa científica em favor de opiniões cotidianas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada postura analítica da Sociologia à sua definição correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estranhamento', 1, 1, 'Afastar-se da familiaridade cotidiana para questionar hábitos como se fossem novos'),
(@p, 'Desnaturalização', 1, 2, 'Compreender que normas e desigualdades são construções históricas, e não leis da natureza'),
(@p, 'Senso Comum', 1, 3, 'Conhecimento cotidiano, imediato e assistemático, muitas vezes baseado em tradições e preconceitos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando um sociólogo analisa o desemprego em massa de um país não apenas como preguiça individual de cada trabalhador, mas como resultado de crises econômicas e reestruturações produtivas, ele está aplicando a imaginação sociológica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique diferenças fundamentais entre o conhecimento sociológico (científico) e o senso comum:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O conhecimento sociológico apoia-se em teorias, conceitos rigorosos e métodos de investigação empírica', 1, 0),
(@p, 'O senso comum tende a generalizar experiências particulares sem verificação sistemática', 1, 0),
(@p, 'A Sociologia busca desnaturalizar fenômenos que o senso comum enxerga como imutáveis ou naturais', 1, 0),
(@p, 'O conhecimento sociológico baseia-se exclusivamente em superstições populares e opiniões pessoais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito sociológico designa o ato de perceber que práticas culturais, papéis de gênero e formas de organização social não são biologicamente determinados, mas historicamente construídos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Desnaturalização', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de uma investigação sociológica científica sobre um fenômeno social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Formulação de um problema de pesquisa e ruptura com explicações do senso comum', 1, 1),
(@p, 'Revisão teórica e elaboração de hipóteses orientadoras', 1, 2),
(@p, 'Coleta sistemática de dados empíricos (entrevistas, estatísticas, observação)', 1, 3),
(@p, 'Análise crítica dos resultados e publicação das conclusões para debate científico', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dizer que "sempre existiram pobres e ricos, portanto a desigualdade é algo natural e imutável" ilustra qual tipo de raciocínio combatido pela Sociologia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A naturalização dos fenômenos sociais típica do senso comum', 1, 0),
(@p, 'A aplicação rigorosa do método comparativo histórico', 0, 0),
(@p, 'O estranhamento crítico diante das estruturas de poder', 0, 0),
(@p, 'A imaginação sociológica de Wright Mills', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Sociologia descarta completamente o senso comum como objeto de estudo, nunca se interessando em investigar as crenças e representações cotidianas das pessoas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 1.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Auguste Comte, Positivismo e a Lei dos Três Estados', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Auguste Comte inicialmente denominou a ciência da sociedade antes de criar o neologismo "Sociologia", refletindo sua inspiração nas ciências naturais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Física Social', 1, 0),
(@p, 'Materialismo Dialético', 0, 0),
(@p, 'Antropologia Cultural', 0, 0),
(@p, 'Psicologia Coletiva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada estágio da "Lei dos Três Estados" de Auguste Comte à sua forma de explicar o mundo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estado Teológico (ou Fictício)', 1, 1, 'Explicação dos fenômenos por meio de forças sobrenaturais, deuses ou espíritos'),
(@p, 'Estado Metafísico (ou Abstrato)', 1, 2, 'Substituição dos deuses por entidades abstratas como a Natureza, a Essência ou a Razão pura'),
(@p, 'Estado Positivo (ou Científico)', 1, 3, 'Busca das leis invariáveis dos fenômenos por meio da observação, experimentação e comparação');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O lema positivista "Ordem e Progresso", inscrito na bandeira republicana brasileira, sintetiza a visão de Comte de que o desenvolvimento social (progresso) só é possível mediante a estabilidade e harmonia das instituições (ordem).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características centrais do Positivismo comtiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Defesa da neutralidade científica e da objetividade inspiradas na Física e na Biologia', 1, 0),
(@p, 'Divisão da Sociologia em Estática Social (condições de ordem) e Dinâmica Social (leis do progresso)', 1, 0),
(@p, 'Crença na evolução linear das sociedades humanas rumo ao estágio científico industrial', 1, 0),
(@p, 'Incentivo às revoluções violentas do proletariado para destruir o Estado capitalista', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na classificação hierárquica das ciências proposta por Auguste Comte (Matemática, Astronomia, Física, Química, Biologia e Sociologia), qual ciência ocupa o topo como a mais complexa e dependente das anteriores?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sociologia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três estados evolutivos do espírito humano segundo a teoria de Auguste Comte:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estado Teológico', 1, 1),
(@p, 'Estado Metafísico', 1, 2),
(@p, 'Estado Positivo', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal crítica dirigida posteriormente ao positivismo clássico nas Ciências Sociais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Seu caráter eurocêntrico (ao julgar outras culturas como "atrasadas") e conservador, ao tratar conflitos sociais como meras doenças a serem corrigidas', 1, 0),
(@p, 'O fato de Comte rejeitar totalmente a importância da ciência e da indústria', 0, 0),
(@p, 'A defesa do anarquismo e da abolição imediata de todas as leis', 0, 0),
(@p, 'A recusa em observar fatos concretos da sociedade', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Brasil do final do século XIX, as ideias positivistas exerceram forte influência sobre militares, intelectuais e líderes da Proclamação da República em 1889.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 1.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Epistemologia das Ciências Sociais: Objeto, Método e Clássicos', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual particularidade epistemológica distingue fundamentalmente o objeto de estudo das Ciências Sociais em relação ao das Ciências da Natureza?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nas Ciências Sociais, o pesquisador faz parte da própria realidade histórica e cultural que investiga, havendo coincidência entre sujeito e objeto do conhecimento', 1, 0),
(@p, 'Nas Ciências Sociais é possível realizar experimentos laboratoriais isolados com controle absoluto de todas as variáveis humanas', 0, 0),
(@p, 'Os fenômenos sociais obedecem a leis matemáticas idênticas à lei da gravitação universal', 0, 0),
(@p, 'As Ciências Sociais não utilizam dados empíricos, baseando-se apenas em intuição literária', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada um dos três autores clássicos da Sociologia ao seu objeto central de análise:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Émile Durkheim', 1, 1, 'O Fato Social e os mecanismos de coesão e solidariedade social'),
(@p, 'Max Weber', 1, 2, 'A Ação Social dotada de sentido subjetivo e os processos de racionalização'),
(@p, 'Karl Marx', 1, 3, 'As relações materiais de produção, o trabalho alienado e a luta de classes');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A institucionalização da Sociologia no Brasil ganhou impulso decisivo na década de 1930 com a fundação da Escola Livre de Sociologia e Política de São Paulo (1933) e da Universidade de São Paulo — USP (1934), contando com missões de professores estrangeiros como Claude Lévi-Strauss e Roger Bastide.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características metodológicas importantes da pesquisa sociológica contemporânea:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Combinação entre métodos quantitativos (surveys, estatísticas censitárias) e qualitativos (entrevistas em profundidade, etnografia)', 1, 0),
(@p, 'Vigilância epistemológica para controlar os preconceitos e valores do próprio investigador durante a análise', 1, 0),
(@p, 'Contextualização histórica e espacial dos fenômenos analisados, evitando generalizações a-históricas', 1, 0),
(@p, 'Eliminação completa de qualquer interpretação teórica em favor da simples leitura bruta de números', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual pensador iluminista precursor das Ciências Sociais escreveu "O Espírito das Leis" (1748), relacionando as leis e formas de governo às condições sociais, culturais e geográficas de cada povo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Montesquieu', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o desenvolvimento histórico da Sociologia desde seus precursores até a consolidação institucional:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Filosofia social iluminista e contratualista (Montesquieu, Rousseau, Saint-Simon)', 1, 1),
(@p, 'Formulação do positivismo e batismo da Sociologia por Auguste Comte (1839)', 1, 2),
(@p, 'Sistematização teórica e metodológica pelos clássicos (Marx, Durkheim e Weber)', 1, 3),
(@p, 'Expansão dos departamentos universitários e pesquisas empíricas no século XX', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o sociólogo francês Pierre Bourdieu denominou "ruptura epistemológica" na prática sociológica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O esforço metodológico constante de romper com as pré-noções, evidências aparentes e categorias espontâneas do senso comum antes de construir o objeto científico', 1, 0),
(@p, 'A proibição de utilizar dados estatísticos ou históricos nas Ciências Humanas', 0, 0),
(@p, 'A substituição da Sociologia pela Biologia evolutiva', 0, 0),
(@p, 'A aceitação imediata das opiniões políticas dominantes como verdades científicas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Embora Marx, Durkheim e Weber tenham divergido profundamente quanto ao método e à visão política da sociedade moderna, todos buscaram compreender as transformações trazidas pelo capitalismo industrial e pela modernidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 2: Émile Durkheim
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Émile Durkheim' AND id_materia = 13 LIMIT 1);

-- Quiz 2.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fato Social: Coercitividade, Exterioridade e Generalidade', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para Émile Durkheim, qual deve ser o objeto específico de estudo da Sociologia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O fato social, entendido como maneiras de agir, pensar e sentir exteriores ao indivíduo e dotadas de poder de coerção', 1, 0),
(@p, 'Os impulsos biológicos e hereditários do cérebro humano individual', 0, 0),
(@p, 'Apenas as decisões isoladas dos grandes reis e generais da história', 0, 0),
(@p, 'Os sonhos inconscientes analisados na clínica psicanalítica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada uma das três características do Fato Social segundo Durkheim à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Coercitividade', 1, 1, 'Força moral ou legal que o fato social exerce sobre os indivíduos, impondo sanções a quem o desrespeita'),
(@p, 'Exterioridade', 1, 2, 'Existência fora das consciências individuais, precedendo o nascimento de cada pessoa'),
(@p, 'Generalidade', 1, 3, 'Caráter coletivo, repetindo-se na maioria dos membros de uma sociedade ou grupo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O idioma falado em um país, o sistema monetário, as leis jurídicas e as regras de etiqueta são exemplos clássicos de fatos sociais durkheimianos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a regra metodológica de Durkheim "tratar os fatos sociais como coisas":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Significa observar os fenômenos sociais objetivamente, sem pré-noções ou julgamentos subjetivos', 1, 0),
(@p, 'Reconhece que a realidade social oferece resistência à vontade individual, não podendo ser mudada por mero desejo', 1, 0),
(@p, 'Exige que um fato social seja explicado sempre por outro fato social antecedente, e não pela psicologia individual', 1, 0),
(@p, 'Significa afirmar que os seres humanos são objetos inanimados sem sentimentos nem cultura', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual livro publicado por Émile Durkheim em 1895 sistematizou a metodologia científica da Sociologia e definiu o conceito de fato social?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'As Regras do Método Sociológico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a lógica de atuação de um fato social sobre um indivíduo desde o nascimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O indivíduo nasce em uma sociedade com normas, língua e leis já estabelecidas (exterioridade)', 1, 1),
(@p, 'Por meio da educação e da socialização, essas normas são internalizadas', 1, 2),
(@p, 'Se o indivíduo tenta transgredir a norma, sofre punições legais ou reprovação moral (coercitividade)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando uma pessoa escolhe falar português no Brasil para conseguir trabalhar, estudar e ser compreendida, mesmo sem haver um policial obrigando-a a cada frase, ela experimenta qual característica do fato social?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A coercitividade indireta, pois tentar usar um idioma desconhecido no cotidiano inviabiliza a comunicação e gera exclusão social', 1, 0),
(@p, 'A inexistência de regras coletivas na linguagem humana', 0, 0),
(@p, 'A determinação genética do idioma pelo DNA', 0, 0),
(@p, 'O colapso total da consciência coletiva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Durkheim, se um comportamento ocorre apenas em um único indivíduo isolado, sem compartilhamento nem pressão coletiva, ele não constitui um fato social.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Divisão do Trabalho Social: Solidariedade Mecânica e Orgânica', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na obra "Da Divisão do Trabalho Social" (1893), qual tipo de coesão caracteriza as sociedades pré-industriais tradicionais, marcadas pela semelhança entre seus membros e forte consciência coletiva?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solidariedade Mecânica', 1, 0),
(@p, 'Solidariedade Orgânica', 0, 0),
(@p, 'Luta de Classes Revolucionária', 0, 0),
(@p, 'Dominação Racional-Legal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de solidariedade social durkheimiana às suas características predominantes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Solidariedade Mecânica', 1, 1, 'Baixa divisão do trabalho, homogeneidade de crenças e predomínio do Direito Repressivo'),
(@p, 'Solidariedade Orgânica', 1, 2, 'Alta especialização profissional, interdependência funcional e predomínio do Direito Restitutivo'),
(@p, 'Densidade Moral (ou Dinâmica)', 1, 3, 'Intensificação das interações e trocas sociais que impulsiona a divisão do trabalho');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durkheim utiliza a metáfora de um organismo vivo para explicar a solidariedade orgânica porque, assim como órgãos diferentes (coração, pulmão, cérebro) dependem uns dos outros para manter o corpo vivo, indivíduos com funções especializadas dependem mutuamente uns dos outros na sociedade moderna.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a transição da solidariedade mecânica para a solidariedade orgânica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumenta a individualidade e a autonomia das consciências individuais em relação à tradição', 1, 0),
(@p, 'O Direito torna-se predominantemente restitutivo (civil, comercial, administrativo), visando reparar danos e organizar funções', 1, 0),
(@p, 'A coesão social passa a depender mais da interdependência econômica e profissional do que da identidade religiosa idêntica', 1, 0),
(@p, 'A divisão do trabalho desaparece completamente nas grandes cidades industriais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de Direito, focado na punição exemplar da transgressão contra valores sagrados da coletividade, predomina nas sociedades de solidariedade mecânica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Direito repressivo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de transformação social descrito por Durkheim em "Da Divisão do Trabalho Social":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crescimento demográfico e concentração urbana (aumento da densidade material)', 1, 1),
(@p, 'Intensificação dos contatos e da competição por recursos (densidade moral)', 1, 2),
(@p, 'Especialização das ocupações e aprofundamento da divisão social do trabalho', 1, 3),
(@p, 'Consolidação da solidariedade orgânica baseada na interdependência funcional', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para Émile Durkheim, qual é a principal função moral da divisão social do trabalho nas sociedades modernas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Gerar coesão, integração e solidariedade entre indivíduos diferentes, evitando a desagregação da sociedade', 1, 0),
(@p, 'Promover a guerra civil permanente entre patrões e operários', 0, 0),
(@p, 'Eliminar todas as profissões especializadas retornando à agricultura de subsistência', 0, 0),
(@p, 'Substituir todas as leis jurídicas por rituais mágicos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nas sociedades de solidariedade orgânica, a consciência coletiva desaparece por completo, não restando nenhum valor compartilhado entre os cidadãos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 2.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Consciência Coletiva, Anomia e Educação em Durkheim', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que Émile Durkheim define como "estado de anomia" em uma sociedade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma situação de enfraquecimento, ausência ou crise das normas e regras morais que regulam os comportamentos sociais', 1, 0),
(@p, 'O excesso absoluto de leis religiosas que impedem qualquer mudança tecnológica', 0, 0),
(@p, 'A igualdade perfeita de salários entre todas as profissões', 0, 0),
(@p, 'A fundação de sindicatos e corporações profissionais altamente organizados', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito durkheimiano ao seu significado teórico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Consciência Coletiva', 1, 1, 'Conjunto das crenças e sentimentos comuns à média dos membros de uma mesma sociedade'),
(@p, 'Fato Social Normal', 1, 2, 'Fenômeno generalizado na média das sociedades de uma espécie em determinada fase de desenvolvimento'),
(@p, 'Fato Social Patológico', 1, 3, 'Desvio excepcional que compromete a coesão e o equilíbrio do organismo social');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Durkheim, o crime, quando mantido dentro de certas taxas regulares, é considerado um fato social normal porque existe em todas as sociedades e reafirma os limites morais da consciência coletiva quando é punido.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique aspectos da concepção sociológica de Educação desenvolvida por Émile Durkheim:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A educação é a ação exercida pelas gerações adultas sobre as gerações ainda não amadurecidas para a vida social', 1, 0),
(@p, 'Tem por objetivo suscitar na criança estados físicos, intelectuais e morais exigidos pela sociedade', 1, 0),
(@p, 'A escola funciona como instituição fundamental de socialização metódica e transmissão da moral coletiva', 1, 0),
(@p, 'Cada família deve educar seus filhos sem nenhuma interferência dos valores nacionais ou cívicos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo derivado do grego (significando "ausência de lei ou norma") Durkheim empregou para diagnosticar crises morais e econômicas da sociedade industrial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Anomia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de socialização moral pela educação segundo Durkheim:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ser individual nasce egoísta e associal', 1, 1),
(@p, 'As gerações adultas transmitem valores, regras e conhecimentos por meio da educação', 1, 2),
(@p, 'O indivíduo internaliza a disciplina moral e o pertencimento ao grupo', 1, 3),
(@p, 'Constitui-se o ser social apto a cooperar na vida coletiva', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na obra "As Formas Elementares da Vida Religiosa" (1912), qual conclusão sociológica Durkheim extraiu ao estudar o totemismo australiano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A religião é um fenômeno eminentemente social, e o sagrado simboliza, em última instância, a própria força moral da sociedade sobre os indivíduos', 1, 0),
(@p, 'A religião é uma ilusão individual criada exclusivamente por filósofos gregos', 0, 0),
(@p, 'A distinção entre sagrado e profano nunca existiu em sociedades primitivas', 0, 0),
(@p, 'A ciência substituirá todos os rituais coletivos eliminando qualquer necessidade de símbolos sociais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durkheim propôs a criação de corporações profissionais (grupos ocupacionais) como forma de reintegrar moralmente os trabalhadores e combater a anomia nas sociedades industriais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O Suicídio como Fato Social e a Sociologia Funcionalista', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Émile Durkheim escolheu estudar o suicídio em sua célebre monografia de 1897 para comprovar a autonomia da Sociologia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque, sendo aparentemente o ato mais íntimo e individual possível, demonstrar que suas taxas variam regularmente segundo fatores sociais (religião, estado civil, crises) provaria a força determinante da sociedade', 1, 0),
(@p, 'Porque queria provar que o suicídio é causado exclusivamente pelo clima quente ou frio', 0, 0),
(@p, 'Porque pretendia demonstrar que a Psicologia e a Psiquiatria explicam 100% dos fenômenos humanos', 0, 0),
(@p, 'Porque as taxas de suicídio eram rigorosamente idênticas em todos os países e épocas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo sociológico de suicídio identificado por Durkheim à sua causa estrutural:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Suicídio Egoísta', 1, 1, 'Baixa integração social e enfraquecimento dos laços familiares, religiosos ou comunitários'),
(@p, 'Suicídio Altruísta', 1, 2, 'Excesso de integração social, levando o indivíduo a sacrificar a própria vida pelo grupo ou dever'),
(@p, 'Suicídio Anômico', 1, 3, 'Falha na regulação social durante crises econômicas bruscas ou enriquecimento repentino');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos dados estatísticos analisados por Durkheim na Europa do século XIX, as taxas de suicídio egoísta eram mais elevadas entre os protestantes do que entre os católicos e judeus devido ao maior individualismo religioso e menor coesão comunitária.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a análise sociológica de "O Suicídio" e a corrente funcionalista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O suicídio fatalista (mencionado em nota por Durkheim) decorre do excesso de regulação opressiva e ausência de futuro', 1, 0),
(@p, 'O funcionalismo sociológico analisa cada instituição pela função que desempenha na manutenção do equilíbrio e da coesão do sistema social', 1, 0),
(@p, 'Durkheim rejeitou explicações baseadas em raça, hereditariedade ou fatores cósmicos por não explicarem a regularidade estatística das taxas sociais', 1, 0),
(@p, 'Durkheim concluiu que pessoas casadas com filhos apresentam taxas de suicídio muito maiores que pessoas isoladas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de suicídio ocorre quando um soldado se sacrifica para salvar seu pelotão ou um piloto kamikaze executa uma missão suicida por devoção extrema ao coletivo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Suicídio altruísta', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da demonstração metodológica utilizada por Durkheim em "O Suicídio":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Refutar explicações extra-sociais (psicopatologia, hereditariedade, clima, imitação)', 1, 1),
(@p, 'Analisar séries estatísticas oficiais comparando taxas entre grupos religiosos, familiares e políticos', 1, 2),
(@p, 'Correlacionar as variações nas taxas com os graus de integração e regulação social', 1, 3),
(@p, 'Formular a tipologia sociológica (egoísta, altruísta, anômico e fatalista)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Durkheim observou que as taxas de suicídio anômico aumentavam tanto em períodos de depressão econômica quanto em períodos de boom econômico repentino?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque ambas as situações desestabilizam bruscamente a escala tradicional de valores e expectativas, deixando os desejos humanos sem limites morais reguladores', 1, 0),
(@p, 'Porque o enriquecimento sempre provoca doenças neurológicas imediatas', 0, 0),
(@p, 'Porque durante crises econômicas as estatísticas deixam de ser registradas', 0, 0),
(@p, 'Porque o suicídio anômico só ocorre em sociedades sem dinheiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A abordagem funcionalista inspirada em Durkheim privilegia a compreensão dos mecanismos de integração, consenso e estabilidade social, sendo frequentemente criticada por subestimar os conflitos de classe e as transformações revolucionárias.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 3: Max Weber
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Max Weber' AND id_materia = 13 LIMIT 1);

-- Quiz 3.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sociologia Compreensiva e o Conceito de Ação Social', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para Max Weber, qual é o objeto central da Sociologia Compreensiva?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A ação social, ou seja, toda conduta humana dotada de um sentido subjetivo atribuído pelo agente e orientada pela conduta de outros indivíduos', 1, 0),
(@p, 'O fato social coercitivo e exterior que anula a vontade do indivíduo', 0, 0),
(@p, 'A infraestrutura econômica como única determinante da história humana', 0, 0),
(@p, 'A evolução biológica das espécies humanas em diferentes climas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito metodológico weberiano à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ação Social', 1, 1, 'Conduta humana com sentido intencional voltada para a expectativa da reação de outrem'),
(@p, 'Tipo Ideal', 1, 2, 'Construção conceitual abstrata que acentua traços puros de um fenômeno para compará-lo à realidade'),
(@p, 'Compreensão (Verstehen)', 1, 3, 'Interpretação do sentido subjetivo que os atores sociais atribuem às suas próprias ações');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo Max Weber, o choque acidental entre dois ciclistas distraídos na rua não é uma ação social propriamente dita, mas a discussão ou o pedido de desculpas que ocorre logo depois constitui uma ação social.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de ações sociais no sentido weberiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Escrever uma carta ou mensagem esperando que outra pessoa a leia e responda', 1, 0),
(@p, 'Abrir um guarda-chuva apenas porque começou a chover sobre si mesmo', 0, 0),
(@p, 'Escolher uma roupa específica para causar boa impressão em uma entrevista de emprego', 1, 0),
(@p, 'Votar em uma eleição visando influenciar os rumos políticos da coletividade', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como Max Weber denomina o instrumento metodológico abstrato criado pelo pesquisador para servir de parâmetro de comparação na análise dos fenômenos sociais (ex.: capitalismo puro, burocracia pura)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tipo ideal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a lógica do individualismo metodológico de Max Weber:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os indivíduos atribuem sentidos subjetivos às suas ações cotidianas', 1, 1),
(@p, 'Essas ações orientam-se reciprocamente pela conduta de outros indivíduos (relação social)', 1, 2),
(@p, 'A regularidade dessas ações e sentidos dá origem às instituições e estruturas sociais', 1, 3),
(@p, 'O sociólogo interpreta esse sentido por meio da compreensão explicativa', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Sobre a relação entre valores pessoais e trabalho científico (neutralidade axiológica), o que Max Weber defendia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os valores orientam a escolha do tema pelo pesquisador, mas durante a investigação ele deve manter rigor analítico e não usar a cátedra para fazer doutrinação política', 1, 0),
(@p, 'O cientista social nunca deve ter convicções políticas nem escolher temas relevantes', 0, 0),
(@p, 'A Sociologia deve funcionar como partido político para ditar o que as pessoas devem fazer', 0, 0),
(@p, 'Os dados empíricos podem ser alterados sempre que contrariarem a opinião do professor', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Weber, o "tipo ideal" nunca é encontrado em estado 100% puro na realidade empírica, funcionando como uma régua conceitual para medir o quanto um caso concreto se aproxima ou se afasta do modelo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Os Quatro Tipos Ideais de Ação Social em Max Weber', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um engenheiro projeta uma ponte calculando minuciosamente os custos, os materiais disponíveis e a eficiência estrutural para atingir o melhor resultado técnico possível. Esse comportamento exemplifica qual tipo ideal de ação social?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ação racional com relação a fins', 1, 0),
(@p, 'Ação racional com relação a valores', 0, 0),
(@p, 'Ação tradicional', 0, 0),
(@p, 'Ação afetiva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada um dos quatro tipos ideais de ação social weberianos ao seu critério orientador:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ação racional com relação a fins', 1, 1, 'Cálculo estratégico entre meios adequados e objetivos práticos previstos'),
(@p, 'Ação racional com relação a valores', 1, 2, 'Fidelidade consciente a princípios éticos, religiosos ou estéticos, independentemente do sucesso prático'),
(@p, 'Ação tradicional', 1, 3, 'Obediência automática a costumes arraigados e hábitos herdados do passado');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ação afetiva é determinada por estados emocionais imediatos — como raiva, vingança, paixão ou entusiasmo — sem cálculo racional de meios e fins.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique correspondências corretas entre exemplos cotidianos e os tipos de ação social de Weber:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um capitão que afunda com seu navio por honra moral — ação racional com relação a valores', 1, 0),
(@p, 'Uma mãe que dá um tapa impulsivo no filho por susto ou raiva — ação afetiva', 1, 0),
(@p, 'Cumprimentar vizinhos dizendo "bom dia" por hábito costumeiro — ação tradicional', 1, 0),
(@p, 'Investir na bolsa analisando balanços financeiros para maximizar lucro — ação tradicional', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo ideal de ação social está na fronteira do comportamento simplesmente reativo, sendo movido por paixões e sentimentos imediatos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ação afetiva', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os quatro tipos de ação social de Weber do maior grau de reflexão racional estratégica para o menor grau de racionalidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ação racional com relação a fins', 1, 1),
(@p, 'Ação racional com relação a valores', 1, 2),
(@p, 'Ação tradicional', 1, 3),
(@p, 'Ação afetiva', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na realidade concreta, segundo Max Weber, as ações humanas costumam apresentar-se:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'De forma mista, combinando elementos de diferentes tipos ideais com predomínio de um deles conforme o contexto', 1, 0),
(@p, 'Sempre isoladas em um único tipo puro, sem nunca misturar razão e emoção', 0, 0),
(@p, 'Exclusivamente como ações afetivas nas sociedades industriais', 0, 0),
(@p, 'Exclusivamente como ações racionais com relação a fins nos povos antigos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A modernidade ocidental caracteriza-se, na análise weberiana, pela expansão crescente da ação racional com relação a fins nas esferas econômica, científica e administrativa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tipos de Dominação Legítima e Burocracia em Max Weber', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para Max Weber, qual é a diferença fundamental entre "poder" e "dominação legítima"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Poder é a probabilidade de impor a própria vontade mesmo contra resistência; dominação legítima envolve a obediência consentida porque os dominados acreditam na validade da autoridade', 1, 0),
(@p, 'Poder só existe nas democracias e dominação só existe nas ditaduras', 0, 0),
(@p, 'Dominação legítima dispensa qualquer crença ou aceitação por parte dos governados', 0, 0),
(@p, 'Não existe diferença, pois ambos dependem exclusivamente da força física', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada um dos três tipos puros de dominação legítima de Weber ao seu fundamento de legitimidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dominação Tradicional', 1, 1, 'Crença na santidade dos costumes imemoriais e na autoridade herdada (ex.: monarquias patriarcais)'),
(@p, 'Dominação Carismática', 1, 2, 'Devoção afetiva às qualidades extraordinárias, heroicas ou exemplares de um líder pessoal'),
(@p, 'Dominação Racional-Legal', 1, 3, 'Crença na legalidade de normas impessoais estatutárias e no direito de mando dos investidos conforme a lei');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo Weber, a burocracia é o quadro administrativo mais puro da dominação racional-legal, baseando-se em hierarquia funcional, regras escritas, impessoalidade e competência técnica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características típicas da administração burocrática moderna descrita por Max Weber:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Separação clara entre o patrimônio público/empresarial e os bens privados do funcionário', 1, 0),
(@p, 'Recrutamento por mérito técnico e concursos ou diplomas, em vez de favores familiares', 1, 0),
(@p, 'Registro documental escrito de todos os atos, decisões e regulamentos', 1, 0),
(@p, 'Obediência pessoal irrestrita aos caprichos arbitrários de um senhor feudal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como Max Weber denomina o processo pelo qual uma liderança baseada no carisma pessoal precisa criar regras, sucessão e organização estável após a morte ou afastamento do líder?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Rotinização do carisma', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os elementos da definição weberiana clássica de Estado Moderno:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma comunidade humana estruturada politicamente', 1, 1),
(@p, 'Que reivindica com êxito, dentro de um determinado território', 1, 2),
(@p, 'O monopólio do uso legítimo da força física', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual crítica ou alerta Max Weber formulou sobre a expansão excessiva da burocracia nas sociedades contemporâneas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O risco de a racionalidade burocrática aprisionar a liberdade e a criatividade humana em uma "jaula de ferro" impessoal', 1, 0),
(@p, 'O fato de a burocracia ser tecnicamente inferior ao trabalho artesanal medieval', 0, 0),
(@p, 'A incapacidade da burocracia de arquivar documentos escritos', 0, 0),
(@p, 'A substituição imediata do Estado por tribos nômades', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A dominação carismática é a mais instável das três formas de dominação legítima porque depende continuamente da comprovação dos feitos extraordinários do líder diante de seus seguidores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('A Ética Protestante e o Espírito do Capitalismo e Desencantamento', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na célebre obra "A Ética Protestante e o Espírito do Capitalismo" (1904-1905), qual relação Max Weber estabeleceu entre a religião calvinista e o desenvolvimento do capitalismo moderno?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A afinidade eletiva entre a ética ascética protestante (trabalho metódico como vocação, poupança e reinvestimento) e a conduta racional necessária à acumulação capitalista', 1, 0),
(@p, 'A tese de que o protestantismo inventou sozinho as máquinas a vapor na Inglaterra', 0, 0),
(@p, 'A afirmação de que a religião nunca exerce nenhuma influência sobre o comportamento econômico', 0, 0),
(@p, 'A defesa de que o lucro devia ser gasto imediatamente em festas luxuosas para provar a salvação', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da sociologia da religião de Weber ao seu papel na formação da mentalidade capitalista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Vocação (Beruf)', 1, 1, 'Valorização do cumprimento rigoroso dos deveres profissionais cotidianos como dever moral'),
(@p, 'Ascetismo Intramundano', 1, 2, 'Disciplina metódica da vida no mundo sem luxo nem ociosidade, acumulando capital produtivo'),
(@p, 'Doutrina da Predestinação', 1, 3, 'Incerteza quanto à salvação que levava o fiel a buscar no êxito do trabalho sinais da bênção divina');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Max Weber rejeitou tanto o determinismo econômico unilateral quanto o determinismo puramente idealista, defendendo uma causalidade histórica múltipla na qual ideias religiosas e condições materiais interagem.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre o conceito weberiano de "desencantamento do mundo":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Refere-se ao recuo das explicações mágicas, místicas e sacramentais diante da racionalização científica e técnica', 1, 0),
(@p, 'Implica a crença de que não existem forças ocultas imprevisíveis e que tudo pode, em princípio, ser dominado pelo cálculo', 1, 0),
(@p, 'Teve raízes na própria história religiosa judaico-cristã ao condenar a magia como superstição', 1, 0),
(@p, 'Significa que todos os seres humanos se tornaram plenamente felizes e satisfeitos com o sentido da vida', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual expressão empregada por Max Weber (inspirada em Goethe) designa a convergência recíproca entre uma ética religiosa e uma conduta econômica racional?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Afinidade eletiva', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o encadeamento sociológico analisado por Weber na formação do capitalismo racional ocidental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Difusão da ética protestante ascética valorizando o trabalho metódico e a sobriedade', 1, 1),
(@p, 'Limitação do consumo supérfluo combinada com a compulsão à poupança e ao reinvestimento', 1, 2),
(@p, 'Formação de capital produtivo e racionalização contábil das empresas', 1, 3),
(@p, 'Autonomização do sistema capitalista moderno, que passa a funcionar por coerção econômica secular', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na conferência "A Política como Vocação", qual distinção ética fundamental Max Weber estabelece para quem atua na esfera política?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A distinção entre a ética da convicção (agir segundo princípios absolutos sem medir consequências) e a ética da responsabilidade (responder pelas consequências previsíveis dos próprios atos)', 1, 0),
(@p, 'A distinção entre política municipal e política astronômica', 0, 0),
(@p, 'A afirmação de que um político nunca deve assumir responsabilidade pelos resultados de suas decisões', 0, 0),
(@p, 'A proibição de qualquer vínculo entre ética e administração pública', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Weber, uma vez consolidado o capitalismo industrial moderno, ele deixa de precisar do suporte religioso original e impõe sua lógica racionalizada a todos os indivíduos nascidos no sistema.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 4: Karl Marx
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Karl Marx' AND id_materia = 13 LIMIT 1);

-- Quiz 4.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Materialismo Histórico-Dialético, Infraestrutura e Superestrutura', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Segundo o materialismo histórico de Karl Marx, qual é o ponto de partida fundamental para compreender a organização e a história das sociedades humanas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O modo como os seres humanos produzem materialmente sua existência por meio do trabalho e das relações sociais de produção', 1, 0),
(@p, 'A evolução abstrata das ideias religiosas desligada das condições econômicas', 0, 0),
(@p, 'A harmonia funcional espontânea entre todas as classes sociais sem conflitos', 0, 0),
(@p, 'A inspiração divina concedida exclusivamente aos monarcas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito estrutural do materialismo histórico marxista à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Forças Produtivas', 1, 1, 'Conjunto formado pelos meios de produção (ferramentas, máquinas, terras) e pela força de trabalho humana'),
(@p, 'Infraestrutura (Base Econômica)', 1, 2, 'União das forças produtivas com as relações sociais de produção vigentes em uma sociedade'),
(@p, 'Superestrutura', 1, 3, 'Conjunto das instituições jurídico-políticas (Estado, leis) e formas de consciência (ideologia, arte, religião)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Karl Marx, não é a consciência dos homens que determina o seu ser social, mas, ao contrário, é o seu ser social (as condições materiais de vida) que determina a sua consciência.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique elementos que compõem os "meios de produção" em uma sociedade industrial ou agrícola:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Terras cultiváveis e jazidas minerais', 1, 0),
(@p, 'Fábricas, máquinas, ferramentas e equipamentos tecnológicos', 1, 0),
(@p, 'Matérias-primas e fontes de energia utilizadas no processo produtivo', 1, 0),
(@p, 'Apenas as roupas de uso pessoal e os alimentos já consumidos pelas famílias', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual filósofo alemão foi o principal colaborador intelectual de Karl Marx, coautor do "Manifesto do Partido Comunista" (1848) e organizador dos volumes póstumos de "O Capital"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Friedrich Engels', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo dialético de transformação histórica das sociedades segundo Karl Marx:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Desenvolvimento contínuo das forças produtivas materiais da sociedade', 1, 1),
(@p, 'Contradição entre as novas forças produtivas e as antigas relações de propriedade', 1, 2),
(@p, 'Abertura de uma época de revolução social e conflito entre classes antagônicas', 1, 3),
(@p, 'Superação do antigo modo de produção e emergência de uma nova formação social', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na concepção dialética de Marx (inspirada criticamente em Hegel), como ocorre o movimento da história?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Por meio da luta e superação de contradições materiais internas às próprias relações sociais (tese, antítese e síntese)', 1, 0),
(@p, 'De forma estática e imutável desde a pré-história até o presente', 0, 0),
(@p, 'Por evolução linear pacífica sem nenhum conflito de interesses', 0, 0),
(@p, 'Pela repetição cíclica idêntica dos mesmos acontecimentos a cada cem anos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na teoria marxista, a superestrutura jurídico-política e ideológica não é totalmente passiva, pois atua de volta sobre a base econômica para legitimar e conservar as relações de propriedade existentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Modos de Produção e Luta de Classes: Burguesia e Proletariado', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual afirmação famosa abre o primeiro capítulo do "Manifesto do Partido Comunista" (1848), escrito por Karl Marx e Friedrich Engels?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A história de todas as sociedades até hoje existentes é a história das lutas de classes', 1, 0),
(@p, 'O fato social deve ser tratado sempre como uma coisa exterior e coercitiva', 0, 0),
(@p, 'O homem nasce bom e a sociedade industrial o corrompe definitivamente', 0, 0),
(@p, 'A ordem e o progresso são garantidos pela hierarquia religiosa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada modo de produção histórico estudado por Marx às suas classes fundamentais antagônicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Modo de Produção Escravista (Antiguidade)', 1, 1, 'Senhores proprietários e escravos'),
(@p, 'Modo de Produção Feudal (Idade Média)', 1, 2, 'Senhores feudais e servos presos à terra'),
(@p, 'Modo de Produção Capitalista (Modernidade)', 1, 3, 'Burguesia (detentora dos meios de produção) e proletariado (vendedor da força de trabalho)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Karl Marx, o que define o pertencimento a uma classe social no capitalismo não é apenas o nível de consumo ou o prestígio social, mas a posição objetiva ocupada em relação à propriedade dos meios de produção.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do Modo de Produção Capitalista analisadas por Karl Marx:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Propriedade privada burguesa dos meios de produção', 1, 0),
(@p, 'Transformação da força de trabalho humana em mercadoria comprada mediante salário', 1, 0),
(@p, 'Produção generalizada de mercadorias voltada à obtenção de lucro e acumulação de capital', 1, 0),
(@p, 'Abolição completa do mercado e do dinheiro em favor do escambo direto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como Marx denomina a classe social formada pelos trabalhadores assalariados que, desprovidos de meios próprios de produção, precisam vender sua força de trabalho para sobreviver?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Proletariado', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sucessão clássica dos modos de produção analisados por Karl Marx:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Comunidade primitiva (ausência de propriedade privada e classes)', 1, 1),
(@p, 'Modo de produção escravista antigo', 1, 2),
(@p, 'Modo de produção feudal medieval', 1, 3),
(@p, 'Modo de produção capitalista industrial', 1, 4),
(@p, 'Socialismo e comunismo (superação da propriedade privada dos meios de produção)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na teoria marxista, qual é a diferença entre "classe em si" e "classe para si"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '"Classe em si" é a condição objetiva comum na produção; "classe para si" ocorre quando os trabalhadores adquirem consciência de classe e se organizam politicamente', 1, 0),
(@p, '"Classe em si" refere-se aos empresários e "classe para si" refere-se aos bancos', 0, 0),
(@p, 'Ambas significam o isolamento individual de cada operário sem sindicatos', 0, 0),
(@p, '"Classe para si" designa exclusivamente a nobreza feudal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No "Manifesto Comunista", Marx reconhece que a burguesia desempenhou um papel historicamente revolucionário ao destruir o feudalismo e desenvolver extraordinariamente as forças produtivas, embora tenha criado as próprias contradições que ameaçam seu domínio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Trabalho, Alienação, Mais-Valia e Fetichismo da Mercadoria', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na economia política marxista, o que é a "mais-valia" (ou mais-valor)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A diferença entre o valor total produzido pelo trabalhador durante sua jornada e o valor pago a ele na forma de salário, apropriada pelo capitalista', 1, 0),
(@p, 'O imposto cobrado pelo Estado sobre a exportação de matérias-primas agrícolas', 0, 0),
(@p, 'O valor sentimental que um artesão atribui à sua obra de arte', 0, 0),
(@p, 'A quantia de dinheiro que o trabalhador economiza no banco ao final do ano', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito de "O Capital" de Karl Marx à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Valor de Uso', 1, 1, 'Utilidade qualitativa de um bem para satisfazer uma necessidade humana'),
(@p, 'Valor de Troca', 1, 2, 'Proporção quantitativa pela qual mercadorias se trocam, determinada pelo tempo de trabalho socialmente necessário'),
(@p, 'Fetichismo da Mercadoria', 1, 3, 'Fenômeno pelo qual as relações sociais entre trabalhadores aparecem ocultas como relações entre coisas dotadas de valor próprio');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Marx, a mais-valia absoluta é obtida pelo prolongamento da jornada de trabalho, enquanto a mais-valia relativa é obtida pelo aumento da produtividade (tecnologia e máquinas) que reduz o tempo necessário para reproduzir o valor do salário.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique dimensões do "trabalho alienado" (estranhamento) descritas por Karl Marx:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O trabalhador não reconhece o produto de seu trabalho como seu, pois este pertence ao proprietário da fábrica', 1, 0),
(@p, 'A atividade produtiva torna-se repetitiva, fragmentada e exaustiva, em vez de realização criativa', 1, 0),
(@p, 'O trabalhador distancia-se de sua essência humana genérica e entra em competição com outros trabalhadores', 1, 0),
(@p, 'O trabalhador controla integralmente o planejamento, as ferramentas e o destino final de tudo o que produz', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito marxista designa o contingente de trabalhadores desempregados ou subempregados cuja existência pressiona os salários para baixo e disciplina os operários empregados?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Exército industrial de reserva', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo de produção da mais-valia em uma jornada de trabalho capitalista segundo Marx:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O capitalista adquire meios de produção e compra a força de trabalho por um salário', 1, 1),
(@p, 'Durante as primeiras horas da jornada (trabalho necessário), o operário produz valor equivalente ao seu salário', 1, 2),
(@p, 'Nas horas seguintes da mesma jornada (trabalho excedente), o operário continua produzindo valor sem remuneração adicional', 1, 3),
(@p, 'O capitalista vende as mercadorias e apropria-se do excedente gerado (mais-valia)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Marx afirma que, diferentemente dos animais que agem apenas por instinto, o trabalho é a atividade vital que humaniza o ser humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o ser humano projeta mentalmente o resultado antes de realizá-lo, transformando conscientemente a natureza e a si próprio', 1, 0),
(@p, 'Porque os seres humanos são os únicos seres vivos que constroem abrigos na natureza', 0, 0),
(@p, 'Porque o trabalho humano nunca envolve esforço físico ou cooperação social', 0, 0),
(@p, 'Porque o trabalho só surgiu após a invenção das fábricas no século XVIII', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo Marx, a mais-valia não resulta de um roubo ilegal fora das leis do mercado, mas ocorre dentro das próprias regras da troca equivalente do capitalismo, pois a força de trabalho é a única mercadoria capaz de criar mais valor do que custa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ideologia, Estado e Práxis Revolucionária em Karl Marx', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na obra "A Ideologia Alemã", como Karl Marx e Friedrich Engels caracterizam a ideologia dominante em uma sociedade de classes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como uma visão de mundo invertida que apresenta os interesses particulares da classe dominante como se fossem interesses universais e naturais de toda a sociedade', 1, 0),
(@p, 'Como um método científico neutro que revela todas as contradições da exploração econômica', 0, 0),
(@p, 'Como o conjunto das leis físicas que governam o movimento dos planetas', 0, 0),
(@p, 'Como uma doutrina criada exclusivamente pelos trabalhadores rurais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tese política marxista à sua formulação teórica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estado Moderno Burguês', 1, 1, 'Organismo político que administra os negócios comuns da classe dominante, longe de ser um árbitro neutro'),
(@p, 'Práxis', 1, 2, 'Unidade indissociável entre teoria crítica e ação prática transformadora da realidade social'),
(@p, '11ª Tese sobre Feuerbach', 1, 3, 'Os filósofos apenas interpretaram o mundo de diferentes maneiras, o que importa é transformá-lo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na concepção de Marx e Engels, o Estado surgiu historicamente junto com a divisão da sociedade em classes antagônicas para conter os conflitos e assegurar a ordem da propriedade privada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a crítica marxista à economia política e à ideologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As ideias dominantes de uma época são, em geral, as ideias da classe que detém o poder material e intelectual', 1, 0),
(@p, 'A ideologia oculta a origem histórica e conflituosa das desigualdades sociais, fazendo-as parecer eternas', 1, 0),
(@p, 'A revolução proletária visa socializar os meios de produção e superar a divisão da sociedade em classes', 1, 0),
(@p, 'Marx defendia que o Estado burguês deve ser fortalecido eternamente para manter os privilégios hereditários', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual obra monumental de Karl Marx, cujo primeiro volume foi publicado em 1867, realiza a crítica sistemática do modo de produção capitalista, da mercadoria e do dinheiro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'O Capital', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a crítica de Marx ao funcionamento ideológico na sociedade capitalista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Existência de relações materiais desiguais entre proprietários e trabalhadores', 1, 1),
(@p, 'Produção de discursos jurídicos, morais e filosóficos que naturalizam essa desigualdade', 1, 2),
(@p, 'Internalização desses valores pelos dominados como verdades evidentes e universais', 1, 3),
(@p, 'Crítica teórica e organização política para desmascarar a ideologia e transformar a realidade', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que Karl Marx quis expressar com a célebre metáfora "a religião é o ópio do povo" na "Crítica da Filosofia do Direito de Hegel"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que a religião funciona ao mesmo tempo como expressão do sofrimento real dos oprimidos e como analgésico espiritual que consola, mas pode adormecer a luta pela transformação material', 1, 0),
(@p, 'Que os trabalhadores devem ser perseguidos violentamente por suas crenças pessoais', 0, 0),
(@p, 'Que a religião é uma substância química proibida pelo código penal', 0, 0),
(@p, 'Que a fé religiosa é a única causa da pobreza econômica no mundo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferentemente dos chamados "socialistas utópicos" (como Owen, Fourier e Saint-Simon), Marx e Engels buscaram fundamentar o socialismo na análise científica das contradições históricas e econômicas do capitalismo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 5: Cultura e Ideologia
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Cultura e Ideologia' AND id_materia = 13 LIMIT 1);

-- Quiz 5.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito Antropológico de Cultura, Cultura Material e Imaterial', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na perspectiva das Ciências Sociais e da Antropologia moderna, o que significa o conceito de "cultura"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Todo o conjunto complexo de conhecimentos, crenças, artes, moral, leis, costumes, línguas e hábitos adquiridos pelo ser humano como membro da sociedade', 1, 0),
(@p, 'Apenas o hábito de ler livros clássicos europeus e frequentar museus e óperas', 0, 0),
(@p, 'As características genéticas herdadas biologicamente pelos indivíduos de cada continente', 0, 0),
(@p, 'Exclusivamente a produção agrícola de grãos e hortaliças no campo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada dimensão do patrimônio cultural aos seus exemplos correspondentes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cultura Material', 1, 1, 'Objetos físicos, ferramentas, monumentos arquitetônicos, vestimentas e obras de arte tangíveis'),
(@p, 'Cultura Imaterial (Intangível)', 1, 2, 'Saberes, festas populares, danças, culinária tradicional, línguas e expressões musicais'),
(@p, 'Endoculturação (Socialização Cultural)', 1, 3, 'Processo contínuo pelo qual cada indivíduo aprende e internaliza a cultura de seu grupo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Do ponto de vista sociológico e antropológico, não existe nenhum grupo humano "sem cultura", pois toda sociedade produz símbolos, regras, técnicas e significados compartilhados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique expressões reconhecidas como Patrimônio Cultural Imaterial no Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Roda de Capoeira e o ofício dos mestres de capoeira', 1, 0),
(@p, 'O Frevo pernambucano e o Samba de Roda do Recôncavo Baiano', 1, 0),
(@p, 'O modo artesanal de fazer Queijo de Minas e o ofício das Baianas de Acarajé', 1, 0),
(@p, 'Apenas edifícios de concreto construídos no exterior', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual antropólogo britânico formulou em 1871 a primeira definição clássica abrangente de cultura na obra "Cultura Primitiva"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Edward Tylor', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a relação entre natureza e cultura na constituição do ser humano segundo a Antropologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ser humano nasce com capacidades biológicas abertas e poucos instintos rígidos', 1, 1),
(@p, 'Por meio da linguagem e do convívio social, aprende sistemas simbólicos compartilhados', 1, 2),
(@p, 'A cultura molda inclusive necessidades biológicas como a forma de se alimentar, vestir e expressar emoções', 1, 3),
(@p, 'Os seres humanos transformam continuamente sua cultura ao longo das gerações', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a cultura é caracterizada pelos antropólogos como um fenômeno dinâmico e simbólico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque atribui significados compartilhados às coisas e transforma-se constantemente por meio de criações internas e contatos entre povos', 1, 0),
(@p, 'Porque permanece congelada exatamente igual por dez mil anos em todas as sociedades', 0, 0),
(@p, 'Porque é transmitida automaticamente pelo sangue sem necessidade de convivência', 0, 0),
(@p, 'Porque depende apenas do clima e da altitude de cada país', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A hierarquização entre "cultura erudita" (considerada superior) e "cultura popular" (considerada inferior) não reflete um critério científico neutro, mas sim relações históricas de poder e distinção social.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Etnocentrismo, Relativismo Cultural e Diversidade', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza uma postura "etnocêntrica" na análise das relações entre diferentes grupos humanos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Julgar outras culturas a partir dos valores e padrões da própria cultura, considerando o seu grupo como centro, modelo e superior aos demais', 1, 0),
(@p, 'Compreender cada manifestação cultural dentro de seu próprio contexto histórico e simbólico', 0, 0),
(@p, 'Valorizar a igualdade de direitos entre povos indígenas, quilombolas e urbanos', 0, 0),
(@p, 'Estudar idiomas estrangeiros com respeito e curiosidade científica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito antropológico sobre contato entre culturas à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Etnocentrismo', 1, 1, 'Visão preconceituosa que hierarquiza culturas tomando a própria como padrão absoluto'),
(@p, 'Relativismo Cultural', 1, 2, 'Princípio metodológico que busca compreender práticas culturais segundo a lógica interna da sociedade que as produz'),
(@p, 'Eurocentrismo', 1, 3, 'Forma histórica de etnocentrismo que coloca a civilização europeia como ápice universal da humanidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Historicamente, o etnocentrismo e o evolucionismo social serviram de justificativa ideológica para o colonialismo europeu, a escravização de povos africanos e o extermínio de populações indígenas sob o pretexto de "missão civilizatória".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique contribuições fundamentais do antropólogo Franz Boas para a superação do racismo científico e do etnocentrismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Demonstrou que as diferenças entre os povos resultam de suas histórias e culturas particulares, e não da biologia ou da raça', 1, 0),
(@p, 'Fundou o particularismo histórico, defendendo o estudo empírico de cada cultura em seu contexto específico', 1, 0),
(@p, 'Criticou as escalas evolucionistas lineares que classificavam povos não europeus como "primitivos" ou "selvagens"', 1, 0),
(@p, 'Defendeu que o tamanho do crânio determina a inteligência e a moralidade de cada povo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o fenômeno cultural de fusão, reinterpretação e convivência criativa entre tradições religiosas ou culturais distintas, muito presente na formação do Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sincretismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução do pensamento antropológico no tratamento da diversidade cultural:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Evolucionismo cultural unilinear do século XIX (classificação entre selvageria, barbárie e civilização)', 1, 1),
(@p, 'Crítica ao etnocentrismo e afirmação do relativismo cultural (Franz Boas e Bronislaw Malinowski)', 1, 2),
(@p, 'Antropologia estrutural e valorização da diversidade como patrimônio comum (Claude Lévi-Strauss)', 1, 3),
(@p, 'Reconhecimento constitucional dos direitos culturais e do multiculturalismo contemporâneo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o limite ético e jurídico apontado pelos debates contemporâneos para o relativismo cultural?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O relativismo não deve servir para justificar graves violações aos direitos humanos fundamentais, como tortura, escravidão ou violência contra grupos vulneráveis', 1, 0),
(@p, 'O relativismo exige que todas as línguas do mundo sejam substituídas por um único idioma', 0, 0),
(@p, 'O relativismo proíbe qualquer diálogo entre povos de continentes diferentes', 0, 0),
(@p, 'O relativismo afirma que apenas a cultura ocidental possui direitos humanos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No ensaio "Raça e História", Claude Lévi-Strauss argumenta que nenhuma cultura se desenvolveu completamente isolada e que o progresso humano decorre justamente da troca e da diversidade entre diferentes culturas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Indústria Cultural, Cultura de Massa e Escola de Frankfurt', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais pensadores da Escola de Frankfurt cunharam o conceito de "Indústria Cultural" na obra "Dialética do Esclarecimento" (1947)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Theodor Adorno e Max Horkheimer', 1, 0),
(@p, 'Émile Durkheim e Auguste Comte', 0, 0),
(@p, 'Max Weber e Talcott Parsons', 0, 0),
(@p, 'Bronislaw Malinowski e Edward Tylor', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da Teoria Crítica da cultura ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Indústria Cultural', 1, 1, 'Produção padronizada de bens simbólicos (filmes, músicas, programas) orientada pelo lucro e consumo passivo'),
(@p, 'Semiformação (Halbbildung)', 1, 2, 'Consumo superficial de informações fragmentadas que substitui a reflexão crítica autônoma'),
(@p, 'Perda da Aura (Walter Benjamin)', 1, 3, 'Transformação da obra de arte na era da reprodutibilidade técnica (fotografia e cinema)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Adorno e Horkheimer preferiram o termo "Indústria Cultural" em vez de "cultura de massa" para deixar claro que essa cultura não brota espontaneamente do povo, mas é planejada e fabricada de cima para baixo como mercadoria.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características atribuídas por Adorno e Horkheimer à Indústria Cultural:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Padronização e repetição de fórmulas previsíveis disfarçadas de novidade', 1, 0),
(@p, 'Transformação do tempo livre e do lazer em prolongamento do ritmo mecânico do trabalho', 1, 0),
(@p, 'Estimulação do conformismo social e da passividade crítica do consumidor', 1, 0),
(@p, 'Incentivo radical à revolução social e à autonomia filosófica de todos os espectadores', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual pensador da Escola de Frankfurt analisou as potencialidades democratizantes do cinema e da fotografia no ensaio "A Obra de Arte na Era de sua Reprodutibilidade Técnica"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Walter Benjamin', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a lógica de funcionamento da Indústria Cultural segundo a Escola de Frankfurt:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aplicação da racionalidade técnico-industrial à produção de bens simbólicos', 1, 1),
(@p, 'Padronização de fórmulas estéticas e segmentação do público em perfis de consumo', 1, 2),
(@p, 'Oferta de entretenimento fácil que exige mínimo esforço intelectual do espectador', 1, 3),
(@p, 'Reprodução do conformismo e integração do indivíduo à lógica do mercado', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como o pensador italiano Umberto Eco classificou as duas posturas extremas dos intelectuais do século XX diante da cultura de massa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Apocalípticos (que veem a cultura de massa como decadência total) e Integrados (que a celebram ingenuamente como democratização plena)', 1, 0),
(@p, 'Positivistas e Funcionalistas', 0, 0),
(@p, 'Feudais e Escravistas', 0, 0),
(@p, 'Nômades e Sedentários', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na era das plataformas digitais e algoritmos de recomendação, os debates da Escola de Frankfurt continuam atuais ao questionar como a captura da atenção e a padronização dos conteúdos afetam a autonomia crítica dos cidadãos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ideologia, Hegemonia Cultural (Gramsci) e Capital Cultural (Bourdieu)', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para o pensador italiano Antonio Gramsci, como se exerce a "hegemonia cultural" de um grupo dominante sobre o conjunto da sociedade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Por meio da direção intelectual e moral na sociedade civil (escolas, imprensa, igrejas, cultura), conquistando o consenso ativo dos governados além da coerção estatal', 1, 0),
(@p, 'Exclusivamente pelo uso contínuo de tanques de guerra nas ruas sem nenhuma persuasão cultural', 0, 0),
(@p, 'Pela eliminação completa de todas as escolas, jornais e partidos políticos', 0, 0),
(@p, 'Pela herança biológica do poder político sem necessidade de instituições', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito do sociólogo francês Pierre Bourdieu à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Capital Cultural', 1, 1, 'Conjunto de saberes, diplomas, domínio da norma culta e gostos adquiridos principalmente na família e na escola'),
(@p, 'Habitus', 1, 2, 'Sistema de disposições duráveis internalizadas pelo indivíduo que orienta suas percepções, gostos e práticas'),
(@p, 'Violência Simbólica', 1, 3, 'Imposição sutil de significados e valores dominantes aceitos como legítimos e naturais pelos próprios dominados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo Pierre Bourdieu, o gosto estético (por música, vestuário, culinária ou arte) não é um dom puramente natural e individual, mas funciona como um marcador social de distinção entre as classes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre as contribuições de Antonio Gramsci e Louis Althusser ao estudo da ideologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Gramsci distingue os intelectuais tradicionais dos intelectuais orgânicos vinculados às classes sociais em disputa', 1, 0),
(@p, 'Para Gramsci, a transformação social exige uma "guerra de posição" cultural para construir uma contra-hegemonia', 1, 0),
(@p, 'Althusser analisou os Aparelhos Ideológicos de Estado (escola, família, mídia, direito) que reproduzem as relações de produção', 1, 0),
(@p, 'Ambos afirmaram que a cultura e a educação são completamente neutras e desligadas do poder político', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito de Pierre Bourdieu designa os espaços sociais relativamente autônomos de disputa por prestígio e autoridade específica (como o campo científico, o campo artístico e o campo político)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Campo social', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o mecanismo de reprodução das desigualdades por meio do capital cultural segundo Pierre Bourdieu:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Famílias de classes privilegiadas transmitem precocemente domínio linguístico e referências culturais valorizadas', 1, 1),
(@p, 'A escola avalia os alunos exigindo implicitamente essa cultura familiar prévia como se fosse talento natural', 1, 2),
(@p, 'Os alunos privilegiados obtêm melhores notas e diplomas escolares (capital cultural institucionalizado)', 1, 3),
(@p, 'A desigualdade social converte-se legitimamente em desigualdade de mérito escolar e profissional', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na análise de Antonio Gramsci sobre o Estado ampliado, o que compõe a "sociedade civil" em distinção à "sociedade política" (aparelho coercitivo)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O conjunto de organismos privados e voluntários — como escolas, sindicatos, igrejas, partidos e meios de comunicação — onde se elaboram e disputam as ideologias', 1, 0),
(@p, 'Exclusivamente as forças armadas, a polícia e o sistema penitenciário', 0, 0),
(@p, 'Apenas as empresas estrangeiras de mineração', 0, 0),
(@p, 'Os cidadãos que não participam de nenhuma instituição nem votam', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Bourdieu, além do capital econômico (renda e patrimônio) e do capital cultural (saberes e títulos), existe também o capital social, constituído pela rede durável de relações e contatos que um indivíduo pode mobilizar.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 6: Desigualdade Social e Estratificação
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Desigualdade Social e Estratificação' AND id_materia = 13 LIMIT 1);

-- Quiz 6.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sistemas de Estratificação: Castas, Estamentos e Classes Sociais', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa o conceito sociológico de "estratificação social"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A divisão estruturada e hierárquica de uma sociedade em camadas ou grupos com acesso desigual a riqueza, poder e prestígio', 1, 0),
(@p, 'O estudo geológico das camadas de rochas sedimentares no subsolo', 0, 0),
(@p, 'A distribuição perfeitamente igualitária de todos os bens entre os cidadãos', 0, 0),
(@p, 'A separação geográfica dos países em hemisférios norte e sul', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sistema histórico de estratificação social à sua principal característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sistema de Castas', 1, 1, 'Estratificação fechada e hereditária com endogamia rígida e mobilidade social praticamente nula'),
(@p, 'Sistema Estamental (Ordens)', 1, 2, 'Hierarquia típica da sociedade feudal com privilégios jurídicos definidos pelo nascimento (clero, nobreza, servos)'),
(@p, 'Sistema de Classes Sociais', 1, 3, 'Estratificação aberta da sociedade capitalista baseada em critérios econômicos e formalmente sem barreiras legais de nascimento');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferentemente das castas e dos estamentos, o sistema de classes sociais moderno não proíbe juridicamente a mobilidade social, embora barreiras econômicas e educacionais dificultem a ascensão na prática.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características tradicionais do sistema de castas associado historicamente à Índia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Determinação da posição social pelo nascimento e filiação familiar', 1, 0),
(@p, 'Prática da endogamia (casamento restrito a membros da mesma casta)', 1, 0),
(@p, 'Associação tradicional entre castas, ocupações profissionais e regras de pureza ritual', 1, 0),
(@p, 'Livre troca de casta a cada ano conforme o saldo bancário do cidadão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo sociológico designa a regra social que obriga os indivíduos a se casarem exclusivamente dentro do mesmo grupo, casta ou estamento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Endogamia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três estamentos da sociedade feudal europeia do topo para a base da hierarquia jurídica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Primeiro Estado: Clero (responsável pela esfera espiritual e detentor de vastas terras)', 1, 1),
(@p, 'Segundo Estado: Nobreza (aristocracia guerreira proprietária de feudos e isenta de impostos)', 1, 2),
(@p, 'Terceiro Estado: Camponeses, servos, artesãos e burguesia (sustentavam a sociedade com trabalho e tributos)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Sociologia distingue "diferença social" de "desigualdade social"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Diferença refere-se à diversidade de características culturais, biológicas ou de gosto; desigualdade ocorre quando essas diferenças geram hierarquias e acesso injusto a direitos e recursos', 1, 0),
(@p, 'Porque toda diferença física impede automaticamente o exercício da cidadania', 0, 0),
(@p, 'Porque não existem diferenças culturais entre os seres humanos', 0, 0),
(@p, 'Porque a desigualdade social ocorre apenas entre animais selvagens', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Constituição da Índia de 1950 aboliu legalmente a discriminação por castas e a intocabilidade, mas seus efeitos culturais e sociais ainda persistem no cotidiano do país.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Mobilidade Social, Distribuição de Renda e Desigualdade no Brasil', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que mede o "Índice de Gini" (ou Coeficiente de Gini), amplamente utilizado por sociólogos e economistas para analisar a desigualdade social de um país?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O grau de concentração de renda de uma população, variando de 0 (igualdade perfeita) a 1 (desigualdade máxima, onde uma só pessoa detém toda a renda)', 1, 0),
(@p, 'A taxa média de natalidade em áreas rurais', 0, 0),
(@p, 'O número total de universidades públicas existentes em cada estado', 0, 0),
(@p, 'A velocidade média do transporte ferroviário de cargas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de mobilidade social à sua definição sociológica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mobilidade Vertical (Ascendente ou Descendente)', 1, 1, 'Mudança de posição para um estrato ou classe social superior ou inferior'),
(@p, 'Mobilidade Horizontal', 1, 2, 'Mudança de ocupação ou região geográfica sem alteração relevante no nível socioeconômico'),
(@p, 'Mobilidade Intergeracional', 1, 3, 'Comparação entre a posição socioeconômica dos filhos e a de seus pais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "mobilidade estrutural" ocorre quando transformações amplas na economia — como a industrialização rápida ou a expansão do ensino superior — criam novos postos de trabalho e elevam coletivamente camadas da população.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique raízes históricas que explicam a profunda desigualdade socioeconômica estrutural do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mais de três séculos de escravidão e a ausência de políticas de inclusão fundiária e educacional após a abolição de 1888', 1, 0),
(@p, 'Concentração histórica da propriedade da terra desde as sesmarias e a Lei de Terras de 1850', 1, 0),
(@p, 'Sistema tributário regressivo, que onera proporcionalmente mais o consumo dos mais pobres do que a renda e o patrimônio', 1, 0),
(@p, 'Distribuição igualitária de terras realizada em todo o território nacional no século XVI', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual indicador criado pela ONU avalia o desenvolvimento de um país combinando três dimensões além da renda: longevidade (saúde), educação e padrão de vida (PIB per capita)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'IDH', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo de reprodução intergeracional da pobreza estudado pela Sociologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Família em situação de vulnerabilidade econômica e precariedade habitacional', 1, 1),
(@p, 'Necessidade de ingresso precoce dos jovens no trabalho informal e evasão escolar', 1, 2),
(@p, 'Inserção em ocupações de baixa remuneração e sem proteção trabalhista', 1, 3),
(@p, 'Transmissão das mesmas limitações materiais à geração seguinte', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Sociologia critica o discurso exclusivo da "meritocracia" em sociedades marcadas por severa desigualdade social?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque tratar resultados como fruto apenas do esforço individual ignora que os indivíduos partem de condições materiais, escolares e familiares profundamente desiguais', 1, 0),
(@p, 'Porque a Sociologia é contrária ao estudo e à dedicação profissional dos estudantes', 0, 0),
(@p, 'Porque todas as pessoas no Brasil já nascem com exatamente as mesmas oportunidades financeiras', 0, 0),
(@p, 'Porque os diplomas universitários não têm nenhum impacto no mercado de trabalho', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A desigualdade social no Brasil não se restringe à renda monetária, manifestando-se também no acesso desigual ao saneamento básico, à saúde, à segurança pública, à mobilidade urbana e à cultura.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Desigualdades de Gênero, Raça e Interseccionalidade', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Sociologia contemporânea, qual é a distinção fundamental entre "sexo biológico" e "gênero"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sexo refere-se às características anatômicas e fisiológicas; gênero designa as construções sociais, culturais e históricas sobre os papéis atribuídos a homens e mulheres', 1, 0),
(@p, 'Gênero refere-se apenas à genética cromossômica e sexo refere-se apenas à gramática', 0, 0),
(@p, 'Não há nenhuma construção social nos comportamentos esperados de homens e mulheres', 0, 0),
(@p, 'Gênero é um conceito usado exclusivamente na Biologia botânica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ligado às desigualdades de gênero e raça à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Divisão Sexual do Trabalho', 1, 1, 'Distribuição desigual das tarefas produtivas remuneradas e do trabalho doméstico não remunerado entre homens e mulheres'),
(@p, 'Racismo Estrutural', 1, 2, 'Enraizamento histórico, econômico, institucional e cultural da hierarquização racial na sociedade'),
(@p, 'Interseccionalidade', 1, 3, 'Abordagem que analisa como marcadores como raça, classe e gênero se sobrepõem produzindo experiências específicas de opressão');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "dupla jornada de trabalho" refere-se ao acúmulo do trabalho profissional remunerado com a responsabilidade majoritária pelas tarefas domésticas e de cuidado não remuneradas, recaindo desproporcionalmente sobre as mulheres.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique evidências sociológicas do racismo estrutural e das desigualdades raciais no Brasil contemporâneo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sub-representação da população negra em cargos de chefia, no Judiciário e no Parlamento, apesar de ser maioria na população brasileira', 1, 0),
(@p, 'Maiores taxas de desemprego, informalidade e menores rendimentos médios mesmo entre trabalhadores com igual escolaridade', 1, 0),
(@p, 'Maior vulnerabilidade da juventude negra à letalidade violenta e ao encarceramento', 1, 0),
(@p, 'Igualdade estatística absoluta entre brancos e negros em todos os indicadores sociais do IBGE', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual jurista e intelectual negra norte-americana sistematizou em 1989 o conceito de "interseccionalidade" para mostrar como a discriminação contra mulheres negras não pode ser compreendida isolando raça e gênero?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Kimberlé Crenshaw', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o fenômeno conhecido como "teto de vidro" (glass ceiling) nas organizações profissionais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mulheres ingressam no mercado de trabalho com níveis de escolaridade iguais ou superiores aos dos homens', 1, 1),
(@p, 'Barreiras invisíveis ligadas a estereótipos de gênero e sobrecarga familiar dificultam sua promoção', 1, 2),
(@p, 'A presença feminina reduz-se drasticamente nos cargos executivos de alta direção e conselhos administrativos', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Do ponto de vista científico atual (Genética e Antropologia), o conceito de "raça" aplicado aos seres humanos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Não possui validade biológica para dividir a espécie humana, mas permanece uma categoria sociológica fundamental porque o racismo produz efeitos sociais reais', 1, 0),
(@p, 'Divide os seres humanos em espécies biológicas distintas com capacidades intelectuais diferentes', 0, 0),
(@p, 'Foi comprovado pelo Projeto Genoma Humano como determinante do caráter moral', 0, 0),
(@p, 'Deixou de ter qualquer impacto social desde o século XVIII', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As políticas de ações afirmativas (como as cotas raciais e sociais nas universidades públicas e concursos) visam corrigir desigualdades históricas acumuladas e promover a igualdade material de oportunidades.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorias da Estratificação (Marx e Weber) e Mito da Democracia Racial', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Max Weber ampliou a análise da estratificação social em comparação com a abordagem exclusivamente econômica de Karl Marx?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Weber propôs uma abordagem multidimensional baseada em três esferas independentes mas inter-relacionadas: classe (ordem econômica), estamento/status (honra social) e partido (poder político)', 1, 0),
(@p, 'Weber afirmou que o dinheiro não tem nenhuma relação com as classes sociais', 0, 0),
(@p, 'Weber reduziu toda estratificação à religião, negando a existência de partidos políticos', 0, 0),
(@p, 'Weber defendeu que o status social é determinado exclusivamente pelo peso corporal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada dimensão da estratificação weberiana ao seu critério principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Classe (Situação de Classe)', 1, 1, 'Posição no mercado de bens e trabalho que define as chances de vida e acesso a recursos econômicos'),
(@p, 'Estamento (Grupo de Status)', 1, 2, 'Estimativa social de honra, prestígio e estilo de vida compartilhado por um grupo'),
(@p, 'Partido', 1, 3, 'Associação voltada à conquista e exercício organizado do poder político');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na análise de Weber, pode haver incongruência entre classe e status — por exemplo, uma família aristocrática empobrecida pode manter elevado status social, enquanto um novo-rico pode ter alta renda e baixo prestígio estamental.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique críticas formuladas pelo sociólogo brasileiro Florestan Fernandes ao chamado "mito da democracia racial":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Demonstrou que a ideia de convivência racial harmoniosa mascarava a persistência do preconceito e da exclusão do negro na sociedade de classes', 1, 0),
(@p, 'Apontou que o mito servia para isentar as elites brancas da responsabilidade pela integração socioeconômica dos ex-escravizados', 1, 0),
(@p, 'Mostrou que a ausência de leis explícitas de segregação (como o Apartheid) não impedia o racismo velado e estrutural no Brasil', 1, 0),
(@p, 'Afirmou que o Brasil nunca teve escravidão nem preconceito racial após 1888', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual obra clássica de Gilberto Freyre, publicada em 1933, valorizou a miscigenação na formação brasileira, mas acabou associada à difusão da ideia de "democracia racial" posteriormente criticada pela Sociologia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Casa-Grande & Senzala', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a trajetória da interpretação sociológica sobre as relações raciais no Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Teorias do racismo científico e políticas de "branqueamento" (final do século XIX e início do XX)', 1, 1),
(@p, 'Valorização cultural da mestiçagem por Gilberto Freyre na década de 1930', 1, 2),
(@p, 'Desconstrução do mito da democracia racial por Florestan Fernandes, Oracy Nogueira e Abdias Nascimento', 1, 3),
(@p, 'Reconhecimento estatal do racismo estrutural e implementação de políticas de igualdade racial', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual distinção clássica o sociólogo brasileiro Oracy Nogueira estabeleceu entre o preconceito racial nos Estados Unidos e no Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nos EUA predomina o preconceito de origem (ascendência genética), enquanto no Brasil predomina o preconceito de marca (aparência física e traços fenotípicos)', 1, 0),
(@p, 'No Brasil existe preconceito de origem rígido e nos EUA nunca existiu segregação', 0, 0),
(@p, 'Em ambos os países o preconceito baseia-se exclusivamente no sobrenome religioso', 0, 0),
(@p, 'Oracy Nogueira concluiu que não há nenhum tipo de preconceito no Brasil', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "aporofobia" — conceito cunhado pela filósofa Adela Cortina — designa a aversão, o desprezo e a hostilidade dirigidos especificamente às pessoas pobres e em situação de vulnerabilidade socioeconômica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 7: Instituições Sociais (Família, Escola, Estado)
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Instituições Sociais (Família, Escola, Estado)' AND id_materia = 13 LIMIT 1);

-- Quiz 7.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Socialização Primária e Secundária e Papel das Instituições Sociais', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Sociologia, o que são as "instituições sociais" (como a família, a escola, o Estado, a religião e o trabalho)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conjuntos organizados e duradouros de normas, valores, papéis e práticas que satisfazem necessidades coletivas e regulam a vida em sociedade', 1, 0),
(@p, 'Apenas os prédios públicos de concreto construídos pelas prefeituras', 0, 0),
(@p, 'Reuniões casuais e passageiras de desconhecidos em uma fila de cinema', 0, 0),
(@p, 'Instintos biológicos herdados pelos animais mamíferos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fase do processo de socialização (conforme Peter Berger e Thomas Luckmann) à sua característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Socialização Primária', 1, 1, 'Ocorre na infância principalmente no âmbito familiar, com forte carga afetiva e aprendizagem da linguagem'),
(@p, 'Socialização Secundária', 1, 2, 'Ocorre ao longo da vida em instituições como escola, trabalho e grupos sociais, exigindo papéis específicos'),
(@p, 'Ressocialização', 1, 3, 'Ruptura com padrões anteriores e aprendizagem de novas normas (ex.: migração, prisões, forças armadas)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A socialização é um processo contínuo que dura toda a vida do indivíduo, e não apenas uma etapa encerrada na infância.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique funções desempenhadas pelas instituições sociais na vida coletiva:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Transmitir a cultura, a linguagem e os valores morais entre as gerações', 1, 0),
(@p, 'Estabelecer expectativas previsíveis de comportamento por meio de papéis sociais', 1, 0),
(@p, 'Exercer controle social formal (leis) e informal (costumes e aprovação do grupo)', 1, 0),
(@p, 'Impedir definitivamente qualquer mudança histórica nas sociedades humanas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como a Sociologia denomina o conjunto de comportamentos, direitos e deveres socialmente esperados de um indivíduo que ocupa determinada posição (ex.: mãe, professor, juiz, estudante)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Papel social', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a ampliação gradual dos agentes de socialização na trajetória de um indivíduo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Núcleo familiar e cuidadores próximos na primeira infância', 1, 1),
(@p, 'Escola, professores e grupos de pares (amigos da mesma faixa etária)', 1, 2),
(@p, 'Meios de comunicação, redes digitais e movimentos culturais', 1, 3),
(@p, 'Ambiente universitário, mundo do trabalho e instituições cívicas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na obra "A Construção Social da Realidade", Peter Berger e Thomas Luckmann explicam que a relação entre o indivíduo e a sociedade é dialética porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A sociedade é um produto humano que, uma vez objetivado, atua de volta moldando o próprio ser humano por meio da interiorização', 1, 0),
(@p, 'Os indivíduos vivem isolados sem nunca criar nem modificar instituições', 0, 0),
(@p, 'A sociedade existe fora do planeta Terra sem participação humana', 0, 0),
(@p, 'As instituições sociais são idênticas às leis da química orgânica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As instituições sociais são construções históricas sujeitas a transformações ao longo do tempo, como demonstram as mudanças nos modelos de família e de ensino entre os séculos XIX e XXI.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Transformações da Família Contemporânea e Relações de Parentesco', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Sociologia e a Antropologia contemporâneas utilizam frequentemente a expressão "famílias" no plural em vez de um único modelo universal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque os arranjos familiares variam historicamente e culturalmente, abrangendo famílias nucleares, monoparentais, recompostas, homoafetivas, extensas e unipessoais', 1, 0),
(@p, 'Porque a instituição familiar deixou de existir completamente no século XXI', 0, 0),
(@p, 'Porque apenas famílias com mais de dez filhos são reconhecidas por lei', 0, 0),
(@p, 'Porque o parentesco é determinado apenas pelo local de trabalho', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada configuração familiar contemporânea à sua descrição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Família Nuclear', 1, 1, 'Formada pelos cônjuges/companheiros e seus filhos vivendo no mesmo domicílio'),
(@p, 'Família Monoparental', 1, 2, 'Formada por apenas um dos genitores (mãe ou pai) e seus descendentes'),
(@p, 'Família Recomposta (ou Mosaico)', 1, 3, 'Formada a partir de novas uniões em que pelo menos um dos parceiros traz filhos de relacionamentos anteriores');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Constituição Federal brasileira de 1988 rompeu com o modelo patriarcal do antigo Código Civil de 1916 ao estabelecer a igualdade de direitos e deveres entre homens e mulheres na sociedade conjugal e reconhecer a união estável e a família monoparental.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores históricos e sociais que transformaram a estrutura das famílias no Brasil nas últimas décadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Urbanização acelerada e inserção crescente das mulheres no mercado de trabalho', 1, 0),
(@p, 'Queda acentuada da taxa de fecundidade e aumento da expectativa de vida da população', 1, 0),
(@p, 'Legalização do divórcio (1977) e reconhecimento jurídico das uniões homoafetivas pelo STF (2011)', 1, 0),
(@p, 'Retorno obrigatório da autoridade absoluta do patriarca sobre o casamento dos filhos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é denominado o sistema de organização social e familiar em que a autoridade doméstica, política e econômica concentra-se historicamente na figura masculina (o pai)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Patriarcado', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a transição histórica das funções predominantes da família no Ocidente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Família extensa pré-industrial como unidade central de produção agrária e patrimônio', 1, 1),
(@p, 'Consolidação da família nuclear burguesa com separação entre casa e fábrica na industrialização', 1, 2),
(@p, 'Ampliação da autonomia individual, igualdade jurídica dos cônjuges e valorização do vínculo afetivo', 1, 3),
(@p, 'Pluralidade de arranjos familiares reconhecidos social e juridicamente na contemporaneidade', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Antropologia do parentesco (como nos estudos de Claude Lévi-Strauss), o que significa afirmar que o parentesco é um fato cultural e não meramente biológico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que cada sociedade define simbolicamente quem é considerado parente, as regras de casamento, adoção e filiação, para além da consanguinidade', 1, 0),
(@p, 'Que os seres humanos não possuem nenhum vínculo genético com seus pais biológicos', 0, 0),
(@p, 'Que a adoção não cria laços familiares válidos', 0, 0),
(@p, 'Que todas as sociedades do mundo seguem exatamente as mesmas regras de herança', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Dados recentes dos censos demográficos brasileiros mostram um crescimento significativo de lares chefiados por mulheres e de famílias monoparentais femininas, especialmente nas camadas de menor renda.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('A Escola como Instituição Social: Cidadania, Reprodução e Pedagogia', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Sociologia da Educação, existem duas grandes interpretações sobre o papel da escola moderna: a visão funcionalista/iluminista e a visão crítico-reprodutivista. Como elas se distinguem?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A primeira vê a escola como espaço de integração social, meritocracia e mobilidade; a segunda denuncia que ela frequentemente legitima e reproduz as desigualdades de classe existentes', 1, 0),
(@p, 'A primeira defende o fechamento de todas as escolas e a segunda defende o trabalho infantil', 0, 0),
(@p, 'Ambas afirmam que a escola não exerce nenhuma influência na formação dos jovens', 0, 0),
(@p, 'A visão crítico-reprodutivista foi criada por Auguste Comte para defender a monarquia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito sociológico ligado à instituição escolar ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Currículo Oculto', 1, 1, 'Normas, valores, disciplina, pontualidade e hierarquias aprendidos implicitamente na rotina escolar'),
(@p, 'Educação Bancária (Paulo Freire)', 1, 2, 'Modelo tradicional em que o professor apenas deposita conteúdos no aluno passivo, sem diálogo crítico'),
(@p, 'Universalização do Ensino Básico', 1, 3, 'Garantia constitucional do acesso gratuito e obrigatório à escola para todas as crianças e jovens');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para o educador e filósofo brasileiro Paulo Freire, a educação libertadora (problematizadora) baseia-se no diálogo horizontal entre educador e educando, na leitura crítica do mundo e na autonomia do sujeito.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique papéis contraditórios e complementares que a escola desempenha nas sociedades democráticas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Democratizar o acesso ao patrimônio científico, artístico e cultural acumulado pela humanidade', 1, 0),
(@p, 'Formar cidadãos críticos capazes de participar ativamente da esfera pública e fiscalizar o Estado', 1, 0),
(@p, 'Qualificar para o mundo do trabalho em constante transformação tecnológica', 1, 0),
(@p, 'Garantir que todos os alunos abandonem qualquer senso crítico diante da mídia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual educador brasileiro foi um dos principais líderes do "Manifesto dos Pioneiros da Educação Nova" (1932), defendendo a escola pública, gratuita, laica e obrigatória no Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Anísio Teixeira', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução histórica da instituição escolar no Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ensino jesuítico voltado à catequese e à formação das elites coloniais (séculos XVI-XVIII)', 1, 1),
(@p, 'Criação das primeiras faculdades isoladas com a vinda da Família Real em 1808', 1, 2),
(@p, 'Movimento da Escola Nova e defesa da educação pública universal na década de 1930', 1, 3),
(@p, 'Consagração da educação como direito de todos e dever do Estado na Constituição de 1988', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como o sociólogo francês Michel Foucault analisou a escola moderna em sua obra "Vigiar e Punir"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como uma instituição disciplinar (semelhante a quartéis, hospitais e fábricas) que organiza o espaço, o tempo, os exames e a vigilância para produzir corpos dóceis e úteis', 1, 0),
(@p, 'Como um espaço completamente livre de horários, avaliações e regras disciplinares', 0, 0),
(@p, 'Como uma invenção exclusiva da Grécia Antiga sem relação com a modernidade', 0, 0),
(@p, 'Como uma instituição voltada apenas para o lazer esportivo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A inclusão obrigatória do ensino de História e Cultura Afro-Brasileira e Indígena na educação básica (Leis 10.639/2003 e 11.645/2008) busca combater o eurocentrismo curricular e valorizar a pluralidade formadora do Brasil.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Estado Moderno, Contratualismo, Soberania e Formas de Governo', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os três elementos constitutivos clássicos que definem um Estado soberano na Ciência Política e na Sociologia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Povo (população), território delimitado e governo dotado de soberania interna e externa', 1, 0),
(@p, 'Religião oficial única, idioma único e moeda de ouro', 0, 0),
(@p, 'Monarquia hereditária, exército mercenário e ausência de constituição', 0, 0),
(@p, 'Apenas uma bandeira nacional e um hino esportivo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pensador contratualista clássico à sua concepção de Estado de Natureza e Contrato Social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Thomas Hobbes (Leviatã)', 1, 1, 'Guerra de todos contra todos no estado de natureza; contrato cria Estado soberano absoluto para garantir a paz'),
(@p, 'John Locke (Segundo Tratado)', 1, 2, 'Direitos naturais à vida, liberdade e propriedade; Estado limitado criado para proteger esses direitos'),
(@p, 'Jean-Jacques Rousseau (Contrato Social)', 1, 3, 'Soberania popular inalienável expressa pela Vontade Geral e democracia participativa');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A teoria da tripartição dos poderes formulada por Montesquieu (Executivo, Legislativo e Judiciário independentes e harmônicos entre si) tem por objetivo evitar o abuso de poder e o despotismo por meio de freios e contrapesos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características que definem um Estado Democrático de Direito:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Submissão de todos — inclusive dos próprios governantes — à Constituição e às leis', 1, 0),
(@p, 'Eleições periódicas, livres, secretas e com sufrágio universal', 1, 0),
(@p, 'Garantia dos direitos fundamentais, pluralismo partidário e liberdade de expressão e imprensa', 1, 0),
(@p, 'Concentração ilimitada de todos os poderes nas mãos de um líder vitalício sem fiscalização', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito político designa o princípio pelo qual o Estado não adota nenhuma religião oficial, garantindo a liberdade de crença, de culto e de não crença a todos os cidadãos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Estado laico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução histórica das formas de Estado na modernidade ocidental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estado Absolutista (centralização do poder monárquico nos séculos XVI-XVIII)', 1, 1),
(@p, 'Estado Liberal de Direito (constitucionalismo, separação de poderes e direitos civis no século XIX)', 1, 2),
(@p, 'Estado de Bem-Estar Social / Welfare State (intervenção econômica e direitos sociais no século XX)', 1, 3),
(@p, 'Estado Neoliberal e debates contemporâneos sobre regulação global e políticas públicas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Sociologia Política brasileira, o que o conceito de "patrimonialismo" (analisado por Raymundo Faoro e Sérgio Buarque de Holanda) critica na formação do Estado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A confusão histórica entre o patrimônio público e os interesses privados dos governantes e grupos privilegiados, gerando nepotismo, clientelismo e corrupção', 1, 0),
(@p, 'A defesa rigorosa da transparência e dos concursos públicos impessoais', 0, 0),
(@p, 'A separação total entre família e administração estatal', 0, 0),
(@p, 'A proibição de qualquer empresa privada atuar no território nacional', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No pensamento político de Hannah Arendt ("Origens do Totalitarismo"), os regimes totalitários do século XX distinguem-se das ditaduras tradicionais por buscarem o domínio total da vida pública e privada por meio do terror estatal e da ideologia única.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 8: Movimentos Sociais e Direitos Humanos
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Movimentos Sociais e Direitos Humanos' AND id_materia = 13 LIMIT 1);

-- Quiz 8.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Cidadania Civil, Política e Social (Marshall) e Direitos Humanos', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na clássica obra "Cidadania, Classe Social e Status" (1950), em quais três dimensões históricas o sociólogo britânico T. H. Marshall dividiu o desenvolvimento da cidadania?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Direitos civis, direitos políticos e direitos sociais', 1, 0),
(@p, 'Direitos feudais, direitos monárquicos e direitos imperiais', 0, 0),
(@p, 'Direitos climáticos, direitos espaciais e direitos comerciais', 0, 0),
(@p, 'Direitos religiosos, direitos militares e direitos esportivos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada geração/dimensão de direitos da cidadania segundo T. H. Marshall aos seus exemplos típicos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Direitos Civis (século XVIII)', 1, 1, 'Liberdade de expressão, ir e vir, propriedade, igualdade perante a lei e direito à justiça'),
(@p, 'Direitos Políticos (século XIX)', 1, 2, 'Direito de votar, ser votado, organizar partidos políticos e participar do governo'),
(@p, 'Direitos Sociais (século XX)', 1, 3, 'Educação pública, saúde, previdência social, moradia e trabalho digno');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Declaração Universal dos Direitos Humanos foi proclamada pela Assembleia Geral da ONU em 10 de dezembro de 1948, logo após os horrores da Segunda Guerra Mundial e do Holocausto, afirmando que todos os seres humanos nascem livres e iguais em dignidade e direitos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique princípios fundamentais dos Direitos Humanos segundo o direito internacional e a Sociologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Universalidade: pertencem a todas as pessoas, independentemente de nacionalidade, raça, gênero ou religião', 1, 0),
(@p, 'Indivisibilidade e interdependência: direitos civis, políticos, sociais e culturais complementam-se', 1, 0),
(@p, 'Inalienabilidade: não podem ser vendidos, renunciados ou retirados arbitrariamente', 1, 0),
(@p, 'Exclusividade: aplicam-se apenas aos cidadãos ricos que possuem propriedades imóveis', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual documento jurídico promulgado em 5 de outubro de 1988 ficou conhecido no Brasil como "Constituição Cidadã" por ampliar os direitos fundamentais e sociais após a ditadura militar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Constituição Federal de 1988', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência histórica de conquista das três dimensões da cidadania descrita por T. H. Marshall na Inglaterra:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conquista das liberdades individuais e garantias jurídicas (direitos civis)', 1, 1),
(@p, 'Ampliação gradual do direito ao voto e da representação parlamentar (direitos políticos)', 1, 2),
(@p, 'Construção do Estado de Bem-Estar Social com saúde, educação e seguridade (direitos sociais)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o historiador José Murilo de Carvalho afirma em "Cidadania no Brasil: o longo caminho" que a ordem de aquisição dos direitos no Brasil inverteu o modelo inglês de Marshall?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque no Brasil direitos sociais foram concedidos pelo alto durante regimes autoritários (como a Era Vargas) antes da plena consolidação dos direitos civis e políticos', 1, 0),
(@p, 'Porque o Brasil conquistou o sufrágio universal feminino no século XVI', 0, 0),
(@p, 'Porque nunca houve leis trabalhistas no Brasil no século XX', 0, 0),
(@p, 'Porque os direitos civis brasileiros sempre foram mais fortes que os do Reino Unido', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A afirmação do senso comum de que "direitos humanos só servem para defender criminosos" distorce seu significado jurídico e histórico, pois os direitos humanos protegem toda a população contra abusos do Estado e garantem dignidade, saúde, educação e justiça para todos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 8.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Movimentos Sociais Clássicos e Novos Movimentos Sociais', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na Sociologia, o que caracteriza um "movimento social" em distinção a um tumulto passageiro ou um partido político institucionalizado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É uma ação coletiva organizada, contínua e dotada de identidade compartilhada que busca promover ou resistir a mudanças sociais, culturais ou políticas', 1, 0),
(@p, 'É uma explosão espontânea de cinco minutos sem nenhuma reivindicação nem organização', 0, 0),
(@p, 'É um órgão estatal controlado diretamente pelas forças armadas', 0, 0),
(@p, 'É uma empresa privada com fins lucrativos cotada na bolsa de valores', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada categoria de movimentos sociais às suas principais pautas e formas de atuação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Movimentos Sociais Clássicos (séculos XIX-XX)', 1, 1, 'Foco nas relações capital-trabalho, sindicatos, greves, salários e direitos trabalhistas'),
(@p, 'Novos Movimentos Sociais (a partir de 1960)', 1, 2, 'Foco em identidade, reconhecimento cultural, gênero, ecologia, direitos LGBTQIA+ e paz'),
(@p, 'Movimentos em Rede (século XXI)', 1, 3, 'Articulação descentralizada via redes digitais combinando mobilização virtual e ocupação das ruas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo sociólogos como Alain Touraine e Manuel Castells, os movimentos sociais são atores fundamentais na produção da história, pois trazem à tona conflitos ocultos e ampliam a agenda de direitos da democracia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique repertórios históricos de ação coletiva utilizados por movimentos sociais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Greves, paralisações e negociações coletivas conduzidas por sindicatos', 1, 0),
(@p, 'Passeatas, manifestações públicas, abaixo-assinados e campanhas de conscientização', 1, 0),
(@p, 'Desobediência civil pacífica (como nos movimentos liderados por Gandhi e Martin Luther King Jr.)', 1, 0),
(@p, 'Abolição completa de qualquer comunicação entre os participantes do grupo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito formulado pela filósofa Nancy Fraser destaca que a justiça social contemporânea exige combinar políticas de "redistribuição" econômica com políticas de "reconhecimento" cultural e identitário?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Reconhecimento', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas típicas de constituição e impacto de um movimento social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificação coletiva de uma injustiça, carência material ou negação de direitos', 1, 1),
(@p, 'Construção de identidade comum, lideranças e redes de solidariedade entre os participantes', 1, 2),
(@p, 'Mobilização pública e pressão política sobre o Estado e a opinião pública', 1, 3),
(@p, 'Institucionalização das conquistas em leis, políticas públicas ou mudanças culturais', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que foi o movimento "Sufragista" no final do século XIX e início do século XX?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A mobilização internacional organizada por mulheres exigindo o direito ao voto e à participação política em igualdade com os homens', 1, 0),
(@p, 'Um movimento empresarial contra a criação de escolas públicas', 0, 0),
(@p, 'Uma campanha para restaurar a monarquia absolutista na Europa', 0, 0),
(@p, 'Um sindicato exclusivo de proprietários de minas de carvão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os movimentos ambientais e ecologistas contemporâneos ampliaram o debate dos direitos humanos ao defenderem a justiça climática e os direitos das futuras gerações a um meio ambiente ecologicamente equilibrado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 8.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Movimentos Sociais no Brasil: Trabalhista, Negro, Feminista e Indígena', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual movimento social brasileiro desempenhou papel central na redemocratização do país na década de 1980, organizando grandes greves no ABC Paulista e contribuindo para a criação da CUT e de partidos trabalhistas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Novo Sindicalismo', 1, 0),
(@p, 'O Movimento Integralista', 0, 0),
(@p, 'A Revolta da Vacina de 1904', 0, 0),
(@p, 'A Liga Católica Monarquista', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada movimento social brasileiro às suas principais conquistas históricas e legais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Movimento Negro (MNU e organizações afro-brasileiras)', 1, 1, 'Criminalização do racismo (1988), Lei 10.639/2003, cotas raciais e titulação de quilombos'),
(@p, 'Movimento Feminista Brasileiro', 1, 2, 'Sufrágio feminino (1932), Estatuto da Mulher Casada, Lei Maria da Penha e Lei do Feminicídio'),
(@p, 'Movimento Indígena (UNI e APIB)', 1, 3, 'Capítulo dos Direitos Indígenas na Constituição de 1988, demarcação de terras e fim da tutela integracionista');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante a Assembleia Nacional Constituinte de 1987-1988, a articulação dos movimentos sociais por meio das "Emendas Populares" permitiu incorporar ao texto constitucional conquistas como o Sistema Único de Saúde (SUS) e a função social da propriedade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique lutas e bandeiras históricas dos movimentos sociais do campo e da cidade no Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reforma agrária e democratização do acesso à terra improdutiva (Ligas Camponesas, CONTAG, MST)', 1, 0),
(@p, 'Direito à cidade, moradia digna, regularização fundiária e transporte público acessível (MTST, Movimento Passe Livre)', 1, 0),
(@p, 'Defesa da Amazônia, das reservas extrativistas e dos povos da floresta (liderada historicamente por Chico Mendes)', 1, 0),
(@p, 'Restauração do trabalho escravo nas fazendas exportadoras de café', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual líder sindical e seringueiro acreano destacou-se mundialmente na década de 1980 ao unir a luta trabalhista dos povos da floresta à preservação ambiental da Amazônia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Chico Mendes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene marcos importantes da luta por direitos e democracia no Brasil contemporâneo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fundação do Movimento Negro Unificado (MNU) e ressurgimento das greves operárias (1978)', 1, 1),
(@p, 'Campanha popular "Diretas Já" exigindo eleições presidenciais diretas (1983-1984)', 1, 2),
(@p, 'Promulgação da Constituição Cidadã com participação das emendas populares (1988)', 1, 3),
(@p, 'Aprovação da Lei Maria da Penha (2006) e da Lei de Cotas nas universidades federais (2012)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual avanço jurídico fundamental a Constituição Federal de 1988 trouxe para os povos indígenas no Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Abandonou a política assimilacionista, reconhecendo aos indígenas sua organização social, costumes, línguas, crenças e os direitos originários sobre as terras que tradicionalmente ocupam', 1, 0),
(@p, 'Obrigou todos os povos indígenas a abandonarem suas línguas nativas em cinco anos', 0, 0),
(@p, 'Transferiu todas as terras indígenas para empresas privadas de mineração', 0, 0),
(@p, 'Extinguiu o direito dos indígenas de ingressarem na Justiça', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Marcha Zumbi dos Palmares contra o Racismo, pela Cidadania e a Vida", realizada em Brasília em 1995 (tricentenário da morte de Zumbi), foi um marco decisivo para colocar o combate ao racismo na agenda das políticas públicas brasileiras.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 8.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Democracia Participativa, Esfera Pública e Cidadania Digital', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como o filósofo e sociólogo alemão Jürgen Habermas define a "esfera pública" nas sociedades democráticas modernas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um espaço social mediador entre a sociedade civil e o Estado no qual os cidadãos debatem racionalmente questões de interesse coletivo e formam a opinião pública', 1, 0),
(@p, 'Um órgão secreto do Poder Executivo que redige decretos sem consulta popular', 0, 0),
(@p, 'Exclusivamente o mercado financeiro onde se negociam ações de empresas privadas', 0, 0),
(@p, 'A esfera íntima e doméstica isolada de qualquer assunto político', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada mecanismo institucional de democracia participativa previsto no Brasil à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Conselhos Gestores de Políticas Públicas', 1, 1, 'Órgãos colegiados paritários (governo e sociedade civil) que deliberam sobre saúde, educação e assistência'),
(@p, 'Plebiscito e Referendo', 1, 2, 'Consultas diretas ao eleitorado antes (plebiscito) ou depois (referendo) da aprovação de um ato legislativo'),
(@p, 'Orçamento Participativo e Audiências Públicas', 1, 3, 'Espaços abertos para a população definir prioridades de investimento e fiscalizar projetos estatais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A democracia participativa não elimina a democracia representativa (eleição de parlamentares e governantes), mas a complementa e aprofunda por meio do controle social contínuo entre uma eleição e outra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique desafios sociológicos e políticos colocados pelas redes sociais digitais à democracia e aos direitos humanos no século XXI:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Formação de "bolhas algorítmicas" e câmaras de eco que reduzem o diálogo plural e intensificam a polarização política', 1, 0),
(@p, 'Disseminação acelerada de desinformação (fake news) e discursos de ódio que ameaçam processos eleitorais e minorias', 1, 0),
(@p, 'Desigualdade no acesso à internet de banda larga e letramento digital (exclusão digital)', 1, 0),
(@p, 'Eliminação definitiva de qualquer forma de vigilância de dados ou manipulação publicitária', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual sociólogo espanhol escreveu "Redes de Indignação e Esperança" (2012), analisando como movimentos sociais contemporâneos articulam o espaço híbrido da internet e das praças públicas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Manuel Castells', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo de construção e controle democrático de uma política pública com participação social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mobilização da sociedade civil e inserção da demanda na agenda pública', 1, 1),
(@p, 'Formulação normativa e orçamentária com participação de conselhos e audiências públicas', 1, 2),
(@p, 'Implementação administrativa pelo Estado em articulação com os entes federativos', 1, 3),
(@p, 'Monitoramento, transparência de dados e avaliação dos resultados sociais obtidos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na filosofia política de Boaventura de Sousa Santos, o que significa a "democratização da democracia"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Superar a democracia de baixa intensidade (restrita apenas ao voto periódico) articulando representação política com participação popular direta e justiça social', 1, 0),
(@p, 'Substituir todas as eleições por sorteios aleatórios sem constituição', 0, 0),
(@p, 'Restringir o direito de voto apenas aos cidadãos com pós-graduação', 0, 0),
(@p, 'Eliminar os movimentos sociais e sindicatos da vida pública', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Lei de Acesso à Informação (Lei 12.527/2011) fortalece a cidadania ativa no Brasil ao garantir que a transparência dos dados públicos seja a regra e o sigilo a exceção, permitindo o controle social sobre o Estado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);