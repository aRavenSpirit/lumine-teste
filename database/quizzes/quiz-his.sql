USE luminebd;

-- =========================================================================
-- MATÉRIA 3: HISTÓRIA (CONTEÚDOS 23 A 32)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 23: Pré-História
-- -------------------------------------------------------------------------

-- Quiz 23.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Hominização, Paleolítico e Domínio do Fogo', 1, 23);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era o modo de vida predominante dos grupos humanos durante o período Paleolítico (Idade da Pedra Lascada)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eram nômades e coletores-caçadores, deslocando-se constantemente em busca de alimentos e abrigos naturais.', 1, 0),
(@p, 'Viviam em grandes metrópoles muradas com comércio marítimo internacional.', 0, 0),
(@p, 'Praticavam a agricultura mecanizada e a metalurgia do ferro.', 0, 0),
(@p, 'Utilizavam a escrita cuneiforme para registrar impostos estatais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da Pré-História à sua definição histórica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Nomadismo', 1, 1, 'Deslocamento constante de grupos humanos sem habitação fixa conforme a oferta de recursos'),
(@p, 'Arte Rupestre', 1, 2, 'Pinturas e gravuras feitas em paredes de cavernas representando cenas de caça e rituais'),
(@p, 'Bipedalismo', 1, 3, 'Capacidade de caminhar ereto sobre dois pés, liberando as mãos para fabricar ferramentas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A conquista e o controle do fogo durante o Paleolítico transformaram a evolução humana ao permitir o cozimento de alimentos, o aquecimento em regiões frias, a proteção contra predadores e maior socialização noturna.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características típicas das sociedades humanas do período Paleolítico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Economia coletora baseada na caça, pesca e coleta de frutos e raízes', 1, 0),
(@p, 'Fabricação de instrumentos rudimentares lascando pedras, ossos e madeira', 1, 0),
(@p, 'Divisão sexual e etária simples do trabalho dentro dos bandos', 1, 0),
(@p, 'Domesticação intensiva de rebanhos bovinos e irrigação de lavouras', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual continente é considerado pela ciência como o berço da humanidade, onde surgiram os primeiros hominídeos e o Homo sapiens?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'África', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as grandes divisões tradicionais da Pré-História:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paleolítico (Idade da Pedra Lascada)', 1, 1),
(@p, 'Mesolítico (período intermediário de transição climática)', 1, 2),
(@p, 'Neolítico (Idade da Pedra Polida e Revolução Agrícola)', 1, 3),
(@p, 'Idade dos Metais (cobre, bronze e ferro)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os historiadores contemporâneos criticam a expressão "Pré-História" para designar o período anterior à invenção da escrita?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque sugere erroneamente que os povos ágrafos (sem escrita) não tinham história, cultura ou organização social complexa.', 1, 0),
(@p, 'Porque a escrita foi inventada antes mesmo do surgimento dos primeiros seres humanos.', 0, 0),
(@p, 'Porque nenhum vestígio material desse período sobreviveu até hoje.', 0, 0),
(@p, 'Porque a história humana começou apenas após a Revolução Industrial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As fontes utilizadas para estudar os povos ágrafos da Pré-História são exclusivamente documentos escritos em papel e pergaminho.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

-- Quiz 23.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Revolução Neolítica, Sedentarização e Primeiras Aldeias', 2, 23);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a transformação central conhecida como "Revolução Neolítica" ocorrida há cerca de 10 mil anos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O desenvolvimento da agricultura e da domesticação de animais, permitindo a sedentarização dos grupos humanos.', 1, 0),
(@p, 'O abandono total da agricultura em favor da caça nômade exclusiva.', 0, 0),
(@p, 'A invenção da máquina a vapor e das primeiras ferrovias.', 0, 0),
(@p, 'A descoberta da América pelas caravelas europeias.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada inovação técnica do período Neolítico ao seu impacto social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cerâmica cozida', 1, 1, 'Permitiu armazenar grãos, água e alimentos excedentes por longos períodos'),
(@p, 'Pedra polida', 1, 2, 'Produziu machados, enxadas e foices mais resistentes e precisos para o cultivo'),
(@p, 'Tecelagem de fibras', 1, 3, 'Substituiu gradualmente as peles de animais por tecidos de lã, linho e algodão');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Com o aumento da oferta de alimentos propiciado pela agricultura no Neolítico, ocorreu um expressivo crescimento demográfico e o surgimento das primeiras aldeias permanentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique regiões onde a agricultura surgiu de forma independente durante a Revolução Neolítica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crescente Fértil no Oriente Médio (cultivo de trigo e cevada)', 1, 0),
(@p, 'Vales fluviais da China (cultivo de arroz e painço)', 1, 0),
(@p, 'Mesoamérica e Região Andina na América (cultivo de milho, feijão e batata)', 1, 0),
(@p, 'Interior congelado da Antártida (cultivo de cana-de-açúcar)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o processo histórico pelo qual grupos humanos abandonaram o nomadismo e fixaram residência permanente em aldeias agrícolas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sedentarização', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a cadeia de consequências sociais desencadeada pela Revolução Agrícola do Neolítico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Domesticação de plantas e animais gerando produção regular de alimentos', 1, 1),
(@p, 'Fixação permanente das comunidades próximas a rios e terras férteis', 1, 2),
(@p, 'Produção de excedentes agrícolas e crescimento acelerado da população', 1, 3),
(@p, 'Especialização do trabalho (artesãos, sacerdotes, guerreiros) e estratificação social', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são monumentos megalíticos como Stonehenge, construídos no final do Neolítico europeu?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Grandes construções feitas com blocos gigantescos de pedra associadas a rituais religiosos e observações astronômicas.', 1, 0),
(@p, 'Pequenas moedas de ouro cunhadas pelo Império Romano.', 0, 0),
(@p, 'Armas de fogo utilizadas nas guerras napoleônicas.', 0, 0),
(@p, 'Navios a vapor utilizados para atravessar o Atlântico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A produção de excedentes agrícolas no Neolítico possibilitou que parte da população deixasse de trabalhar diretamente na lavoura para se dedicar ao artesanato, ao comércio e à administração.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 23.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Idade dos Metais e o Surgimento das Primeiras Cidades e Estados', 2, 23);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal consequência do domínio da metalurgia (cobre, bronze e ferro) no final da Pré-História?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A fabricação de ferramentas agrícolas mais eficientes e armas muito superiores, impulsionando o comércio, as guerras de conquista e o surgimento dos primeiros Estados.', 1, 0),
(@p, 'O fim definitivo de todas as guerras e conflitos entre aldeias.', 0, 0),
(@p, 'O retorno imediato de toda a humanidade para as cavernas.', 0, 0),
(@p, 'A substituição da agricultura pela coleta exclusiva de conchas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada metal da Idade dos Metais às suas características históricas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cobre', 1, 1, 'Primeiro metal fundido pelo ser humano, porém relativamente maleável'),
(@p, 'Bronze', 1, 2, 'Liga metálica de cobre e estanho mais dura, base das primeiras civilizações urbanas'),
(@p, 'Ferro', 1, 3, 'Metal mais abundante e extremamente resistente, revolucionando armas e arados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A invenção da escrita (como a cuneiforme na Mesopotâmia e os hieróglifos no Egito) nasceu principalmente da necessidade prática de registrar impostos, estoques agrícolas e transações comerciais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique elementos que caracterizaram a chamada "Revolução Urbana" na passagem para a Antiguidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Centralização do poder político, militar e religioso nas mãos de reis ou sacerdotes', 1, 0),
(@p, 'Cobrança de tributos sobre os camponeses para financiar obras públicas e exércitos', 1, 0),
(@p, 'Construção de muralhas, templos monumentais, celeiros e canais de irrigação', 1, 0),
(@p, 'Igualdade social absoluta sem propriedade privada nem hierarquias', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual invenção fundamental surgida na Mesopotâmia durante a Idade dos Metais revolucionou tanto o transporte terrestre em carroças quanto a produção de cerâmica no torno?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Roda', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência de metalurgia utilizada pelas sociedades antigas conforme o domínio técnico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metalurgia do Cobre', 1, 1),
(@p, 'Metalurgia do Bronze (cobre + estanho)', 1, 2),
(@p, 'Metalurgia do Ferro (altas temperaturas de fundição)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a invenção da escrita por volta de 3.500 a.C. foi tradicionalmente escolhida pelos historiadores europeus do século XIX como o marco divisor entre a Pré-História e a História?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a historiografia positivista da época valorizava quase exclusivamente os documentos escritos oficiais como fonte histórica.', 1, 0),
(@p, 'Porque antes da escrita não existia linguagem falada nem pensamento humano.', 0, 0),
(@p, 'Porque todos os povos do planeta adotaram o mesmo alfabeto no mesmo dia.', 0, 0),
(@p, 'Porque os arqueólogos nunca encontraram ossos ou ferramentas antigas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Çatalhüyük (na atual Turquia) e Jericó (na Palestina) estão entre os mais antigos assentamentos proto-urbanos conhecidos pela arqueologia mundial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 23.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Pré-História Americana e Povos Originários do Brasil', 3, 23);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a teoria mais aceita pela arqueologia sobre a principal rota de chegada dos primeiros grupos humanos ao continente americano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A travessia da Beríngia (Estreito de Bering), ponte terrestre formada entre a Ásia e o Alasca durante a última glaciação.', 1, 0),
(@p, 'O surgimento autóctone independente dos humanos diretamente nos pampas argentinos.', 0, 0),
(@p, 'A viagem em navios a vapor partindo de Londres no século XVIII.', 0, 0),
(@p, 'O deslocamento a pé através de uma ponte de gelo entre a África e o Nordeste brasileiro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sítio ou cultura pré-colonial brasileira às suas características arqueológicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Povos dos Sambaquis', 1, 1, 'Habitaram o litoral acumulando montes de conchas, espinhas de peixe e sepultamentos'),
(@p, 'Lagoa Santa (MG)', 1, 2, 'Região onde foi encontrado o crânio de Luzia, um dos fósseis humanos mais antigos das Américas'),
(@p, 'Cultura Marajoara (PA)', 1, 3, 'Sociedade complexa da foz do Amazonas célebre pela sofisticada cerâmica decorada');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As pesquisas arqueológicas da Serra da Capivara (no Piauí) trouxeram evidências de presença humana muito antiga na América do Sul, ampliando o debate sobre múltiplas rotas e datas de povoamento do continente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características da "Terra Preta de Índio" encontrada em vários pontos da Amazônia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solo antropogênico altamente fértil produzido pelo manejo indígena pré-colonial de resíduos orgânicos, carvão e cerâmica', 1, 0),
(@p, 'Comprova que grandes populações sedentárias habitaram a Amazônia antes da chegada dos europeus', 1, 0),
(@p, 'Contrasta com os solos naturalmente ácidos e pobres da maior parte da região amazônica', 1, 0),
(@p, 'É formada exclusivamente por cinzas de vulcões ativos no centro do Amazonas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebem os montes artificiais compostos por conchas de moluscos, ossos e artefatos acumulados por povos pré-históricos ao longo do litoral brasileiro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sambaquis', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o modelo clássico de povoamento da América via Estreito de Bering:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Intenso resfriamento global rebaixa o nível dos oceanos durante a Era Glacial', 1, 1),
(@p, 'Emersão da faixa terrestre da Beríngia ligando a Sibéria ao Alasca', 1, 2),
(@p, 'Migração de bandos de caçadores-coletores seguindo manadas da megafauna', 1, 3),
(@p, 'Dispersão gradual pelos corredores livres de gelo até a América Central e América do Sul', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que foi a chamada "Megafauna" que conviveu com os primeiros habitantes da América do Sul na Pré-História?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Animais gigantescos como preguiças-gigantes, gliptodontes (tatus gigantes), mastodontes e tigres-dentes-de-sabre, extintos há cerca de 10 mil anos.', 1, 0),
(@p, 'Dinossauros carnívoros que coexistiram com os portugueses no século XVI.', 0, 0),
(@p, 'Rebanhos de cavalos e bois trazidos pelos espanhóis.', 0, 0),
(@p, 'Baleias voadoras que habitavam os Andes.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Parque Nacional Serra da Capivara, no Piauí, abriga uma das maiores concentrações de sítios arqueológicos com pinturas rupestres do mundo, sendo Patrimônio Cultural da Humanidade pela UNESCO.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 24: Idade Antiga (Antiguidade Oriental e Clássica)
-- -------------------------------------------------------------------------

-- Quiz 24.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Civilizações Hidráulicas: Mesopotâmia e Egito Antigo', 1, 24);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Mesopotâmia e o Egito Antigo são classificados pelos historiadores como "civilizações hidráulicas" ou de regadio?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque desenvolveram agricultura intensiva e Estados centralizados graças ao controle das cheias e canais de irrigação de grandes rios (Tigre, Eufrates e Nilo).', 1, 0),
(@p, 'Porque construíram cidades submersas no fundo do Oceano Atlântico.', 0, 0),
(@p, 'Porque nunca chovia nem existiam rios em seus territórios.', 0, 0),
(@p, 'Porque sobreviviam exclusivamente da pesca em alto-mar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada civilização da Antiguidade Oriental às suas contribuições culturais e políticas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sumérios (Mesopotâmia)', 1, 1, 'Invenção da escrita cuneiforme, zigurates e primeiras cidades-Estado (Ur, Uruk)'),
(@p, 'Babilônios (Hamurabi)', 1, 2, 'Elaboração de um dos primeiros códigos de leis escritas baseado na Lei de Talião'),
(@p, 'Egípcios Antigos', 1, 3, 'Monarquia teocrática comandada pelo Faraó, mumificação, hieróglifos e pirâmides');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Egito Antigo, o Faraó era venerado como um deus vivo (teocracia), exercendo simultaneamente o poder político, militar, jurídico e religioso.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique povos que habitaram e disputaram a região da Mesopotâmia na Antiguidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sumérios e Acádios', 1, 0),
(@p, 'Amoritas (Primeiro Império Babilônico) e Caldeus (Segundo Império Babilônico)', 1, 0),
(@p, 'Assírios (célebres pelo poderoso exército e pela Biblioteca de Nínive)', 1, 0),
(@p, 'Astecas e Incas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual expressão famosa resume o princípio jurídico do Código de Hamurabi segundo o qual a punição deve ser rigorosamente proporcional ao delito cometido?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Olho por olho, dente por dente', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três grandes períodos políticos do Egito Antigo unificado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Antigo Império (era das grandes pirâmides de Gizé)', 1, 1),
(@p, 'Médio Império (expansão comercial e invasão dos hicsos)', 1, 2),
(@p, 'Novo Império (apogeu militar, conquistas territoriais e reinados de Tutancâmon e Ramsés II)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era a finalidade principal da prática da mumificação no Egito Antigo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Preservar o corpo físico intacto para que a alma (Ka) pudesse reencontrá-lo e alcançar a vida eterna após o julgamento de Osíris.', 1, 0),
(@p, 'Transformar os faraós em estátuas de pedra para decorar praças públicas.', 0, 0),
(@p, 'Evitar que os escribas aprendessem a ler os papiros.', 0, 0),
(@p, 'Preparar soldados para lutarem contra os persas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Pedra de Roseta foi fundamental no século XIX para que Jean-François Champollion decifrasse os hieróglifos egípcios, pois continha o mesmo decreto gravado em hieróglifos, demótico e grego antigo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 24.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fenícios, Hebreus e Persas na Antiguidade Oriental', 2, 24);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a grande contribuição cultural dos Fenícios que facilitou enormemente o comércio e a comunicação escrita no Mediterrâneo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A criação do alfabeto fonético de 22 consoantes, no qual cada sinal representava um som (base dos alfabetos grego e latino).', 1, 0),
(@p, 'A construção da Grande Muralha da China.', 0, 0),
(@p, 'A invenção da democracia direta em Atenas.', 0, 0),
(@p, 'A criação das leis das Doze Tábuas em Roma.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada povo da Antiguidade Oriental à sua característica mais marcante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fenícios', 1, 1, 'Talassocracia comercial marítima com cidades-Estado (Tiro, Sidon, Biblos) e colônias como Cartago'),
(@p, 'Hebreus', 1, 2, 'Primeiro povo da Antiguidade a consolidar o monoteísmo ético (Judaísmo)'),
(@p, 'Persas (Aquemênidas)', 1, 3, 'Vasto império organizado em satrapias, estradas reais, correios e tolerância religiosa');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os governadores das províncias do Império Persa (chamadas satrapias) eram fiscalizados por inspetores reais conhecidos como "os olhos e ouvidos do rei".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique episódios centrais da história antiga do povo Hebreu:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Êxodo do Egito liderado por Moisés e entrega dos Dez Mandamentos', 1, 0),
(@p, 'Unificação da monarquia sob Saul, Davi e Salomão e posterior Cisma (Reinos de Israel e Judá)', 1, 0),
(@p, 'Cativeiro da Babilônia imposto por Nabucodonosor II e Diáspora sob o Império Romano', 1, 0),
(@p, 'Conquista militar de todo o continente americano no século V a.C.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual religião dualista surgiu na antiga Pérsia pregando a luta cósmica entre o bem (Ahura Mazda) e o mal (Arimã), influenciando conceitos posteriores de céu, inferno e juízo final?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Zoroastrismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os seguintes acontecimentos da história dos Hebreus:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Migração dos patriarcas de Ur para Canaã e ida para o Egito', 1, 1),
(@p, 'Êxodo do Egito e retorno à Terra Prometida', 1, 2),
(@p, 'Reinado de Salomão e construção do Primeiro Templo de Jerusalém', 1, 3),
(@p, 'Cativeiro da Babilônia e destruição do Segundo Templo pelos romanos (Diáspora)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os Fenícios voltaram-se prioritariamente para a navegação e o comércio marítimo no Mar Mediterrâneo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque habitavam uma estreita faixa litorânea montanhosa (atual Líbano) pouco propícia à agricultura extensiva, mas rica em madeira de cedro.', 1, 0),
(@p, 'Porque não sabiam construir casas em terra firme.', 0, 0),
(@p, 'Porque o Mar Mediterrâneo era completamente seco na Antiguidade.', 0, 0),
(@p, 'Porque foram proibidos de comercializar por terra pelo Império Inca.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Dario I unificou o sistema monetário do Império Persa criando uma moeda de ouro padrão chamada Dárico, facilitando o comércio em todo o Oriente Próximo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 24.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Grécia Antiga: Pólis, Democracia Ateniense, Esparta e Helenismo', 2, 24);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se organizava politicamente a Grécia Antiga antes das conquistas de Alexandre, o Grande?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Em dezenas de cidades-Estado independentes (Pólis), como Atenas, Esparta, Tebas e Corinto, unidas apenas pela língua, religião e jogos olímpicos.', 1, 0),
(@p, 'Como um único império centralizado governado por um Faraó absoluto.', 0, 0),
(@p, 'Como uma federação socialista sem propriedades nem escravos.', 0, 0),
(@p, 'Submetida desde o início ao governo do Senado Romano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada aspecto político-social às cidades-Estado de Atenas ou Esparta:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Atenas Clássica (Péricles)', 1, 1, 'Democracia direta, comércio marítimo, filosofia, teatro e valorização das artes'),
(@p, 'Esparta', 1, 2, 'Oligarquia militarista agrária, educação rigorosa (agogê) e economia baseada nos hilotas'),
(@p, 'Liga de Delos', 1, 3, 'Aliança militar liderada por Atenas contra os persas que financiou o apogeu ateniense');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A democracia ateniense antiga era excludente pelos padrões modernos, pois apenas homens livres adultos filhos de pai e mãe atenienses eram cidadãos (excluindo mulheres, escravos e estrangeiros metecos).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique grandes legados culturais da Grécia Antiga para a civilização ocidental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O nascimento da Filosofia racional (Sócrates, Platão, Aristóteles) e da Historiografia (Heródoto, Tucídides)', 1, 0),
(@p, 'O teatro clássico (tragédia e comédia) e os Jogos Olímpicos pan-helênicos', 1, 0),
(@p, 'A noção de cidadania, política e debate público na Ágora', 1, 0),
(@p, 'O Código Civil Napoleônico e a imprensa de tipos móveis', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebeu a cultura resultante da fusão entre os elementos culturais gregos e orientais promovida pelas conquistas de Alexandre, o Grande?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Cultura helenística', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os períodos da história da Grécia Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Período Pré-Homérico e Homérico (civilizações creto-micênica e formação dos genos)', 1, 1),
(@p, 'Período Arcaico (formação das Pólis e segunda diáspora grega)', 1, 2),
(@p, 'Período Clássico (Guerras Médicas, Século de Péricles e Guerra do Peloponeso)', 1, 3),
(@p, 'Período Helenístico (expansão do Império Macedônico de Alexandre, o Grande)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o resultado da Guerra do Peloponeso (431-404 a.C.) entre Atenas e Esparta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A vitória de Esparta e o enfraquecimento generalizado das cidades-Estado gregas, facilitando a posterior conquista pela Macedônia.', 1, 0),
(@p, 'A conquista da Pérsia por Atenas e o fim da escravidão na Grécia.', 0, 0),
(@p, 'A unificação pacífica de toda a Europa sob comando de Esparta.', 0, 0),
(@p, 'A destruição total do Império Romano pelos atenienses.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Guerras Médicas foram os conflitos travados no século V a.C. entre as cidades-Estado gregas e o poderoso Império Persa, encerradas com a vitória grega.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 24.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Roma Antiga: República, Expansão Imperial e Crise do Império', 3, 24);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a consequência socioeconômica mais profunda das conquistas territoriais romanas (como as Guerras Púnicas contra Cartago) durante a República?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O afluxo massivo de escravos e terras concentrou os latifúndios nas mãos dos patrícios e arruinou os pequenos camponeses plebeus, provocando êxodo rural e crises sociais.', 1, 0),
(@p, 'O fim imediato da escravidão e a distribuição igualitária de terras a todos os habitantes.', 0, 0),
(@p, 'O empobrecimento total dos senadores romanos.', 0, 0),
(@p, 'O abandono do Mar Mediterrâneo pelo exército romano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ou política da Roma Antiga ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Política do Pão e Circo', 1, 1, 'Distribuição gratuita de trigo e espetáculos de gladiadores para conter revoltas da plebe urbana'),
(@p, 'Lei das Doze Tábuas', 1, 2, 'Primeira compilação escrita das leis romanas conquistada pelas lutas dos plebeus'),
(@p, 'Pax Romana', 1, 3, 'Longo período de relativa estabilidade interna e apogeu econômico iniciado no governo de Augusto');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As reformas agrárias propostas pelos irmãos Tibério e Caio Graco durante a República Romana visavam limitar o tamanho dos latifúndios e distribuir terras aos plebeus pobres, mas foram barradas violentamente pela aristocracia senatorial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam a crise do escravismo e a queda do Império Romano do Ocidente no século V d.C.:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fim das guerras de conquista, estancando o fornecimento de novos escravos e encarecendo a produção', 1, 0),
(@p, 'Ruralização econômica e surgimento do sistema de colonato (precursor da servidão medieval)', 1, 0),
(@p, 'Crise fiscal, inflação, disputas militares internas e migrações/invasões dos povos germânicos', 1, 0),
(@p, 'Abolição voluntária do Império pelos imperadores para instaurar o comunismo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual edito promulgado pelo imperador Constantino em 313 d.C. concedeu liberdade de culto aos cristãos e encerrou séculos de perseguições religiosas no Império Romano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Edito de Milão', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as três grandes fases políticas da história de Roma Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Monarquia Romana (753 a.C. a 509 a.C. — reis latinos e etruscos)', 1, 1),
(@p, 'República Romana (509 a.C. a 27 a.C. — domínio do Senado, lutas patrícios-plebeus e Triunviratos)', 1, 2),
(@p, 'Império Romano (27 a.C. a 476 d.C. — Alto Império e Baixo Império)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual medida administrativa o imperador Teodósio adotou em 395 d.C. diante da imensa extensão e crise do Império Romano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dividiu definitivamente o território em Império Romano do Ocidente (capital Roma) e Império Romano do Oriente (capital Constantinopla).', 1, 0),
(@p, 'Transferiu a capital do Império para a cidade de Londres.', 0, 0),
(@p, 'Devolveu todas as províncias conquistadas aos cartagineses.', 0, 0),
(@p, 'Proibiu o uso da língua latina em todo o território.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Direito Romano, a língua latina (matriz das línguas neolatinas) e o cristianismo institucionalizado constituem legados duradouros de Roma para o mundo ocidental.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 25: Idade Média
-- -------------------------------------------------------------------------

-- Quiz 25.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Alta Idade Média: Queda de Roma, Reinos Germânicos e Império Carolíngio', 1, 25);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento histórico ocorrido no ano de 476 d.C. é utilizado tradicionalmente como marco inicial da Idade Média na Europa Ocidental?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A deposição do último imperador romano do Ocidente, Rômulo Augústulo, pelo chefe germânico Odoacro.', 1, 0),
(@p, 'A tomada de Constantinopla pelos turcos otomanos.', 0, 0),
(@p, 'O início da Revolução Francesa com a Queda da Bastilha.', 0, 0),
(@p, 'A chegada de Cristóvão Colombo ao continente americano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada instituição ou reino da Alta Idade Média ao seu papel histórico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Reino dos Francos (Clóvis e Carlos Magno)', 1, 1, 'Mais poderoso reino germânico ocidental, que se uniu à Igreja Católica e originou o Império Carolíngio'),
(@p, 'Igreja Católica Apostólica Romana', 1, 2, 'Única instituição centralizada e letrada que sobreviveu à fragmentação política romana'),
(@p, 'Comitatus e Beneficium', 1, 3, 'Costumes germânicos e romanos que deram origem às relações de suserania e vassalagem');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante a Alta Idade Média, ocorreu uma profunda ruralização da Europa Ocidental, com o esvaziamento das cidades, retração do comércio monetário e busca por proteção nos campos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique realizações do reinado de Carlos Magno no Império Carolíngio (séculos VIII e IX):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Coroação como Imperador do Ocidente pelo Papa Leão III no ano 800', 1, 0),
(@p, 'Renascimento Carolíngio com incentivo às escolas palatinas e preservação de manuscritos antigos', 1, 0),
(@p, 'Divisão do império em condados, marcas e ducados fiscalizados pelos missi dominici', 1, 0),
(@p, 'Abolição completa do cristianismo na França e na Alemanha', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tratado assinado em 843 dividiu o Império Carolíngio entre os três netos de Carlos Magno, acelerando a descentralização política e a consolidação do feudalismo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tratado de Verdun', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de transição do mundo antigo romano para o feudalismo europeu:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crise do escravismo e ruralização do Baixo Império Romano (colonato)', 1, 1),
(@p, 'Queda de Roma (476) e fragmentação em diversos reinos germânicos', 1, 2),
(@p, 'Expansão islâmica e incursões vikings aumentando a insegurança nas rotas comerciais', 1, 3),
(@p, 'Fragmentação do Império Carolíngio e consolidação dos feudos autossuficientes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a importância da Batalha de Poitiers (732), liderada pelo franco Carlos Martel?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Deteve o avanço das tropas muçulmanas vindas da Península Ibérica em direção ao interior da Europa Ocidental.', 1, 0),
(@p, 'Marcou o início da colonização portuguesa no Brasil.', 0, 0),
(@p, 'Destruiu completamente o Império Bizantino.', 0, 0),
(@p, 'Iniciou a Primeira Guerra Mundial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão preconceituosa "Idade das Trevas", criada pelos humanistas do Renascimento para criticar o período medieval, é hoje rejeitada pelos historiadores por ignorar a riqueza cultural e técnica da Idade Média.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 25.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Feudalismo Europeu: Sociedade Estamental, Economia e Igreja', 2, 25);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se caracterizava a estrutura social do Feudalismo clássico na Europa Ocidental?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sociedade estamental e hierarquizada dividida em três ordens quase sem mobilidade social: clero (oratores), nobreza (bellatores) e servos/camponeses (laboratores).', 1, 0),
(@p, 'Sociedade industrial baseada no trabalho assalariado urbano e livre mobilidade.', 0, 0),
(@p, 'Democracia igualitária onde servos e senhores votavam nas mesmas assembleias.', 0, 0),
(@p, 'Sociedade composta exclusivamente por comerciantes marítimos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada obrigação feudal paga pelos servos ao senhor feudal à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Corveia', 1, 1, 'Trabalho gratuito obrigatório do servo alguns dias por semana nas terras exclusivas do senhor (manso senhorial)'),
(@p, 'Talha', 1, 2, 'Entrega de parte da produção agrícola cultivada pelo servo em seu próprio lote (manso servil)'),
(@p, 'Banalidades', 1, 3, 'Taxas pagas pelo uso obrigatório de instalações do feudo como moinho, forno e lagar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferentemente do escravo na Antiguidade (que era uma propriedade vendida livremente), o servo medieval estava preso à terra (gleba) e não podia ser vendido separadamente dela.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características das relações de Suserania e Vassalagem entre membros da nobreza feudal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eram contratos pessoais de fidelidade recíproca celebrados exclusivamente entre nobres', 1, 0),
(@p, 'O suserano concedia um benefício (geralmente um feudo de terra) e proteção ao vassalo', 1, 0),
(@p, 'O vassalo jurava fidelidade, conselho e auxílio militar ao suserano', 1, 0),
(@p, 'Os servos camponeses participavam como suseranos das terras dos reis', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebia a parte das terras de um feudo reservada ao uso comunitário dos pastos, bosques e florestas para coleta de lenha e criação de animais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Manso comunal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da cerimônia feudal que selava o pacto entre suserano e vassalo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Homenagem (o vassalo ajoelha-se e coloca suas mãos entre as do suserano)', 1, 1),
(@p, 'Juramento de Fidelidade sobre a Bíblia ou relíquias sagradas', 1, 2),
(@p, 'Investidura (o suserano entrega um símbolo material da terra, como um punhado de terra ou ramo)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era o papel ideológico exercido pela Igreja Católica na sociedade feudal medieval?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Justificava a ordem estamental como vontade divina, detinha o monopólio da cultura escrita e era a maior proprietária de terras da Europa.', 1, 0),
(@p, 'Defendia a abolição de todos os reis e senhores feudais.', 0, 0),
(@p, 'Incentivava o lucro bancário e a cobrança de juros elevados desde o século VIII.', 0, 0),
(@p, 'Não possuía nenhuma influência sobre o cotidiano dos camponeses.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A economia feudal clássica era predominantemente agrária, autossuficiente (produzia quase tudo o que consumia) e com reduzida circulação de moedas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 25.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Império Bizantino, Expansão Islâmica e as Cruzadas', 2, 25);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal realização jurídica do imperador bizantino Justiniano no século VI d.C.?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A compilação e atualização das leis romanas no Corpus Juris Civilis (Código de Justiniano), base do direito civil moderno.', 1, 0),
(@p, 'A promulgação da Declaração dos Direitos do Homem e do Cidadão.', 0, 0),
(@p, 'A assinatura do Tratado de Tordesilhas com a Espanha.', 0, 0),
(@p, 'A criação da Constituição dos Estados Unidos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ligado ao Islã, Bizâncio ou Cruzadas à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cesaropapismo Bizantino', 1, 1, 'Subordinação da Igreja Oriental ao poder político do imperador de Constantinopla'),
(@p, 'Hégira (622 d.C.)', 1, 2, 'Fuga de Maomé de Meca para Medina, marcando o início do calendário islâmico'),
(@p, 'Cisma do Oriente (1054)', 1, 3, 'Ruptura definitiva entre a Igreja Católica Romana e a Igreja Cristã Ortodoxa Grega');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante a Idade Média, a civilização islâmica preservou e traduziu obras da filosofia e ciência grega antiga e realizou grandes avanços na matemática (álgebra e algarismos indo-arábicos), medicina e astronomia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique motivações reais por trás das Cruzadas (expedições militares cristãs rumo ao Oriente entre os séculos XI e XIII):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Desejo religioso de reconquistar Jerusalém (Terra Santa) do domínio islâmico', 1, 0),
(@p, 'Interesse comercial das cidades italianas (Veneza e Gênova) em reabrir rotas no Mediterrâneo', 1, 0),
(@p, 'Busca de terras e riquezas por filhos segundos da nobreza feudal europeia sem herança', 1, 0),
(@p, 'Intenção de construir usinas nucleares no deserto da Arábia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual livro sagrado do Islamismo reúne as revelações divinas transmitidas ao profeta Maomé segundo a crença muçulmana?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Alcorão', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a expansão e o legado do Império Bizantino:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fundação de Constantinopla sobre a antiga colônia grega de Bizâncio por Constantino', 1, 1),
(@p, 'Apogeu territorial, jurídico e arquitetônico (Basílica de Santa Sofia) sob Justiniano', 1, 2),
(@p, 'Cisma do Oriente separando o cristianismo católico e o ortodoxo em 1054', 1, 3),
(@p, 'Queda de Constantinopla diante dos turcos otomanos em 1453', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal consequência econômica das Cruzadas para a Europa Ocidental, mesmo tendo fracassado militarmente em manter Jerusalém?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A reabertura do Mar Mediterrâneo ao comércio europeu de especiarias orientais, impulsionando o renascimento comercial e urbano.', 1, 0),
(@p, 'O fechamento permanente de todos os portos da Itália.', 0, 0),
(@p, 'O fortalecimento absoluto do isolamento dos feudos sem moeda.', 0, 0),
(@p, 'A descoberta da Austrália pelos cruzados franceses.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Constantinopla ocupava uma posição geográfica estratégica privilegiada no Estreito de Bósforo, controlando a passagem comercial entre a Europa e a Ásia e entre o Mar Negro e o Mediterrâneo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 25.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Baixa Idade Média: Renascimento Comercial e Urbano e Crise do Século XIV', 3, 25);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais inovações técnicas agrícolas a partir do século XI permitiram o aumento da produção de alimentos e o crescimento populacional na Baixa Idade Média?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O sistema de rotação trienal de culturas, a charrua de ferro, a peitoral de tração animal e os moinhos hidráulicos e eólicos.', 1, 0),
(@p, 'Tratores movidos a diesel e fertilizantes químicos sintéticos.', 0, 0),
(@p, 'A queima total de todas as sementes antes do plantio.', 0, 0),
(@p, 'A substituição das lavouras pela mineração de urânio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada instituição urbana da Baixa Idade Média à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Burgos e Burguesia', 1, 1, 'Cidades fortificadas renascidas e a nova classe social ligada ao comércio e finanças'),
(@p, 'Corporações de Ofício (Guildas)', 1, 2, 'Associações de artesãos que regulavam preços, qualidade, salários e monopólio urbano'),
(@p, 'Cartas de Franquia', 1, 3, 'Documentos comprados ou conquistados que garantiam autonomia administrativa às cidades');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As primeiras universidades europeias (como Bolonha, Paris e Oxford) surgiram na Baixa Idade Média a partir de corporações de mestres e estudantes, impulsionadas pela filosofia escolástica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três grandes flagelos que compuseram a chamada "Crise do Século XIV" e abalaram o sistema feudal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Grande Fome (esgotamento dos solos e mudanças climáticas reduzindo as colheitas)', 1, 0),
(@p, 'A Peste Negra (epidemia bubônica trazida pelas rotas comerciais que dizimou cerca de um terço da população europeia)', 1, 0),
(@p, 'A Guerra dos Cem Anos entre Inglaterra e França e as revoltas camponesas (Jacqueries)', 1, 0),
(@p, 'A invasão do Império Inca sobre Paris e Londres', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como ficaram conhecidas as violentas revoltas camponesas ocorridas na França e na Inglaterra no século XIV contra o aumento da exploração feudal após a Peste Negra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Jacqueries', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o encadeamento da Crise do Feudalismo na Baixa Idade Média:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Renascimento comercial e urbano gerando o crescimento da burguesia e da economia monetária', 1, 1),
(@p, 'Grande Fome e Peste Negra provocando drástica escassez de mão de obra servil', 1, 2),
(@p, 'Reação senhorial aumentando impostos e eclosão de revoltas camponesas', 1, 3),
(@p, 'Aliança entre reis e burguesia formando as Monarquias Nacionais Centralizadas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual mudança na arquitetura religiosa medieval ocorreu na Baixa Idade Média com o crescimento das cidades, substituindo as igrejas baixas e escuras por catedrais altas e luminosas com vitrais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A transição do estilo Românico para o estilo Gótico (com arcos ogivais e arcobotantes).', 1, 0),
(@p, 'A passagem do estilo Barroco para o Modernismo de Brasília.', 0, 0),
(@p, 'A proibição de construir qualquer igreja nas cidades.', 0, 0),
(@p, 'O retorno às pirâmides escalonadas do Egito Antigo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Guerra dos Cem Anos (1337-1453) contribuiu para enfraquecer a nobreza feudal guerreira e consolidar os sentimentos nacionais e exércitos permanentes na França e na Inglaterra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 26: Idade Moderna
-- -------------------------------------------------------------------------

-- Quiz 26.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Renascimento Cultural, Humanismo e Revolução Científica', 1, 26);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual mudança de mentalidade define essencialmente o Renascimento Cultural europeu dos séculos XIV a XVI?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A passagem do teocentrismo medieval para o antropocentrismo (valorização do ser humano, da razão, da ciência e da cultura clássica greco-romana).', 1, 0),
(@p, 'O abandono total da arte, da matemática e da anatomia humana.', 0, 0),
(@p, 'A proibição da leitura de autores gregos e romanos antigos.', 0, 0),
(@p, 'O retorno ao isolamento rural sem cidades nem universidades.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ou figura do Renascimento ao seu papel histórico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mecenato', 1, 1, 'Patrocínio financeiro de artistas e cientistas por burgueses ricos, príncipes e papas'),
(@p, 'Leonardo da Vinci e Michelangelo', 1, 2, 'Mestres do Renascimento italiano marcados pela perspectiva, anatomia e realismo'),
(@p, 'Imprensa de Tipos Móveis (Gutenberg)', 1, 3, 'Invenção que barateou livros e acelerou a difusão das ideias humanistas e científicas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Itália (especialmente cidades como Florença, Veneza e Roma) foi o berço do Renascimento devido ao intenso enriquecimento comercial burguês e à presença de vasto patrimônio clássico romano.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique valores fundamentais difundidos pelo Humanismo Renascentista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Racionalismo e empirismo (experimentação e observação direta da natureza)', 1, 0),
(@p, 'Individualismo (valorização do talento pessoal e da autoria das obras)', 1, 0),
(@p, 'Naturalismo e busca pela harmonia matemática (perspectiva geométrica na pintura)', 1, 0),
(@p, 'Rejeição total de qualquer forma de beleza estética ou investigação científica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual teoria astronômica proposta por Nicolau Copérnico e comprovada por Galileu Galilei substituiu o geocentrismo ao afirmar que a Terra e os planetas giram em torno do Sol?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Heliocentrismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três fases cronológicas tradicionais do Renascimento Italiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trecento (século XIV — precursores literários e artísticos como Dante, Petrarca e Giotto)', 1, 1),
(@p, 'Quattrocento (século XV — apogeu em Florença sob o mecenato da família Médici)', 1, 2),
(@p, 'Cinquecento (século XVI — deslocamento do eixo para Roma e difusão europeia)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o escritor renascentista Nicolau Maquiavel analisou em sua célebre obra "O Príncipe" (1513)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A política moderna como esfera autônoma da moral religiosa, analisando realisticamente como conquistar e manter o poder do Estado.', 1, 0),
(@p, 'As técnicas de pintura a óleo sobre tela na Holanda.', 0, 0),
(@p, 'As leis da gravitação universal e do cálculo diferencial.', 0, 0),
(@p, 'O roteiro marítimo para chegar às Índias contornando a África.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Renascimento não significou que os artistas se tornaram ateus, pois a maioria manteve profunda religiosidade, porém passou a retratar temas sagrados com anatomia humana realista e proporções clássicas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 26.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Reforma Protestante, Contrarreforma e Absolutismo Monárquico', 2, 26);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual prática da Igreja Católica foi o estopim imediato para que o monge alemão Martinho Lutero afixasse suas 95 Teses em Wittenberg em 1517?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A venda de indulgências (perdão dos pecados mediante pagamento em dinheiro) e o comércio de cargos e relíquias sagradas.', 1, 0),
(@p, 'A tradução da Bíblia para a língua alemã.', 0, 0),
(@p, 'A proibição de construir igrejas na Alemanha.', 0, 0),
(@p, 'O apoio do Papa à Revolução Industrial inglesa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada vertente da Reforma Protestante às suas características teológicas e sociais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Luteranismo (Martinho Lutero)', 1, 1, 'Salvação exclusivamente pela fé, livre interpretação da Bíblia e abolição do celibato clerical'),
(@p, 'Calvinismo (João Calvino)', 1, 2, 'Doutrina da predestinação absoluta e valorização ética do trabalho e do lucro burguês'),
(@p, 'Anglicanismo (Henrique VIII)', 1, 3, 'Ruptura político-religiosa na Inglaterra tornando o rei o chefe supremo da Igreja nacional');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo o sociólogo Max Weber, a ética protestante calvinista — ao encarar o sucesso econômico obtido pelo trabalho disciplinado como indício da graça divina — favoreceu o desenvolvimento do capitalismo moderno.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas tomadas pela Igreja Católica durante a Contrarreforma (Concílio de Trento, 1545-1563):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reafirmação dos dogmas católicos (sete sacramentos, culto aos santos, autoridade papal) e proibição da venda de indulgências', 1, 0),
(@p, 'Criação da Companhia de Jesus (Jesuítas) para catequese e ensino na Europa, Ásia e América', 1, 0),
(@p, 'Reativação do Tribunal da Inquisição e publicação do Index Librorum Prohibitorum (lista de livros proibidos)', 1, 0),
(@p, 'Adesão oficial da Igreja Católica à doutrina calvinista da predestinação', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual teoria política do Absolutismo Monárquico (defendida por Jacques Bossuet) afirmava que a autoridade do rei provinha diretamente de Deus, tornando qualquer oposição ao monarca um pecado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Direito divino dos reis', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de centralização do poder nas Monarquias Absolutistas europeias:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aliança entre o rei e a burguesia comercial interessada na unificação de moedas, leis e impostos', 1, 1),
(@p, 'Formação de exércitos nacionais permanentes financiados pelos tributos reais', 1, 2),
(@p, 'Submissão política da nobreza feudal (atraída para cortes como o Palácio de Versalhes)', 1, 3),
(@p, 'Concentração dos poderes executivo, legislativo e judiciário nas mãos do soberano', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual monarca francês simbolizou o auge do Absolutismo europeu com a construção do Palácio de Versalhes e a célebre frase atribuída a ele "O Estado sou eu"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Luís XIV (o Rei Sol)', 1, 0),
(@p, 'Napoleão Bonaparte', 0, 0),
(@p, 'Carlos Magno', 0, 0),
(@p, 'Maximilien Robespierre', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em sua obra "Leviatã", o filósofo inglês Thomas Hobbes justificou o poder absoluto do Estado como único meio de tirar os seres humanos do "estado de natureza" violento ("o homem é o lobo do homem").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 26.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expansão Marítima Europeia, Mercantilismo e Sistema Colonial', 2, 26);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Portugal foi o país pioneiro na Expansão Marítima europeia no século XV?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela centralização política precoce (Revolução de Avis), posição geográfica privilegiada no Atlântico, burguesia mercantil ativa e domínio técnico náutico.', 1, 0),
(@p, 'Porque possuía a maior população e o maior território da Europa.', 0, 0),
(@p, 'Porque já possuía navios movidos a energia nuclear desde 1400.', 0, 0),
(@p, 'Porque não tinha nenhum contato com o Oceano Atlântico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada princípio da política econômica Mercantilista à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Metalismo (Bulionismo)', 1, 1, 'Crença de que a riqueza de um Estado mede-se pelo acúmulo de ouro e prata'),
(@p, 'Balança Comercial Favorável', 1, 2, 'Exportar mais mercadorias manufaturadas do que importar para reter metais preciosos'),
(@p, 'Exclusivo Colonial (Pacto Colonial)', 1, 3, 'Monopólio comercial da metrópole sobre os produtos e mercados de suas colônias');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Tratado de Tordesilhas (1494) traçou um meridiano a 370 léguas a oeste de Cabo Verde, dividindo as terras descobertas ou por descobrir entre Portugal (a leste) e Espanha (a oeste).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características das chamadas "Colônias de Exploração" implantadas nas regiões tropicais da América:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sistema de plantation: grandes latifúndios monocultores voltados para a exportação', 1, 0),
(@p, 'Uso predominante de mão de obra escravizada (indígena e africana)', 1, 0),
(@p, 'Subordinação econômica total aos interesses da metrópole europeia', 1, 0),
(@p, 'Pequenas propriedades familiares policultoras com trabalho livre e autonomia industrial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual navegador português liderou a primeira frota europeia a contornar o sul da África e alcançar Calicute, na Índia, pelo oceano em 1498?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Vasco da Gama', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os marcos iniciais das Grandes Navegações ibéricas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conquista de Ceuta no norte da África pelos portugueses (1415)', 1, 1),
(@p, 'Passagem pelo Cabo da Boa Esperança por Bartolomeu Dias (1488)', 1, 2),
(@p, 'Chegada de Cristóvão Colombo à América a serviço da Espanha (1492)', 1, 3),
(@p, 'Chegada de Vasco da Gama às Índias (1498) e de Pedro Álvares Cabral ao Brasil (1500)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o principal objetivo econômico imediato que impulsionou a busca europeia por rotas marítimas para o Oriente no século XV?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Contornar o monopólio comercial das cidades italianas e dos turcos otomanos sobre o lucrativo comércio de especiarias orientais (pimenta, cravo, canela, seda).', 1, 0),
(@p, 'Exportar batatas americanas para alimentar os imperadores chineses.', 0, 0),
(@p, 'Fugir da peste bubônica levando toda a população europeia para a Ásia.', 0, 0),
(@p, 'Procurar petróleo bruto para abastecer automóveis.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Troca Colombiana" provocou um intercâmbio biológico inédito entre os continentes: América recebeu cavalos, bois, trigo e vírus letais, enquanto Europa, África e Ásia receberam milho, batata, tomate, cacau e mandioca.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 26.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Iluminismo, Despotismo Esclarecido e Revoluções Inglesas do Século XVII', 3, 26);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que defendia o movimento filosófico do Iluminismo (Século das Luzes) no século XVIII?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O uso da razão crítica para combater o absolutismo, os privilégios estamentais, o mercantilismo e a intolerância religiosa do Antigo Regime.', 1, 0),
(@p, 'O fortalecimento do direito divino dos reis e da censura inquisitorial.', 0, 0),
(@p, 'A restauração da servidão feudal e o fim de todas as escolas.', 0, 0),
(@p, 'A submissão absoluta do parlamento à vontade individual do monarca.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pensador iluminista ou liberal à sua principal tese política ou econômica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'John Locke', 1, 1, 'Direitos naturais inalienáveis (vida, liberdade e propriedade) e direito de rebelião contra tiranos'),
(@p, 'Barão de Montesquieu', 1, 2, 'Tripartição dos poderes do Estado (Executivo, Legislativo e Judiciário) em O Espírito das Leis'),
(@p, 'Adam Smith', 1, 3, 'Liberalismo econômico: livre concorrência, divisão do trabalho e lei da oferta e procura');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferentemente de outros iluministas, Jean-Jacques Rousseau defendeu a soberania popular ("vontade geral"), a democracia direta e criticou a propriedade privada como origem da desigualdade social.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do chamado "Despotismo Esclarecido" praticado por governantes como Marquês de Pombal (Portugal), Frederico II (Prússia) e Catarina II (Rússia):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adoção de reformas administrativas, educacionais e econômicas inspiradas no Iluminismo', 1, 0),
(@p, 'Manutenção do poder político concentrado no monarca sem conceder participação democrática popular', 1, 0),
(@p, 'Modernização do Estado para evitar revoluções burguesas vindas de baixo', 1, 0),
(@p, 'Abolição imediata da monarquia e proclamação de repúblicas socialistas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual documento assinado em 1689 após a Revolução Gloriosa na Inglaterra subordinou definitivamente o rei às leis aprovadas pelo Parlamento, inaugurando a primeira monarquia constitucional moderna?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bill of Rights', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos das Revoluções Inglesas do século XVII:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Guerra Civil Inglesa entre o rei Carlos I e o Parlamento liderado por Oliver Cromwell', 1, 1),
(@p, 'Execução do rei Carlos I e instauração da República Puritana de Cromwell (1649)', 1, 2),
(@p, 'Restauração da dinastia Stuart com Carlos II e Jaime II', 1, 3),
(@p, 'Revolução Gloriosa (1688) e assinatura da Declaração de Direitos (Bill of Rights)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a grande obra coletiva organizada por Denis Diderot e Jean dAlembert no século XVIII com o objetivo de reunir e divulgar todo o conhecimento científico e filosófico da época?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Enciclopédia', 1, 0),
(@p, 'O Capital', 0, 0),
(@p, 'A República', 0, 0),
(@p, 'O Contrato Social', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Revoluções Inglesas do século XVII anteciparam a derrota do Absolutismo na Europa e criaram estabilidade institucional e econômica decisiva para o pioneirismo da Inglaterra na Revolução Industrial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 27: Idade Contemporânea (Revoluções e Século XIX)
-- -------------------------------------------------------------------------

-- Quiz 27.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Revolução Industrial: Pioneirismo Inglês e Transformações Sociais', 1, 27);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a transformação fundamental introduzida pela Primeira Revolução Industrial iniciada na Inglaterra na segunda metade do século XVIII?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A transição da produção manufatureira artesanal para a maquinofatura fabril movida a vapor e carvão mineral, consolidando o capitalismo industrial.', 1, 0),
(@p, 'A substituição de todas as fábricas pelo trabalho manual doméstico.', 0, 0),
(@p, 'A abolição total das cidades e o retorno à economia feudal.', 0, 0),
(@p, 'A substituição imediata do carvão mineral pela energia solar fotovoltaica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fator ao pioneirismo da Inglaterra na Revolução Industrial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Leis dos Cercamentos (Enclosures)', 1, 1, 'Expulsaram camponeses das terras comunais gerando farta mão de obra barata nas cidades'),
(@p, 'Reservas de Carvão e Ferro', 1, 2, 'Subsolo rico nas matérias-primas e fontes energéticas essenciais às máquinas a vapor'),
(@p, 'Acúmulo de Capitais e Marinha', 1, 3, 'Lucros do comércio colonial e domínio marítimo garantindo mercados consumidores');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos primórdios da Revolução Industrial, os operários (proletariado) enfrentavam jornadas de até 16 horas diárias, salários baixíssimos, ausência de leis trabalhistas e ampla exploração do trabalho infantil e feminino.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique formas de organização e luta dos trabalhadores ingleses durante o século XIX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ludismo (movimento dos quebradores de máquinas que viam nelas a causa do desemprego)', 1, 0),
(@p, 'Cartismo (movimento político que reivindicava sufrágio universal masculino e participação no Parlamento)', 1, 0),
(@p, 'Trade Unions (formação dos primeiros sindicatos operários e organização de greves)', 1, 0),
(@p, 'Apoio irrestrito à proibição de qualquer descanso semanal remunerado', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual setor produtivo liderou a Primeira Revolução Industrial inglesa com invenções como a fiandeira mecânica e o tear mecânico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Indústria têxtil', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução histórica dos modos de organização da produção industrial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Artesanato (produtor domina todas as etapas e possui ferramentas próprias)', 1, 1),
(@p, 'Manufatura (divisão manual de tarefas em oficinas sob comando de um empresário)', 1, 2),
(@p, 'Maquinofatura (produção em larga escala com máquinas a vapor nas fábricas)', 1, 3),
(@p, 'Linha de montagem fordista (produção em série padronizada no início do século XX)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais novas fontes de energia e setores caracterizaram a Segunda Revolução Industrial na segunda metade do século XIX?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Eletricidade e petróleo (motor a combustão), siderurgia do aço, indústria química, automóveis e telecomunicações.', 1, 0),
(@p, 'Apenas moinhos de vento de madeira e caravelas a vela.', 0, 0),
(@p, 'Biotecnologia genética e computação quântica.', 0, 0),
(@p, 'Exclusivamente a extração manual de sal marinho.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Revolução Industrial consolidou duas grandes classes sociais antagônicas no capitalismo moderno: a burguesia industrial (proprietária dos meios de produção) e o proletariado (vendedor de sua força de trabalho).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 27.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Revolução Francesa (1789-1799) e Era Napoleônica', 2, 27);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como estava dividida a sociedade francesa estamental às vésperas da Revolução Francesa de 1789?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Primeiro Estado (Clero) e Segundo Estado (Nobreza), isentos de impostos e cheios de privilégios, e Terceiro Estado (burguesia, camponeses e sans-culottes), que sustentava o país com tributos.', 1, 0),
(@p, 'Em duas classes igualitárias onde todos pagavam exatamente os mesmos impostos.', 0, 0),
(@p, 'Comandada exclusivamente pelos operários fabris e camponeses sem rei.', 0, 0),
(@p, 'Dividida entre cidadãos romanos e escravos gladiadores.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo político da Convenção Nacional durante a Revolução Francesa à sua posição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Girondinos (alta burguesia)', 1, 1, 'Defendiam moderação política, monarquia constitucional ou república censitária e defesa da propriedade'),
(@p, 'Jacobinos (pequena burguesia e apoio popular)', 1, 2, 'Defendiam reformas radicais, sufrágio universal masculino, Lei do Preço Máximo e república democrática'),
(@p, 'Planície ou Pântano', 1, 3, 'Grupo majoritário centrista que oscilava apoiando quem detinha maior força política');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Declaração dos Direitos do Homem e do Cidadão, aprovada em agosto de 1789, proclamou a igualdade jurídica entre os cidadãos, a liberdade individual e o direito à propriedade, abolindo os privilégios feudais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas adotadas durante a fase da Convenção Montanhesa / Jacobina liderada por Maximilien Robespierre (1793-1794):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aprovação da Constituição de 1793 com sufrágio universal masculino e abolição da escravidão nas colônias francesas', 1, 0),
(@p, 'Criação da Lei do Máximo congelando preços de alimentos básicos contra a especulação', 1, 0),
(@p, 'Período do Terror com tribunais revolucionários e execuções na guilhotina contra suspeitos contrarrevolucionários', 1, 0),
(@p, 'Restauração imediata do absolutismo do rei Luís XVI no trono', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual decreto emitido por Napoleão Bonaparte em 1806 proibiu todos os países da Europa continental de comercializarem com a Inglaterra na tentativa de asfixiar a economia britânica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bloqueio Continental', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as fases do processo revolucionário francês:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Assembleia Nacional Constituinte e Queda da Bastilha (1789-1791)', 1, 1),
(@p, 'Convenção Nacional, Proclamação da República e Período do Terror Jacobino (1792-1794)', 1, 2),
(@p, 'Diretório (reação termidoriana da alta burguesia girondina, 1795-1799)', 1, 3),
(@p, 'Golpe de 18 de Brumário dando início ao Consulado e ao Império de Napoleão Bonaparte (1799-1815)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a importância histórica do Código Civil Napoleônico (1804)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Consolidou juridicamente as conquistas burguesas da Revolução (igualdade perante a lei, propriedade privada e laicidade do Estado), influenciando códigos civis em todo o mundo.', 1, 0),
(@p, 'Restaurou os privilégios tributários da nobreza feudal e do clero.', 0, 0),
(@p, 'Proibiu o comércio privado em toda a França.', 0, 0),
(@p, 'Devolveu o poder absoluto aos antigos senhores feudais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Após a derrota final de Napoleão em Waterloo (1815), o Congresso de Viena buscou restaurar as antigas dinastias absolutistas e o mapa europeu pré-revolucionário sob o princípio da legitimidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 27.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Independências na América Latina e Doutrina Monroe', 2, 27);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento europeu no início do século XIX funcionou como catalisador imediato para os movimentos de independência das colônias espanholas na América?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A invasão da Espanha por Napoleão Bonaparte em 1808, depondo o rei Fernando VII e rompendo o vínculo administrativo com as colônias.', 1, 0),
(@p, 'A vitória da Rússia sobre o Japão na Guerra Russo-Japonesa.', 0, 0),
(@p, 'A assinatura do Tratado de Versalhes após a Primeira Guerra Mundial.', 0, 0),
(@p, 'A unificação da Itália liderada por Giuseppe Garibaldi.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grupo social da América Colonial Espanhola à sua posição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Chapetones', 1, 1, 'Espanhóis nascidos na metrópole que monopolizavam os altos cargos políticos e militares'),
(@p, 'Criollos', 1, 2, 'Elite branca nascida na América (proprietários de terras e minas) que liderou as independências'),
(@p, 'Mestiços, Indígenas e Escravizados', 1, 3, 'Maioria trabalhadora explorada, frequentemente excluída do poder mesmo após a emancipação');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Revolução Haitiana (1791-1804), liderada por Toussaint Louverture e Jean-Jacques Dessalines, foi a primeira independência da América Latina e a única revolução de escravizados vitoriosa da história.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam por que a América Espanhola se fragmentou em vários países independentes, ao contrário da América Portuguesa (Brasil):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Autonomia administrativa dos vice-reinos e capitanias-gerais e ação dos cabildos locais', 1, 0),
(@p, 'Interesses regionalistas das elites criollas e dos caudilhos locais', 1, 0),
(@p, 'Barreiras geográficas naturais (Cordilheira dos Andes, selvas) dificultando a integração', 1, 0),
(@p, 'Presença da família real espanhola morando no México durante trinta anos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual lema sintetiza a Doutrina Monroe anunciada pelos Estados Unidos em 1823 para impedir qualquer tentativa de recolonização europeia no continente americano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'A América para os americanos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de emancipação da América Espanhola:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Invasão napoleônica na Espanha (1808) e formação de Juntas Governativas locais nas colônias', 1, 1),
(@p, 'Campanhas militares dos libertadores Simón Bolívar (ao norte) e José de San Martín (ao sul)', 1, 2),
(@p, 'Vitórias decisivas como Ayacucho (1824) encerrando o domínio espanhol continental', 1, 3),
(@p, 'Fracasso do projeto pan-americanista de Bolívar no Congresso do Panamá e fragmentação em repúblicas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que foi o "Caudilhismo" na América Hispânica pós-independência no século XIX?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O domínio político de líderes regionais carismáticos e autoritários (grandes proprietários de terras com milícias próprias) em meio à fragilidade das instituições republicanas.', 1, 0),
(@p, 'Um sistema parlamentarista britânico com eleições digitais secretas.', 0, 0),
(@p, 'Uma rede ferroviária de alta velocidade ligando Buenos Aires a Bogotá.', 0, 0),
(@p, 'Um movimento artístico abstrato surgido em Paris.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Inglaterra apoiou diplomaticamente e financeiramente as independências da América Latina no século XIX visando o fim do monopólio comercial ibérico e a abertura de novos mercados para suas manufaturas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 27.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Doutrinas Sociais do Século XIX, Unificações e Imperialismo Neocolonial', 3, 27);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que motivou as potências europeias, os EUA e o Japão a promoverem a expansão Imperialista (Neocolonialismo) sobre a África e a Ásia no final do século XIX?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A necessidade gerada pela Segunda Revolução Industrial de matérias-primas baratas, novos mercados consumidores, áreas para exportar capitais excedentes e válvula de escape demográfica.', 1, 0),
(@p, 'O desejo altruísta de distribuir gratuitamente todas as fábricas europeias aos povos africanos.', 0, 0),
(@p, 'A busca exclusiva por especiarias como pimenta-do-reino e cravo.', 0, 0),
(@p, 'A ausência total de indústrias na Europa e nos Estados Unidos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada corrente ideológica do século XIX à sua proposta social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Socialismo Utópico', 1, 1, 'Propunha comunidades cooperativas ideais apelando à boa vontade da burguesia'),
(@p, 'Socialismo Científico (Marx e Engels)', 1, 2, 'Analisava a luta de classes e propunha a revolução proletária e abolição da propriedade privada'),
(@p, 'Anarquismo (Proudhon e Bakunin)', 1, 3, 'Defendia a destruição imediata de toda forma de Estado, autoridade e propriedade privada');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Conferência de Berlim (1884-1885), convocada por Otto von Bismarck, partilhou o continente africano entre as potências europeias traçando fronteiras artificiais que ignoraram as divisões étnicas e culturais locais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique consequências históricas das unificações tardias da Itália (1870) e da Alemanha (1871):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aceleração da industrialização alemã sob liderança da Prússia (Zollverein e Otto von Bismarck)', 1, 0),
(@p, 'Ruptura do equilíbrio de poder europeu estabelecido pelo Congresso de Viena', 1, 0),
(@p, 'Disputa agressiva por colônias na África e Ásia que alimentou as tensões rumo à Primeira Guerra Mundial', 1, 0),
(@p, 'Dissolução imediata de todos os exércitos nacionais na Europa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual teoria pseudocientífica racista do século XIX aplicava distorcidamente a seleção natural às sociedades humanas para justificar a dominação europeia como "fardo do homem branco"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Darwinismo social', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resistência e a imposição imperialista na China durante o século XIX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Guerras do Ópio (1839-1842): Inglaterra derrota a China e impõe o Tratado de Nanquim (cessão de Hong Kong)', 1, 1),
(@p, 'Abertura forçada dos portos chineses e partilha em zonas de influência estrangeira', 1, 2),
(@p, 'Revolta dos Boxers (1899-1901): levante nacionalista popular contra os estrangeiros esmagado por aliança imperialista', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que foi a Comuna de Paris (1871)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O primeiro governo operário revolucionário da história, instaurado em Paris após a derrota francesa na Guerra Franco-Prussiana, duramente reprimido após 72 dias.', 1, 0),
(@p, 'Um acordo comercial assinado entre França e Brasil para exportar café.', 0, 0),
(@p, 'A coroação de Napoleão Bonaparte na Catedral de Notre-Dame.', 0, 0),
(@p, 'Um torneio esportivo realizado durante a Idade Média.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Era Meiji no Japão (a partir de 1868) promoveu uma rápida modernização industrial, militar e educacional conduzida pelo Estado, transformando o país na única potência imperialista asiática.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 28: Guerras Mundiais e Período Entreguerras
-- -------------------------------------------------------------------------

-- Quiz 28.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Primeira Guerra Mundial (1914-1918): Causas, Trincheiras e Tratado de Versalhes', 1, 28);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais foram as causas estruturais profundas que conduziram à Primeira Guerra Mundial em 1914?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As disputas imperialistas por colônias e mercados, os nacionalismos exacerbados (pangermanismo, pan-eslavismo, revanchismo francês), a corrida armamentista e a política de alianças.', 1, 0),
(@p, 'A disputa pela posse da estação espacial internacional em órbita.', 0, 0),
(@p, 'A invasão do continente americano pelo Império Otomano.', 0, 0),
(@p, 'O conflito religioso entre católicos e protestantes na Alemanha medieval.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada bloco ou fase da Primeira Guerra Mundial às suas características:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tríplice Entente', 1, 1, 'Aliança formada inicialmente por França, Reino Unido e Império Russo (depois EUA e Itália)'),
(@p, 'Tríplice Aliança / Impérios Centrais', 1, 2, 'Bloco liderado por Alemanha e Império Austro-Húngaro (com Império Otomano e Bulgária)'),
(@p, 'Guerra de Trincheiras (1915-1917)', 1, 3, 'Fase de desgaste extremo em valas escavadas com uso de metralhadoras, tanques e gases tóxicos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O estopim imediato da Primeira Guerra Mundial foi o assassinato do arquiduque Francisco Ferdinando, herdeiro do trono austro-húngaro, em Sarajevo (Bósnia) em junho de 1914.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique acontecimentos decisivos do ano de 1917 que alteraram o rumo da Primeira Guerra Mundial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Saída da Rússia do conflito após a Revolução Bolchevique (Tratado de Brest-Litovsk)', 1, 0),
(@p, 'Entrada dos Estados Unidos ao lado da Entente após ataques de submarinos alemães a navios mercantes', 1, 0),
(@p, 'Declaração de guerra do Brasil aos Impérios Centrais após o torpedeamento de navios brasileiros', 1, 0),
(@p, 'Vitória militar definitiva da Alemanha conquistando Londres e Nova York', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tratado de paz assinado em 1919 responsabilizou exclusivamente a Alemanha pela Primeira Guerra Mundial, impondo perda de territórios, desmilitarização e pesadas indenizações financeiras?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tratado de Versalhes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os momentos da Primeira Guerra Mundial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Atentado de Sarajevo e acionamento do sistema de alianças europeias (1914)', 1, 1),
(@p, 'Guerra de Movimento inicial seguida pela longa Guerra de Trincheiras na Frente Ocidental', 1, 2),
(@p, 'Saída da Rússia revolucionária e entrada decisiva dos Estados Unidos (1917)', 1, 3),
(@p, 'Rendição alemã, queda dos impérios centrais e assinatura do Tratado de Versalhes (1918-1919)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual organização internacional foi criada após a Primeira Guerra Mundial por sugestão dos 14 Pontos do presidente norte-americano Woodrow Wilson para preservar a paz mundial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Liga das Nações (Sociedade das Nações)', 1, 0),
(@p, 'O Pacto de Varsóvia', 0, 0),
(@p, 'A Organização Mundial do Comércio', 0, 0),
(@p, 'O Mercosul', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As duras punições impostas pelo Tratado de Versalhes humilharam a Alemanha e alimentaram o revanchismo nacionalista explorado posteriormente pelo nazismo de Adolf Hitler.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 28.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Revolução Russa de 1917 e Formação da União Soviética', 2, 28);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era a situação social e econômica da Rússia czarista às vésperas da Revolução de 1917?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'País agrário semifeudal com maioria camponesa miserável, autocracia absolutista do Czar Nicolau II e graves perdas humanas e fome causadas pela Primeira Guerra Mundial.', 1, 0),
(@p, 'A maior potência industrial democrática e mais rica de toda a Europa.', 0, 0),
(@p, 'Uma república parlamentar sem pobreza nem participação na Primeira Guerra.', 0, 0),
(@p, 'Uma colônia administrada diretamente pelo Império Português.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ou grupo da Revolução Russa à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mencheviques', 1, 1, 'Ala moderada que defendia aliança com a burguesia para desenvolver primeiro o capitalismo'),
(@p, 'Bolcheviques (Lênin e Trotsky)', 1, 2, 'Ala revolucionária que defendia a tomada imediata do poder pela aliança operário-camponesa'),
(@p, 'Sovietes', 1, 3, 'Conselhos populares deliberativos formados por operários, camponeses e soldados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O lema das "Teses de Abril" de Lênin — "Paz, Pão e Terra" e "Todo poder aos Sovietes" — sintetizava as aspirações imediatas de saída da guerra, combate à fome e reforma agrária.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas adotadas após a tomada do poder pelos bolcheviques em outubro de 1917:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Assinatura do Tratado de Brest-Litovsk retirando a Rússia da Primeira Guerra Mundial', 1, 0),
(@p, 'Confisco e distribuição dos latifúndios da nobreza e da Igreja aos camponeses', 1, 0),
(@p, 'Estatização dos bancos, ferrovias e grandes indústrias estratégicas', 1, 0),
(@p, 'Devolução do trono absolutista ao Czar Nicolau II', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual política econômica híbrida lançada por Lênin em 1921 após a Guerra Civil autorizou pequenas propriedades privadas e comércio livre sob controle estatal ("um passo atrás para dar dois passos à frente")?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Nova Política Econômica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos da Revolução Russa e consolidação da URSS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Domingo Sangrento e Revolução de 1905 (criação dos primeiros sovietes)', 1, 1),
(@p, 'Revolução de Fevereiro de 1917 (queda do Czar e Governo Provisório liberal)', 1, 2),
(@p, 'Revolução de Outubro de 1917 (tomada do poder pelos bolcheviques)', 1, 3),
(@p, 'Guerra Civil (Exército Vermelho vs. Exército Branco) e fundação da URSS em 1922', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se caracterizou o governo de Josef Stalin na União Soviética a partir do final da década de 1920?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Por uma ditadura totalitária de partido único, coletivização forçada do campo, Planos Quinquenais de industrialização pesada e expurgos políticos.', 1, 0),
(@p, 'Pela abertura multipartidária plena e privatização de todas as fábricas soviéticas.', 0, 0),
(@p, 'Pelo abandono completo da indústria pesada em favor do artesanato medieval.', 0, 0),
(@p, 'Pela aliança militar permanente com o nazismo de Hitler durante toda a Segunda Guerra.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Graças à economia planificada dos Planos Quinquenais de Stalin, a União Soviética passou por uma rápida industrialização pesada na década de 1930, ficando imune aos efeitos imediatos da Crise capitalista de 1929.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 28.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Crise de 1929 e Ascensão dos Regimes Totalitários (Fascismo e Nazismo)', 2, 28);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a causa econômica estrutural da Crise de 1929 (Quebra da Bolsa de Nova York)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma crise de superprodução industrial e agrícola nos EUA combinada com o subconsumo (estagnação salarial), especulação financeira desenfreada e retração das importações europeias.', 1, 0),
(@p, 'A escassez absoluta de alimentos e fábricas nos Estados Unidos.', 0, 0),
(@p, 'A invasão militar da cidade de Nova York pelo exército japonês.', 0, 0),
(@p, 'A adoção do comunismo pelo presidente norte-americano Herbert Hoover.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito do Período Entreguerras à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'New Deal (Franklin D. Roosevelt)', 1, 1, 'Plano keynesiano de intervenção estatal na economia dos EUA com obras públicas e seguridade social'),
(@p, 'Fascismo Italiano (Benito Mussolini)', 1, 2, 'Regime totalitário ultranacionalista, anticomunista, corporativista e de partido único'),
(@p, 'Nazismo Alemão (Adolf Hitler)', 1, 3, 'Totalitarismo fascista acrescido de racismo biológico antissemita e expansionismo (Espaço Vital)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Crise de 1929 abalou a crença no liberalismo econômico clássico autorregulado ("laissez-faire"), abrindo caminho para o keynesianismo nos países democráticos e para o totalitarismo na Europa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características comuns aos regimes totalitários nazi-fascistas das décadas de 1920 e 1930:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Culto absoluto ao líder carismático (Duce ou Führer) e militarização da sociedade', 1, 0),
(@p, 'Supressão das liberdades individuais, censura e uso intenso da propaganda de massas', 1, 0),
(@p, 'Antiliberalismo, anticomunismo e ultranacionalismo xenófobo', 1, 0),
(@p, 'Defesa da democracia pluralista, do pacifismo e da igualdade racial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebeu a demonstração de força organizada por Benito Mussolini e seus "Camisas Negras" em outubro de 1922 que levou o rei Vítor Emanuel III a entregá-lo o cargo de primeiro-ministro da Itália?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Marcha sobre Roma', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a escalada de poder de Adolf Hitler na Alemanha da República de Weimar:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crise econômica alemã agravada pelas reparações de Versalhes e pela Grande Depressão de 1929', 1, 1),
(@p, 'Crescimento eleitoral do Partido Nazista e nomeação de Hitler como Chanceler em janeiro de 1933', 1, 2),
(@p, 'Incêndio do Reichstag (Parlamento) usado como pretexto para suspender direitos constitucionais', 1, 3),
(@p, 'Instalação do Terceiro Reich totalitário e promulgação das Leis antissemitas de Nuremberg (1935)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual conflito ocorrido entre 1936 e 1939 serviu como "ensaio geral" militar para a Segunda Guerra Mundial, opondo republicanos apoiados pela URSS aos nacionalistas de Francisco Franco apoiados por Hitler e Mussolini?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Guerra Civil Espanhola', 1, 0),
(@p, 'Guerra da Secessão Americana', 0, 0),
(@p, 'Guerra dos Canudos', 0, 0),
(@p, 'Guerra das Malvinas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Política de Apaziguamento" adotada por França e Reino Unido na Conferência de Munique (1938) cedeu territórios da Tchecoslováquia a Hitler na ilusão de evitar uma nova guerra, acabando por encorajar ainda mais a agressão nazista.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 28.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Segunda Guerra Mundial (1939-1945): Eixo, Aliados, Holocausto e Paz', 3, 28);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento ocorrido em 1º de setembro de 1939 marcou o início oficial da Segunda Guerra Mundial na Europa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A invasão da Polônia pelas tropas da Alemanha nazista (utilizando a tática da Blitzkrieg), levando Reino Unido e França a declararem guerra a Hitler.', 1, 0),
(@p, 'O ataque japonês à base naval de Pearl Harbor no Havaí.', 0, 0),
(@p, 'O desembarque aliado nas praias da Normandia (Dia D).', 0, 0),
(@p, 'O lançamento das bombas atômicas sobre Hiroshima e Nagasaki.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada batalha ou operação decisiva da Segunda Guerra Mundial à sua importância:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Batalha de Stalingrado (1942-1943)', 1, 1, 'Ponto de virada na Frente Oriental: derrota decisiva e início do recuo do exército alemão'),
(@p, 'Batalha de Midway (1942)', 1, 2, 'Virada aeronaval no Oceano Pacífico contendo o avanço imperial japonês'),
(@p, 'Operação Overlord / Dia D (6 de junho de 1944)', 1, 3, 'Desembarque aliado na Normandia abrindo a segunda frente ocidental para libertar a França');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Pacto Germano-Soviético (Molotov-Ribbentrop) de agosto de 1939 foi um acordo de não agressão entre Alemanha e URSS que foi rompido por Hitler em 1941 com a invasão da União Soviética (Operação Barbarossa).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique consequências geopolíticas e jurídicas imediatas do fim da Segunda Guerra Mundial em 1945:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Criação da Organização das Nações Unidas (ONU) e julgamento dos criminosos nazistas no Tribunal de Nuremberg', 1, 0),
(@p, 'Declínio das potências europeias tradicionais e emergência da bipolaridade entre Estados Unidos e União Soviética', 1, 0),
(@p, 'Divisão da Alemanha e de Berlim em zonas de ocupação aliadas e soviéticas', 1, 0),
(@p, 'Consolidação definitiva do Império Colonial Britânico e Francês por mais cem anos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o genocídio industrial sistemático praticado pelo regime nazista que exterminou cerca de seis milhões de judeus europeus, além de ciganos, pessoas com deficiência e opositores políticos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Holocausto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os grandes marcos da Segunda Guerra Mundial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Invasão da Polônia e ocupação rápida da Europa Ocidental pela Blitzkrieg alemã (1939-1940)', 1, 1),
(@p, 'Invasão alemã da URSS e ataque japonês a Pearl Harbor tornando o conflito global (1941)', 1, 2),
(@p, 'Contraofensiva aliada em Stalingrado, norte da África, Itália e Dia D (1943-1944)', 1, 3),
(@p, 'Rendição da Alemanha em maio de 1945 e do Japão em agosto após Hiroshima e Nagasaki', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a participação militar direta do Brasil na Segunda Guerra Mundial durante o governo de Getúlio Vargas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O envio da Força Expedicionária Brasileira (FEB) e da Força Aérea Brasileira (FAB) para combater o Eixo na campanha da Itália (1944-1945).', 1, 0),
(@p, 'O envio de tropas brasileiras para ajudar a Alemanha nazista a invadir Paris.', 0, 0),
(@p, 'O Brasil manteve-se totalmente neutro sem enviar nenhum soldado nem ceder bases.', 0, 0),
(@p, 'A invasão naval brasileira às ilhas do Japão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Conferências de Yalta e Potsdam (1945) reuniram os líderes dos Aliados (EUA, URSS e Reino Unido) para definir a reorganização territorial da Europa pós-guerra e as zonas de influência das superpotências.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 29: Guerra Fria e Mundo Contemporâneo
-- -------------------------------------------------------------------------

-- Quiz 29.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Guerra Fria: Bipolaridade, Corrida Armamentista e Corrida Espacial', 1, 29);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o conflito geopolítico entre Estados Unidos e União Soviética (1947-1991) ficou conhecido como "Guerra Fria"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque as duas superpotências nunca travaram um combate militar direto entre si devido ao temor da aniquilação nuclear, disputando hegemonia nos campos ideológico, econômico, espacial e em guerras periféricas.', 1, 0),
(@p, 'Porque todas as batalhas ocorreram exclusivamente no gelo da Antártida.', 0, 0),
(@p, 'Porque durou apenas dois dias durante o inverno de 1945.', 0, 0),
(@p, 'Porque nenhum país possuía armas nem exércitos nesse período.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada iniciativa ou aliança da Guerra Fria ao bloco liderado pelos EUA ou pela URSS:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Plano Marshall e OTAN', 1, 1, 'Ajuda financeira de reconstrução da Europa Ocidental e aliança militar liderada pelos EUA'),
(@p, 'COMECON e Pacto de Varsóvia', 1, 2, 'Integração econômica e aliança militar do bloco socialista liderada pela URSS'),
(@p, 'Doutrina Truman', 1, 3, 'Política norte-americana de contenção do avanço do comunismo no mundo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "Cortina de Ferro", popularizada por Winston Churchill, simbolizava a divisão política e ideológica da Europa entre o Ocidente capitalista e o Leste socialista.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique marcos célebres da Corrida Espacial travada entre URSS e EUA durante a Guerra Fria:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lançamento do Sputnik 1 (primeiro satélite artificial da Terra) pela URSS em 1957', 1, 0),
(@p, 'Voo do cosmonauta soviético Yuri Gagarin como primeiro ser humano no espaço em 1961', 1, 0),
(@p, 'Chegada da missão norte-americana Apollo 11 (Neil Armstrong) à superfície da Lua em 1969', 1, 0),
(@p, 'Construção de cidades submarinas habitadas por milhões de pessoas no Pacífico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebeu a perseguição política anticomunista liderada pelo senador Joseph McCarthy nos Estados Unidos durante os anos 1950 contra artistas, cientistas e funcionários públicos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Macarthismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos iniciais que estruturaram a Guerra Fria na Europa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Anúncio da Doutrina Truman e do Plano Marshall pelos EUA (1947)', 1, 1),
(@p, 'Bloqueio Soviético a Berlim Ocidental e criação das duas Alemanhas — RFA e RDA (1948-1949)', 1, 2),
(@p, 'Fundação da OTAN pelo bloco ocidental (1949) e do Pacto de Varsóvia pelo bloco soviético (1955)', 1, 3),
(@p, 'Construção do Muro de Berlim pela Alemanha Oriental para conter a fuga de cidadãos (1961)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o governo da Alemanha Oriental (RDA) construiu o Muro de Berlim em 1961?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para estancar a emigração em massa de milhões de trabalhadores e profissionais qualificados que fugiam do setor socialista para o setor capitalista ocidental.', 1, 0),
(@p, 'Para proteger a cidade contra tsunamis vindos do Oceano Atlântico.', 0, 0),
(@p, 'Por exigência direta dos Estados Unidos e da França.', 0, 0),
(@p, 'Para transformar Berlim em um grande parque arqueológico romano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Guerra Fria impulsionou enormes investimentos estatais em ciência e tecnologia que deram origem a inovações cotidianas como os satélites de comunicação, o GPS e a própria internet (ARPANET).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 29.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conflitos Indiretos da Guerra Fria: Coreia, Cuba, Vietnã e Afeganistão', 2, 29);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual episódio ocorrido em outubro de 1962 representou o momento de maior tensão nuclear da Guerra Fria, deixando o mundo à beira da Terceira Guerra Mundial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Crise dos Mísseis em Cuba, provocada pela descoberta de rampas de mísseis nucleares soviéticos na ilha a poucos quilômetros da Flórida.', 1, 0),
(@p, 'A invasão das Ilhas Malvinas pela Argentina.', 0, 0),
(@p, 'A assinatura do Tratado de Mercosul em Assunção.', 0, 0),
(@p, 'A revolução industrial no Japão Meiji.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conflito periférico da Guerra Fria ao seu desfecho histórico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Guerra da Coreia (1950-1953)', 1, 1, 'Armistício mantendo a península dividida até hoje no Paralelo 38° (Norte socialista e Sul capitalista)'),
(@p, 'Guerra do Vietnã (1955-1975)', 1, 2, 'Derrota militar e retirada dos EUA, resultando na reunificação do Vietnã sob governo comunista'),
(@p, 'Guerra do Afeganistão (1979-1989)', 1, 3, 'Desgastante atoleiro militar soviético que enfraqueceu economicamente e politicamente a URSS');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Revolução Cubana de 1959, liderada por Fidel Castro e Che Guevara, derrubou a ditadura de Fulgencio Batista apoiada pelos EUA e alinhou Cuba ao bloco soviético após o embargo norte-americano.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam a derrota dos Estados Unidos na Guerra do Vietnã:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Táticas de guerra de guerrilha e conhecimento da selva pelos vietcongues apoiados pelo Vietnã do Norte', 1, 0),
(@p, 'Forte movimento pacifista e protestos da juventude norte-americana diante da cobertura televisiva da guerra', 1, 0),
(@p, 'Impopularidade do governo sul-vietnamita apoiado por Washington', 1, 0),
(@p, 'Ausência total de aviação e armamentos modernos no exército norte-americano', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual líder revolucionário conduziu a Revolução Chinesa de 1949, instaurando a República Popular da China e ampliando o bloco socialista na Ásia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Mao Tsé-Tung', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução diplomática da Crise dos Mísseis de Cuba em 1962 entre John Kennedy e Nikita Kruschev:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aviões espiões dos EUA fotografam bases de mísseis soviéticos em construção em Cuba', 1, 1),
(@p, 'Presidente Kennedy decreta bloqueio naval ("quarentena") ao redor da ilha cubana', 1, 2),
(@p, 'Negociações secretas chegam a um acordo evitando confronto nuclear no Atlântico', 1, 3),
(@p, 'URSS retira os mísseis de Cuba em troca do compromisso dos EUA de não invadir a ilha e retirar mísseis da Turquia', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que foi a "Primavera de Praga" ocorrida na Tchecoslováquia em 1968?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um movimento reformista liderado por Alexander Dubcek que buscava construir um "socialismo com face humana" mais democrático, reprimido pela invasão de tanques do Pacto de Varsóvia.', 1, 0),
(@p, 'Um festival de música clássica organizado pelos Estados Unidos em Viena.', 0, 0),
(@p, 'A independência pacífica da Polônia em 1918.', 0, 0),
(@p, 'O lançamento do primeiro satélite artificial europeu.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Após a Crise dos Mísseis de 1962, EUA e URSS instalaram o "Telefone Vermelho" (linha direta de comunicação entre Washington e Moscou) e iniciaram uma fase de distensão relativa chamada Détente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 29.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Descolonização da Ásia e da África e Conferência de Bandung', 2, 29);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais fatores internacionais após 1945 aceleraram o processo de Descolonização da Ásia e da África?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O enfraquecimento econômico e militar das metrópoles europeias (Reino Unido, França, Bélgica, Holanda) na Segunda Guerra Mundial e o fortalecimento dos movimentos nacionalistas locais.', 1, 0),
(@p, 'O enriquecimento súbito da França e da Inglaterra após 1945.', 0, 0),
(@p, 'A proibição da ONU contra qualquer forma de independência política.', 0, 0),
(@p, 'A descoberta de ouro infinito na Europa Ocidental.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada liderança ou evento da Descolonização Afro-Asiática às suas características:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Mahatma Gandhi (Índia)', 1, 1, 'Liderou a independência indiana por meio da desobediência civil pacífica e não violência'),
(@p, 'Guerra de Independência da Argélia', 1, 2, 'Conflito sangrento de libertação contra o domínio colonial francês (1954-1962)'),
(@p, 'Revolução dos Cravos em Portugal (1974)', 1, 3, 'Derrubou a ditadura salazarista e encerrou as guerras coloniais em Angola e Moçambique');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A independência da Índia Britânica em 1947 resultou na partilha religiosa sangrenta do território entre a Índia (maioria hindu) e o Paquistão (maioria muçulmana), gerando milhões de refugiados e disputas na Caxemira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique princípios aprovados na Conferência de Bandung (Indonésia, 1955), marco do Movimento dos Países Não Alinhados:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Condenação firme ao colonialismo, ao neocolonialismo e a todas as formas de discriminação racial', 1, 0),
(@p, 'Autodeterminação dos povos e respeito à soberania nacional', 1, 0),
(@p, 'Busca de uma terceira via diplomática sem alinhamento automático aos EUA ou à URSS', 1, 0),
(@p, 'Submissão voluntária das nações asiáticas e africanas ao Pacto de Varsóvia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual regime oficial de segregação racial vigorou na África do Sul entre 1948 e o início dos anos 1990, sendo derrubado após décadas de luta liderada por Nelson Mandela?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Apartheid', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os marcos da descolonização afro-asiática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Independência da Índia e do Paquistão em 1947', 1, 1),
(@p, 'Conferência de Bandung reunindo 29 países afro-asiáticos em 1955', 1, 2),
(@p, 'Ano da África (1960), quando 17 nações africanas conquistaram independência', 1, 3),
(@p, 'Independência tardia das colônias portuguesas africanas após 1974', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que muitas nações africanas recém-independentes enfrentaram graves guerras civis logo após a saída dos colonizadores europeus?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque herdaram as fronteiras artificiais traçadas na Conferência de Berlim, que reuniram povos rivais no mesmo país e dividiram grupos étnicos entre Estados diferentes.', 1, 0),
(@p, 'Porque não existiam recursos naturais nem rios no continente africano.', 0, 0),
(@p, 'Porque os países africanos decidiram invadir a Europa Ocidental.', 0, 0),
(@p, 'Porque todos os africanos falavam exatamente o mesmo idioma.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Pan-Africanismo foi um movimento político e cultural que defendia a solidariedade, a unidade e a emancipação dos povos africanos e de seus descendentes na diáspora contra o racismo e o colonialismo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 29.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Queda do Muro de Berlim, Fim da URSS e Mundo Contemporâneo', 3, 29);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o objetivo das reformas "Glasnost" e "Perestroika" implementadas por Mikhail Gorbatchov na União Soviética a partir de 1985?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Promover transparência política (Glasnost) e reestruturação econômica com abertura parcial ao mercado (Perestroika) para salvar a URSS da estagnação, acabando por acelerar sua dissolução.', 1, 0),
(@p, 'Intensificar a censura stalinista e iniciar uma guerra nuclear contra a Europa.', 0, 0),
(@p, 'Restaurar a monarquia absolutista da família Romanov em Moscou.', 0, 0),
(@p, 'Anexar os Estados Unidos e o Canadá à União Soviética.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada evento contemporâneo do final do século XX e início do XXI ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Queda do Muro de Berlim (1989)', 1, 1, 'Marco simbólico do colapso dos regimes socialistas do Leste Europeu e reunificação alemã'),
(@p, 'Dissolução da URSS (dezembro de 1991)', 1, 2, 'Fim oficial da Guerra Fria e surgimento de 15 repúblicas independentes e da CEI'),
(@p, 'Atentados de 11 de Setembro de 2001', 1, 3, 'Ataques da Al-Qaeda nos EUA que inauguraram a chamada Guerra ao Terror no Oriente Médio');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Revolução Islâmica no Irã em 1979, liderada pelo Aiatolá Khomeini, derrubou a monarquia pró-ocidental do Xá Reza Pahlevi e instaurou uma República Islâmica teocrática anti-imperialista.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam o colapso da União Soviética entre 1989 e 1991:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estagnação econômica, escassez de bens de consumo e atraso tecnológico civil', 1, 0),
(@p, 'Gastos militares insustentáveis com a corrida armamentista e a Guerra do Afeganistão', 1, 0),
(@p, 'Ressurgimento de movimentos nacionalistas separatistas nas repúblicas bálticas e soviéticas', 1, 0),
(@p, 'Invasão terrestre bem-sucedida da cidade de Moscou pelo exército francês', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual série de levantes populares iniciada na Tunísia no final de 2010 espalhou-se pelo Norte da África e Oriente Médio derrubando ditaduras antigas e gerando conflitos como a Guerra Civil da Síria?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Primavera Árabe', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos do desfecho da Guerra Fria:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ascensão de Mikhail Gorbatchov e lançamento da Perestroika e Glasnost (1985)', 1, 1),
(@p, 'Queda do Muro de Berlim e revoluções pacíficas no Leste Europeu (1989)', 1, 2),
(@p, 'Reunificação oficial da Alemanha (1990) e dissolução do Pacto de Varsóvia', 1, 3),
(@p, 'Renúncia de Gorbatchov e extinção formal da União Soviética (dezembro de 1991)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a consequência trágica da desintegração da Iugoslávia na década de 1990 nos Bálcãs?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma série de violentas guerras étnicas e religiosas (como na Bósnia e no Kosovo) marcadas por limpeza étnica e intervenção da OTAN.', 1, 0),
(@p, 'A unificação pacífica de todos os Bálcãs em um único reino monárquico.', 0, 0),
(@p, 'A anexação da Iugoslávia pelo Império Japonês.', 0, 0),
(@p, 'A transformação da região em um deserto desabitado sem cidades.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Crise Financeira Global de 2008, iniciada pelo colapso das hipotecas imobiliárias subprime nos Estados Unidos, demonstrou o elevado grau de interdependência e vulnerabilidade dos mercados financeiros globalizados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 30: Brasil Colônia
-- -------------------------------------------------------------------------

-- Quiz 30.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Povos Indígenas, Chegada dos Portugueses e Período Pré-Colonial', 1, 30);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se caracterizou o chamado "Período Pré-Colonial" da história do Brasil (1500-1530)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pelo relativo desinteresse econômico imediato de Portugal (focado no lucrativo comércio das Índias), limitando-se à exploração extrativista do pau-brasil por meio de feitorias e escambo.', 1, 0),
(@p, 'Pela instalação imediata de dezenas de universidades e fábricas de automóveis no litoral.', 0, 0),
(@p, 'Pela descoberta das gigantescas minas de ouro em Minas Gerais logo em 1501.', 0, 0),
(@p, 'Pela expulsão imediata de todos os portugueses pelos holandeses.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito do Período Pré-Colonial brasileiro à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Escambo', 1, 1, 'Troca direta de trabalho indígena (corte e transporte do pau-brasil) por objetos europeus'),
(@p, 'Feitorias', 1, 2, 'Entrepostos fortificados no litoral usados para armazenar pau-brasil e vigiar a costa'),
(@p, 'Estanco', 1, 3, 'Monopólio da Coroa Portuguesa sobre a exploração do pau-brasil concedido a comerciantes');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Antes da chegada dos europeus em 1500, o território brasileiro era habitado por milhões de indígenas pertencentes a diversos troncos linguísticos (como Tupi, Macro-Jê, Aruaque e Karib) com culturas próprias e distintas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que levaram Portugal a iniciar a colonização efetiva do Brasil a partir de 1530 (Expedição de Martim Afonso de Sousa):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Queda nos lucros do comércio português de especiarias no Oriente diante da concorrência', 1, 0),
(@p, 'Ameaça constante de corsários franceses que praticavam o contrabando de pau-brasil no litoral', 1, 0),
(@p, 'Expectativa de encontrar metais preciosos no interior do continente americano', 1, 0),
(@p, 'Esgotamento completo de toda a população residente em Portugal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual escrivão da esquadra de Pedro Álvares Cabral redigiu em maio de 1500 o documento considerado a certidão de nascimento escrita do Brasil para o rei D. Manuel I?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pero Vaz de Caminha', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos iniciais da presença portuguesa na América:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Assinatura do Tratado de Tordesilhas entre Portugal e Espanha (1494)', 1, 1),
(@p, 'Chegada da armada de Pedro Álvares Cabral a Porto Seguro (abril de 1500)', 1, 2),
(@p, 'Expedições exploradoras e guarda-costas e extração de pau-brasil por escambo (1501-1530)', 1, 3),
(@p, 'Expedição colonizadora de Martim Afonso de Sousa e fundação de São Vicente (1530-1532)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a consequência ambiental imediata da exploração intensiva do pau-brasil durante o século XVI?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A devastaçao acelerada da Mata Atlântica litorânea, pois a extração era predatória e não havia replantio.', 1, 0),
(@p, 'O reflorestamento completo do Sertão Nordestino.', 0, 0),
(@p, 'A preservação intacta de todas as árvores nativas da costa.', 0, 0),
(@p, 'O resfriamento climático de todo o Oceano Atlântico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "descobrimento do Brasil" reflete uma visão eurocêntrica da história, uma vez que o território já era amplamente ocupado e conhecido pelos povos indígenas há milênios.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 30.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Economia Açucareira, Capitanias Hereditárias, Governo-Geral e Escravidão', 2, 30);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a maioria das Capitanias Hereditárias implantadas por D. João III em 1534 fracassou em seu objetivo de colonizar o Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Devido à falta de recursos financeiros dos donatários, às enormes distâncias de Portugal, à falta de comunicação entre as capitanias e à resistência indígena.', 1, 0),
(@p, 'Porque todas as capitanias prosperaram igualmente sem nenhuma dificuldade.', 0, 0),
(@p, 'Porque a cana-de-açúcar não crescia em nenhuma região do Nordeste.', 0, 0),
(@p, 'Porque os espanhóis compraram todas as capitanias em 1535.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada documento ou órgão político do Brasil Colônia à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Carta de Doação e Foral', 1, 1, 'Documentos que concediam a posse vitalícia da capitania ao donatário e definiam seus direitos e deveres'),
(@p, 'Governo-Geral (1548)', 1, 2, 'Sistema criado para centralizar a administração colonial em Salvador sem extinguir as capitanias'),
(@p, 'Câmaras Municipais (Homens Bons)', 1, 3, 'Órgãos de poder político local controlados pela elite agrária senhorial nas vilas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As únicas capitanias hereditárias que alcançaram prosperidade econômica inicial foram São Vicente e Pernambuco, graças ao sucesso da lavoura canavieira e da produção de açúcar.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pilares da empresa agroexportadora açucareira no Nordeste colonial brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Latifúndio monocultor de cana-de-açúcar no solo fértil de massapê da Zona da Mata', 1, 0),
(@p, 'Mão de obra escravizada africana trazida pelo lucrativo tráfico negreiro atlântico', 1, 0),
(@p, 'Financiamento, refino e distribuição comercial na Europa realizados por capitais holandeses', 1, 0),
(@p, 'Produção industrial voltada exclusivamente para o abastecimento gratuito dos escravos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebeu o maior e mais duradouro foco de resistência negra à escravidão no Brasil colonial, situado na Serra da Barriga (atual Alagoas) e liderado por Ganga Zumba e Zumbi?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Quilombo dos Palmares', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o circuito econômico das chamadas "Invasões Holandesas" no Nordeste açucareiro brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'União Ibérica (1580-1640) submete Portugal à Espanha, inimiga dos Países Baixos', 1, 1),
(@p, 'Espanha embarga o comércio holandês de refino e distribuição do açúcar brasileiro', 1, 2),
(@p, 'Companhia das Índias Ocidentais (WIC) invade e ocupa Pernambuco (1630-1654), com apogeu sob Maurício de Nassau', 1, 3),
(@p, 'Insurreição Pernambucana expulsa os holandeses, que passam a produzir açúcar nas Antilhas gerando crise no Brasil', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Coroa Portuguesa e os traficantes incentivaram a substituição gradual da escravidão indígena pela escravidão africana nos engenhos açucareiros?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o tráfico atlântico de africanos gerava imensos lucros para a Coroa e mercadores portugueses, além da oposição dos jesuítas à escravização indígena e da alta mortalidade indígena por epidemias.', 1, 0),
(@p, 'Porque os indígenas não sabiam cultivar nenhuma planta na América.', 0, 0),
(@p, 'Porque os africanos vinham voluntariamente como turistas assalariados.', 0, 0),
(@p, 'Porque a Igreja Católica proibiu a compra de escravos africanos em 1550.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A sociedade açucareira colonial era patriarcal, rural e fortemente hierarquizada, polarizada entre os senhores de engenho (moradores da Casa-Grande) e os escravizados (moradores da Senzala).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 30.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Expansão Territorial: Bandeirantismo, Pecuária, Drogas do Sertão e Tratados', 2, 30);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento político europeu ocorrido entre 1580 e 1640 facilitou a interiorização dos colonos luso-brasileiros para além da linha do Tratado de Tordesilhas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A União Ibérica, período em que os reis da Espanha governaram também Portugal e suas colônias, tornando provisoriamente sem efeito prático a fronteira de Tordesilhas.', 1, 0),
(@p, 'A independência dos Estados Unidos em 1776.', 0, 0),
(@p, 'A queda do Muro de Berlim em 1989.', 0, 0),
(@p, 'A assinatura do Tratado de Versalhes em 1919.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada frente de expansão territorial no Brasil Colônia à sua região e atividade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Bandeirantismo (São Vicente / São Paulo)', 1, 1, 'Expedições privadas de apresamento indígena, prospecção de ouro e sertanismo de contrato'),
(@p, 'Pecuária Extensiva', 1, 2, 'Ocupação do Sertão Nordestino (Vale do São Francisco) e dos Campos Sulinos fornecendo couro, carne e tração'),
(@p, 'Drogas do Sertão e Missões Jesuíticas', 1, 3, 'Ocupação da Bacia Amazônica com extração de cacau, guaraná, castanha e aldeamentos indígenas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As "Entradas" eram expedições oficiais financiadas pela Coroa Portuguesa para explorar o interior, enquanto as "Bandeiras" eram expedições particulares organizadas principalmente pelos paulistas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique atuações históricas dos bandeirantes paulistas nos séculos XVII e XVIII:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Apresamento (captura) de indígenas para escravização, atacando inclusive missões jesuíticas espanholas', 1, 0),
(@p, 'Sertanismo de contrato (mercenários contratados para destruir quilombos como Palmares e revoltas indígenas)', 1, 0),
(@p, 'Prospecção mineral que resultou na descoberta das primeiras jazidas de ouro em Minas Gerais, Goiás e Mato Grosso', 1, 0),
(@p, 'Construção de ferrovias elétricas ligando São Paulo a Buenos Aires no século XVI', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tratado diplomático assinado entre Portugal e Espanha em 1750 consagrou o princípio romano do Uti Possidetis ("quem possui de fato, possui de direito"), definindo os contornos aproximados do atual território brasileiro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tratado de Madri', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os tratados diplomáticos que redefiniram as fronteiras da América Portuguesa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tratado de Tordesilhas (1494) limitando Portugal à faixa litorânea', 1, 1),
(@p, 'Tratado de Utrecht (1713-1715) definindo limites ao norte com a França (Oiapoque)', 1, 2),
(@p, 'Tratado de Madri (1750) reconhecendo a posse efetiva portuguesa sobre a Amazônia e Centro-Oeste', 1, 3),
(@p, 'Tratado de Badajós (1801) incorporando definitivamente os Sete Povos das Missões ao Sul', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a pecuária foi proibida por carta régia de 1701 a menos de dez léguas do litoral nordestino?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para evitar que o gado criado solto invadisse e destruísse os canaviais da Zona da Mata, empurrando os currais para o interior sertanejo.', 1, 0),
(@p, 'Porque o consumo de carne bovina foi proibido pela Igreja Católica.', 0, 0),
(@p, 'Porque não existiam rios no interior do Nordeste.', 0, 0),
(@p, 'Porque todo o gado foi exportado vivo para a China.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Guerras Guaraníticas (1753-1756) ocorreram quando os indígenas guarani das missões jesuíticas dos Sete Povos das Missões resistiram à transferência territorial prevista pelo Tratado de Madri.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 30.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ciclo do Ouro, Sociedade Mineradora e Revoltas Coloniais', 3, 30);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais foram as grandes transformações estruturais provocadas pela descoberta do ouro em Minas Gerais no final do século XVII?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O deslocamento do eixo econômico do Nordeste para o Centro-Sul (transferência da capital de Salvador para o Rio de Janeiro em 1763), intensa urbanização, surgimento de camadas médias e integração do mercado interno.', 1, 0),
(@p, 'O esvaziamento total das cidades e o retorno ao escambo sem moedas.', 0, 0),
(@p, 'A abolição completa de todos os impostos cobrados por Portugal.', 0, 0),
(@p, 'O fim da escravidão africana e a distribuição do ouro aos camponeses.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada instrumento fiscal da Coroa Portuguesa na região das Minas à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Quinto e Casas de Fundição', 1, 1, 'Cobrança de 20% de todo o ouro extraído, que só podia circular fundido em barras quintadas'),
(@p, 'Derrama', 1, 2, 'Cobrança compulsória e violenta dos impostos atrasados caso a cota anual de 100 arrobas não fosse atingida'),
(@p, 'Intendência das Minas', 1, 3, 'Órgão criado para distribuir datas (lotes de mineração), fiscalizar e julgar crimes na região');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A diferença fundamental entre as "Revoltas Nativistas" (Beckman, Emboabas, Mascates, Vila Rica) e as "Revoltas Emancipacionistas" (Inconfidência Mineira e Conjuração Baiana) é que as últimas já propunham a independência política do Brasil.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique diferenças marcantes entre a Inconfidência Mineira (1789) e a Conjuração Baiana (1798):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Inconfidência Mineira foi um movimento elitista de intelectuais, padres, militares e mineradores motivado contra a Derrama', 1, 0),
(@p, 'A Conjuração Baiana (Revolta dos Alfaiates) teve ampla participação popular de negros livres, escravizados, soldados e artesãos', 1, 0),
(@p, 'A Conjuração Baiana defendia explicitamente a abolição da escravidão e a igualdade social, enquanto os inconfidentes mineiros hesitaram sobre o tema', 1, 0),
(@p, 'Ambas foram lideradas diretamente pelo rei D. João VI para acabar com a monarquia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual movimento artístico floresceu nas cidades mineradoras de Minas Gerais no século XVIII, tendo em Antônio Francisco Lisboa (Aleijadinho) e Mestre Ataíde seus maiores expoentes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Barroco Mineiro', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os principais conflitos e rebeliões do período colonial brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Revolta de Beckman no Maranhão (1684) contra monopólios comerciais', 1, 1),
(@p, 'Guerra dos Emboabas (1707-1709) e Guerra dos Mascates (1710-1711)', 1, 2),
(@p, 'Revolta de Vila Rica liderada por Filipe dos Santos contra as Casas de Fundição (1720)', 1, 3),
(@p, 'Inconfidência Mineira (1789) e Conjuração Baiana (1798)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o Tratado de Methuen (Tratado dos Panos e Vinhos, 1703) assinado entre Portugal e Inglaterra canalizou grande parte do ouro brasileiro para os bancos britânicos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque Portugal abriu seu mercado aos tecidos manufaturados ingleses em troca de tarifas menores para seus vinhos, gerando déficits comerciais pagos com o ouro do Brasil.', 1, 0),
(@p, 'Porque Portugal doou gratuitamente todas as minas de Minas Gerais à rainha da Inglaterra.', 0, 0),
(@p, 'Porque os ingleses invadiram e ocuparam Ouro Preto durante cem anos.', 0, 0),
(@p, 'Porque o ouro brasileiro não tinha nenhum valor comercial em Lisboa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A sociedade mineradora apresentava maior mobilidade social que a açucareira, permitindo que alguns escravizados comprassem sua própria carta de alforia por meio do trabalho de ganho ou faiscação.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 31: Brasil Império
-- -------------------------------------------------------------------------

-- Quiz 31.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Período Joanino (1808-1821) e Processo de Independência do Brasil (1822)', 1, 31);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento europeu forçou a transferência da Corte Portuguesa de Lisboa para o Rio de Janeiro em 1808 sob escolta da marinha britânica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A invasão de Portugal pelas tropas francesas de Napoleão Bonaparte após D. João recusar-se a aderir plenamente ao Bloqueio Continental contra a Inglaterra.', 1, 0),
(@p, 'Um terremoto que destruiu completamente todo o território de Portugal.', 0, 0),
(@p, 'A descoberta de petróleo na Baía de Guanabara em 1807.', 0, 0),
(@p, 'A vitória do Brasil na Primeira Guerra Mundial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada medida tomada por D. João no Brasil às suas consequências históricas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Abertura dos Portos às Nações Amigas (1808)', 1, 1, 'Encerrou na prática o Pacto Colonial mercantilista, beneficiando principalmente a Inglaterra'),
(@p, 'Tratados de 1810 (Aliança e Amizade / Comércio)', 1, 2, 'Concederam tarifa alfandegária privilegiada de 15% aos produtos ingleses (menor que os 16% portugueses)'),
(@p, 'Elevação a Reino Unido (1815)', 1, 3, 'Transformou o Brasil de colônia em parte integrante do Reino Unido de Portugal, Brasil e Algarves');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante o Período Joanino, foram criados no Rio de Janeiro instituições fundamentais como o Banco do Brasil, a Imprensa Régia, o Jardim Botânico, a Biblioteca Real e as primeiras faculdades de Medicina.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique causas e objetivos da Revolução Pernambucana de 1817 contra o governo joanino:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Insatisfação com os altos impostos cobrados no Nordeste para sustentar os luxos da Corte no Rio de Janeiro', 1, 0),
(@p, 'Crise nos preços internacionais do açúcar e do algodão agravada pela seca', 1, 0),
(@p, 'Influência das ideias iluministas levando à proclamação de uma república provisória em Recife', 1, 0),
(@p, 'Apoio total da elite pernambucana ao retorno do monopólio comercial português', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual movimento liberal ocorrido em Portugal em 1820 exigiu o retorno imediato de D. João VI a Lisboa, a elaboração de uma Constituição e tentou recolonizar o Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Revolução Liberal do Porto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os marcos que conduziram à Independência do Brasil em 1822:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Retorno de D. João VI a Portugal deixando D. Pedro como Príncipe Regente (abril de 1821)', 1, 1),
(@p, 'Dia do Fico (9 de janeiro de 1822): D. Pedro desobedece às Cortes de Lisboa e permanece no Brasil', 1, 2),
(@p, 'Decreto do Cumpra-se e convocação de uma Assembleia Constituinte brasileira (maio-junho de 1822)', 1, 3),
(@p, 'Grito do Ipiranga (7 de setembro de 1822) e coroação de D. Pedro I como Imperador', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Independência do Brasil preservou a unidade territorial, a forma monárquica de governo e a escravidão, diferindo das repúblicas hispano-americanas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque foi conduzida por meio de um acordo conservador entre o príncipe herdeiro português (D. Pedro) e a elite agrária escravista brasileira, evitando revoluções sociais populares.', 1, 0),
(@p, 'Porque não havia escravizados nem grandes fazendeiros no Brasil em 1822.', 0, 0),
(@p, 'Porque a Inglaterra invadiu o Brasil e proibiu a criação de repúblicas.', 0, 0),
(@p, 'Porque toda a população brasileira votou em plebiscito pelo fim da escravidão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A independência do Brasil não foi inteiramente pacífica, pois houve guerras de independência contra tropas fiéis a Portugal em províncias como Bahia, Maranhão, Pará e Cisplatina.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 31.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Primeiro Reinado (1822-1831): Constituição de 1824 e Abdicação', 2, 31);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal característica autoritária da primeira Constituição do Brasil, outorgada (imposta) por D. Pedro I em 1824 após dissolver a Assembleia Constituinte?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A criação do Poder Moderador, exercido exclusivamente pelo Imperador acima dos poderes Executivo, Legislativo e Judiciário.', 1, 0),
(@p, 'A instituição do voto universal feminino e secreto para todos os analfabetos.', 0, 0),
(@p, 'A transformação do Brasil em uma república federalista parlamentar.', 0, 0),
(@p, 'A abolição imediata da escravidão e do Senado vitalício.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito político da Constituição de 1824 à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Voto Censitário', 1, 1, 'Direito de votar e ser votado condicionado à comprovação de renda mínima anual'),
(@p, 'Padroado e Beneplácito', 1, 2, 'Subordinação da Igreja Católica oficial ao Estado imperial, que nomeava bispos e aprovava bulas'),
(@p, 'Estado Unitário', 1, 3, 'Centralização administrativa em que os presidentes das províncias eram nomeados pelo Imperador');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Confederação do Equador (1824) foi uma revolta separatista e republicana eclodida em Pernambuco contra o autoritarismo de D. Pedro I, a outorga da Constituição de 1824 e a centralização imperial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que provocaram o desgaste político e a abdicação de D. Pedro I em 7 de abril de 1831:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Autoritarismo imperial e favorecimento aos comerciantes portugueses (Partido Português) em detrimento da elite brasileira', 1, 0),
(@p, 'Grave crise econômica, falência do primeiro Banco do Brasil e desgaste com a derrota na Guerra da Cisplatina (independência do Uruguai)', 1, 0),
(@p, 'Envolvimento de D. Pedro na crise sucessória do trono português e o assassinato do jornalista oposicionista Líbero Badaró', 1, 0),
(@p, 'Recusa do Imperador em cobrar qualquer imposto durante todo o seu reinado', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual líder religioso e jornalista pernambucano, redator do jornal Typhis Pernambucano, foi um dos principais líderes e mártires executados após a Confederação do Equador em 1824?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Frei Caneca', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os acontecimentos do Primeiro Reinado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Noite da Agonia: D. Pedro I fecha a Assembleia Constituinte (novembro de 1823)', 1, 1),
(@p, 'Outorga da Constituição de 1824 e eclosão da Confederação do Equador no Nordeste', 1, 2),
(@p, 'Guerra da Cisplatina culminando na independência do Uruguai (1825-1828)', 1, 3),
(@p, 'Noite das Garrafadas e abdicação de D. Pedro I em favor de seu filho D. Pedro II (1831)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual exigência a Inglaterra impôs ao Brasil para reconhecer formalmente sua independência e renovar os tratados comerciais no final da década de 1820?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O compromisso legal de extinguir o tráfico transatlântico de escravos africanos (Lei Feijó de 1831, conhecida como "lei para inglês ver").', 1, 0),
(@p, 'A devolução do Rio de Janeiro ao domínio da Espanha.', 0, 0),
(@p, 'A adoção do idioma inglês como única língua oficial nas escolas brasileiras.', 0, 0),
(@p, 'A proibição do cultivo de café em todo o Vale do Paraíba.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Portugal exigiu uma indenização de dois milhões de libras esterlinas (financiada por empréstimo inglês) para assinar o Tratado de Paz e Aliança reconhecendo a independência do Brasil em 1825.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 31.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Período Regencial (1831-1840) e as Grandes Revoltas Provinciais', 2, 31);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que foi instaurado um Período Regencial no Brasil entre 1831 e 1840?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque, com a abdicação de D. Pedro I, seu filho herdeiro D. Pedro de Alcântara tinha apenas cinco anos de idade e não podia assumir o trono segundo a Constituição.', 1, 0),
(@p, 'Porque a monarquia havia sido definitivamente abolida e substituída pelo comunismo.', 0, 0),
(@p, 'Porque o Brasil foi reanexado a Portugal durante nove anos.', 0, 0),
(@p, 'Porque D. Pedro II mudou-se para estudar medicina em Paris.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada revolta regencial à sua província e característica social:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Cabanagem (Grão-Pará, 1835-1840)', 1, 1, 'Revolta popular de indígenas, mestiços e ribeirinhos pobres que chegou a tomar o governo provincial'),
(@p, 'Revolta dos Malês (Bahia, 1835)', 1, 2, 'Levante urbano organizado por escravizados africanos alfabetizados de religião islâmica'),
(@p, 'Guerra dos Farrapos / Farroupilha (RS e SC, 1835-1845)', 1, 3, 'Revolta elitista dos estancieiros gaúchos contra altos impostos sobre o charque e centralismo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Ato Adicional de 1834 promoveu uma descentralização administrativa temporária (chamada de "experiência republicana"), criando as Assembleias Legislativas Provinciais e instituindo a Regência Una.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três grupos políticos que disputaram o poder no início do Período Regencial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Liberais Moderados (Chimangos) — defendiam monarquia constitucional centralizada e ordem escravista', 1, 0),
(@p, 'Liberais Exaltados (Jurujubas) — defendiam autonomia federalista ampla e reformas democráticas', 1, 0),
(@p, 'Restauradores (Caramurus) — defendiam o retorno de D. Pedro I ao trono brasileiro (até sua morte em 1834)', 1, 0),
(@p, 'Bolcheviques Revolucionários — defendiam a estatização imediata de todas as fazendas de café', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual milícia civil criada em 1831 pelo ministro Diogo Antônio Feijó concedeu patentes de "coronéis" aos grandes proprietários rurais para reprimir revoltas e manter a ordem nas províncias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Guarda Nacional', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as fases administrativas do Período Regencial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Regência Trina Provisória e Regência Trina Permanente (1831-1835)', 1, 1),
(@p, 'Aprovação do Ato Adicional de 1834 e início da Regência Una do Padre Feijó (1835-1837)', 1, 2),
(@p, 'Regresso Conservador e Regência Una de Araújo Lima (1837-1840)', 1, 3),
(@p, 'Golpe da Maioridade antecipando a coroação de D. Pedro II aos 14 anos (julho de 1840)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o principal motivo político que levou os liberais a articularem o "Golpe da Maioridade" em 1840?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Retornar ao poder afastando os conservadores e utilizar a figura simbólica do jovem Imperador para conter a fragmentação territorial ameaçada pelas revoltas provinciais.', 1, 0),
(@p, 'Implantar imediatamente o voto feminino e abolir a monarquia.', 0, 0),
(@p, 'Entregar o governo do Brasil aos líderes da Cabanagem e da Balaiada.', 0, 0),
(@p, 'Transferir a capital do Império para Porto Alegre.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Balaiada (1838-1841), ocorrida no Maranhão, reuniu vaqueiros, artesãos (balaios) e escravizados fugidos liderados por Cosme Bento contra a miséria e o autoritarismo das elites locais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 31.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Segundo Reinado (1840-1889): Café, Guerra do Paraguai, Abolição e Queda', 3, 31);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como funcionava o sistema político conhecido como "Parlamentarismo às Avessas" durante o Segundo Reinado de D. Pedro II?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ao contrário do modelo britânico, o Imperador nomeava primeiro o Presidente do Conselho de Ministros usando o Poder Moderador e depois convocava eleições fraudadas para formar uma Câmara favorável.', 1, 0),
(@p, 'Os ministros eram eleitos diretamente pelo voto secreto de todos os trabalhadores escravizados.', 0, 0),
(@p, 'O Imperador não tinha nenhum poder político nem podia dissolver a Câmara dos Deputados.', 0, 0),
(@p, 'Os partidos Liberal e Conservador tinham programas ideológicos completamente opostos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada lei fundamental do ano de 1850 no Brasil Imperial ao seu conteúdo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Lei Eusébio de Queirós', 1, 1, 'Extinguiu efetivamente o tráfico transatlântico de escravizados africanos para o Brasil'),
(@p, 'Lei de Terras', 1, 2, 'Determinou que terras públicas só poderiam ser adquiridas mediante compra em dinheiro, barrando ex-escravos e imigrantes pobres'),
(@p, 'Tarifa Alves Branco (1844) / Código Comercial', 1, 3, 'Elevou taxas de importação e regulamentou empresas, favorecendo o surto industrial da Era Mauá');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expansão cafeeira deslocou-se do Vale do Paraíba (escravista e tradicional) para o Oeste Paulista (terra roxa, ferrovias e trabalho assalariado de imigrantes europeus).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três pilares de sustentação social e institucional que romperam com a Monarquia na década de 1880 (as "Questões" que derrubaram o Império):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Questão Religiosa (conflito entre D. Pedro II e bispos católicos acerca da maçonaria e do Padroado)', 1, 0),
(@p, 'Questão Militar (insatisfação do Exército fortalecido após a Guerra do Paraguai e adesão ao positivismo republicano)', 1, 0),
(@p, 'Questão Abolicionista (perda do apoio dos grandes fazendeiros escravistas após a Lei Áurea de 1888 sem indenização)', 1, 0),
(@p, 'Questão Soviética (aliança entre D. Pedro II e Lênin para coletivizar as fazendas de café)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual guerra ocorrida entre 1864 e 1870 opôs a Tríplice Aliança (Brasil, Argentina e Uruguai) ao governo de Solano López, resultando na destruição demográfica e econômica paraguaia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Guerra do Paraguai', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as leis abolicionistas graduais que antecederam o fim da escravidão no Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lei Eusébio de Queirós (1850) — fim do tráfico negreiro internacional', 1, 1),
(@p, 'Lei do Ventre Livre (1871) — liberdade aos filhos de mulheres escravizadas nascidos a partir daquela data', 1, 2),
(@p, 'Lei dos Sexagenários / Saraiva-Cotegipe (1885) — liberdade aos escravizados com mais de 60 anos', 1, 3),
(@p, 'Lei Áurea (13 de maio de 1888) — abolição formal da escravidão sem reforma agrária nem indenização aos libertos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o Brasil foi o último país das Américas a abolir oficialmente a escravidão em 1888?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela enorme dependência econômica e política do Estado imperial em relação à aristocracia rural latifundiária escravista, que resistiu até a pressão insustentável do movimento abolicionista e das fugas em massa.', 1, 0),
(@p, 'Porque não havia nenhum movimento abolicionista nem resistência negra no Brasil.', 0, 0),
(@p, 'Porque a Constituição de 1824 proibia expressamente qualquer lei sobre trabalho.', 0, 0),
(@p, 'Porque todos os países da Europa mantiveram a escravidão até o século XX.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Proclamação da República em 15 de novembro de 1889 foi conduzida por um golpe militar liderado pelo Marechal Deodoro da Fonseca com apoio dos cafeicultores paulistas, sem ampla participação popular.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 32: Brasil República
-- -------------------------------------------------------------------------

-- Quiz 32.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Primeira República (1889-1930): Café com Leite, Coronelismo e Revoltas', 1, 32);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como funcionava a estrutura de poder da "República Oligárquica" no Brasil entre 1894 e 1930?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela aliança entre os coronéis locais (voto de cabresto), os governadores estaduais (Política dos Governadores) e a alternância na presidência entre as oligarquias de São Paulo e Minas Gerais (Café com Leite).', 1, 0),
(@p, 'Por meio de eleições eletrônicas rigorosamente fiscalizadas pela Justiça Eleitoral com voto feminino.', 0, 0),
(@p, 'Pelo governo direto dos sindicatos operários e camponeses sem terra.', 0, 0),
(@p, 'Pela manutenção do Poder Moderador exercido por D. Pedro II.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada mecanismo da Primeira República brasileira à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Coronelismo e Voto de Cabresto', 1, 1, 'Controle dos eleitores rurais pelos chefes locais por meio de favores e coerção com voto aberto'),
(@p, 'Política dos Governadores (Campos Sales)', 1, 2, 'Troca de apoio entre o Presidente da República e os governadores estaduais via Comissão Verificadora'),
(@p, 'Convênio de Taubaté (1906)', 1, 3, 'Política de valorização do café em que o Estado comprava e estocava sacas excedentes para manter preços');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Constituição Republicana de 1891 instituiu o presidencialismo, o federalismo, a separação entre Igreja e Estado (Estado laico) e o voto aberto masculino para maiores de 21 anos alfabetizados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique importantes movimentos sociais e revoltas ocorridos durante a Primeira República:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Guerra de Canudos (BA) e Guerra do Contestado (PR/SC) — movimentos messiânicos camponeses contra a miséria e o latifúndio', 1, 0),
(@p, 'Revolta da Vacina (1904) e Revolta da Chibata (1910) liderada por João Cândido no Rio de Janeiro', 1, 0),
(@p, 'Greve Geral de 1917 em São Paulo liderada pelo movimento operário anarcossindicalista e Tenentismo nos anos 1920', 1, 0),
(@p, 'Inconfidência Mineira e Conjuração Baiana', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual movimento político-militar da década de 1920 protagonizado por jovens oficiais do Exército (como Luís Carlos Prestes e Juarez Távora) combateu as fraudes eleitorais das oligarquias e realizou a Coluna Prestes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tenentismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos da Primeira República brasileira:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'República da Espada (governos dos marechais Deodoro da Fonseca e Floriano Peixoto, 1889-1894)', 1, 1),
(@p, 'Crise financeira do Encilhamento e consolidação da República Oligárquica (1894)', 1, 2),
(@p, 'Reforma urbana do "Bota-Abaixo" no Rio de Janeiro, Revolta da Vacina e Convênio de Taubaté', 1, 3),
(@p, 'Semana de Arte Moderna (1922), revoltas tenentistas, Crise de 1929 e Revolução de 1930', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento internacional de 1929 derrubou os preços internacionais do café brasileiro e rompeu a aliança política "Café com Leite", abrindo caminho para a Revolução de 1930?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Quebra da Bolsa de Nova York (Crise de 1929), somada à indicação do paulista Júlio Prestes pelo presidente Washington Luís em quebra ao acordo com Minas Gerais.', 1, 0),
(@p, 'A Segunda Guerra Mundial iniciada em 1939.', 0, 0),
(@p, 'A Guerra do Paraguai.', 0, 0),
(@p, 'A assinatura da Lei Áurea.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Revolta da Chibata (1910) foi um motim de marinheiros negros da Marinha brasileira no Rio de Janeiro contra os castigos físicos corporais (chibatadas) herdados do período escravista.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 32.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Era Vargas (1930-1945): Revolução de 1930, Estado Novo e Trabalhismo', 2, 32);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o principal significado histórico da Revolução de 1930 que levou Getúlio Vargas ao poder?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Encerrou o monopólio político exclusivo das oligarquias agrárias cafeeiras da Primeira República e inaugurou um Estado centralizador focado na industrialização nacional.', 1, 0),
(@p, 'Restaurou a monarquia constitucional da família imperial brasileira.', 0, 0),
(@p, 'Entregou o governo do Brasil aos banqueiros estrangeiros sem leis trabalhistas.', 0, 0),
(@p, 'Acabou com todas as indústrias brasileiras para plantar apenas café.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fase da Era Vargas (1930-1945) às suas características:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Governo Provisório (1930-1934)', 1, 1, 'Nomeação de interventores nos estados, Revolução Constitucionalista de 1932 em SP e Constituição de 1934'),
(@p, 'Governo Constitucional (1934-1937)', 1, 2, 'Polarização radical entre a AIB (fascistas) e a ANL (esquerda) e Intentona Comunista de 1935'),
(@p, 'Estado Novo (1937-1945)', 1, 3, 'Ditadura centralizadora instaurada sob pretexto do falso Plano Cohen, com censura do DIP e CLT');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Constituição de 1934 instituiu no Brasil o voto secreto, o voto feminino, a Justiça Eleitoral e importantes direitos trabalhistas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas econômicas e trabalhistas emblemáticas da Era Vargas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Criação de grandes estatais de base como a Companhia Siderúrgica Nacional (CSN) e a Vale do Rio Doce', 1, 0),
(@p, 'Consolidação das Leis do Trabalho (CLT, 1943) reunindo salário mínimo, férias remuneradas e jornada de 8 horas', 1, 0),
(@p, 'Sindicalismo atrelado ao Estado (peleguismo) combinando concessão de direitos e controle político', 1, 0),
(@p, 'Privatização total de todas as estatais e proibição de qualquer indústria nacional', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual órgão criado por Getúlio Vargas durante o Estado Novo controlava a censura aos meios de comunicação e produzia a propaganda oficial do regime (como o programa A Hora do Brasil)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Departamento de Imprensa e Propaganda', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os eventos da Era Vargas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Revolução de 1930 derruba Washington Luís e impede a posse de Júlio Prestes', 1, 1),
(@p, 'Revolução Constitucionalista de São Paulo (1932) e promulgação da Constituição de 1934', 1, 2),
(@p, 'Golpe do Estado Novo (1937) outorgando a Constituição autoritária "Polaca"', 1, 3),
(@p, 'Participação do Brasil na Segunda Guerra Mundial, movimento Queremista e deposição de Vargas em 1945', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual contradição política acelerou o fim da ditadura do Estado Novo em 1945?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Brasil lutava contra as ditaduras nazi-fascistas na Europa ao lado dos Aliados democráticos enquanto vivia internamente sob uma ditadura autoritária sem eleições.', 1, 0),
(@p, 'A vitória militar da Alemanha nazista sobre os Estados Unidos em 1945.', 0, 0),
(@p, 'A recusa dos trabalhadores urbanos em aceitar o salário mínimo.', 0, 0),
(@p, 'O retorno da família real portuguesa ao Rio de Janeiro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O "Trabalhismo" varguista construiu a imagem de Getúlio Vargas como "Pai dos Pobres", vinculando a conquista dos direitos sociais à figura pessoal do líder e do Estado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 32.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('República Populista (1945-1964) e Regime Militar (1964-1985)', 2, 32);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal marca do governo desenvolvimentista de Juscelino Kubitschek (1956-1961)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Plano de Metas ("50 anos em 5"), que impulsionou a industrialização de bens duráveis (automobilística), abriu o país ao capital estrangeiro e construiu a nova capital, Brasília.', 1, 0),
(@p, 'O fechamento de todas as rodovias e a proibição de fábricas estrangeiras no Brasil.', 0, 0),
(@p, 'A transferência da capital federal do Rio de Janeiro de volta para Salvador.', 0, 0),
(@p, 'A estatização completa de toda a agricultura e comércio varejista.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada presidente ou ato do período 1951-1974 ao seu marco histórico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Segundo Governo Vargas (1951-1954)', 1, 1, 'Campanha nacionalista "O Petróleo é Nosso", criação da Petrobras e suicídio em agosto de 1954'),
(@p, 'Reformas de Base (João Goulart)', 1, 2, 'Propostas de reformas agrária, tributária, educacional e urbana barradas antes do Golpe de 1964'),
(@p, 'Ato Institucional nº 5 (AI-5, dezembro de 1968)', 1, 3, 'Endurecimento máximo da ditadura militar: fechou o Congresso, suspendeu habeas corpus e impôs censura');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Constituição democrática de 1946 garantiu o pluripartidarismo, eleições diretas e liberdades civis, vigorando durante a chamada República Populista (1946-1964).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do chamado "Milagre Econômico Brasileiro" (1969-1973) durante o governo do general Emílio Garrastazu Médici:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Elevadas taxas anuais de crescimento do PIB (acima de 10% ao ano) e grandes obras faraônicas (Transamazônica, Ponte Rio-Niterói, Itaipu)', 1, 0),
(@p, 'Forte endividamento externo e arrocho salarial que aumentou a concentração de renda ("fazer o bolo crescer para depois dividir")', 1, 0),
(@p, 'Coincidência com os "Anos de Chumbo" de intensa repressão política, censura e tortura', 1, 0),
(@p, 'Distribuição igualitária da renda nacional e redução da dívida externa a zero', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual ato institucional decretado em 1965 extinguiu todos os partidos políticos existentes e impôs o bipartidarismo artificial entre a ARENA (situação) e o MDB (oposição consentida)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'AI-2', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os presidentes militares do Regime de 1964-1985:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Humberto Castelo Branco e Artur da Costa e Silva (1964-1969 — institucionalização e AI-5)', 1, 1),
(@p, 'Emílio Garrastazu Médici (1969-1974 — Anos de Chumbo e Milagre Econômico)', 1, 2),
(@p, 'Ernesto Geisel (1974-1979 — início da distensão "lenta, gradual e segura" e revogação do AI-5)', 1, 3),
(@p, 'João Batista Figueiredo (1979-1985 — Lei da Anistia, pluripartidarismo e campanha Diretas Já)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que foi a "Política Externa Independente" adotada nos governos de Jânio Quadros e João Goulart (1961-1964)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A busca por autonomia diplomática do Brasil frente à polarização da Guerra Fria, ampliando relações comerciais com países socialistas e nações recém-descolonizadas da África e Ásia.', 1, 0),
(@p, 'A submissão automática do Brasil a todas as ordens militares de Washington.', 0, 0),
(@p, 'O rompimento diplomático com todos os países da América do Sul.', 0, 0),
(@p, 'A adesão formal do Brasil ao Pacto de Varsóvia soviético.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As crises do petróleo de 1973 e 1979 e a elevação dos juros internacionais encerraram o "Milagre Econômico" e mergulharam o Brasil na crise da dívida externa e na hiperinflação dos anos 1980.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 32.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Redemocratização, Constituição de 1988, Plano Real e Brasil Contemporâneo', 3, 32);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Constituição Federal promulgada em 5 de outubro de 1988 ficou consagrada como a "Constituição Cidadã" (expressão de Ulysses Guimarães)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque restabeleceu plenamente o Estado Democrático de Direito, ampliou os direitos sociais, políticos e individuais, instituiu o SUS, o voto aos analfabetos e criminalizou o racismo e a tortura.', 1, 0),
(@p, 'Porque restaurou o Poder Moderador e o voto censitário por renda.', 0, 0),
(@p, 'Porque proibiu os sindicatos, o direito de greve e o voto direto.', 0, 0),
(@p, 'Porque instituiu a censura prévia aos jornais e músicas no país.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada presidente da Nova República brasileira ao marco central de seu governo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'José Sarney (1985-1990)', 1, 1, 'Primeiro presidente civil pós-ditadura, Plano Cruzado e promulgação da Constituição de 1988'),
(@p, 'Fernando Collor (1990-1992)', 1, 2, 'Abertura comercial neoliberal, confisco das poupanças e primeiro processo de impeachment'),
(@p, 'Itamar Franco / Fernando Henrique Cardoso', 1, 3, 'Implantação do Plano Real (1994) controlando a hiperinflação, privatizações e Lei de Responsabilidade Fiscal');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A campanha "Diretas Já" (1983-1984) mobilizou milhões de brasileiros nas ruas pela aprovação da Emenda Dante de Oliveira, mas, mesmo derrotada no Congresso, acelerou o fim do regime militar com a eleição indireta de Tancredo Neves.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique transformações sociais e políticas marcantes do Brasil nas primeiras décadas do século XXI:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Programas de transferência de renda (como o Bolsa Família), valorização do salário mínimo e redução da extrema pobreza', 1, 0),
(@p, 'Expansão do acesso ao ensino superior e políticas de ações afirmativas (cotas raciais e sociais)', 1, 0),
(@p, 'Alternância democrática de poder pelo voto direto, crises político-econômicas e debates sobre preservação ambiental na Amazônia', 1, 0),
(@p, 'Fechamento definitivo do Supremo Tribunal Federal e retorno da censura imperial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual unidade de conta transitória criada em 1994 pela equipe econômica de Fernando Henrique Cardoso preparou a estabilidade monetária antes da entrada em circulação da nova moeda brasileira?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Unidade Real de Valor', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os marcos da redemocratização e da Nova República brasileira:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Campanha Diretas Já e eleição indireta de Tancredo Neves e José Sarney (1984-1985)', 1, 1),
(@p, 'Promulgação da Constituição Cidadã (1988) e primeira eleição presidencial direta após 1960 (1989)', 1, 2),
(@p, 'Impeachment de Fernando Collor (1992) e lançamento do Plano Real (1994)', 1, 3),
(@p, 'Consolidação da estabilidade monetária e eleições presidenciais diretas regulares nas décadas seguintes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o principal mecanismo econômico utilizado pelo Plano Real (1994) para derrotar a hiperinflação que assolava o Brasil desde os anos 1980?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ajuste fiscal prévio, a desindexação gradual da economia por meio da URV (sem congelamento abrupto de preços) e a âncora cambial respaldada por reservas internacionais.', 1, 0),
(@p, 'O confisco imediato de todas as cadernetas de poupança e contas correntes dos cidadãos.', 0, 0),
(@p, 'A proibição de qualquer importação de produtos estrangeiros.', 0, 0),
(@p, 'A substituição da moeda nacional pelo dólar norte-americano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Constituição de 1988 garantiu aos povos indígenas o direito originário sobre as terras que tradicionalmente ocupam e o respeito à sua organização social, costumes, línguas e tradições.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);