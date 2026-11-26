USE luminebd;

-- =========================================================================
-- MATÉRIA 8: BIOLOGIA (CONTEÚDOS 64 A 70)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 64: Célula
-- -------------------------------------------------------------------------

-- Quiz 64.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Introdução à Citologia: Procariontes e Eucariontes', 1, 64);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal diferença entre uma célula procarionte e uma célula eucarionte?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A ausência de carioteca (envelope nuclear) delimitando o material genético nos procariontes.', 1, 0),
(@p, 'A presença exclusiva de membrana plasmática nos eucariontes.', 0, 0),
(@p, 'A ausência total de DNA e ribossomos nos procariontes.', 0, 0),
(@p, 'O fato de apenas procariontes realizarem divisão celular.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo celular ao organismo correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Célula Procarionte', 1, 1, 'Bactérias e arqueas'),
(@p, 'Célula Eucarionte Animal', 1, 2, 'Mamíferos, aves e insetos'),
(@p, 'Célula Eucarionte Vegetal', 1, 3, 'Árvores, musgos e samambaias');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo a Teoria Celular, todos os seres vivos são constituídos por células e toda célula origina-se de outra preexistente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais estruturas estão presentes tanto em células procariontes quanto em eucariontes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Membrana plasmática', 1, 0),
(@p, 'Citoplasma (citosol)', 1, 0),
(@p, 'Ribossomos e material genético (DNA)', 1, 0),
(@p, 'Mitocôndrias e complexo golgiense', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual estrutura rígida externa à membrana plasmática confere sustentação e proteção às células vegetais (composta principalmente por celulose)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Parede celular', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os níveis de organização biológica do menor para o maior:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Célula', 1, 1),
(@p, 'Tecido', 1, 2),
(@p, 'Órgão', 1, 3),
(@p, 'Sistema e Organismo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual estrutura exclusiva das células vegetais armazena água, íons e regula a pressão osmótica (turgor)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Vacúolo central (de suco celular)', 1, 0),
(@p, 'Centríolo', 0, 0),
(@p, 'Lisossomo digestivo', 0, 0),
(@p, 'Flagelo locomotor', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os vírus são acelulares, ou seja, não possuem organização celular própria e dependem de células hospedeiras para se reproduzir.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 64.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Membrana Plasmática e Transporte Celular', 2, 64);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com o Modelo do Mosaico Fluido (Singer e Nicolson), qual é a composição básica da membrana plasmática?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma bicamada fosfolipídica com proteínas inseridas e associadas.', 1, 0),
(@p, 'Uma camada rígida exclusivamente de celulose e lignina.', 0, 0),
(@p, 'Uma parede sólida de carbonato de cálcio.', 0, 0),
(@p, 'Apenas ácidos nucleicos entrelaçados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de transporte através da membrana à sua característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Difusão simples', 1, 1, 'Passagem de soluto a favor do gradiente sem gasto de ATP'),
(@p, 'Osmose', 1, 2, 'Passagem de solvente (água) do meio menos concentrado para o mais concentrado'),
(@p, 'Bomba de Sódio e Potássio', 1, 3, 'Transporte ativo contra o gradiente com consumo de ATP');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No transporte passivo, a célula não gasta energia (ATP), pois as substâncias deslocam-se a favor do gradiente de concentração.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique processos de transporte em massa mediados por vesículas (endocitose e exocitose):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fagocitose (englobamento de partículas sólidas)', 1, 0),
(@p, 'Pinocitose (englobamento de fluidos e macromoléculas dissolvidas)', 1, 0),
(@p, 'Exocitose (eliminação de resíduos ou secreção celular)', 1, 0),
(@p, 'Osmose passiva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamado o fenômeno que ocorre quando uma hemácia (célula animal) é colocada em meio hipotônico, absorve água em excesso e se rompe?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Hemólise', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da fagocitose realizada por um macrófago:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reconhecimento e emissão de pseudópodes ao redor da partícula', 1, 1),
(@p, 'Formação do fagossomo no interior do citoplasma', 1, 2),
(@p, 'Fusão do fagossomo com o lisossomo (vacúolo digestivo)', 1, 3),
(@p, 'Digestão intracelular e absorção das moléculas úteis', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O glicocálix, presente na face externa da membrana de células animais, atua principalmente no:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reconhecimento celular, adesão e proteção contra agressões físicas e químicas.', 1, 0),
(@p, 'Armazenamento de clorofila para fotossíntese.', 0, 0),
(@p, 'Produção de energia anaeróbica.', 0, 0),
(@p, 'Controle da divisão meiótica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em meio hipertônico, uma célula vegetal sofre plasmólise (retração do citoplasma), mas não estoura graças à resistência da parede celular.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 64.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Organelas Citoplasmáticas e Metabolismo Energético', 2, 64);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual organela citoplasmática é responsável pela respiração celular aeróbica e pela maior parte da síntese de ATP nas células eucariontes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mitocôndria', 1, 0),
(@p, 'Lisossomo', 0, 0),
(@p, 'Peroxissomo', 0, 0),
(@p, 'Retículo endoplasmático liso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada organela citoplasmática à sua função principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ribossomo', 1, 1, 'Síntese de proteínas'),
(@p, 'Complexo Golgiense', 1, 2, 'Empacotamento, modificação e secreção celular'),
(@p, 'Lisossomo', 1, 3, 'Digestão intracelular por enzimas hidrolíticas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo a Teoria da Endossimbiose (Lynn Margulis), mitocôndrias e cloroplastos originaram-se de procariontes ancestrais englobados por células maiores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique evidências que apoiam a origem endossimbiótica de mitocôndrias e cloroplastos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Possuem DNA próprio circular', 1, 0),
(@p, 'Possuem ribossomos próprios semelhantes aos bacterianos (70S)', 1, 0),
(@p, 'Apresentam dupla membrana e autoduplicação', 1, 0),
(@p, 'São formados exclusivamente por celulose', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual organela presente em células vegetais e algas contém clorofila e realiza a fotossíntese?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Cloroplasto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caminho de uma proteína produzida para exportação fora da célula:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Síntese nos ribossomos aderidos ao Retículo Endoplasmático Rugoso', 1, 1),
(@p, 'Transporte via vesículas até o Complexo Golgiense', 1, 2),
(@p, 'Processamento e empacotamento em vesículas de secreção', 1, 3),
(@p, 'Fusão com a membrana plasmática e liberação por exocitose', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a função dos peroxissomos nas células eucarióticas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Degradar o peróxido de hidrogênio (água oxigenada) por meio da enzima catalase e oxidar ácidos graxos.', 1, 0),
(@p, 'Formar o fuso mitótico durante a divisão celular.', 0, 0),
(@p, 'Armazenar glicogênio no núcleo.', 0, 0),
(@p, 'Realizar a quimiossíntese anaeróbica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Retículo Endoplasmático Não Granuloso (Liso) participa da síntese de lipídios e da desintoxicação celular, especialmente no fígado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 64.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Núcleo Celular, Ciclo Celular, Mitose e Meiose', 3, 64);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em qual fase da interfase ocorre a duplicação semiconservativa do DNA antes da divisão celular?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fase S (Síntese)', 1, 0),
(@p, 'Fase G1', 0, 0),
(@p, 'Prófase', 0, 0),
(@p, 'Telófase', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fase da mitose ao evento principal que nela ocorre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Prófase', 1, 1, 'Condensação dos cromossomos e desaparecimento da carioteca'),
(@p, 'Metáfase', 1, 2, 'Alinhamento dos cromossomos na placa equatorial'),
(@p, 'Anáfase', 1, 3, 'Separação das cromátides-irmãs em direção aos polos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A meiose é uma divisão reducional que origina quatro células-filhas haploides (n) geneticamente diferentes a partir de uma célula diploide (2n).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Quais eventos exclusivos da Meiose I aumentam a variabilidade genética das espécies?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crossing-over (permutação) entre cromátides homólogas no paquíteno', 1, 0),
(@p, 'Segregação independente dos pares de cromossomos homólogos na Anáfase I', 1, 0),
(@p, 'Duplicação dos centríolos na interfase', 0, 0),
(@p, 'Citocinese centrípeta simples', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual estrutura intranuclear não membranosa é responsável pela síntese de RNA ribossômico (RNAr) e montagem das subunidades dos ribossomos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Nucléolo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene sequencialmente as quatro fases da mitose:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Prófase', 1, 1),
(@p, 'Metáfase', 1, 2),
(@p, 'Anáfase', 1, 3),
(@p, 'Telófase', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre eucromatina e heterocromatina no núcleo interfásico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A eucromatina é menos condensada e geneticamente ativa (transcrição); a heterocromatina é altamente condensada e inativa.', 1, 0),
(@p, 'A eucromatina só existe em bactérias; a heterocromatina só existe em vírus.', 0, 0),
(@p, 'Ambas são organelas produtoras de lipídios.', 0, 0),
(@p, 'A heterocromatina realiza fotossíntese nuclear.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A metáfase é a fase mais indicada para a montagem do cariótipo humano, pois os cromossomos atingem seu grau máximo de condensação.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 65: Genética
-- -------------------------------------------------------------------------

-- Quiz 65.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Básicos: DNA, Genes, Genótipo e Fenótipo', 1, 65);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é o "fenótipo" de um organismo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O conjunto de características morfológicas, fisiológicas ou comportamentais observáveis, resultante da interação do genótipo com o ambiente.', 1, 0),
(@p, 'Apenas a sequência de bases nitrogenadas dentro do núcleo.', 0, 0),
(@p, 'O número total de mitocôndrias no citoplasma.', 0, 0),
(@p, 'Um tipo de vitamina lipossolúvel.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito genético à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Gene', 1, 1, 'Segmento de DNA que contém informação para uma característica'),
(@p, 'Alelos', 1, 2, 'Formas alternativas de um mesmo gene no mesmo lócus'),
(@p, 'Homozigoto', 1, 3, 'Indivíduo com dois alelos idênticos para um gene (AA ou aa)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um alelo recessivo (representado por letra minúscula, como "a") só expressa seu fenótipo quando está em dose dupla (homozigose recessiva: aa).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as quatro bases nitrogenadas que compõem a molécula de DNA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adenina (A) e Timina (T)', 1, 0),
(@p, 'Citosina (C) e Guanina (G)', 1, 0),
(@p, 'Uracila (U)', 0, 0),
(@p, 'Glicose (G)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quantos cromossomos possui normalmente uma célula somática diploide (2n) da espécie humana?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '46', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o Dogma Central da Biologia Molecular (fluxo da informação genética):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Replicação do DNA', 1, 1),
(@p, 'Transcrição (DNA -> RNA mensageiro)', 1, 2),
(@p, 'Tradução (RNAm -> Proteína nos ribossomos)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na dupla-hélice do DNA, o pareamento específico das bases nitrogenadas ocorre sempre entre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adenina com Timina (A-T) e Citosina com Guanina (C-G).', 1, 0),
(@p, 'Adenina com Citosina (A-C) e Timina com Guanina (T-G).', 0, 0),
(@p, 'Adenina com Uracila (A-U) e Timina com Timina (T-T).', 0, 0),
(@p, 'Guanina com Guanina (G-G) e Citosina com Adenina (C-A).', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um indivíduo heterozigoto (Aa) possui dois alelos diferentes para determinada característica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 65.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Primeira Lei de Mendel e Heredogramas', 2, 65);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estabelece a Primeira Lei de Mendel (Lei da Segregação dos Fatores)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cada característica é determinada por um par de fatores (alelos) que se separam na formação dos gametas.', 1, 0),
(@p, 'Todos os genes de um cromossomo são herdados sempre juntos sem exceção.', 0, 0),
(@p, 'Características adquiridas pelo uso são transmitidas diretamente aos filhos.', 0, 0),
(@p, 'Os gametas carregam sempre dois alelos para cada gene.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe o cruzamento mendeliano à proporção fenotípica esperada na descendência (dominância completa):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'AA x aa', 1, 1, '100% fenótipo dominante (todos Aa)'),
(@p, 'Aa x Aa', 1, 2, '3 dominantes : 1 recessivo (75% : 25%)'),
(@p, 'Aa x aa (cruzamento-teste)', 1, 3, '1 dominante : 1 recessivo (50% : 50%)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em um heredograma, quando um casal com fenótipo dominante tem um filho com fenótipo recessivo, conclui-se que ambos os pais são heterozigotos (Aa).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique símbolos padrão utilizados na construção de heredogramas (genealogias):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quadrado representa indivíduo do sexo masculino', 1, 0),
(@p, 'Círculo representa indivíduo do sexo feminino', 1, 0),
(@p, 'Símbolo pintado (preenchido) indica indivíduo afetado pela característica estudada', 1, 0),
(@p, 'Triângulo invertido indica obrigatoriamente gêmeos univitelinos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a probabilidade (em porcentagem) de um casal heterozigoto (Aa x Aa) ter uma criança com genótipo homozigoto recessivo (aa)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '25%', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o procedimento de um cruzamento-teste para descobrir se um indivíduo dominante é AA ou Aa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cruzar o indivíduo de fenótipo dominante com um homozigoto recessivo (aa)', 1, 1),
(@p, 'Analisar os descendentes obtidos', 1, 2),
(@p, 'Se surgir algum descendente recessivo (aa), o testado é heterozigoto (Aa)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na "dominância incompleta" (como na flor maravilha, Mirabilis jalapa), o cruzamento entre plantas vermelhas (VV) e brancas (BB) gera:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '100% de plantas com fenótipo intermediário cor-de-rosa (VB).', 1, 0),
(@p, '100% de plantas vermelhas.', 0, 0),
(@p, '50% pretas e 50% azuis.', 0, 0),
(@p, 'Plantas estéreis sem flores.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Gregor Mendel escolheu ervilhas-de-cheiro (Pisum sativum) para seus experimentos por terem ciclo de vida curto, fácil cultivo e características bem contrastantes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 65.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Segunda Lei de Mendel e Grupos Sanguíneos (ABO e Rh)', 2, 65);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual proporção fenotípica clássica é obtida na geração F2 do cruzamento diíbrido AaBb x AaBb pela Segunda Lei de Mendel?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '9 : 3 : 3 : 1', 1, 0),
(@p, '3 : 1', 0, 0),
(@p, '1 : 2 : 1', 0, 0),
(@p, '1 : 1 : 1 : 1', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo sanguíneo do Sistema ABO ao seu genótipo possível:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tipo A', 1, 1, 'IAIA ou IAi'),
(@p, 'Tipo AB (codominância)', 1, 2, 'IAIB'),
(@p, 'Tipo O (doador universal de hemácias)', 1, 3, 'ii');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Segunda Lei de Mendel (Segregação Independente) aplica-se a genes situados em pares de cromossomos homólogos diferentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Sobre a eritroblastose fetal (doença hemolítica do recém-nascido), identifique as condições necessárias para sua ocorrência:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mãe Rh negativo (rr)', 1, 0),
(@p, 'Pai Rh positivo (RR ou Rr) e feto Rh positivo (Rr)', 1, 0),
(@p, 'Sensibilização materna prévia com produção de anticorpos anti-Rh', 1, 0),
(@p, 'Mãe Rh positivo e feto Rh negativo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo sanguíneo (considerando sistema ABO e Rh) é conhecido como receptor universal de hemácias por não possuir aglutininas anti-A, anti-B nem anti-Rh?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'AB+', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a formação de gametas de um indivíduo duplo-heterozigoto AaBb:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '25% AB', 1, 1),
(@p, '25% Ab', 1, 2),
(@p, '25% aB', 1, 3),
(@p, '25% ab', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um casal formado por um homem do grupo AB e uma mulher do grupo O pode ter filhos com quais tipos sanguíneos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Apenas A (IAi) ou B (IBi).', 1, 0),
(@p, 'Apenas AB ou O.', 0, 0),
(@p, 'A, B, AB e O.', 0, 0),
(@p, 'Apenas O.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O sistema sanguíneo ABO é um exemplo clássico de polialelia (alelos múltiplos) combinada com codominância entre os alelos IA e IB.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 65.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Herança Ligada ao Sexo, Linkage e Biotecnologia', 3, 65);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que doenças recessivas ligadas ao cromossomo X (como hemofilia e daltonismo) são muito mais frequentes em homens do que em mulheres?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque os homens são hemizigotos (XY), bastando um único alelo recessivo no cromossomo X para manifestar a condição.', 1, 0),
(@p, 'Porque as mulheres não possuem cromossomos X.', 0, 0),
(@p, 'Porque o cromossomo Y impede a expressão de qualquer gene dominante.', 0, 0),
(@p, 'Porque apenas homens herdam cromossomos da mãe.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito genético avançado à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Linkage (Ligação gênica)', 1, 1, 'Genes localizados no mesmo cromossomo que tendem a ser herdados juntos'),
(@p, 'Epistasia', 1, 2, 'Um gene inibe a expressão fenotípica de outro gene em lócus diferente'),
(@p, 'Pleiotropia', 1, 3, 'Um único par de genes condiciona múltiplas características simultâneas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No linkage, a taxa de permutação (crossing-over) entre dois genes ligados é diretamente proporcional à distância entre eles no cromossomo, permitindo construir mapas genéticos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique ferramentas e técnicas da Engenharia Genética e Biotecnologia moderna:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Enzimas de restrição (cortam o DNA em sequências específicas)', 1, 0),
(@p, 'Reação em Cadeia da Polimerase - PCR (amplifica fragmentos de DNA)', 1, 0),
(@p, 'Sistema CRISPR-Cas9 (edição precisa de sequências genômicas)', 1, 0),
(@p, 'Destilação fracionada do petróleo bruto', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são denominados os organismos geneticamente modificados que receberam genes de outra espécie diferente (ex.: bactérias produtoras de insulina humana)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Transgênicos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da produção de insulina humana recombinante em bactérias:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Isolar o gene humano da insulina e cortar um plasmídeo bacteriano com enzima de restrição', 1, 1),
(@p, 'Unir o gene humano ao plasmídeo usando a enzima DNA ligase', 1, 2),
(@p, 'Inserir o plasmídeo recombinante na bactéria (transformação)', 1, 3),
(@p, 'Cultivar as bactérias e purificar a insulina sintetizada', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Uma mulher portadora heterozigota para daltonismo (XDXd) casa-se com um homem de visão normal (XDY). Qual a probabilidade de um filho do sexo masculino desse casal ser daltônico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '50% (metade dos meninos será XdY)', 1, 0),
(@p, '0%', 0, 0),
(@p, '100%', 0, 0),
(@p, '10%', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A cromatina sexual (corpúsculo de Barr) corresponde a um dos cromossomos X inativados aleatoriamente nas células somáticas de fêmeas de mamíferos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 66: Evolução
-- -------------------------------------------------------------------------

-- Quiz 66.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Evidências da Evolução Biológica', 1, 66);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são "órgãos homólogos" na anatomia comparada?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estruturas com a mesma origem embrionária e ancestral comum, podendo exercer funções iguais ou diferentes (ex.: braço humano e asa de morcego).', 1, 0),
(@p, 'Estruturas sem ancestral comum que surgiram apenas por adaptação ao mesmo ambiente.', 0, 0),
(@p, 'Órgãos artificiais implantados em laboratório.', 0, 0),
(@p, 'Apenas ossos fossilizados de dinossauros marinhos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada evidência evolutiva ao seu exemplo clássico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Homologia (divergência evolutiva)', 1, 1, 'Nadadeira de baleia e mão humana'),
(@p, 'Analogia (convergência evolutiva)', 1, 2, 'Asa de inseto e asa de ave'),
(@p, 'Órgão vestigial', 1, 3, 'Apêndice vermiforme e cóccix humanos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os fósseis são restos ou vestígios de seres vivos preservados em rochas sedimentares, âmbar ou gelo que documentam a história da vida na Terra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique evidências científicas que comprovam a evolução biológica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Registro fóssil e formas transicionais', 1, 0),
(@p, 'Anatomia e embriologia comparadas', 1, 0),
(@p, 'Semelhança molecular no código genético (DNA e proteínas)', 1, 0),
(@p, 'Geração espontânea de ratos a partir de roupas sujas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as estruturas atrofiadas e sem função evidente em um organismo atual, mas que eram funcionais em seus ancestrais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Órgãos vestigiais', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de convergência evolutiva (surgimento de órgãos análogos):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Duas linhagens sem ancestralidade próxima vivem em ambientes semelhantes', 1, 1),
(@p, 'Ambas sofrem pressões seletivas parecidas (ex.: ambiente aquático)', 1, 2),
(@p, 'Desenvolvem adaptações funcionais semelhantes (ex.: corpo hidrodinâmico de tubarão e golfinho)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a comparação de sequências de DNA e aminoácidos é considerada uma das provas mais precisas do parentesco evolutivo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque quanto mais recente for o ancestral comum entre duas espécies, maior será a semelhança em seus genomas.', 1, 0),
(@p, 'Porque cada espécie usa um código genético totalmente incompatível com as demais.', 0, 0),
(@p, 'Porque o DNA nunca sofre alterações ao longo de milhões de anos.', 0, 0),
(@p, 'Porque apenas mamíferos possuem moléculas de DNA.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Órgãos análogos possuem a mesma função biológica, mas origens embrionárias e evolutivas distintas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 66.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorias Evolutivas: Lamarckismo e Darwinismo', 2, 66);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o mecanismo central proposto por Charles Darwin para explicar a evolução das espécies?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Seleção natural', 1, 0),
(@p, 'Lei do uso e desuso', 0, 0),
(@p, 'Herança dos caracteres adquiridos', 0, 0),
(@p, 'Fixismo imutável', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada explicação sobre o pescoço longo das girafas à teoria correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Lamarckismo', 1, 1, 'O esforço contínuo para alcançar folhas altas alongou o pescoço, transmitido aos filhos'),
(@p, 'Darwinismo', 1, 2, 'Girafas que já nasciam com pescoço mais longo sobreviveram melhor e deixaram mais descendentes'),
(@p, 'Fixismo', 1, 3, 'As girafas sempre existiram exatamente como são hoje, sem modificações');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Jean-Baptiste Lamarck foi um importante naturalista pioneiro ao defender que as espécies se transformam ao longo do tempo, embora seus mecanismos (uso/desuso e herança adquirida) tenham sido refutados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os pilares da teoria da Seleção Natural formulada por Charles Darwin e Alfred Russel Wallace:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Variabilidade individual prévia dentro das populações', 1, 0),
(@p, 'Luta pela sobrevivência devido aos recursos limitados do ambiente', 1, 0),
(@p, 'Reprodução diferencial dos indivíduos mais bem adaptados ao meio', 1, 0),
(@p, 'Vontade consciente dos animais de alterar seus próprios genes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual arquipélago no Oceano Pacífico foi fundamental nas observações de Charles Darwin sobre a diversidade dos tentilhões e tartarugas-gigantes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Galápagos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de seleção de bactérias resistentes a um antibiótico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'População bacteriana já apresenta variação genética (algumas possuem genes de resistência)', 1, 1),
(@p, 'Aplicação do antibiótico elimina as bactérias sensíveis (pressão seletiva)', 1, 2),
(@p, 'As bactérias resistentes sobrevivem e se reproduzem rapidamente', 1, 3),
(@p, 'A população passa a ser composta majoritariamente por linhagens resistentes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Um erro conceitual comum é dizer que "o antibiótico cria mutações de resistência nas bactérias". Na visão darwinista correta, o antibiótico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Atua apenas como agente seletivo de variantes resistentes que já existiam previamente por mutação aleatória.', 1, 0),
(@p, 'Ensina as bactérias a fabricarem novas proteínas.', 0, 0),
(@p, 'Transforma bactérias em vírus.', 0, 0),
(@p, 'Aumenta a taxa de fotossíntese bacteriana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Alfred Russel Wallace chegou independentemente a conclusões muito semelhantes às de Darwin sobre a seleção natural ao estudar a fauna e flora da Ásia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 66.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Neodarwinismo (Teoria Sintética) e Fatores Evolutivos', 2, 66);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual lacuna da teoria original de Darwin foi preenchida pelo Neodarwinismo (Teoria Sintética da Evolução)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A explicação da origem da variabilidade genética por meio das mutações e da recombinação gênica.', 1, 0),
(@p, 'A comprovação de que a Terra tem apenas 5 mil anos.', 0, 0),
(@p, 'A descoberta de que as espécies não sofrem seleção natural.', 0, 0),
(@p, 'A reabilitação da lei do uso e desuso.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fator evolutivo ao seu papel nas populações:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mutação gênica', 1, 1, 'Fonte primária que cria novos alelos ao acaso'),
(@p, 'Recombinação gênica', 1, 2, 'Embaralha alelos existentes (crossing-over e fecundação)'),
(@p, 'Seleção natural', 1, 3, 'Fator direcional que favorece adaptações ao ambiente');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "deriva genética" consiste na alteração aleatória das frequências alélicas de uma população, tendo efeito muito mais intenso em populações pequenas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fenômenos associados à deriva genética e migração:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Efeito Gargalo (redução drástica da população por desastre ou caça)', 1, 0),
(@p, 'Efeito Fundador (pequeno grupo coloniza um novo habitat isolado)', 1, 0),
(@p, 'Fluxo gênico (troca de alelos entre populações por migração)', 1, 0),
(@p, 'Clonagem artificial de embriões em laboratório', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de seleção natural favorece os indivíduos com fenótipo intermediário e elimina os extremos (ex.: peso ao nascer em bebês humanos)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Seleção estabilizadora', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caso clássico do melanismo industrial nas mariposas Biston betularia na Inglaterra:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antes da poluição, mariposas claras camuflavam-se bem nos troncos com líquens', 1, 1),
(@p, 'A fuligem industrial escureceu os troncos e matou os líquens', 1, 2),
(@p, 'Aves predadoras passaram a capturar mais facilmente as mariposas claras visíveis', 1, 3),
(@p, 'As mariposas escuras (melânicas) tornaram-se predominantes na população', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é a "camuflagem" como adaptação evolutiva?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quando um organismo apresenta cor ou forma semelhante ao ambiente, dificultando sua detecção por predadores ou presas.', 1, 0),
(@p, 'Quando uma espécie inofensiva imita a aparência de uma espécie venenosa.', 0, 0),
(@p, 'Quando um animal hiberna durante todo o inverno.', 0, 0),
(@p, 'Quando duas espécies competem pelo mesmo alimento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No mimetismo batesiano, uma espécie palatável e inofensiva (como a falsa-coral) imita a coloração de advertência de uma espécie perigosa (coral-verdadeira).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 66.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Especiação, Irradiação Adaptativa e Evolução Humana', 3, 66);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a condição essencial para que o processo de especiação alopátrica seja concluído e duas populações se tornem espécies distintas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O estabelecimento de isolamento reprodutivo (impedindo a geração de descendentes férteis entre elas).', 1, 0),
(@p, 'Apenas uma mudança temporária na cor da pelagem no verão.', 0, 0),
(@p, 'O aumento imediato da temperatura corporal.', 0, 0),
(@p, 'A migração de todos os indivíduos para o mesmo ninho.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada mecanismo de isolamento reprodutivo à sua categoria:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Isolamento sazonal ou etológico (cortejo diferente)', 1, 1, 'Mecanismo pré-zigótico'),
(@p, 'Inviabilidade do híbrido', 1, 2, 'Mecanismo pós-zigótico'),
(@p, 'Esterilidade do híbrido (ex.: mula)', 1, 3, 'Mecanismo pós-zigótico');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na irradiação adaptativa, uma única espécie ancestral diversifica-se rapidamente em várias espécies adaptadas a diferentes nichos ecológicos (como os mamíferos placentários).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características marcantes da evolução dos hominídeos até o Homo sapiens:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bipedalismo (locomoção ereta sobre dois membros)', 1, 0),
(@p, 'Aumento progressivo do volume craniano e encefalização', 1, 0),
(@p, 'Polegar opositor desenvolvido e fabricação complexa de ferramentas', 1, 0),
(@p, 'Descendência direta dos chimpanzés atuais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a especiação que ocorre sem barreira geográfica física, dentro de uma mesma área de distribuição (ex.: por poliploidia em plantas)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Especiação simpátrica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas clássicas da especiação alopátrica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Surgimento de uma barreira geográfica dividindo a população original (isolamento geográfico)', 1, 1),
(@p, 'Acúmulo independente de mutações, deriva genética e pressões seletivas distintas', 1, 2),
(@p, 'Divergência genética profunda entre as duas subpopulações', 1, 3),
(@p, 'Consolidação do isolamento reprodutivo mesmo se a barreira desaparecer', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com o modelo evolutivo mais aceito ("Out of Africa"), onde surgiu a espécie Homo sapiens antes de se dispersar pelos demais continentes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na África', 1, 0),
(@p, 'Na Austrália', 0, 0),
(@p, 'Na América do Sul', 0, 0),
(@p, 'Na Antártida', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Humanos e chimpanzés não descendem um do outro, mas compartilham um ancestral comum que viveu na África há milhões de anos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 67: Ecologia
-- -------------------------------------------------------------------------

-- Quiz 67.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Fundamentais e Cadeias Alimentares', 1, 67);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "habitat" e "nicho ecológico"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Habitat é o local físico onde a espécie vive; nicho ecológico é o seu modo de vida e papel funcional no ecossistema.', 1, 0),
(@p, 'Habitat é o alimento; nicho é apenas o predador.', 0, 0),
(@p, 'Ambos são sinônimos exatos sem nenhuma diferença.', 0, 0),
(@p, 'Habitat refere-se apenas a animais aquáticos; nicho apenas a plantas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada nível trófico à sua função na cadeia alimentar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Produtores (plantas, algas)', 1, 1, 'Sintetizam matéria orgânica a partir de substâncias inorgânicas'),
(@p, 'Consumidores primários', 1, 2, 'Herbívoros que se alimentam diretamente dos produtores'),
(@p, 'Decompositores (fungos e bactérias)', 1, 3, 'Reciclam a matéria orgânica devolvendo nutrientes ao meio');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um ecossistema é formado pela integração entre os fatores bióticos (comunidade de seres vivos) e os fatores abióticos (luz, água, solo, temperatura).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores ABIÓTICOS de um ecossistema:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Radiação solar e temperatura', 1, 0),
(@p, 'Salinidade e pH da água', 1, 0),
(@p, 'Umidade e composição mineral do solo', 1, 0),
(@p, 'Bactérias decompositoras e fungos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamado o conjunto de todas as regiões da Terra onde existe vida (litosfera, hidrosfera e atmosfera habitadas)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Biosfera', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o fluxo alimentar da cadeia: Capim -> Gafanhoto -> Sapo -> Cobra -> Gavião:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Capim (Produtor)', 1, 1),
(@p, 'Gafanhoto (Consumidor primário)', 1, 2),
(@p, 'Sapo (Consumidor secundário)', 1, 3),
(@p, 'Cobra e Gavião (Consumidores terciário e quaternário)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que uma "teia alimentar" representa a natureza de forma mais realista do que uma cadeia alimentar isolada?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque mostra múltiplas conexões alimentares entre espécies, podendo um mesmo organismo ocupar diferentes níveis tróficos.', 1, 0),
(@p, 'Porque exclui completamente os produtores e decompositores.', 0, 0),
(@p, 'Porque só existe em cavernas subterrâneas.', 0, 0),
(@p, 'Porque demonstra que a energia aumenta a cada nível.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Organismos autótrofos são capazes de produzir seu próprio alimento por fotossíntese ou quimiossíntese.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 67.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fluxo de Energia, Pirâmides Ecológicas e Ciclos Biogeoquímicos', 2, 67);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se comporta o fluxo de energia ao longo dos níveis tróficos de um ecossistema?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É unidirecional e decrescente (apenas cerca de 10% da energia passa para o nível seguinte).', 1, 0),
(@p, 'É cíclico e aumenta exponencialmente até o topo da cadeia.', 0, 0),
(@p, 'Permanece constante em 100% em todos os consumidores.', 0, 0),
(@p, 'Retorna dos decompositores diretamente para o Sol.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada processo do Ciclo do Nitrogênio às bactérias envolvidas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fixação biológica (Rhizobium)', 1, 1, 'Converte N2 atmosférico em amônia (NH3)'),
(@p, 'Nitrificação (Nitrosomonas e Nitrobacter)', 1, 2, 'Oxida amônia em nitrito e depois em nitrato'),
(@p, 'Desnitrificação (Pseudomonas)', 1, 3, 'Devolve gás nitrogênio (N2) para a atmosfera');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A pirâmide ecológica de ENERGIA nunca pode ser invertida, pois a energia sempre diminui a cada transferência trófica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique processos que devolvem gás carbônico (CO2) para a atmosfera no Ciclo do Carbono:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Respiração celular de animais, plantas e microrganismos', 1, 0),
(@p, 'Decomposição da matéria orgânica', 1, 0),
(@p, 'Queima de combustíveis fósseis e queimadas', 1, 0),
(@p, 'Fotossíntese realizada pelas florestas e fitoplâncton', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno ecológico consiste no acúmulo progressivo de substâncias tóxicas não biodegradáveis (como mercúrio e DDT) nos níveis tróficos mais altos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Magnificação trófica (ou biomagnificação)', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas do Ciclo do Nitrogênio no solo até a absorção pelas plantas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fixação do N2 atmosférico em amônia', 1, 1),
(@p, 'Nitrosação (conversão de amônia em nitrito)', 1, 2),
(@p, 'Nitratação (conversão de nitrito em nitrato)', 1, 3),
(@p, 'Absorção do nitrato pelas raízes das plantas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a pirâmide de biomassa nos ecossistemas aquáticos marinhos pode aparecer invertida em certos momentos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o fitoplâncton tem ciclo de vida muito curto e alta taxa de reprodução, sustentando uma biomassa maior de zooplâncton.', 1, 0),
(@p, 'Porque os peixes fazem fotossíntese no fundo do mar.', 0, 0),
(@p, 'Porque não existem produtores nos oceanos.', 0, 0),
(@p, 'Porque a água salgada anula as leis da termodinâmica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A rotação de culturas com leguminosas (como soja e feijão) enriquece o solo em nitrogênio graças à associação mutualística com bactérias do gênero Rhizobium.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 67.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Relações Ecológicas Harmônicas e Desarmônicas', 2, 67);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "mutualismo" e "protocooperação"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Em ambos há benefício mútuo, mas no mutualismo a associação é obrigatória para a sobrevivência, enquanto na protocooperação é facultativa.', 1, 0),
(@p, 'No mutualismo um mata o outro; na protocooperação ambos morrem.', 0, 0),
(@p, 'O mutualismo só ocorre entre indivíduos da mesma espécie.', 0, 0),
(@p, 'Não há nenhuma diferença entre os dois termos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada exemplo de relação ecológica à sua classificação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Liquens (algas + fungos)', 1, 1, 'Mutualismo interespecífico'),
(@p, 'Tubarão e peixe-rêmora', 1, 2, 'Comensalismo (+ / 0)'),
(@p, 'Orquídeas crescendo sobre troncos de árvores', 1, 3, 'Inquilinismo / Epifitismo (+ / 0)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No amensalismo (antibiose), uma espécie libera substâncias que inibem o crescimento de outra, como o fungo Penicillium produzindo penicilina contra bactérias.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique relações ecológicas INTRAESPECÍFICAS (entre indivíduos da mesma espécie):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sociedade (ex.: abelhas, formigas e cupins com divisão de trabalho)', 1, 0),
(@p, 'Colônia (ex.: corais e caravela-portuguesa unidos fisicamente)', 1, 0),
(@p, 'Canibalismo (ex.: louva-a-deus e viúva-negra)', 1, 0),
(@p, 'Predatismo entre leão e zebra', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual relação ecológica desarmônica ocorre quando duas espécies disputam os mesmos recursos limitados (alimento, luz ou território)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Competição interespecífica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o Princípio de Gause (Exclusão Competitiva) quando duas espécies ocupam exatamente o mesmo nicho ecológico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sobreposição total de nichos ecológicos no mesmo habitat', 1, 1),
(@p, 'Intensa competição pelos mesmos recursos escassos', 1, 2),
(@p, 'Uma das espécies é eliminada localmente ou desloca seu nicho', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na relação entre o pássaro-palito e o crocodilo, ou entre o anu e o boi, observa-se um exemplo clássico de:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Protocooperação', 1, 0),
(@p, 'Parasitismo', 0, 0),
(@p, 'Amensalismo', 0, 0),
(@p, 'Canibalismo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um parasita bem adaptado geralmente evita matar rapidamente seu hospedeiro, pois depende dele para sobreviver e se reproduzir.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 67.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sucessão Ecológica, Biomas Brasileiros e Impactos Ambientais', 3, 67);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia a "sucessão ecológica primária" da "sucessão ecológica secundária"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A primária inicia-se em locais estéreis nunca antes habitados (rocha nua, dunas); a secundária ocorre em áreas já habitadas que sofreram perturbação.', 1, 0),
(@p, 'A primária só ocorre no fundo do oceano; a secundária só ocorre em desertos.', 0, 0),
(@p, 'A primária termina em líquens; a secundária nunca atinge o clímax.', 0, 0),
(@p, 'Não existe diferença ecológica entre elas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada bioma brasileiro à sua característica marcante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cerrado', 1, 1, 'Savana brasileira, árvores tortuosas, casca grossa e alta biodiversidade'),
(@p, 'Caatinga', 1, 2, 'Bioma exclusivamente brasileiro, clima semiárido e plantas xerófitas'),
(@p, 'Pantanal', 1, 3, 'Maior planície alagável continental do mundo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na comunidade clímax de uma sucessão ecológica, a produtividade primária bruta (PPB) praticamente iguala-se ao consumo pela respiração da comunidade (R), mantendo equilíbrio dinâmico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique consequências do fenômeno da "eutrofização" causada pelo despejo de esgoto doméstico e fertilizantes em lagos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Proliferação excessiva de algas e cianobactérias (floração)', 1, 0),
(@p, 'Bloqueio da passagem de luz para as camadas mais profundas', 1, 0),
(@p, 'Proliferação de bactérias aeróbicas decompositoras e queda drástica de O2 dissolvido', 1, 0),
(@p, 'Aumento imediato da transparência e pureza da água', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são chamadas as espécies pioneiras que iniciam a colonização de rochas nuas na sucessão primária (associação de fungos e algas)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Liquens', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da sucessão ecológica até o estágio final:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ecese (chegada e instalação das espécies pioneiras)', 1, 1),
(@p, 'Séries intermediárias (arbustos e arvoretas de crescimento rápido)', 1, 2),
(@p, 'Aumento da biomassa, umidade do solo e complexidade das teias', 1, 3),
(@p, 'Comunidade Clímax (estabilidade ecológica)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Os manguezais são ecossistemas costeiros de transição fundamentais porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Funcionam como berçário natural de espécies marinhas e possuem raízes respiratórias (pneumatóforos) adaptadas ao solo lodoso e salino.', 1, 0),
(@p, 'Apresentam clima glacial com nevascas constantes.', 0, 0),
(@p, 'São formados exclusivamente por cactos e pinheiros.', 0, 0),
(@p, 'Não sofrem influência das marés oceânicas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Mata Atlântica e o Cerrado são considerados "hotspots" mundiais de biodiversidade por reunirem altíssimo endemismo e grave ameaça de perda de habitat.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 68: Sistema Digestório
-- -------------------------------------------------------------------------

-- Quiz 68.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Órgãos do Tubo Digestório e Glândulas Anexas', 1, 68);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a função principal do sistema digestório humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quebrar macromoléculas dos alimentos em nutrientes menores absorvíveis e eliminar resíduos não digeridos.', 1, 0),
(@p, 'Realizar as trocas gasosas entre oxigênio e gás carbônico nos alvéolos.', 0, 0),
(@p, 'Bombear sangue arterial para todo o corpo.', 0, 0),
(@p, 'Conduzir impulsos elétricos sensoriais até o encéfalo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada glândula anexa do sistema digestório à sua secreção:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Glândulas salivares', 1, 1, 'Saliva (contendo amilase salivar / ptialina)'),
(@p, 'Fígado', 1, 2, 'Bile (armazenada na vesícula biliar)'),
(@p, 'Pâncreas', 1, 3, 'Suco pancreático rico em bicarbonato e enzimas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A bile produzida pelo fígado não contém enzimas digestivas, mas atua emulsificando gorduras para facilitar a ação das lipases.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as três divisões anatômicas do intestino delgado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Duodeno', 1, 0),
(@p, 'Jejuno', 1, 0),
(@p, 'Íleo', 1, 0),
(@p, 'Ceco e Cólon', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual estrutura cartilaginosa fecha a entrada da laringe durante a deglutição para impedir que o alimento vá para as vias respiratórias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Epiglote', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o trajeto do alimento ao longo do tubo digestório humano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Boca -> Faringe -> Esôfago', 1, 1),
(@p, 'Estômago', 1, 2),
(@p, 'Intestino Delgado (Duodeno, Jejuno, Íleo)', 1, 3),
(@p, 'Intestino Grosso -> Reto -> Ânus', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como são denominados os movimentos musculares involuntários ondulatórios que empurram o bolo alimentar pelo esôfago e intestinos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Movimentos peristálticos (peristaltismo)', 1, 0),
(@p, 'Sístole e diástole ventricular', 0, 0),
(@p, 'Hematose alveolar', 0, 0),
(@p, 'Filtração glomerular', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A digestão química dos alimentos inicia-se já na boca, pela ação da amilase salivar sobre o amido.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 68.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Digestão Química e Enzimas Digestivas', 2, 68);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual enzima atua no estômago, em meio fortemente ácido (pH ~2,0), iniciando a digestão das proteínas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pepsina', 1, 0),
(@p, 'Ptialina (amilase salivar)', 0, 0),
(@p, 'Lactase', 0, 0),
(@p, 'Sacarase', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada enzima digestiva ao substrato que ela hidrolisa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Amilase (salivar e pancreática)', 1, 1, 'Amido (polissacarídeo)'),
(@p, 'Tripsina e Quimiotripsina', 1, 2, 'Proteínas e peptídeos no duodeno'),
(@p, 'Lipase pancreática', 1, 3, 'Lipídios (triglicerídeos)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O ácido clorídrico (HCl) do suco gástrico ativa o pepsinogênio em pepsina, promove a desnaturação de proteínas e elimina microrganismos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique dissacaridases presentes no suco entérico (produzido pelo intestino delgado):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Maltase (digere maltose em glicose)', 1, 0),
(@p, 'Sacarase (digere sacarose em glicose e frutose)', 1, 0),
(@p, 'Lactase (digere lactose em glicose e galactose)', 1, 0),
(@p, 'Celulase humana', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual substância alcalina presente no suco pancreático neutraliza a acidez do quimo que chega do estômago ao duodeno?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bicarbonato de sódio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as transformações da massa alimentar ao longo da digestão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alimento mastigado e insalivado (Bolo alimentar)', 1, 1),
(@p, 'Massa ácida semilíquida formada no estômago (Quimo)', 1, 2),
(@p, 'Líquido leitoso alcalino rico em nutrientes no intestino delgado (Quilo)', 1, 3),
(@p, 'Resíduos consolidados no intestino grosso (Fezes)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a amilase salivar (ptialina) deixa de atuar quando o bolo alimentar chega ao estômago?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque seu pH ótimo é neutro (~7,0) e ela sofre desnaturação no pH ácido do estômago.', 1, 0),
(@p, 'Porque não existe água no estômago.', 0, 0),
(@p, 'Porque a pepsina transforma o amido em gordura.', 0, 0),
(@p, 'Porque o esôfago destrói todas as enzimas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Seres humanos não produzem a enzima celulase, mas as fibras vegetais (celulose) são essenciais para estimular o peristaltismo e formar o bolo fecal.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 68.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Absorção de Nutrientes e Funções do Intestino Grosso', 2, 68);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais adaptações anatômicas aumentam enormemente a superfície de absorção de nutrientes no intestino delgado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pregas circulares, vilosidades intestinais e microvilosidades nas células epiteliais.', 1, 0),
(@p, 'Alvéolos pulmonares e anéis cartilaginosos.', 0, 0),
(@p, 'Cílios vibráteis e glândulas sudoríparas.', 0, 0),
(@p, 'Válvulas bicúspide e tricúspide.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada nutriente final da digestão à sua via principal de absorção nas vilosidades:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Monossacarídeos (glicose) e aminoácidos', 1, 1, 'Capilares sanguíneos (sistema porta-hepático)'),
(@p, 'Ácidos graxos e monoglicerídeos (quilomícrons)', 1, 2, 'Vasos linfáticos (vasos quilíferos)'),
(@p, 'Água e sais minerais residuais', 1, 3, 'Mucosa do intestino grosso (cólon)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maior parte da digestão química e da absorção de nutrientes ocorre no intestino delgado, e não no estômago.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique funções importantes desempenhadas pelo intestino grosso e sua microbiota:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reabsorção intensa de água e eletrólitos', 1, 0),
(@p, 'Síntese de vitaminas (como vitamina K e complexo B) por bactérias mutualísticas', 1, 0),
(@p, 'Formação e armazenamento temporário das fezes', 1, 0),
(@p, 'Secreção de pepsina e ácido clorídrico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual órgão armazena e concentra a bile produzida pelo fígado, liberando-a no duodeno após refeições gordurosas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Vesícula biliar', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de digestão e absorção dos lipídios:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Emulsificação das gotas grandes de gordura pelos sais biliares', 1, 1),
(@p, 'Hidrólise pela lipase pancreática em ácidos graxos e glicerol', 1, 2),
(@p, 'Absorção pelos enterócitos e formação de quilomícrons', 1, 3),
(@p, 'Transporte pelos vasos linfáticos até a circulação sanguínea', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é o sistema porta-hepático na circulação associada à digestão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Rede venosa que conduz o sangue rico em nutrientes absorvidos no intestino diretamente ao fígado para processamento.', 1, 0),
(@p, 'Válvula que separa o esôfago da traqueia.', 0, 0),
(@p, 'Canal que liga o pâncreas diretamente aos pulmões.', 0, 0),
(@p, 'Músculo esfíncter do estômago.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A remoção cirúrgica da vesícula biliar (colecistectomia) impede totalmente a produção de bile pelo organismo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 0, 0),
(@p, 'Falso', 1, 0);

-- Quiz 68.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regulação Hormonal da Digestão e Fisiopatologia', 3, 68);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual hormônio produzido pelo estômago estimula a secreção de suco gástrico e a motilidade estomacal diante da presença de alimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Gastrina', 1, 0),
(@p, 'Secretina', 0, 0),
(@p, 'Insulina', 0, 0),
(@p, 'Melatonina', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada hormônio gastrointestinal à sua ação fisiológica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Secretina', 1, 1, 'Estimula o pâncreas a liberar bicarbonato no duodeno'),
(@p, 'Colecistoquinina (CCK)', 1, 2, 'Estimula a contração da vesícula biliar e secreção de enzimas pancreáticas'),
(@p, 'Enterogastrona (GIP)', 1, 3, 'Inibe o esvaziamento e a secreção do estômago');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maioria das úlceras pépticas gástricas e duodenais está associada à infecção pela bactéria Helicobacter pylori ou ao uso prolongado de anti-inflamatórios.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique distúrbios ou condições relacionados ao sistema digestório:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Doença celíaca (reação autoimune ao glúten que atrofia vilosidades intestinais)', 1, 0),
(@p, 'Intolerância à lactose (deficiência na produção da enzima lactase)', 1, 0),
(@p, 'Refluxo gastroesofágico (incompetência do esfíncter esofágico inferior)', 1, 0),
(@p, 'Enfisema alveolar por rompimento de alvéolos pulmonares', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual estrutura separa o estômago do duodeno, regulando a passagem gradual do quimo para o intestino delgado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Esfíncter pilórico (piloro)', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resposta hormonal quando o quimo ácido e gorduroso chega ao duodeno:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mucosa duodenal detecta acidez (H+) e presença de lipídios/proteínas', 1, 1),
(@p, 'Células endócrinas duodenais secretam Secretina e CCK no sangue', 1, 2),
(@p, 'Pâncreas libera bicarbonato e enzimas; vesícula biliar libera bile', 1, 3),
(@p, 'pH duodenal é neutralizado para ~8,0, otimizando a digestão intestinal', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o estômago saudável não digere a si próprio apesar de produzir ácido clorídrico e pepsina?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque é revestido por uma espessa barreira de muco alcalino e secreta a pepsina na forma inativa (pepsinogênio).', 1, 0),
(@p, 'Porque suas paredes internas são feitas de quitina impermeável.', 0, 0),
(@p, 'Porque o ácido clorídrico só é produzido fora do corpo.', 0, 0),
(@p, 'Porque a pepsina só digere carboidratos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O pâncreas é uma glândula mista (anfícrina), exercendo função exócrina na digestão e função endócrina na produção de insulina e glucagon.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 69: Sistema Respiratório
-- -------------------------------------------------------------------------

-- Quiz 69.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Anatomia das Vias Aéreas e Pulmões', 1, 69);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são as estruturas microscópicas terminais dos pulmões onde ocorrem as trocas gasosas com o sangue?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alvéolos pulmonares', 1, 0),
(@p, 'Vilosidades intestinais', 0, 0),
(@p, 'Néfrons renais', 0, 0),
(@p, 'Axônios mielinizados', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada estrutura respiratória à sua função principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cavidades nasais', 1, 1, 'Filtrar, aquecer e umedecer o ar inspirado'),
(@p, 'Laringe', 1, 2, 'Conduzir o ar e abrigar as pregas vocais'),
(@p, 'Traqueia', 1, 3, 'Tubo com anéis cartilaginosos que evita o colapso das vias aéreas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A faringe é um canal comum aos sistemas digestório e respiratório, comunicando-se com a boca, cavidades nasais, laringe e esôfago.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique estruturas que pertencem à árvore brônquica pulmonar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Brônquios principais', 1, 0),
(@p, 'Bronquíolos', 1, 0),
(@p, 'Alvéolos pulmonares', 1, 0),
(@p, 'Ureteres', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a membrana dupla serosa que reveste externamente os pulmões e reduz o atrito com a caixa torácica durante a respiração?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pleura', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o percurso do ar durante a inspiração:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cavidades nasais e Faringe', 1, 1),
(@p, 'Laringe e Traqueia', 1, 2),
(@p, 'Brônquios e Bronquíolos', 1, 3),
(@p, 'Alvéolos pulmonares', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o pulmão esquerdo humano é ligeiramente menor que o pulmão direito (possuindo dois lobos em vez de três)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para acomodar a inclinação anatômica do coração (incisura cardíaca).', 1, 0),
(@p, 'Porque o pulmão esquerdo não recebe oxigênio.', 0, 0),
(@p, 'Porque o fígado fica localizado acima do ombro esquerdo.', 0, 0),
(@p, 'Trata-se de uma anomalia rara.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O epitélio ciliado e produtor de muco que reveste a traqueia atua retendo partículas de poeira e microrganismos e varrendo-os em direção à faringe.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 69.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Mecânica Respiratória: Inspiração e Expiração', 2, 69);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que acontece com o músculo diafragma e com o volume da caixa torácica durante a inspiração?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O diafragma contrai e abaixa, aumentando o volume torácico e diminuindo a pressão interna.', 1, 0),
(@p, 'O diafragma relaxa e sobe, diminuindo o volume torácico.', 0, 0),
(@p, 'O diafragma permanece imóvel enquanto as costelas afundam.', 0, 0),
(@p, 'A pressão interna dos pulmões torna-se muito maior que a atmosférica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada movimento respiratório às suas características físicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Inspiração', 1, 1, 'Contração do diafragma e intercostais externos; entrada de ar'),
(@p, 'Expiração em repouso', 1, 2, 'Relaxamento muscular e retração elástica; saída de ar'),
(@p, 'Expiração forçada', 1, 3, 'Contração ativa dos músculos abdominais e intercostais internos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O ar entra nos pulmões durante a inspiração porque a expansão da caixa torácica cria uma pressão intrapulmonar menor que a pressão atmosférica externa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os principais músculos envolvidos na ventilação pulmonar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Diafragma', 1, 0),
(@p, 'Músculos intercostais externos', 1, 0),
(@p, 'Músculos intercostais internos e abdominais (na expiração forçada)', 1, 0),
(@p, 'Músculo bíceps braquial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual substância lipoproteica secretada nos alvéolos reduz a tensão superficial e impede que os alvéolos colabem ao final da expiração?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Surfactante pulmonar', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência física da inspiração normal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Contração do diafragma e elevação das costelas', 1, 1),
(@p, 'Aumento do volume da cavidade torácica e expansão dos pulmões', 1, 2),
(@p, 'Queda da pressão intrapulmonar abaixo da pressão atmosférica', 1, 3),
(@p, 'Fluxo de ar atmosférico pelas vias aéreas até os alvéolos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que ocorre no caso clínico de "pneumotórax" (perfuração da caixa torácica com entrada de ar no espaço pleural)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Perda da pressão negativa intrapleural e colapso (atelectasia) do pulmão afetado.', 1, 0),
(@p, 'Aumento imediato da capacidade respiratória em 300%.', 0, 0),
(@p, 'Transformação do gás nitrogênio em oxigênio puro.', 0, 0),
(@p, 'Nenhum efeito sobre a expansão pulmonar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A síndrome do desconforto respiratório em recém-nascidos prematuros ocorre frequentemente pela produção ainda insuficiente de surfactante pulmonar.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 69.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Hematose e Transporte de Gases no Sangue', 2, 69);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por qual mecanismo físico ocorre a hematose (troca de O2 e CO2) entre os alvéolos pulmonares e os capilares sanguíneos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Difusão simples, a favor dos gradientes de pressão parcial de cada gás.', 1, 0),
(@p, 'Transporte ativo com gasto direto de ATP pelas hemácias.', 0, 0),
(@p, 'Fagocitose de moléculas de oxigênio.', 0, 0),
(@p, 'Osmose reversa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de transporte gasoso no sangue à sua proporção aproximada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Oxiemoglobina (O2 ligado ao ferro da hemoglobina)', 1, 1, 'Cerca de 98% do transporte de oxigênio'),
(@p, 'Íons bicarbonato (HCO3-) dissolvidos no plasma', 1, 2, 'Cerca de 70% do transporte de gás carbônico'),
(@p, 'Carboemoglobina (CO2 ligado à globina)', 1, 3, 'Cerca de 23% do transporte de gás carbônico');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maior parte do gás carbônico (CO2) produzido pelos tecidos é transportada no plasma sanguíneo sob a forma de íons bicarbonato (HCO3-).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que favorecem a liberação de oxigênio da hemoglobina para os tecidos ativos (desvio da curva para a direita / Efeito Bohr):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento da concentração de CO2 nos tecidos', 1, 0),
(@p, 'Diminuição do pH sanguíneo (maior acidez / íons H+)', 1, 0),
(@p, 'Aumento da temperatura local (ex.: músculo em exercício)', 1, 0),
(@p, 'Queda de temperatura para zero grau', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual metal essencial presente nos quatro grupos heme da molécula de hemoglobina liga-se reversivelmente ao oxigênio?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ferro', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a conversão do CO2 tecidual em íon bicarbonato dentro da hemácia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'CO2 difunde-se dos tecidos para o sangue e entra na hemácia', 1, 1),
(@p, 'A enzima anidrase carbônica catalisa a reação CO2 + H2O -> H2CO3 (ácido carbônico)', 1, 2),
(@p, 'O ácido carbônico dissocia-se em H+ e íon bicarbonato (HCO3-)', 1, 3),
(@p, 'O bicarbonato sai para o plasma sanguíneo até alcançar os pulmões', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a inalação de monóxido de carbono (CO) é extremamente letal mesmo em baixas concentrações?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o CO possui afinidade pela hemoglobina cerca de 200 vezes maior que o O2, formando carboxiemoglobina estável e bloqueando o transporte de oxigênio.', 1, 0),
(@p, 'Porque o CO dissolve os ossos do tórax.', 0, 0),
(@p, 'Porque o CO congela o plasma sanguíneo.', 0, 0),
(@p, 'Porque o CO estimula o sono profundo sem afetar o oxigênio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos alvéolos pulmonares, o sangue venoso rico em CO2 transforma-se em sangue arterial rico em O2.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 69.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Controle Bulbar da Respiração, Altitude e Doenças Respiratórias', 3, 69);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual estrutura do tronco encefálico atua como o principal centro involuntário controlador do ritmo respiratório?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bulbo (medula oblonga)', 1, 0),
(@p, 'Cerebelo', 0, 0),
(@p, 'Hipófise anterior', 0, 0),
(@p, 'Corpo caloso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada condição respiratória à sua característica fisiopatológica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Enfisema pulmonar', 1, 1, 'Destruição das paredes alveolares e perda da superfície de hematose'),
(@p, 'Asma brônquica', 1, 2, 'Broncoconstrição inflamatória reversível e excesso de muco'),
(@p, 'Pneumonia', 1, 3, 'Infecção e acúmulo de exsudato inflamatório nos alvéolos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O principal estímulo químico que faz o bulbo aumentar a frequência respiratória durante o exercício físico é o acúmulo de CO2 e a consequente queda do pH (aumento de H+) no sangue e líquor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique respostas fisiológicas de aclimatação quando uma pessoa permanece semanas em grandes altitudes (ar rarefeito):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento imediato da frequência respiratória e cardíaca', 1, 0),
(@p, 'Liberação renal do hormônio eritropoetina (EPO)', 1, 0),
(@p, 'Aumento da produção de hemácias pela medula óssea vermelha (policitemia adaptativa)', 1, 0),
(@p, 'Redução definitiva do número de capilares musculares', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual hormônio produzido principalmente pelos rins estimula a medula óssea a produzir mais hemácias em resposta à hipóxia (baixa oxigenação)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Eritropoetina', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o mecanismo de feedback negativo que corrige o excesso de CO2 no sangue:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento da PCO2 sanguínea e formação de ácido carbônico (queda do pH)', 1, 1),
(@p, 'Quimiorreceptores centrais no bulbo detectam o aumento de íons H+', 1, 2),
(@p, 'Bulbo envia impulsos nervosos mais frequentes ao diafragma e intercostais', 1, 3),
(@p, 'Hiperventilação elimina o excesso de CO2 e restaura o pH normal (~7,4)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A "hiperventilação voluntária" prolongada antes de mergulhar em apneia é perigosa porque:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reduz drasticamente o CO2 sanguíneo sem aumentar o estoque de O2, retardando o reflexo de respirar e podendo causar desmaio por hipóxia.', 1, 0),
(@p, 'Enche os pulmões de água destilada.', 0, 0),
(@p, 'Triplica o tamanho do coração permanentemente.', 0, 0),
(@p, 'Converte CO2 em glicose cerebral.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A respiração celular ocorre no interior das mitocôndrias e do citosol, enquanto a ventilação pulmonar é o processo mecânico de renovação do ar nos pulmões.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 70: Sistema Nervoso
-- -------------------------------------------------------------------------

-- Quiz 70.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Neurônios, Sinapses e Impulso Nervoso', 1, 70);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a célula fundamental responsável pela recepção e condução dos impulsos nervosos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Neurônio', 1, 0),
(@p, 'Nefrónio', 0, 0),
(@p, 'Osteócito', 0, 0),
(@p, 'Condrócito', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada parte do neurônio à sua função principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dendritos', 1, 1, 'Recebem estímulos de outros neurônios ou receptores'),
(@p, 'Corpo celular (soma)', 1, 2, 'Contém o núcleo e a maioria das organelas metabólicas'),
(@p, 'Axônio', 1, 3, 'Conduz o impulso nervoso para longe do corpo celular');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A bainha de mielina funciona como isolante elétrico ao redor do axônio, aumentando significativamente a velocidade de condução do impulso nervoso (condução saltatória).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique células da glia (neuróglia) que dão suporte, nutrição e proteção aos neurônios:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Oligodendrócitos e Células de Schwann (produzem mielina)', 1, 0),
(@p, 'Astrócitos (nutrição e barreira hematoencefálica)', 1, 0),
(@p, 'Micróglia (defesa fagocitária do sistema nervoso)', 1, 0),
(@p, 'Hemácias anucleadas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a região de comunicação funcional entre a extremidade de um axônio e outro neurônio, músculo ou glândula?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sinapse', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o sentido unidirecional de propagação do impulso nervoso em um neurônio:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dendritos (captação do estímulo)', 1, 1),
(@p, 'Corpo celular (integração)', 1, 2),
(@p, 'Axônio (condução)', 1, 3),
(@p, 'Terminações axonais / Botões sinápticos (transmissão)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Os intervalos não mielinizados ao longo de um axônio, onde o impulso nervoso "salta" de um ponto a outro, chamam-se:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nódulos de Ranvier', 1, 0),
(@p, 'Discos intercalares', 0, 0),
(@p, 'Sarcômeros', 0, 0),
(@p, 'Túbulos seminíferos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na sinapse química, a comunicação entre as células é mediada por substâncias chamadas neurotransmissores liberadas na fenda sináptica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 70.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sistema Nervoso Central: Encéfalo e Medula Espinhal', 2, 70);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os dois grandes componentes anatômicos que formam o Sistema Nervoso Central (SNC)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Encéfalo e medula espinhal', 1, 0),
(@p, 'Nervos cranianos e gânglios espinhais', 0, 0),
(@p, 'Sistema simpático e parassimpático', 0, 0),
(@p, 'Coração e vasos sanguíneos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada região do encéfalo à sua função principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cérebro (telencéfalo)', 1, 1, 'Memória, linguagem, pensamento consciente e motricidade voluntária'),
(@p, 'Cerebelo', 1, 2, 'Equilíbrio corporal, postura e coordenação motora fina'),
(@p, 'Hipotálamo', 1, 3, 'Controle da temperatura corporal, fome, sede e ligação com a hipófise');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No cérebro, a substância cinzenta (corpos celulares) localiza-se externamente formando o córtex, enquanto na medula espinhal a substância cinzenta fica internamente em formato de "H".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique estruturas que protegem fisicamente o Sistema Nervoso Central:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Caixa craniana e coluna vertebral (proteção óssea)', 1, 0),
(@p, 'Meninges (dura-máter, aracnoide e pia-máter)', 1, 0),
(@p, 'Líquido cefalorraquidiano (líquor)', 1, 0),
(@p, 'Pericárdio fibroso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual estrutura formada por um feixe denso de fibras mielinizadas conecta os dois hemisférios cerebrais (esquerdo e direito)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Corpo caloso', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três meninges de fora para dentro (do osso em direção ao tecido nervoso):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dura-máter (mais externa e resistente)', 1, 1),
(@p, 'Aracnoide (intermediária)', 1, 2),
(@p, 'Pia-máter (mais interna, aderida ao encéfalo e medula)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O tronco encefálico é constituído por três estruturas fundamentais, que são:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mesencéfalo, ponte e bulbo', 1, 0),
(@p, 'Tálamo, hipotálamo e epífise', 0, 0),
(@p, 'Lobo frontal, parietal e occipital', 0, 0),
(@p, 'Retina, córnea e cristalino', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O lobo occipital do córtex cerebral é o principal centro responsável pelo processamento das informações visuais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 70.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sistema Nervoso Periférico: Somático e Autônomo', 2, 70);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença funcional entre o Sistema Nervoso Periférico Somático e o Autônomo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O somático controla ações voluntárias nos músculos esqueléticos; o autônomo regula funções involuntárias das vísceras, glândulas e músculo cardíaco.', 1, 0),
(@p, 'O somático atua apenas durante o sono; o autônomo atua apenas ao correr.', 0, 0),
(@p, 'O somático fica dentro do crânio; o autônomo fica fora do corpo.', 0, 0),
(@p, 'Não há diferença entre eles.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada divisão do Sistema Nervoso Autônomo ao seu efeito fisiológico típico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Divisão Simpática ("luta ou fuga")', 1, 1, 'Acelera batimentos cardíacos, dilata pupilas e brônquios'),
(@p, 'Divisão Parassimpática ("repouso e digestão")', 1, 2, 'Reduz batimentos cardíacos, contrai pupilas e estimula a digestão'),
(@p, 'Sistema Nervoso Somático', 1, 3, 'Contração voluntária dos músculos estriados esqueléticos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As divisões simpática e parassimpática exercem geralmente ações antagônicas sobre os mesmos órgãos internos, mantendo a homeostase.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique respostas desencadeadas pela ativação do Sistema Nervoso Simpático em uma situação de perigo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Taquicardia (aumento da frequência cardíaca)', 1, 0),
(@p, 'Midríase (dilatação da pupila) e broncodilatação', 1, 0),
(@p, 'Inibição temporária do peristaltismo digestivo e liberação de glicose pelo fígado', 1, 0),
(@p, 'Aumento intenso da salivação e redução da pressão arterial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Quantos pares de nervos cranianos e quantos pares de nervos raquidianos (espinhais) possui o ser humano, respectivamente? (Responda: 12 e 31)');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '12 e 31', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a via de resposta motora voluntária (ex.: levantar um copo):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Córtex motor cerebral gera o comando voluntário', 1, 1),
(@p, 'Impulso desce pelos tratos motores da medula espinhal', 1, 2),
(@p, 'Neurônio motor somático conduz o impulso pelo nervo periférico', 1, 3),
(@p, 'Liberação de acetilcolina na placa motora e contração muscular', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual neurotransmissor é liberado tanto pelas fibras pós-ganglionares parassimpáticas quanto pelos neurônios motores somáticos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Acetilcolina', 1, 0),
(@p, 'Insulina', 0, 0),
(@p, 'Hemoglobina', 0, 0),
(@p, 'Queratina', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todos os nervos espinhais (raquidianos) são mistos, contendo tanto fibras sensitivas (aferentes) quanto fibras motoras (eferentes).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 70.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Potencial de Ação, Neurotransmissores e Arco Reflexo', 3, 70);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que ocorre na membrana do axônio durante a fase de "despolarização" de um potencial de ação?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Abertura de canais de sódio dependentes de voltagem e entrada rápida de íons Na+ para o interior da célula, invertendo a polaridade.', 1, 0),
(@p, 'Saída maciça de proteínas negativas pelo núcleo.', 0, 0),
(@p, 'Bloqueio total de todos os canais iônicos para sempre.', 0, 0),
(@p, 'Entrada de hemácias no citoplasma do neurônio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada neurotransmissor à sua função principal no sistema nervoso:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dopamina', 1, 1, 'Circuito de recompensa, motivação e controle motor fino'),
(@p, 'Serotonina', 1, 2, 'Regulação do humor, sono, apetite e bem-estar'),
(@p, 'GABA (ácido gama-aminobutírico)', 1, 3, 'Principal neurotransmissor inibitório do SNC');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O potencial de ação obedece à "lei do tudo ou nada": uma vez atingido o limiar de excitação, o impulso ocorre com amplitude máxima constante.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique componentes de um arco reflexo medular simples (como retirar a mão de uma superfície quente):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Receptor sensorial na pele e neurônio sensitivo (aferente)', 1, 0),
(@p, 'Interneurônio (neurônio associativo) na substância cinzenta da medula', 1, 0),
(@p, 'Neurônio motor (eferente) e órgão efetor (músculo esquelético)', 1, 0),
(@p, 'Decisão consciente prévia do córtex pré-frontal antes do movimento', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual íon entra nos botões terminais pré-sinápticos quando o potencial de ação chega, desencadeando a exocitose das vesículas com neurotransmissores?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Cálcio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os eventos elétricos de um potencial de ação neuronal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Potencial de repouso polarizado (~ -70 mV mantido pela bomba Na+/K+)', 1, 1),
(@p, 'Estímulo atinge o limiar e abre canais de Na+ (Despolarização até +30 mV)', 1, 2),
(@p, 'Fechamento dos canais de Na+ e abertura dos canais de K+ (Repolarização)', 1, 3),
(@p, 'Breve hiperpolarização e retorno ao potencial de repouso', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A doença de Parkinson está diretamente relacionada à degeneração progressiva de neurônios produtores de qual neurotransmissor na substância negra do encéfalo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dopamina', 1, 0),
(@p, 'Histamina', 0, 0),
(@p, 'Glucagon', 0, 0),
(@p, 'Tiroxina', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No arco reflexo patelar (monossináptico), a resposta motora ocorre rapidamente a nível medular antes mesmo que o cérebro tome consciência do estímulo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);