USE luminebd;

-- =========================================================================
-- MATÉRIA 7: QUÍMICA (7 CONTEÚDOS)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 1: Tabela Periódica
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Tabela Periódica' AND id_materia = 7 LIMIT 1);

-- Quiz 1.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Organização da Tabela Periódica: Períodos, Grupos e Metais', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual critério organiza os elementos químicos em ordem crescente na Tabela Periódica atual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Número atômico (Z), que corresponde à quantidade de prótons no núcleo', 1, 0),
(@p, 'Massa atômica média em ordem decrescente', 0, 0),
(@p, 'Número de nêutrons presentes no núcleo atômico', 0, 0),
(@p, 'Ordem alfabética dos símbolos químicos em latim', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada divisão estrutural da Tabela Periódica à sua definição correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Períodos (7 linhas horizontais)', 1, 1, 'Indicam o número de camadas eletrônicas ocupadas pelo átomo'),
(@p, 'Grupos ou Famílias (18 colunas verticais)', 1, 2, 'Reúnem elementos com propriedades químicas semelhantes'),
(@p, 'Metais', 1, 3, 'Maioria dos elementos, bons condutores de calor e eletricidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maior parte dos elementos químicos conhecidos na Tabela Periódica é classificada como metal, apresentando brilho característico, ductilidade e maleabilidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características típicas dos ametais (não metais) na Tabela Periódica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'São maus condutores de corrente elétrica e calor (com exceção do carbono grafite)', 1, 0),
(@p, 'Tendem a ganhar ou compartilhar elétrons ao formar ligações químicas', 1, 0),
(@p, 'Localizam-se predominantemente no lado direito da Tabela Periódica', 1, 0),
(@p, 'São todos líquidos à temperatura ambiente e possuem brilho metálico intenso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o único metal que se encontra no estado líquido em condições ambientes (25 °C e 1 atm)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Mercúrio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os seguintes elementos químicos do menor para o maior número atômico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hidrogênio (Z = 1)', 1, 1),
(@p, 'Carbono (Z = 6)', 1, 2),
(@p, 'Oxigênio (Z = 8)', 1, 3),
(@p, 'Sódio (Z = 11)', 1, 4),
(@p, 'Ferro (Z = 26)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Embora esteja localizado no topo da coluna 1 da Tabela Periódica, o Hidrogênio (H) possui propriedades únicas porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Não pertence à família dos metais alcalinos, sendo um ametal gasoso nas condições ambientes', 1, 0),
(@p, 'É um gás nobre com oito elétrons na camada de valência', 0, 0),
(@p, 'É um metal de transição altamente denso e radioativo', 0, 0),
(@p, 'Possui três camadas eletrônicas completas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um elemento químico situado no 4º período da Tabela Periódica apresenta átomos neutros com 4 camadas eletrônicas preenchidas por elétrons.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 1.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Principais Famílias Químicas: Alcalinos, Halogênios e Gases Nobres', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os metais alcalinos (Grupo 1: Li, Na, K, Rb, Cs, Fr) são armazenados imersos em querosene ou óleo mineral nos laboratórios?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque são extremamente reativos com a água e o oxigênio do ar, podendo inflamar-se ou explodir', 1, 0),
(@p, 'Porque são gases que escapariam facilmente para a atmosfera sem o óleo', 0, 0),
(@p, 'Porque o querosene aumenta o número atômico desses elementos', 0, 0),
(@p, 'Porque são completamente inertes e precisam ser dissolvidos para reagir', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo da Tabela Periódica ao seu nome tradicional e característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Grupo 2 (Be, Mg, Ca, Sr, Ba, Ra)', 1, 1, 'Metais Alcalinoterrosos (2 elétrons na camada de valência)'),
(@p, 'Grupo 17 (F, Cl, Br, I, At)', 1, 2, 'Halogênios (formadores de sais, muito eletronegativos)'),
(@p, 'Grupo 18 (He, Ne, Ar, Kr, Xe, Rn)', 1, 3, 'Gases Nobres (grande estabilidade química e baixa reatividade)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os calcogênios pertencem ao Grupo 16 da Tabela Periódica (como oxigênio e enxofre) e possuem 6 elétrons na camada de valência.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre os Gases Nobres (Grupo 18):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Hélio (He) é estável com apenas 2 elétrons na sua única camada eletrônica', 1, 0),
(@p, 'Os demais gases nobres possuem 8 elétrons na camada de valência no estado fundamental', 1, 0),
(@p, 'Encontram-se na natureza predominantemente na forma de átomos isolados (gases monoatômicos)', 1, 0),
(@p, 'Formam compostos iônicos espontaneamente com todos os metais alcalinos à temperatura ambiente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual halogênio apresenta-se no estado líquido em temperatura ambiente (25 °C) com coloração castanho-avermelhada?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bromo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as famílias da esquerda para a direita conforme aparecem na Tabela Periódica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metais Alcalinos (Grupo 1)', 1, 1),
(@p, 'Metais Alcalinoterrosos (Grupo 2)', 1, 2),
(@p, 'Família do Carbono (Grupo 14)', 1, 3),
(@p, 'Calcogênios (Grupo 16)', 1, 4),
(@p, 'Halogênios (Grupo 17)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um elemento químico que reage vigorosamente com a água formando uma base forte e liberando gás hidrogênio (H2) pertence muito provavelmente ao grupo dos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metais alcalinos', 1, 0),
(@p, 'Gases nobres', 0, 0),
(@p, 'Halogênios', 0, 0),
(@p, 'Calcogênios', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todos os halogênios (flúor, cloro, bromo e iodo) são encontrados no estado gasoso em condições ambientes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 1.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Distribuição Eletrônica e Localização dos Elementos', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um átomo neutro possui a distribuição eletrônica 1s2 2s2 2p6 3s2 3p5. Em qual período e grupo da Tabela Periódica ele se localiza?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3º período e Grupo 17 (família dos halogênios)', 1, 0),
(@p, '5º período e Grupo 3', 0, 0),
(@p, '3º período e Grupo 5', 0, 0),
(@p, '2º período e Grupo 17', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada subnível mais energético da distribuição eletrônica ao bloco correspondente na Tabela Periódica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Subníveis s e p', 1, 1, 'Elementos Representativos (Grupos 1, 2 e 13 a 18)'),
(@p, 'Subnível d', 1, 2, 'Elementos de Transição Externa (Grupos 3 a 12)'),
(@p, 'Subnível f', 1, 3, 'Elementos de Transição Interna (Lantanídeos e Actinídeos)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos elementos representativos, o número da camada de valência (maior nível energético) indica o período, enquanto a quantidade de elétrons nessa camada permite identificar o grupo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Considere o elemento Cálcio (Z = 20), cuja distribuição é 1s2 2s2 2p6 3s2 3p6 4s2. Assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Situa-se no 4º período da Tabela Periódica', 1, 0),
(@p, 'Pertence ao Grupo 2 (metais alcalinoterrosos)', 1, 0),
(@p, 'Ao perder seus 2 elétrons de valência, forma o cátion Ca2+ isoeletrônico ao Argônio (Z = 18)', 1, 0),
(@p, 'É um elemento de transição interna da série dos lantanídeos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o número máximo de elétrons que comporta o subnível d na distribuição eletrônica de Linus Pauling?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '10', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os subníveis energéticos segundo a ordem crescente de energia do Diagrama de Linus Pauling:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3s', 1, 1),
(@p, '3p', 1, 2),
(@p, '4s', 1, 3),
(@p, '3d', 1, 4),
(@p, '4p', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para determinar a posição de um elemento químico na Tabela Periódica a partir de um íon como X2- (com 18 elétrons), deve-se:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fazer a distribuição do átomo neutro correspondente (16 elétrons, Z = 16), situando-o no 3º período e Grupo 16', 1, 0),
(@p, 'Localizar diretamente o elemento com 18 prótons (Grupo 18)', 0, 0),
(@p, 'Somar 2 elétrons aos 18, encontrando o elemento de Z = 20', 0, 0),
(@p, 'Considerar que íons negativos não pertencem à Tabela Periódica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A série dos lantanídeos (Z = 57 a 71) pertence ao 6º período, enquanto a série dos actinídeos (Z = 89 a 103) pertence ao 7º período.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 1.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Propriedades Periódicas: Raio Atômico, Eletronegatividade e Ionização', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o raio atômico diminui da esquerda para a direita ao longo de um mesmo período da Tabela Periódica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o número de camadas eletrônicas permanece constante enquanto a carga nuclear efetiva aumenta, atraindo mais fortemente os elétrons', 1, 0),
(@p, 'Porque os elementos da direita perdem camadas eletrônicas inteiras', 0, 0),
(@p, 'Porque o número de nêutrons diminui drasticamente em direção aos halogênios', 0, 0),
(@p, 'Porque os gases nobres têm raio igual a zero', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada propriedade periódica ao seu sentido de crescimento na Tabela Periódica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Raio Atômico e Eletropositividade', 1, 1, 'Crescem de cima para baixo nos grupos e da direita para a esquerda nos períodos'),
(@p, 'Eletronegatividade (excluindo gases nobres)', 1, 2, 'Cresce de baixo para cima nos grupos e da esquerda para a direita nos períodos'),
(@p, 'Energia de Ionização', 1, 3, 'Cresce de baixo para cima e da esquerda para a direita, atingindo máximos nos gases nobres');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em espécies isoeletrônicas (como O2-, F-, Ne, Na+ e Mg2+, todas com 10 elétrons), o raio iônico é menor quanto maior for o número atômico (quantidade de prótons no núcleo).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre propriedades periódicas e aperiódicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Flúor (F) é o elemento mais eletronegativo da Tabela Periódica', 1, 0),
(@p, 'O raio de um cátion é sempre menor que o raio do seu átomo neutro de origem', 1, 0),
(@p, 'A massa atômica é uma propriedade aperiódica, pois cresce continuamente com o número atômico', 1, 0),
(@p, 'O raio de um ânion é sempre menor que o raio do seu átomo neutro de origem', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a energia mínima necessária para remover um elétron de um átomo isolado no estado gasoso e fundamental?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Energia de ionização', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os cinco elementos mais eletronegativos da Tabela Periódica em ordem decrescente de eletronegatividade (fila FONClBr...):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Flúor (F)', 1, 1),
(@p, 'Oxigênio (O)', 1, 2),
(@p, 'Nitrogênio (N)', 1, 3),
(@p, 'Cloro (Cl)', 1, 4),
(@p, 'Bromo (Br)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a segunda energia de ionização do Sódio (Na+ -> Na2+ + e-) é muito mais elevada do que a sua primeira energia de ionização?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o segundo elétron precisa ser retirado de uma camada interna mais próxima do núcleo e com configuração estável de gás nobre', 1, 0),
(@p, 'Porque o íon Na+ possui mais prótons que o átomo neutro de sódio', 0, 0),
(@p, 'Porque a primeira ionização absorve energia enquanto a segunda sempre libera calor', 0, 0),
(@p, 'Porque o sódio torna-se um gás nobre após perder dois elétrons', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A densidade absoluta dos elementos cresce das extremidades laterais para o centro da Tabela Periódica e de cima para baixo nas famílias, tendo o Ósmio (Os) e o Irídio (Ir) como os elementos mais densos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 2: Ligações Químicas
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Ligações Químicas' AND id_materia = 7 LIMIT 1);

-- Quiz 2.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regra do Octeto e Ligação Iônica', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como ocorre fundamentalmente uma ligação química do tipo iônica (eletrovalente)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela transferência definitiva de elétrons de um metal (formando cátion) para um ametal (formando ânion), unidos por atração eletrostática', 1, 0),
(@p, 'Pelo compartilhamento mútuo de pares de elétrons entre dois gases nobres', 0, 0),
(@p, 'Pela fusão dos núcleos atômicos de dois átomos de hidrogênio', 0, 0),
(@p, 'Pela movimentação livre de prótons em uma rede cristalina molecular', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da ligação iônica à sua descrição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cátion', 1, 1, 'Íon com carga positiva formado pela perda de elétrons'),
(@p, 'Ânion', 1, 2, 'Íon com carga negativa formado pelo ganho de elétrons'),
(@p, 'Retículo Cristalino Iônico', 1, 3, 'Arranjo geométrico organizado de íons opostos no estado sólido');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os compostos iônicos conduzem corrente elétrica no estado sólido porque seus íons possuem total liberdade de movimento na rede cristalina.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique propriedades características dos compostos iônicos (como o cloreto de sódio, NaCl):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'São sólidos à temperatura ambiente (25 °C e 1 atm)', 1, 0),
(@p, 'Apresentam elevados pontos de fusão e ebulição', 1, 0),
(@p, 'Conduzem corrente elétrica quando fundidos (líquidos) ou dissolvidos em água', 1, 0),
(@p, 'São compostos exclusivamente por átomos de carbono e hidrogênio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a fórmula química do composto iônico formado entre os íons Ca2+ e Cl-?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'CaCl2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da formação do cloreto de sódio (NaCl) a partir de átomos neutros de sódio e cloro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O átomo de sódio (1 elétron de valência) cede um elétron ao cloro (7 elétrons de valência)', 1, 1),
(@p, 'Formam-se o cátion Na+ e o ânion Cl-, ambos com octeto completo', 1, 2),
(@p, 'Os íons de cargas opostas atraem-se fortemente por força eletrostática', 1, 3),
(@p, 'Os íons organizam-se em um retículo cristalino cúbico sólido', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a fórmula do composto iônico resultante da combinação entre o cátion Alumínio (Al3+) e o ânion Óxido (O2-)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Al2O3', 1, 0),
(@p, 'Al3O2', 0, 0),
(@p, 'AlO', 0, 0),
(@p, 'Al2O', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A fórmula de um composto iônico não representa uma molécula isolada, mas sim a proporção mínima inteira entre cátions e ânions para que a carga total seja neutra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ligação Covalente: Compartilhamento e Fórmulas Moleculares', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Entre quais tipos de átomos ocorre predominantemente a ligação covalente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Entre átomos de ametais entre si, ou entre hidrogênio e ametais, por meio do compartilhamento de pares de elétrons', 1, 0),
(@p, 'Exclusivamente entre metais alcalinos e metais de transição', 0, 0),
(@p, 'Por transferência de nêutrons entre cátions metálicos', 0, 0),
(@p, 'Apenas entre átomos de gases nobres em temperaturas elevadas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada molécula diatômica ao tipo de ligação covalente entre seus átomos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'H2 e Cl2', 1, 1, 'Ligação covalente simples (1 par de elétrons compartilhado)'),
(@p, 'O2', 1, 2, 'Ligação covalente dupla (2 pares de elétrons compartilhados)'),
(@p, 'N2', 1, 3, 'Ligação covalente tripla (3 pares de elétrons compartilhados)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na ligação covalente coordenada (ou dativa), o par de elétrons compartilhado entre dois átomos provém de apenas um dos átomos, que já atingiu o octeto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique substâncias formadas exclusivamente por ligações covalentes (substâncias moleculares):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Água (H2O) e gás carbônico (CO2)', 1, 0),
(@p, 'Amônia (NH3) e metano (CH4)', 1, 0),
(@p, 'Glicose (C6H12O6) e etanol (C2H6O)', 1, 0),
(@p, 'Cloreto de potássio (KCl) e fluoreto de sódio (NaF)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quantas ligações covalentes simples cada átomo de carbono realiza na molécula do metano (CH4)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '4', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as ligações covalentes entre dois átomos de carbono da maior para a menor distância interatômica (comprimento de ligação):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ligação simples (C-C)', 1, 1),
(@p, 'Ligação dupla (C=C)', 1, 2),
(@p, 'Ligação tripla (C≡C)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre uma ligação covalente apolar e uma ligação covalente polar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na apolar, os átomos têm igual eletronegatividade e atraem o par eletrônico igualmente; na polar, há diferença de eletronegatividade gerando polos parciais', 1, 0),
(@p, 'A ligação apolar ocorre entre íons e a polar ocorre entre metais', 0, 0),
(@p, 'A ligação polar sempre rompe a molécula em íons livres no ar', 0, 0),
(@p, 'Não existe diferença, pois toda ligação covalente tem diferença de eletronegatividade zero', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Existem exceções à Regra do Octeto em compostos covalentes estáveis, como o trifluoreto de boro (BF3), em que o boro estabiliza-se com 6 elétrons, e o hexafluoreto de enxofre (SF6), com 12 elétrons.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ligação Metálica, Ligas Metálicas e Propriedades dos Sólidos', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como o modelo do "mar de elétrons" explica a elevada condutividade elétrica dos metais no estado sólido?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os elétrons de valência ficam deslocalizados e movem-se livremente entre os cátions metálicos fixos quando aplicada uma diferença de potencial', 1, 0),
(@p, 'Os átomos metálicos transformam-se em gases dentro do fio condutor', 0, 0),
(@p, 'Os núcleos positivos deslocam-se rapidamente de uma ponta à outra do metal', 0, 0),
(@p, 'Os metais possuem moléculas isoladas ligadas por pontes de hidrogênio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada liga metálica importante aos seus principais elementos constituintes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Aço comum e Aço inoxidável', 1, 1, 'Ferro e Carbono (com adição de Cromo e Níquel no inox)'),
(@p, 'Bronze', 1, 2, 'Cobre e Estanho'),
(@p, 'Latão', 1, 3, 'Cobre e Zinco');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maleabilidade é a capacidade de um metal ser transformado em lâminas finas (como folhas de alumínio), enquanto a ductilidade é a capacidade de ser estirado em fios (como fios de cobre).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique comparações corretas entre sólidos iônicos, moleculares e metálicos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sólidos metálicos conduzem eletricidade tanto no estado sólido quanto no líquido', 1, 0),
(@p, 'Sólidos moleculares (como sacarose e gelo) geralmente têm pontos de fusão bem menores que os iônicos', 1, 0),
(@p, 'Cristais iônicos são duros e quebradiços, sofrendo clivagem quando submetidos a impacto mecânico', 1, 0),
(@p, 'Sólidos covalentes reticulares como o diamante fundem-se facilmente abaixo de 50 °C', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são denominadas as misturas homogêneas formadas por dois ou mais elementos químicos em que pelo menos o componente majoritário é um metal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ligas metálicas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os seguintes materiais do menor para o maior ponto de fusão aproximado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Água sólida / gelo (0 °C)', 1, 1),
(@p, 'Sacarose / açúcar comum (~186 °C)', 1, 2),
(@p, 'Cloreto de sódio / NaCl (~801 °C)', 1, 3),
(@p, 'Ferro metálico / Fe (~1538 °C)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O ouro utilizado na fabricação de joias comerciais é frequentemente "ouro 18 quilates" (75% ouro e 25% outros metais como cobre e prata) porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ouro puro (24 quilates) é excessivamente macio e deforma-se com facilidade, exigindo a liga para ganhar dureza', 1, 0),
(@p, 'O ouro puro é um gás tóxico que precisa ser solidificado com prata', 0, 0),
(@p, 'O ouro puro oxida imediatamente ao entrar em contato com o ar', 0, 0),
(@p, 'O ouro puro não possui brilho metálico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O diamante e a grafite são formas alotrópicas do carbono; enquanto o diamante é isolante elétrico e extremamente duro, a grafite conduz eletricidade devido a elétrons livres entre suas camadas hexagonais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 2.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Geometria Molecular, Polaridade e Forças Intermoleculares', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a molécula de gás carbônico (CO2) é classificada como apolar, apesar de possuir duas ligações covalentes fortemente polares entre carbono e oxigênio?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque sua geometria é linear e simétrica, fazendo com que os vetores momento de dipolo se anulem (μ = 0)', 1, 0),
(@p, 'Porque o carbono e o oxigênio possuem exatamente a mesma eletronegatividade', 0, 0),
(@p, 'Porque sua geometria é angular com dois pares de elétrons livres no carbono', 0, 0),
(@p, 'Porque o CO2 é um composto iônico sem ligações covalentes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada molécula à sua geometria molecular (segundo a teoria VSEPR) e polaridade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'H2O (Água)', 1, 1, 'Geometria angular e molécula polar'),
(@p, 'NH3 (Amônia)', 1, 2, 'Geometria piramidal trigonal e molécula polar'),
(@p, 'CH4 (Metano)', 1, 3, 'Geometria tetraédrica e molécula apolar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A água (H2O, massa molar 18 g/mol) possui ponto de ebulição muito superior ao do sulfeto de hidrogênio (H2S, massa molar 34 g/mol) devido à presença de intensas ligações de hidrogênio entre suas moléculas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique condições e exemplos corretos envolvendo forças intermoleculares:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As ligações de hidrogênio ocorrem quando H está ligado diretamente a F, O ou N', 1, 0),
(@p, 'Moléculas apolares (como CO2, CH4 e I2) interagem entre si por forças de dipolo induzido (dispersão de London)', 1, 0),
(@p, 'A dissolução de NaCl em água envolve interações do tipo íon-dipolo', 1, 0),
(@p, 'As forças de dispersão de London são sempre mais fortes que as ligações covalentes intramoleculares', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a geometria molecular da molécula de trifluoreto de boro (BF3), que possui três ligantes iguais ao redor do átomo central sem pares de elétrons não ligantes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Trigonal plana', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as interações entre partículas neutras da mais fraca para a mais intensa (considerando massas molares comparáveis):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dipolo induzido - dipolo induzido (Forças de London)', 1, 1),
(@p, 'Dipolo permanente - dipolo permanente', 1, 2),
(@p, 'Ligação de hidrogênio (Ponte de hidrogênio)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O princípio empírico "semelhante dissolve semelhante" explica por que a água e o óleo de cozinha não se misturam, uma vez que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A água é uma substância fortemente polar (com ligações de hidrogênio), enquanto os triglicerídeos do óleo são predominantemente apolares', 1, 0),
(@p, 'O óleo é um composto iônico sólido e a água é um gás apolar', 0, 0),
(@p, 'Ambos são perfeitamente apolares, mas têm cores incompatíveis', 0, 0),
(@p, 'A água possui densidade menor que a do óleo e evapora instantaneamente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em compostos apolares de uma mesma série homóloga (como alcanos lineares), quanto maior a massa molar e a superfície de contato da cadeia carbônica, mais intensas são as forças de London e maior o ponto de ebulição.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 3: Reações Químicas
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Reações Químicas' AND id_materia = 7 LIMIT 1);

-- Quiz 3.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fenômenos Físicos vs. Químicos e Evidências de Reação', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual das situações abaixo representa uma transformação química (reação química), e não apenas uma transformação física?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A formação de ferrugem em um portão de ferro exposto à umidade e ao ar', 1, 0),
(@p, 'O derretimento de um cubo de gelo em um copo à temperatura ambiente', 0, 0),
(@p, 'A dissolução de açúcar em água sem aquecimento', 0, 0),
(@p, 'A trituração de grãos de sal grosso em um pilão', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada evidência experimental a um exemplo cotidiano de reação química:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Liberação de gás (efervescência)', 1, 1, 'Mistura de vinagre (ácido acético) com bicarbonato de sódio'),
(@p, 'Mudança de cor', 1, 2, 'Escurecimento da polpa de uma maçã cortada exposta ao oxigênio'),
(@p, 'Liberação de calor e luz', 1, 3, 'Combustão da madeira ou do gás de cozinha (GLP)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em uma reação química, ocorre o rearranjo dos átomos dos reagentes para formar novas substâncias (produtos) com propriedades diferentes das iniciais, sem criação ou destruição de átomos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique processos que envolvem reações químicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fotossíntese realizada pelas plantas verdes', 1, 0),
(@p, 'Digestão dos alimentos no estômago e intestino', 1, 0),
(@p, 'Azedamento do leite fora da geladeira', 1, 0),
(@p, 'Sublimação do gelo-seco (CO2 sólido passando a gás)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as substâncias iniciais que sofrem transformação em uma equação química e ficam posicionadas à esquerda da seta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Reagentes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os elementos de leitura de uma equação química padrão da esquerda para a direita:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fórmulas dos reagentes e seus estados físicos', 1, 1),
(@p, 'Seta indicando o sentido da transformação (e condições sobre a seta)', 1, 2),
(@p, 'Fórmulas dos produtos formados e seus estados físicos', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em uma equação química, o símbolo "(aq)" escrito logo após a fórmula de uma substância como NaCl(aq) indica que a substância:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Está dissolvida em água, formando uma solução aquosa', 1, 0),
(@p, 'Encontra-se no estado gasoso superaquecido', 0, 0),
(@p, 'Formou um sólido insolúvel no fundo do recipiente', 0, 0),
(@p, 'Foi aquecida acima de 1000 °C', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A formação de um precipitado (sólido insolúvel que turva a mistura líquida ou deposita-se no fundo) é um indício clássico de que ocorreu uma reação química.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Classificação das Reações: Síntese, Análise, Simples e Dupla Troca', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se classifica a reação representada pela equação: CaCO3(s) -> CaO(s) + CO2(g), na qual um único reagente origina dois produtos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reação de decomposição ou análise (neste caso, pirólise)', 1, 0),
(@p, 'Reação de síntese ou adição total', 0, 0),
(@p, 'Reação de simples troca ou deslocamento', 0, 0),
(@p, 'Reação de dupla troca com neutralização', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada equação química à sua classificação correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'N2(g) + 3 H2(g) -> 2 NH3(g)', 1, 1, 'Síntese ou Adição'),
(@p, 'Zn(s) + 2 HCl(aq) -> ZnCl2(aq) + H2(g)', 1, 2, 'Simples Troca ou Deslocamento'),
(@p, 'AgNO3(aq) + NaCl(aq) -> AgCl(s) + NaNO3(aq)', 1, 3, 'Dupla Troca ou Permutação');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na fila de reatividade dos metais, o cobre metálico (Cu) consegue deslocar o zinco (Zn) de uma solução de ZnSO4 porque o cobre é mais nobre e mais reativo que o zinco.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique condições que favorecem a ocorrência espontânea de uma reação de dupla troca em meio aquoso:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Formação de um produto insolúvel (precipitado)', 1, 0),
(@p, 'Formação de um produto gasoso que escapa do sistema (volátil)', 1, 0),
(@p, 'Formação de um eletrólito mais fraco ou menos ionizado, como a água (H2O)', 1, 0),
(@p, 'Formação exclusiva de dois sais altamente solúveis e completamente dissociados sem mudança alguma', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é denominada a reação de decomposição provocada pela passagem de corrente elétrica (como na quebra da água em H2 e O2)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Eletrólise', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os seguintes metais do mais reativo para o menos reativo (mais nobre):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Potássio (K)', 1, 1),
(@p, 'Zinco (Zn)', 1, 2),
(@p, 'Ferro (Fe)', 1, 3),
(@p, 'Cobre (Cu)', 1, 4),
(@p, 'Ouro (Au)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na combustão completa de qualquer hidrocarboneto (como o etanol ou a gasolina) na presença de excesso de gás oxigênio (O2), os únicos produtos formados são:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dióxido de carbono (CO2) e água (H2O)', 1, 0),
(@p, 'Monóxido de carbono (CO) e fuligem (C)', 0, 0),
(@p, 'Gás hidrogênio (H2) e peróxido de hidrogênio (H2O2)', 0, 0),
(@p, 'Gás metano (CH4) e ozônio (O3)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A decomposição da água oxigenada (2 H2O2 -> 2 H2O + O2) é acelerada pela luz ou pela enzima catalase presente no sangue, sendo um exemplo de fotólise ou catálise.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Balanceamento de Equações Químicas e Leis Ponderais', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os menores coeficientes estequiométricos inteiros que balanceiam corretamente a equação: __ Fe + __ O2 -> __ Fe2O3?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4, 3 e 2', 1, 0),
(@p, '2, 3 e 1', 0, 0),
(@p, '1, 1 e 1', 0, 0),
(@p, '2, 1 e 2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada lei ponderal das reações químicas ao seu enunciado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Lei de Lavoisier (Conservação das Massas)', 1, 1, 'Em sistema fechado, a soma das massas dos reagentes é igual à soma das massas dos produtos'),
(@p, 'Lei de Proust (Proporções Constantes)', 1, 2, 'Uma substância composta é formada por elementos combinados em proporção fixa em massa'),
(@p, 'Regra do MACHO no balanceamento', 1, 3, 'Ordem prática para acertar coeficientes: Metais, Ametais, Carbono, Hidrogênio e Oxigênio');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para balancear uma equação química, pode-se alterar livremente os índices inferiores das fórmulas químicas (por exemplo, transformar H2O em H2O2).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique equações químicas que estão devidamente balanceadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'CH4 + 2 O2 -> CO2 + 2 H2O', 1, 0),
(@p, '2 Al + 3 H2SO4 -> Al2(SO4)3 + 3 H2', 1, 0),
(@p, 'C3H8 + 5 O2 -> 3 CO2 + 4 H2O', 1, 0),
(@p, 'N2 + H2 -> 2 NH3', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na combustão completa de 1 mol de gás butano (C4H10 + 13/2 O2 -> 4 CO2 + 5 H2O), multiplicando todos os coeficientes por 2 para obter números inteiros, qual será o coeficiente do gás oxigênio (O2)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '13', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência recomendada pelo método das tentativas (MACHO) para balancear uma equação química:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Balancear os átomos de Metais', 1, 1),
(@p, 'Balancear os átomos de Ametais (exceto C, H e O)', 1, 2),
(@p, 'Balancear os átomos de Carbono (C)', 1, 3),
(@p, 'Balancear os átomos de Hidrogênio (H)', 1, 4),
(@p, 'Balancear por último os átomos de Oxigênio (O)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando 12 g de carbono reagem completamente com 32 g de gás oxigênio em sistema fechado formando 44 g de CO2, qual massa de CO2 será obtida se reagirmos 6 g de carbono com 16 g de oxigênio?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '22 g de CO2 (pela Lei das Proporções Constantes de Proust)', 1, 0),
(@p, '44 g de CO2', 0, 0),
(@p, '11 g de CO2', 0, 0),
(@p, '88 g de CO2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando a queima de uma folha de papel ocorre em recipiente aberto e a massa das cinzas é menor que a massa inicial do papel, a Lei de Lavoisier continua válida porque a diferença corresponde aos gases liberados para o ambiente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 3.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Oxirredução (Redox), Número de Oxidação (Nox) e Cinética', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o número de oxidação (Nox) do átomo de enxofre (S) no ácido sulfúrico (H2SO4)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '+6', 1, 0),
(@p, '+4', 0, 0),
(@p, '-2', 0, 0),
(@p, '+2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada termo das reações de oxirredução ao seu significado correto:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Oxidação', 1, 1, 'Perda de elétrons e aumento algébrico do Nox'),
(@p, 'Redução', 1, 2, 'Ganho de elétrons e diminuição algébrica do Nox'),
(@p, 'Agente Oxidante', 1, 3, 'Espécie química que provoca oxidação em outra e sofre redução');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em toda substância simples (como O2, Fe, Cl2 e S8), o número de oxidação (Nox) dos átomos que a constituem é igual a zero.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que aumentam a velocidade (taxa) de uma reação química segundo a teoria das colisões:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento da temperatura do sistema (maior energia cinética das moléculas)', 1, 0),
(@p, 'Aumento da superfície de contato dos reagentes sólidos (ex.: pulverização)', 1, 0),
(@p, 'Adição de um catalisador adequado, que reduz a energia de ativação', 1, 0),
(@p, 'Diminuição da concentração dos reagentes gasosos ou aquosos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o número de oxidação (Nox) do átomo de manganês (Mn) no íon permanganato (MnO4-)? Escreva com o sinal positivo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '+7', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas para balancear uma equação química pelo método de oxirredução (Redox):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Determinar o Nox de todos os átomos nos reagentes e nos produtos', 1, 1),
(@p, 'Identificar os elementos que sofreram oxidação e redução', 1, 2),
(@p, 'Calcular a variação total de Nox (Δ) multiplicando pela atomicidade', 1, 3),
(@p, 'Inverter os valores de Δ obtidos como coeficientes das espécies', 1, 4),
(@p, 'Concluir o balanceamento dos demais átomos pelo método das tentativas', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na reação Zn(s) + Cu2+(aq) -> Zn2+(aq) + Cu(s), utilizada na pilha de Daniell, qual espécie atua como agente redutor?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O zinco metálico (Zn), pois cede elétrons ao íon Cu2+ e sofre oxidação', 1, 0),
(@p, 'O íon Cu2+, pois ganha dois elétrons e sofre oxidação', 0, 0),
(@p, 'O cobre metálico (Cu), pois perde elétrons para o zinco', 0, 0),
(@p, 'Não há agente redutor porque o Nox de todas as espécies permanece zero', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um catalisador aumenta a velocidade de uma reação química ao fornecer um caminho alternativo de menor energia de ativação, sem alterar a variação de entalpia (ΔH) nem ser consumido globalmente no processo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 4: Estequiometria
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Estequiometria' AND id_materia = 7 LIMIT 1);

-- Quiz 4.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Massa Molecular, Massa Molar e Conceito de Mol', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Dados os valores de massa atômica H = 1 u, C = 12 u e O = 16 u, qual é a massa molar da glicose (C6H12O6)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '180 g/mol', 1, 0),
(@p, '90 g/mol', 0, 0),
(@p, '29 g/mol', 0, 0),
(@p, '360 g/mol', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grandeza química à sua unidade padrão no estudo da estequiometria:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quantidade de matéria', 1, 1, 'mol'),
(@p, 'Massa molar (M)', 1, 2, 'g/mol'),
(@p, 'Constante de Avogadro', 1, 3, '6,02 x 10^23 entidades por mol');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um mol de qualquer substância contém sempre a mesma quantidade de entidades elementares (aproximadamente 6,02 x 10^23 moléculas, átomos ou íons), embora a massa em gramas varie de acordo com a substância.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Considere uma amostra contendo exatamente 2 mols de moléculas de água (H2O, massa molar = 18 g/mol). Assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A massa total da amostra é de 36 g', 1, 0),
(@p, 'A amostra contém aproximadamente 1,204 x 10^24 moléculas de H2O', 1, 0),
(@p, 'Há 4 mols de átomos de hidrogênio e 2 mols de átomos de oxigênio na amostra', 1, 0),
(@p, 'A massa molar da água dobra para 36 g/mol quando temos 2 mols', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quantos mols de moléculas existem em uma amostra de 88 g de dióxido de carbono (CO2), sabendo que sua massa molar é 44 g/mol?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as seguintes amostras da menor para a maior massa em gramas (Massas molares: H2O = 18 g/mol, CO2 = 44 g/mol, CaCO3 = 100 g/mol):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1 mol de H2O (18 g)', 1, 1),
(@p, '1 mol de CO2 (44 g)', 1, 2),
(@p, '3 mols de H2O (54 g)', 1, 3),
(@p, '1 mol de CaCO3 (100 g)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a massa molar do ácido sulfúrico (H2SO4), dadas as massas atômicas H = 1 u, S = 32 u e O = 16 u?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '98 g/mol', 1, 0),
(@p, '49 g/mol', 0, 0),
(@p, '82 g/mol', 0, 0),
(@p, '114 g/mol', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A fórmula n = m / M relaciona a quantidade de matéria (n, em mol) com a massa da amostra (m, em gramas) e a massa molar (M, em g/mol).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Cálculos Estequiométricos de Massa e Quantidade de Matéria', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na reação balanceada N2(g) + 3 H2(g) -> 2 NH3(g), quantos mols de amônia (NH3) são produzidos a partir da reação completa de 6 mols de gás hidrogênio (H2) com nitrogênio suficiente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4 mols de NH3', 1, 0),
(@p, '2 mols de NH3', 0, 0),
(@p, '6 mols de NH3', 0, 0),
(@p, '9 mols de NH3', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada passo da resolução de um problema estequiométrico à sua finalidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Escrever e balancear a equação química', 1, 1, 'Estabelecer a proporção exata em mols entre reagentes e produtos'),
(@p, 'Converter mols em gramas usando M', 1, 2, 'Traduzir a proporção molar para unidades de massa mensuráveis na balança'),
(@p, 'Montar a regra de três proporcional', 1, 3, 'Calcular a quantidade desconhecida a partir do dado fornecido no problema');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os coeficientes estequiométricos de uma equação balanceada indicam diretamente a proporção em mols (quantidade de matéria) entre os participantes da reação, e não a proporção direta em gramas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Considere a decomposição térmica do carbonato de cálcio: CaCO3(s) -> CaO(s) + CO2(g) (Massas molares: CaCO3 = 100 g/mol, CaO = 56 g/mol, CO2 = 44 g/mol). Partindo de 200 g de CaCO3 puro, assinale o que se obtém:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2 mols de CaCO3 são decompostos', 1, 0),
(@p, '112 g de óxido de cálcio (CaO) são produzidos', 1, 0),
(@p, '88 g de dióxido de carbono (CO2) são liberados', 1, 0),
(@p, '200 g de CaO e 200 g de CO2 são formados simultaneamente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Na síntese da água (2 H2 + O2 -> 2 H2O), qual massa em gramas de água (M = 18 g/mol) é formada pela queima completa de 4 g de gás hidrogênio (M = 2 g/mol)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '36', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o roteiro lógico para resolver uma questão de estequiometria massa-massa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verificar se a equação química está corretamente balanceada', 1, 1),
(@p, 'Destacar na equação as duas substâncias envolvidas no enunciado', 1, 2),
(@p, 'Calcular as massas molares das substâncias selecionadas e multiplicar pelos coeficientes', 1, 3),
(@p, 'Relacionar os valores teóricos com o dado numérico fornecido pela questão', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na combustão completa de 16 g de metano (CH4 + 2 O2 -> CO2 + 2 H2O, com M(CH4) = 16 g/mol e M(O2) = 32 g/mol), qual é a massa de gás oxigênio consumida?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '64 g de O2', 1, 0),
(@p, '32 g de O2', 0, 0),
(@p, '16 g de O2', 0, 0),
(@p, '48 g de O2', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em uma reação química envolvendo diversas etapas consecutivas, pode-se somar as equações intermediárias cancelando as substâncias produzidas e consumidas em igual quantidade para obter a equação global.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Volume Molar nas CNTP e Relações com Número de Avogadro', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o volume ocupado por 1 mol de qualquer gás ideal nas Condições Normais de Temperatura e Pressão (CNTP: 0 °C ou 273,15 K e 1 atm)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '22,4 litros', 1, 0),
(@p, '25,0 litros', 0, 0),
(@p, '1,0 litro', 0, 0),
(@p, '100,0 litros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada quantidade de gás nas CNTP ao volume correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '0,5 mol de O2 nas CNTP', 1, 1, '11,2 litros'),
(@p, '2,0 mols de N2 nas CNTP', 1, 2, '44,8 litros'),
(@p, '3,01 x 10^23 moléculas de CO2 nas CNTP', 1, 3, '11,2 litros (equivalente a 0,5 mol)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo a Hipótese de Avogadro, volumes iguais de quaisquer gases diferentes, medidos nas mesmas condições de temperatura e pressão, contêm o mesmo número de moléculas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Na síntese da amônia N2(g) + 3 H2(g) -> 2 NH3(g), com todos os gases medidos nas mesmas condições de temperatura e pressão, assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 litros de N2 reagem completamente com 30 litros de H2', 1, 0),
(@p, 'A reação de 10 litros de N2 com 30 litros de H2 produz 20 litros de NH3', 1, 0),
(@p, 'Há contração do volume gasoso total de 40 litros para 20 litros', 1, 0),
(@p, 'O volume molar de 22,4 L/mol aplica-se também aos líquidos e sólidos nas CNTP', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual volume em litros, medido nas CNTP (Vm = 22,4 L/mol), é ocupado por 64 g de gás oxigênio (O2, massa molar = 32 g/mol)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '44,8', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as seguintes amostras gasosas nas CNTP do menor para o maior volume ocupado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,25 mol de He (5,6 L)', 1, 1),
(@p, '16 g de CH4, M = 16 g/mol (22,4 L)', 1, 2),
(@p, '1,204 x 10^24 moléculas de H2 (44,8 L)', 1, 3),
(@p, '3 mols de Ar (67,2 L)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um recipiente fechado contém 11,2 L de gás nitrogênio (N2) nas CNTP. Quantas moléculas de N2 existem dentro desse recipiente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '3,01 x 10^23 moléculas', 1, 0),
(@p, '6,02 x 10^23 moléculas', 0, 0),
(@p, '1,204 x 10^24 moléculas', 0, 0),
(@p, '6,02 x 10^22 moléculas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O valor de 22,4 L/mol é válido apenas para gases nas CNTP (0 °C e 1 atm); nas Condições Ambientes (25 °C e 1 atm), o volume molar de um gás ideal é maior, valendo aproximadamente 24,5 L/mol ou 25 L/mol.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 4.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Reagente Limitante, Excesso, Pureza e Rendimento', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na reação 2 H2(g) + O2(g) -> 2 H2O(l), misturam-se 5 mols de H2 com 4 mols de O2. Qual é o reagente limitante e quanto sobra do reagente em excesso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O reagente limitante é o H2, e sobram 1,5 mol de O2 em excesso', 1, 0),
(@p, 'O reagente limitante é o O2, e sobra 1 mol de H2 em excesso', 0, 0),
(@p, 'Não há excesso, pois ambos os reagentes são consumidos totalmente', 0, 0),
(@p, 'O reagente limitante é o H2, e sobram 3 mols de O2 em excesso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da estequiometria não ideal ao seu impacto nos cálculos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Grau de Pureza de um reagente', 1, 1, 'Apenas a fração pura da amostra participa efetivamente da reação química'),
(@p, 'Rendimento da reação (< 100%)', 1, 2, 'A quantidade real de produto obtida é menor que a quantidade teórica calculada'),
(@p, 'Reagente Limitante', 1, 3, 'Determina a quantidade máxima de produto que pode ser formada antes de se esgotar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em cálculos envolvendo reagente limitante e reagente em excesso, a massa ou o número de mols dos produtos deve ser calculado obrigatoriamente com base no reagente em excesso.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Uma amostra de 250 g de calcário apresenta 80% de pureza em CaCO3 (M = 100 g/mol) e sofre decomposição térmica total (CaCO3 -> CaO + CO2, com M(CaO) = 56 g/mol). Assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A massa efetiva de CaCO3 puro na amostra é de 200 g (2 mols)', 1, 0),
(@p, 'Os 50 g restantes correspondem a impurezas inertes que não geram CaO', 1, 0),
(@p, 'Com rendimento de 100%, obtêm-se 112 g de óxido de cálcio (CaO)', 1, 0),
(@p, 'Se o rendimento da reação for de 50%, serão obtidos 112 g de CaO', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Em uma síntese industrial, o cálculo teórico previa a obtenção de 80 g de produto, mas na prática foram isolados 60 g. Qual foi o rendimento percentual dessa reação? Escreva apenas o número:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '75', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas para resolver um problema que envolve reagente impuro e rendimento inferior a 100%:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Descontar as impurezas para encontrar a massa real do reagente puro', 1, 1),
(@p, 'Aplicar a proporção estequiométrica da equação balanceada para achar o produto teórico', 1, 2),
(@p, 'Multiplicar o produto teórico pelo percentual de rendimento da reação', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Misturam-se 28 g de N2 (M = 28 g/mol) com 12 g de H2 (M = 2 g/mol) para formar amônia (N2 + 3 H2 -> 2 NH3, M(NH3) = 17 g/mol). Se o rendimento do processo for de 50%, qual massa de NH3 será obtida?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '17 g de NH3 (pois 1 mol de N2 limita a formação teórica a 2 mols = 34 g, e 50% equivale a 17 g)', 1, 0),
(@p, '34 g de NH3', 0, 0),
(@p, '68 g de NH3', 0, 0),
(@p, '8,5 g de NH3', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um rendimento inferior a 100% em reações químicas reais pode ser explicado por perdas mecânicas na purificação, reações paralelas indesejadas ou estabelecimento de equilíbrio químico reversível.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 5: Soluções
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Soluções' AND id_materia = 7 LIMIT 1);

-- Quiz 5.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Soluto, Solvente e Classificação quanto à Solubilidade', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que define quimicamente uma solução verdadeira (como água mineral ou soro fisiológico)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É uma mistura homogênea de duas ou mais substâncias, na qual as partículas dispersas têm diâmetro inferior a 1 nanômetro', 1, 0),
(@p, 'É uma mistura heterogênea onde o soluto sempre sedimenta no fundo em repouso', 0, 0),
(@p, 'É uma substância pura simples formada por um único elemento químico', 0, 0),
(@p, 'É uma suspensão coloidal visível a olho nu sem microscópio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada classificação de solução à quantidade de soluto dissolvido em relação ao coeficiente de solubilidade (CS):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Solução Insaturada', 1, 1, 'Contém menos soluto dissolvido do que o limite máximo permitido pelo CS'),
(@p, 'Solução Saturada', 1, 2, 'Contém a quantidade máxima exata de soluto que o solvente consegue dissolver naquela temperatura'),
(@p, 'Solução Supersaturada', 1, 3, 'Sistema instável com mais soluto dissolvido do que o CS, obtido por aquecimento e resfriamento cuidadoso');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em uma solução formada por componentes no mesmo estado físico (como álcool 70% líquido), considera-se solvente o componente presente em maior quantidade e soluto o componente em menor quantidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'O coeficiente de solubilidade do NaCl em água a 20 °C é de 36 g por 100 g de água. Se adicionarmos 40 g de NaCl em 100 g de água a 20 °C com agitação, assinale o que ocorre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '36 g de NaCl ficam dissolvidos na fase líquida', 1, 0),
(@p, '4 g de NaCl depositam-se no fundo como corpo de fundo (precipitado)', 1, 0),
(@p, 'A fase líquida sobrenadante constitui uma solução saturada', 1, 0),
(@p, 'Todos os 40 g dissolvem-se completamente sem deixar corpo de fundo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são denominadas as soluções aquosas cujos solutos sofrem ionização ou dissociação e, por isso, conduzem corrente elétrica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Soluções eletrolíticas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os sistemas dispersos do menor para o maior tamanho médio das partículas dispersas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solução verdadeira (< 1 nm, ex.: água salgada)', 1, 1),
(@p, 'Dispersão coloidal (entre 1 nm e 1000 nm, ex.: gelatina e leite)', 1, 2),
(@p, 'Suspensão grosseira (> 1000 nm, ex.: água barrenta)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o efeito do aumento da temperatura sobre a solubilidade dos gases (como o O2 e o CO2) em líquidos como a água?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A solubilidade dos gases diminui com o aumento da temperatura, razão pela qual refrigerantes perdem o gás mais rápido quando quentes', 1, 0),
(@p, 'A solubilidade dos gases aumenta indefinidamente com o aquecimento', 0, 0),
(@p, 'A temperatura não exerce nenhuma influência sobre gases dissolvidos', 0, 0),
(@p, 'Os gases transformam-se em sais insolúveis quando a água é aquecida', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A dissolução de um sal endotérmico (ΔH > 0) é favorecida pelo aumento da temperatura, fazendo com que seu coeficiente de solubilidade cresça em temperaturas mais altas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Concentração Comum (g/L), Título e Porcentagem', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma solução foi preparada dissolvendo-se 20 g de hidróxido de sódio (NaOH) em água suficiente para completar 500 mL (0,5 L) de solução. Qual é a concentração comum (C) dessa solução?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '40 g/L', 1, 0),
(@p, '10 g/L', 0, 0),
(@p, '20 g/L', 0, 0),
(@p, '0,04 g/L', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada expressão de concentração à sua definição matemática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Concentração Comum (C = m1 / V)', 1, 1, 'Razão entre a massa do soluto (em gramas) e o volume total da solução (em litros)'),
(@p, 'Título em massa (τ = m1 / m)', 1, 2, 'Razão adimensional entre a massa do soluto e a massa total da solução'),
(@p, 'Partes por milhão (ppm)', 1, 3, 'Indica quantas partes de soluto existem em 10^6 partes da solução (mg/kg ou mg/L)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A densidade de uma solução (d = m / V) relaciona a massa total da solução (soluto + solvente) com o volume total da solução, não devendo ser confundida com a concentração comum (massa do soluto / volume da solução).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Um rótulo de soro fisiológico informa "cloreto de sódio 0,9% m/v". Isso significa que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Existem 0,9 g de NaCl dissolvidos em cada 100 mL de solução', 1, 0),
(@p, 'Em 1 litro (1000 mL) desse soro há 9,0 g de NaCl', 1, 0),
(@p, 'A concentração comum do soro é de 9,0 g/L', 1, 0),
(@p, 'Existem 90 g de NaCl em cada 100 mL de solução', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Dissolvem-se 30 g de açúcar em 170 g de água. Qual é a porcentagem em massa (% m/m) de açúcar nessa solução? Escreva apenas o número:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '15', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as seguintes soluções aquosas da menor para a maior concentração comum em g/L:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '5 g de soluto em 1 L de solução (5 g/L)', 1, 1),
(@p, '5 g de soluto em 500 mL de solução (10 g/L)', 1, 2),
(@p, '15 g de soluto em 500 mL de solução (30 g/L)', 1, 3),
(@p, '20 g de soluto em 250 mL de solução (80 g/L)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma amostra de água de rio apresentou concentração de íons chumbo igual a 2 ppm (partes por milhão). Considerando a densidade da água 1 g/mL (1 kg/L), qual massa de chumbo há em 1 litro dessa água?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '2 mg (0,002 g)', 1, 0),
(@p, '2 g', 0, 0),
(@p, '200 g', 0, 0),
(@p, '0,2 kg', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão C = 1000 · d · τ permite converter diretamente o título em massa (τ) e a densidade da solução (d, em g/mL) na concentração comum (C, em g/L).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Molaridade (mol/L) e Diluição de Soluções', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a concentração em quantidade de matéria (molaridade) de uma solução preparada pela dissolução de 40 g de NaOH (M = 40 g/mol) em água suficiente para formar 2,0 L de solução?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,5 mol/L', 1, 0),
(@p, '2,0 mol/L', 0, 0),
(@p, '20,0 mol/L', 0, 0),
(@p, '1,0 mol/L', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada operação de laboratório envolvendo soluções ao seu efeito sobre a concentração:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Diluição (adição de solvente puro)', 1, 1, 'O volume aumenta, a concentração diminui e a massa de soluto permanece constante'),
(@p, 'Evaporação parcial do solvente', 1, 2, 'O volume diminui, a concentração aumenta e a massa de soluto permanece constante'),
(@p, 'Fracionamento (retirar uma alíquota com pipeta)', 1, 3, 'O volume retirado é menor, mas a concentração permanece idêntica à original');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na diluição de uma solução aquosa pela adição de água pura, a equação M1 · V1 = M2 · V2 expressa que a quantidade de matéria (n) do soluto antes e depois da diluição permanece inalterada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'A 200 mL de uma solução aquosa de HCl 1,5 mol/L adicionam-se 400 mL de água pura. Assinale as afirmações corretas sobre a solução resultante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O volume final da solução passa a ser de 600 mL', 1, 0),
(@p, 'A quantidade de matéria de HCl continua sendo de 0,3 mol', 1, 0),
(@p, 'A concentração final reduz-se a um terço, tornando-se 0,5 mol/L', 1, 0),
(@p, 'A concentração final triplica para 4,5 mol/L', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quantos mililitros (mL) de uma solução estoque de H2SO4 2,0 mol/L devem ser pipetados para preparar 500 mL de uma solução diluída de concentração 0,4 mol/L?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '100', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento seguro de laboratório para diluir um ácido concentrado em água:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adicionar inicialmente uma porção de água destilada no balão volumétrico', 1, 1),
(@p, 'Transferir lentamente o ácido concentrado sobre a água com agitação suave', 1, 2),
(@p, 'Aguardar o resfriamento da solução até a temperatura ambiente', 1, 3),
(@p, 'Completar o volume com água destilada até a marca do menisco', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual relação matemática conecta a concentração comum (C, em g/L), a concentração molar (M, em mol/L) e a massa molar do soluto (MM, em g/mol)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'C = M · MM', 1, 0),
(@p, 'M = C · MM', 0, 0),
(@p, 'C = M + MM', 0, 0),
(@p, 'MM = C · M', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Se uma solução de NaCl 0,2 mol/L sofre dissociação total (NaCl -> Na+ + Cl-), a concentração de íons Na+ é 0,2 mol/L e a concentração total de íons na solução é 0,4 mol/L.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 5.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Mistura de Soluções e Propriedades Coligativas', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Misturam-se 300 mL de uma solução de NaCl 0,4 mol/L com 200 mL de outra solução de NaCl 0,9 mol/L. Qual será a concentração molar final da mistura?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '0,6 mol/L', 1, 0),
(@p, '0,65 mol/L', 0, 0),
(@p, '1,3 mol/L', 0, 0),
(@p, '0,5 mol/L', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada propriedade coligativa ao efeito provocado pela adição de um soluto não volátil a um solvente puro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tonoscopia', 1, 1, 'Diminuição da pressão máxima de vapor do líquido'),
(@p, 'Ebulioscopia', 1, 2, 'Aumento da temperatura de ebulição da solução'),
(@p, 'Crioscopia', 1, 3, 'Diminuição da temperatura de congelamento da solução');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As propriedades coligativas dependem exclusivamente do número total de partículas dispersas (moléculas ou íons) na solução, e não da natureza química específica do soluto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Comparam-se três soluções aquosas de mesma concentração molar (0,1 mol/L): glicose (C6H12O6), cloreto de sódio (NaCl) e cloreto de cálcio (CaCl2). Assinale as afirmações corretas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A solução de CaCl2 apresenta o maior número de íons por fórmula (i = 3) e, portanto, o maior ponto de ebulição', 1, 0),
(@p, 'A solução de CaCl2 apresenta o menor ponto de congelamento entre as três', 1, 0),
(@p, 'A solução de glicose (molecular, i = 1) apresenta a maior pressão de vapor entre as três', 1, 0),
(@p, 'Todas as três soluções fervem exatamente à mesma temperatura por terem 0,1 mol/L', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Misturam-se 100 mL de HCl 0,5 mol/L com 100 mL de NaOH 0,3 mol/L (reação 1:1). Qual é a concentração molar (em mol/L) do ácido que permanece em excesso na solução final de 200 mL?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '0,1', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o mecanismo da osmose quando duas soluções de concentrações diferentes são separadas por uma membrana semipermeável:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estabelece-se um gradiente de concentração entre o meio hipotônico e o hipertônico', 1, 1),
(@p, 'As moléculas do solvente atravessam espontaneamente a membrana do meio menos concentrado para o mais concentrado', 1, 2),
(@p, 'O nível da solução hipertônica eleva-se até que a pressão hidrostática equilibre a pressão osmótica', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que se espalha sal (NaCl ou CaCl2) nas rodovias de países com inverno rigoroso quando há acúmulo de neve ou gelo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pelo efeito crioscópico: os íons do sal dissolvido reduzem o ponto de congelamento da água abaixo de 0 °C, promovendo a fusão do gelo', 1, 0),
(@p, 'Porque o sal libera calor nuclear que ferve a neve instantaneamente', 0, 0),
(@p, 'Pelo efeito tonoscópico: o sal eleva o ponto de congelamento da água para +15 °C', 0, 0),
(@p, 'Porque o sal reage com o asfalto formando gás oxigênio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na dessalinização da água do mar por osmose reversa, aplica-se uma pressão externa superior à pressão osmótica sobre a solução salina para forçar a passagem de água pura através da membrana.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 6: Ácidos e Bases
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Ácidos e Bases' AND id_materia = 7 LIMIT 1);

-- Quiz 6.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito de Arrhenius, Escala de pH e Indicadores', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Segundo a teoria clássica de Svante Arrhenius, o que caracteriza um ácido e uma base em solução aquosa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ácidos ionizam-se liberando cátions H+ (ou H3O+); bases dissociam-se liberando ânions OH- (hidroxila)', 1, 0),
(@p, 'Ácidos liberam exclusivamente íons Na+ e bases liberam exclusivamente íons Cl-', 0, 0),
(@p, 'Ácidos têm pH acima de 7 e bases têm pH abaixo de 7', 0, 0),
(@p, 'Ácidos não conduzem eletricidade em água, enquanto bases são sempre insolúveis', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada faixa de pH (a 25 °C) ao caráter da solução aquosa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'pH < 7 (ex.: suco de limão, vinagre)', 1, 1, 'Meio Ácido ([H+] > [OH-])'),
(@p, 'pH = 7 (ex.: água pura a 25 °C)', 1, 2, 'Meio Neutro ([H+] = [OH-] = 10^-7 mol/L)'),
(@p, 'pH > 7 (ex.: leite de magnésia, água sanitária)', 1, 3, 'Meio Básico ou Alcalino ([OH-] > [H+])');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A fenolftaleína é um indicador ácido-base que permanece incolor em meios ácidos e neutros, adquirindo coloração rosa/avermelhada intensa em meio básico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características e exemplos cotidianos corretos de ácidos e bases:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ácido clorídrico (HCl) está presente no suco gástrico auxiliando a digestão', 1, 0),
(@p, 'O hidróxido de magnésio, Mg(OH)2, é usado como antiácido estomacal (leite de magnésia)', 1, 0),
(@p, 'O papel de tornassol azul fica vermelho em contato com soluções ácidas', 1, 0),
(@p, 'Bases possuem sabor azedo característico e não conduzem eletricidade quando dissolvidas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a fórmula química do hidróxido de sódio, base forte popularmente conhecida como soda cáustica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'NaOH', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as seguintes substâncias do meio mais ácido (menor pH) para o meio mais básico (maior pH):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Suco gástrico (pH ~ 1,5)', 1, 1),
(@p, 'Suco de tomate (pH ~ 4,2)', 1, 2),
(@p, 'Água destilada a 25 °C (pH = 7,0)', 1, 3),
(@p, 'Sangue humano arterial (pH ~ 7,4)', 1, 4),
(@p, 'Solução de soda cáustica (pH ~ 13,0)', 1, 5);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Ao adicionar gotas de extrato de repolho roxo (indicador natural rico em antocianinas) em uma solução de ácido muriático (HCl) e em outra de amoníaco (NH4OH), observa-se que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A solução ácida fica avermelhada/rosada, enquanto a solução básica torna-se verde ou amarelada', 1, 0),
(@p, 'Ambas ficam completamente negras e precipitam metal', 0, 0),
(@p, 'Não ocorre nenhuma alteração de cor em nenhuma faixa de pH', 0, 0),
(@p, 'A solução ácida fica azul-escuro e a básica fica vermelha', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A escala de pH é logarítmica, o que significa que uma solução com pH = 3 é 100 vezes mais ácida (possui [H+] 100 vezes maior) do que uma solução com pH = 5.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Nomenclatura e Classificação de Ácidos e Bases', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença estrutural entre um hidrácido e um oxiácido?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hidrácidos não contêm oxigênio em sua fórmula (ex.: HCl, H2S); oxiácidos contêm oxigênio (ex.: HNO3, H2SO4)', 1, 0),
(@p, 'Hidrácidos são sempre sólidos e oxiácidos são sempre metais alcalinos', 0, 0),
(@p, 'Oxiácidos não liberam íons H+ em solução aquosa', 0, 0),
(@p, 'Hidrácidos contêm mais átomos de oxigênio do que de hidrogênio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada ácido à sua nomenclatura oficial correta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'HCl(aq) e HCN(aq)', 1, 1, 'Ácido clorídrico e ácido cianídrico (terminação -ídrico para hidrácidos)'),
(@p, 'HNO3 e H2SO4', 1, 2, 'Ácido nítrico e ácido sulfúrico (terminação -ico para oxiácidos padrão)'),
(@p, 'HNO2 e H2SO3', 1, 3, 'Ácido nitroso e ácido sulfuroso (terminação -oso para menor Nox)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As bases formadas por metais alcalinos (Grupo 1, como NaOH e KOH) e metais alcalinoterrosos (Grupo 2, exceto Be e Mg, como Ca(OH)2 e Ba(OH)2) são classificadas como bases fortes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique classificações corretas quanto ao número de hidrogênios ionizáveis e solubilidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O H3PO4 (ácido fosfórico) é um triácido, pois possui 3 hidrogênios ionizáveis', 1, 0),
(@p, 'O H2CO3 (ácido carbônico) é um diácido instável que se decompõe em H2O e CO2', 1, 0),
(@p, 'O NH4OH (hidróxido de amônio) é a única base solúvel não metálica e é uma base fraca', 1, 0),
(@p, 'O Fe(OH)3 (hidróxido de ferro III) é altamente solúvel em água e é uma base forte', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o nome oficial da base de fórmula Fe(OH)2, sabendo que o ferro possui número de oxidação +2 (menor Nox) nesse composto?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Hidróxido de ferro II', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a série dos oxiácidos do cloro do menor para o maior número de átomos de oxigênio na fórmula:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'HClO (Ácido hipocloroso)', 1, 1),
(@p, 'HClO2 (Ácido cloroso)', 1, 2),
(@p, 'HClO3 (Ácido clórico)', 1, 3),
(@p, 'HClO4 (Ácido perclórico)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Entre os hidrácidos HCl, HBr, HI e HF, qual é o único classificado como ácido moderado (não forte), embora seja extremamente corrosivo ao vidro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'HF (ácido fluorídrico), devido à alta força da ligação H-F e às ligações de hidrogênio', 1, 0),
(@p, 'HI (ácido iodídrico)', 0, 0),
(@p, 'HBr (ácido bromídrico)', 0, 0),
(@p, 'HCl (ácido clorídrico)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No ácido fosforoso (H3PO3), apenas dois dos três átomos de hidrogênio estão ligados ao oxigênio e são ionizáveis, sendo ele classificado como um diácido.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Reações de Neutralização Total e Parcial e Formação de Sais', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o produto formado, além da água, na reação de neutralização total entre o ácido sulfúrico (H2SO4) e o hidróxido de sódio (NaOH)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sulfato de sódio (Na2SO4)', 1, 0),
(@p, 'Bissulfato de sódio (NaHSO4)', 0, 0),
(@p, 'Sulfeto de sódio (Na2S)', 0, 0),
(@p, 'Sulfito de sódio (Na2SO3)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de sal resultante de neutralização à sua característica estrutural:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sal Neutro ou Normal (ex.: NaCl, CaCO3)', 1, 1, 'Resulta da neutralização total sem hidrogênios ionizáveis nem hidroxilas restantes'),
(@p, 'Hidrogenossal ou Sal Ácido (ex.: NaHCO3)', 1, 2, 'Resulta da neutralização parcial de um poliácido, mantendo H+ ionizável'),
(@p, 'Hidroxissal ou Sal Básico (ex.: Ca(OH)Cl)', 1, 3, 'Resulta da neutralização parcial de uma polibase, mantendo OH- na estrutura');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na reação de neutralização total de 1 mol de ácido fosfórico (H3PO4) por hidróxido de cálcio, Ca(OH)2, são necessários 3 mols de H3PO4 e 2 mols de Ca(OH)2 para formar Ca3(PO4)2 e 6 H2O.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique equações de neutralização química corretas e balanceadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'HCl + NaOH -> NaCl + H2O', 1, 0),
(@p, 'H2SO4 + Ca(OH)2 -> CaSO4 + 2 H2O', 1, 0),
(@p, 'H2CO3 + NaOH -> NaHCO3 + H2O (neutralização parcial)', 1, 0),
(@p, 'HNO3 + KOH -> KNO2 + H2O', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a fórmula química do sal neutro cloreto de alumínio formado pela neutralização total entre HCl e Al(OH)3?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'AlCl3', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a regra prática de correspondência de sufixos na nomenclatura de ácidos para sais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ácido terminado em -ÍDRICO gera sal terminado em -ETO', 1, 1),
(@p, 'Ácido terminado em -ICO gera sal terminado em -ATO', 1, 2),
(@p, 'Ácido terminado em -OSO gera sal terminado em -ITO', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Solos agrícolas excessivamente ácidos prejudicam o desenvolvimento das lavouras e são frequentemente corrigidos pela técnica da calagem, que consiste na adição de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcário moído (CaCO3) ou cal hidratada, Ca(OH)2, que possuem caráter básico e neutralizam o excesso de H+ do solo', 1, 0),
(@p, 'Ácido sulfúrico concentrado (H2SO4) para reduzir ainda mais o pH', 0, 0),
(@p, 'Cloreto de sódio (NaCl) para salinizar a raiz das plantas', 0, 0),
(@p, 'Gás carbônico líquido para acidificar a água da chuva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A equação iônica simplificada de qualquer reação de neutralização total entre um ácido forte e uma base forte em água é sempre H+(aq) + OH-(aq) -> H2O(l).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 6.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorias de Brønsted-Lowry e Lewis, Força Ácida e Cálculo de pH', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma solução aquosa diluída de ácido clorídrico (HCl, ácido forte 100% ionizado) apresenta concentração de 0,001 mol/L (10^-3 mol/L) a 25 °C. Quais são os valores de pH e pOH dessa solução?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'pH = 3 e pOH = 11', 1, 0),
(@p, 'pH = 11 e pOH = 3', 0, 0),
(@p, 'pH = 0,001 e pOH = 13,999', 0, 0),
(@p, 'pH = 4 e pOH = 10', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada teoria ácido-base moderna à sua definição fundamental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Teoria Protônica de Brønsted-Lowry', 1, 1, 'Ácido é toda espécie doadora de próton (H+) e base é toda espécie receptora de próton (H+)'),
(@p, 'Teoria Eletrônica de Lewis', 1, 2, 'Ácido é toda espécie receptora de par de elétrons e base é doadora de par de elétrons'),
(@p, 'Par Conjugado Ácido-Base', 1, 3, 'Duas espécies que diferem entre si apenas pela presença ou ausência de um próton H+ (ex.: NH4+ e NH3)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A água (H2O) é uma substância anfiprótica (anfótera segundo Brønsted-Lowry), pois atua como base ao receber próton do HCl (formando H3O+) e como ácido ao doar próton para a amônia NH3 (formando OH-).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a força dos oxiácidos e equilíbrio iônico da água:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Em oxiácidos de fórmula HxEOy, quanto maior a diferença (y - x), mais forte é o ácido (ex.: HClO4 > HClO3 > HClO2 > HClO)', 1, 0),
(@p, 'A 25 °C, o produto iônico da água vale Kw = [H+] · [OH-] = 10^-14, logo pH + pOH = 14', 1, 0),
(@p, 'O trifluoreto de boro (BF3) atua como ácido de Lewis porque possui orbital vazio capaz de aceitar um par de elétrons', 1, 0),
(@p, 'Um ácido fraco possui constante de ionização (Ka) muito elevada e grau de ionização próximo de 100%', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o pH a 25 °C de uma solução aquosa de hidróxido de sódio (NaOH) com concentração igual a 0,01 mol/L (10^-2 mol/L)? Escreva apenas o número:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '12', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os seguintes oxiácidos em ordem crescente de força ácida (do mais fraco para o mais forte):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'H3BO3 (y - x = 0, muito fraco)', 1, 1),
(@p, 'HNO2 (y - x = 1, moderado)', 1, 2),
(@p, 'H2SO4 (y - x = 2, forte)', 1, 3),
(@p, 'HClO4 (y - x = 3, muito forte)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na reação NH3 + H2O <=> NH4+ + OH-, qual é a base conjugada do ácido H2O segundo a teoria de Brønsted-Lowry?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O íon hidróxido (OH-)', 1, 0),
(@p, 'O íon amônio (NH4+)', 0, 0),
(@p, 'A molécula de amônia (NH3)', 0, 0),
(@p, 'O íon hidrônio (H3O+)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Uma solução-tampão (como o sistema H2CO3 / HCO3- no sangue humano) resiste a variações bruscas de pH quando pequenas quantidades de ácido ou base são adicionadas ao meio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 7: Química Orgânica
-- -------------------------------------------------------------------------
SET @c = (SELECT id FROM conteudo WHERE nome = 'Química Orgânica' AND id_materia = 7 LIMIT 1);

-- Quiz 7.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Postulados de Kekulé, Classificação do Carbono e Cadeias Carbônicas', 1, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com os postulados fundamentais de Kekulé, quantas ligações covalentes cada átomo de carbono realiza nos compostos orgânicos estáveis?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '4 ligações covalentes (tetravalência do carbono)', 1, 0),
(@p, '2 ligações covalentes', 0, 0),
(@p, '6 ligações iônicas', 0, 0),
(@p, '1 ligação metálica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada classificação de cadeia carbônica à sua característica estrutural:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cadeia Saturada', 1, 1, 'Apresenta apenas ligações simples entre os átomos de carbono'),
(@p, 'Cadeia Insaturada', 1, 2, 'Apresenta pelo menos uma ligação dupla ou tripla entre carbonos'),
(@p, 'Cadeia Heterogênea', 1, 3, 'Possui um heteroátomo (como O, N ou S) posicionado entre dois átomos de carbono');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um átomo de carbono é classificado como terciário quando está ligado diretamente a três outros átomos de carbono.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre a hibridização e geometria dos átomos de carbono:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Carbono com 4 ligações simples possui hibridização sp3 e geometria tetraédrica (ângulos de ~109,5°)', 1, 0),
(@p, 'Carbono com 1 ligação dupla e 2 simples possui hibridização sp2 e geometria trigonal plana (~120°)', 1, 0),
(@p, 'Carbono com 1 ligação tripla e 1 simples possui hibridização sp e geometria linear (180°)', 1, 0),
(@p, 'Uma ligação dupla é formada por duas ligações sigma (σ) e nenhuma ligação pi (π)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é denominado o átomo diferente de carbono e hidrogênio (como oxigênio ou nitrogênio) quando localizado entre dois átomos de carbono na cadeia principal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Heteroátomo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as ligações covalentes entre carbonos da menor para a maior quantidade de ligações pi (π) presentes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ligação simples (1 σ e 0 π)', 1, 1),
(@p, 'Ligação dupla (1 σ e 1 π)', 1, 2),
(@p, 'Ligação tripla (1 σ e 2 π)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na molécula do etanol (CH3-CH2-OH), por que a cadeia carbônica é classificada como homogênea, e não heterogênea?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o átomo de oxigênio encontra-se na extremidade ligado a um carbono e a um hidrogênio, e não entre dois átomos de carbono', 1, 0),
(@p, 'Porque o etanol não contém nenhum átomo de oxigênio em sua fórmula', 0, 0),
(@p, 'Porque o etanol é um hidrocarboneto aromático', 0, 0),
(@p, 'Porque toda cadeia aberta é automaticamente homogênea', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nem todo composto que contém carbono é classificado como composto orgânico; exemplos clássicos de substâncias inorgânicas com carbono incluem CO2, CO, grafite, diamante e carbonatos como CaCO3.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Hidrocarbonetos e Nomenclatura IUPAC', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a fórmula geral dos alcanos (hidrocarbonetos acíclicos e saturados) e qual é o nome do alcano de 4 carbonos usado no gás de cozinha?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'CnH2n+2 e Butano (C4H10)', 1, 0),
(@p, 'CnH2n e Buteno (C4H8)', 0, 0),
(@p, 'CnH2n-2 e Butino (C4H6)', 0, 0),
(@p, 'CnHn e Benzeno (C6H6)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada classe de hidrocarboneto ao seu sufixo oficial IUPAC e característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Alcanos (infixo -an-)', 1, 1, 'Cadeia aberta com apenas ligações simples (ex.: propano)'),
(@p, 'Alcenos (infixo -en-)', 1, 2, 'Cadeia aberta com uma ligação dupla (ex.: eteno)'),
(@p, 'Alcinos (infixo -in-)', 1, 3, 'Cadeia aberta com uma ligação tripla (ex.: etino ou acetileno)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O benzeno (C6H6) é o principal representante dos hidrocarbonetos aromáticos, apresentando um anel hexagonal plano com seis elétrons pi deslocalizados (ressonância).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique correspondências corretas entre prefixos IUPAC, fórmulas e nomes de hidrocarbonetos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'CH4 — Metano (principal componente do gás natural e biogás)', 1, 0),
(@p, 'C2H4 — Eteno ou etileno (utilizado na produção de polietileno e amadurecimento de frutas)', 1, 0),
(@p, 'C8H18 — Octano (hidrocarboneto de referência da gasolina)', 1, 0),
(@p, 'C3H8 — Pentano (3 carbonos correspondem ao prefixo pent-)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o prefixo oficial da nomenclatura IUPAC utilizado para indicar uma cadeia principal com 5 átomos de carbono?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'pent', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas oficiais da IUPAC para nomear um alcano ramificado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Identificar a cadeia carbônica principal (maior sequência contínua de carbonos)', 1, 1),
(@p, 'Numerar a cadeia principal a partir da extremidade mais próxima das ramificações', 1, 2),
(@p, 'Identificar os grupos substituintes (metil, etil, propil) e suas posições numéricas', 1, 3),
(@p, 'Escrever os substituintes em ordem alfabética seguidos do nome da cadeia principal', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o nome oficial IUPAC do alceno de cadeia linear CH3-CH=CH-CH2-CH3?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pent-2-eno', 1, 0),
(@p, 'Pent-3-eno', 0, 0),
(@p, 'Pent-2-ano', 0, 0),
(@p, 'But-2-eno', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na destilação fracionada do petróleo bruto, as frações mais leves e com menor massa molar (como gás liquefeito e gasolina) saem no topo da torre, enquanto frações pesadas (como óleo lubrificante e asfalto) saem na base.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Funções Orgânicas Oxigenadas e Nitrogenadas no Cotidiano', 2, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual grupo funcional caracteriza a função orgânica Álcool (como o etanol e o metanol)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Grupo hidroxila (-OH) ligado diretamente a um átomo de carbono saturado (sp3)', 1, 0),
(@p, 'Grupo hidroxila (-OH) ligado diretamente a um anel aromático', 0, 0),
(@p, 'Grupo carbonila (C=O) entre dois átomos de carbono', 0, 0),
(@p, 'Átomo de nitrogênio ligado a três átomos de hidrogênio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada função orgânica ao seu grupo funcional e exemplo cotidiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ácido Carboxílico (-COOH)', 1, 1, 'Presente no vinagre (ácido etanoico / acético)'),
(@p, 'Cetona (-CO- entre carbonos)', 1, 2, 'Presente nos removedores de esmalte (propanona / acetona)'),
(@p, 'Éster (-COO-)', 1, 3, 'Responsável pelos aromas e sabores artificiais de frutas (flavorizantes)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando o grupo hidroxila (-OH) está ligado diretamente a um carbono do anel benzênico (Ar-OH), o composto pertence à função Fenol, e não à função Álcool.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique comparações corretas entre funções oxigenadas e nitrogenadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aldeídos possuem o grupo carbonila na extremidade da cadeia (-CHO), como o metanal (formol)', 1, 0),
(@p, 'Éteres apresentam um átomo de oxigênio entre dois radicais orgânicos (R-O-R), como o etoxietano', 1, 0),
(@p, 'Aminas são derivadas da amônia (NH3) pela substituição de hidrogênios por grupos orgânicos e têm caráter básico', 1, 0),
(@p, 'Amidas não contêm átomos de nitrogênio em sua estrutura funcional', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o nome oficial IUPAC do ácido carboxílico de fórmula CH3-COOH, principal componente ácido do vinagre?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ácido etanoico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os seguintes compostos de 2 carbonos do menor para o maior ponto de ebulição (considerando as forças intermoleculares):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Etano, CH3-CH3 (forças de London)', 1, 1),
(@p, 'Etanal, CH3-CHO (dipolo-dipolo)', 1, 2),
(@p, 'Etanol, CH3-CH2-OH (ligações de hidrogênio)', 1, 3),
(@p, 'Ácido etanoico, CH3-COOH (dímeros com duas ligações de hidrogênio)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'As proteínas que compõem nossos músculos, enzimas e anticorpos são macromoléculas formadas pela união de aminoácidos por meio de ligações peptídicas, que pertencem quimicamente à função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Amida (-CONH-)', 1, 0),
(@p, 'Éter (-O-)', 0, 0),
(@p, 'Haleto orgânico (-Cl)', 0, 0),
(@p, 'Alcino (-C≡C-)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A reação entre um ácido carboxílico e um álcool, catalisada por ácido e aquecimento, produz um éster e água, sendo denominada reação de esterificação.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 7.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Isomeria Plana e Espacial e Principais Reações Orgânicas', 3, @c);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O etanol (CH3-CH2-OH) e o metoximetano (CH3-O-CH3) possuem exatamente a mesma fórmula molecular (C2H6O), mas pertencem a funções químicas distintas. Que tipo de isomeria existe entre eles?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Isomeria plana de função (ou funcional)', 1, 0),
(@p, 'Isomeria plana de posição', 0, 0),
(@p, 'Isomeria espacial geométrica (cis-trans)', 0, 0),
(@p, 'Isomeria óptica por carbono quiral', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de isomeria espacial às condições estruturais necessárias para sua ocorrência:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Isomeria Geométrica (Cis-Trans / E-Z)', 1, 1, 'Ligação dupla entre carbonos (ou ciclo) com ligantes diferentes em cada carbono'),
(@p, 'Isomeria Óptica (Enantiômeros)', 1, 2, 'Presença de carbono quiral ou assimétrico (ligado a 4 grupos diferentes entre si)'),
(@p, 'Mistura Racêmica', 1, 3, 'Mistura equimolar (50% + 50%) de dois enantiômeros dextrogiro e levogiro, opticamente inativa');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um carbono assimétrico (quiral) deve possuir hibridização sp3 e estar ligado a quatro átomos ou grupos de átomos todos diferentes entre si, conferindo assimetria molecular.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações corretas sobre reações orgânicas de adição, substituição, eliminação e saponificação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alcenos e alcinos sofrem tipicamente reações de adição com quebra da ligação pi (π)', 1, 0),
(@p, 'Alcanos e aromáticos sofrem preferencialmente reações de substituição', 1, 0),
(@p, 'A hidrólise alcalina de óleos ou gorduras (triésteres) com NaOH ou KOH produz sabão e glicerol (saponificação)', 1, 0),
(@p, 'A desidratação intramolecular de um álcool produz sempre um alcano saturado', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quantos isômeros opticamente ativos (enantiômeros) possui uma molécula orgânica que apresenta 2 carbonos quirais diferentes entre si (fórmula 2^n)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '4', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da reação de saponificação tradicional para obtenção de sabão em barra:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Misturar um triglicerídeo (óleo vegetal ou gordura animal) com solução aquosa de NaOH', 1, 1),
(@p, 'Aquecer a mistura sob agitação para promover a hidrólise alcalina das ligações éster', 1, 2),
(@p, 'Formam-se sais de ácidos graxos (sabão) e glicerol como subproduto', 1, 3),
(@p, 'Adicionar cloreto de sódio (salga) para precipitar e separar a massa de sabão', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o sabão consegue remover gorduras e óleos durante a lavagem com água?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque suas moléculas são anfifílicas: a longa cadeia carbônica apolar interage com a gordura e a cabeça iônica polar interage com a água, formando micelas', 1, 0),
(@p, 'Porque o sabão dissolve o metal das tubulações transformando óleo em gás hidrogênio', 0, 0),
(@p, 'Porque o sabão é um hidrocarboneto totalmente apolar insolúvel em água', 0, 0),
(@p, 'Porque o sabão congela as moléculas de gordura a 40 °C', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na polímerização por adição do eteno (n CH2=CH2 -> -[CH2-CH2]n-), obtém-se o polietileno, um dos plásticos mais utilizados em embalagens e sacolas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);