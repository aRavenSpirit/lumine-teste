USE luminebd;

-- =========================================================================
-- MATÉRIA 4: GEOGRAFIA (CONTEÚDOS 33 A 41)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 33: Cartografia
-- -------------------------------------------------------------------------

-- Quiz 33.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Orientação, Pontos Cardeais e Coordenadas Geográficas', 1, 33);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual linha imaginária divide a Terra nos hemisférios Norte (Setentrional) e Sul (Meridional), servindo de referência 0° para as latitudes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Linha do Equador', 1, 0),
(@p, 'Meridiano de Greenwich', 0, 0),
(@p, 'Trópico de Capricórnio', 0, 0),
(@p, 'Círculo Polar Ártico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento do sistema de coordenadas geográficas à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Latitude', 1, 1, 'Distância em graus de qualquer ponto da Terra até a Linha do Equador (0° a 90°)'),
(@p, 'Longitude', 1, 2, 'Distância em graus de qualquer ponto da Terra até o Meridiano de Greenwich (0° a 180°)'),
(@p, 'Meridiano de Greenwich', 1, 3, 'Linha imaginária vertical que divide a Terra nos hemisférios Leste e Oeste');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Devido ao movimento de rotação da Terra de oeste para leste, o Sol nasce aparentemente no horizonte leste (nascente) e se põe no horizonte oeste (poente).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os quatro pontos cardeais da Rosa dos Ventos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Norte (Setentrional ou Boreal)', 1, 0),
(@p, 'Sul (Meridional ou Austral)', 1, 0),
(@p, 'Leste (Oriente) e Oeste (Ocidente)', 1, 0),
(@p, 'Nordeste e Sudoeste (pontos colaterais)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual instrumento tradicional de orientação utiliza uma agulha imantada que aponta sempre para o norte magnético da Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bússola', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os principais paralelos terrestres do extremo Norte até o extremo Sul:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Círculo Polar Ártico (66°33 N)', 1, 1),
(@p, 'Trópico de Câncer (23°27 N)', 1, 2),
(@p, 'Linha do Equador (0°)', 1, 3),
(@p, 'Trópico de Capricórnio (23°27 S) e Círculo Polar Antártico (66°33 S)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O território brasileiro está localizado majoritariamente em quais hemisférios da Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Totalmente no hemisfério Ocidental (Oeste) e majoritariamente no hemisfério Sul (Meridional).', 1, 0),
(@p, 'Totalmente no hemisfério Oriental (Leste) e no hemisfério Norte.', 0, 0),
(@p, 'Totalmente acima do Trópico de Câncer.', 0, 0),
(@p, 'Dividido ao meio pelo Meridiano de Greenwich.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Antípodas são dois pontos diametralmente opostos na superfície terrestre que possuem latitudes de mesmo valor em hemisférios contrários e longitudes que somam 180°.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 33.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Escala Cartográfica e Convenções dos Mapas', 2, 33);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que indica uma escala cartográfica numérica de 1:500.000 em um mapa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que cada 1 cm medido no mapa corresponde a 500.000 cm (ou 5 km) na superfície real.', 1, 0),
(@p, 'Que o mapa é 500.000 vezes maior que a cidade representada.', 0, 0),
(@p, 'Que cada 1 metro no mapa equivale a 5 centímetros na realidade.', 0, 0),
(@p, 'Que o mapa foi produzido há 500 mil anos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento obrigatório de um mapa à sua função cartográfica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Título', 1, 1, 'Indica o tema, o recorte espacial e o período temporal representados'),
(@p, 'Legenda', 1, 2, 'Decodifica as cores, símbolos, linhas e hachuras utilizados no mapa'),
(@p, 'Escala', 1, 3, 'Estabelece a proporção matemática entre a medida no mapa e a distância real');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quanto menor for o denominador de uma escala numérica (por exemplo, 1:10.000 em comparação a 1:1.000.000), maior é a escala e maior é o nível de riqueza de detalhes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre as curvas de nível (isoípsas) nas cartas topográficas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Unem pontos da superfície terrestre que possuem exatamente a mesma altitude', 1, 0),
(@p, 'Quanto mais próximas as curvas de nível estiverem umas das outras, mais íngreme é o relevo', 1, 0),
(@p, 'Quanto mais afastadas as curvas de nível estiverem, mais plano ou suave é o terreno', 1, 0),
(@p, 'Representam exclusivamente a temperatura média dos oceanos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o mapa temático distorcido propositalmente em que o tamanho das áreas dos países é proporcional à intensidade de um dado estatístico (como PIB ou população)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Anamorfose geográfica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as representações cartográficas da escala MAIOR (mais detalhada) para a escala MENOR (mais abrangente):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Planta arquitetônica de uma residência (1:100)', 1, 1),
(@p, 'Carta topográfica de um município (1:50.000)', 1, 2),
(@p, 'Mapa político do Brasil (1:5.000.000)', 1, 3),
(@p, 'Planisfério múndi (1:50.000.000)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em um mapa de escala 1:250.000, a distância em linha reta entre duas cidades mede 4 cm. Qual é a distância real entre elas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '10 km', 1, 0),
(@p, '100 km', 0, 0),
(@p, '1 km', 0, 0),
(@p, '25 km', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A escala gráfica (uma régua graduada desenhada no mapa) tem a vantagem de continuar válida mesmo quando o mapa é ampliado ou reduzido em fotocópias.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 33.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Projeções Cartográficas: Mercator, Peters e Tipos de Projeção', 2, 33);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que toda projeção cartográfica plana apresenta algum tipo de distorção (na forma, na área ou nas distâncias)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque é matematicamente impossível planificar uma superfície esférica (o geoide terrestre) sem deformá-la.', 1, 0),
(@p, 'Porque os cartógrafos antigos não sabiam usar réguas.', 0, 0),
(@p, 'Porque os continentes mudam de lugar a cada semana.', 0, 0),
(@p, 'Porque apenas o globo terrestre contém distorções.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada classificação de projeção cartográfica à propriedade geométrica que ela preserva:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Projeção Conforme', 1, 1, 'Preserva os ângulos e as formas dos continentes, mas distorce suas áreas'),
(@p, 'Projeção Equivalente', 1, 2, 'Preserva a proporção real das áreas, mas distorce os contornos e formas'),
(@p, 'Projeção Equidistante', 1, 3, 'Preserva as distâncias lineares a partir de um ponto central');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Projeção de Mercator (cilíndrica conforme) exagera o tamanho das terras de altas latitudes (como a Groenlândia e a Europa), sendo associada historicamente a uma visão eurocêntrica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características da Projeção de Gall-Peters:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É uma projeção cilíndrica equivalente que mantém a proporção real das áreas dos países', 1, 0),
(@p, 'Alongou verticalmente os continentes situados na faixa intertropical (como África e América do Sul)', 1, 0),
(@p, 'Foi popularizada como uma leitura cartográfica terceiro-mundista contra o eurocentrismo', 1, 0),
(@p, 'Preserva perfeitamente os ângulos de navegação marítima sem alongar formas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de projeção cartográfica projeta a superfície terrestre sobre um plano tangente a um ponto específico (geralmente um dos polos), sendo usada no emblema da ONU?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Projeção azimutal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três superfícies geométricas auxiliares utilizadas nas projeções cartográficas clássicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Projeção Cilíndrica (ideal para planisférios e regiões equatoriais)', 1, 1),
(@p, 'Projeção Cônica (ideal para representar regiões de latitudes médias/temperadas)', 1, 2),
(@p, 'Projeção Plana ou Azimutal (ideal para regiões polares e análises geopolíticas)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Para qual finalidade prática a Projeção de Mercator foi criada no século XVI e continua muito útil até hoje?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para a navegação marítima e aérea, pois preserva os ângulos de rumo (linhas loxodrômicas retas).', 1, 0),
(@p, 'Para comparar o tamanho exato da Groenlândia com o da América do Sul.', 0, 0),
(@p, 'Para mapear exclusivamente o fundo das fossas oceânicas.', 0, 0),
(@p, 'Para medir a profundidade do núcleo terrestre.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A projeção de Robinson é classificada como afilática porque não preserva integralmente nem as formas nem as áreas, buscando um equilíbrio visual estético entre ambas as distorções.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 33.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fusos Horários e Geotecnologias (GPS, Sensoriamento e SIG)', 3, 33);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quantos graus de longitude correspondem a cada um dos 24 fusos horários teóricos da Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '15° de longitude (resultado da divisão dos 360° da circunferência terrestre pelas 24 horas do dia).', 1, 0),
(@p, '24° de longitude.', 0, 0),
(@p, '10° de longitude.', 0, 0),
(@p, '30° de longitude.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada geotecnologia moderna ao seu princípio de funcionamento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sensoriamento Remoto', 1, 1, 'Obtenção de imagens da superfície terrestre à distância por satélites e radares'),
(@p, 'GPS / GNSS', 1, 2, 'Sistema de posicionamento global por triangulação de sinais de satélites'),
(@p, 'SIG (Sistema de Informação Geográfica)', 1, 3, 'Software que integra, cruza e analisa dados espaciais georreferenciados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao viajar no sentido Leste (acompanhando o sentido de rotação da Terra), as horas aumentam (adiantam-se); ao viajar no sentido Oeste, as horas diminuem (atrasam-se).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características dos fusos horários oficiais do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Brasil possui 4 fusos horários oficiais, todos atrasados em relação ao horário de Greenwich (GMT)', 1, 0),
(@p, 'O fuso oficial de Brasília corresponde a GMT -3 (45° Oeste)', 1, 0),
(@p, 'O estado do Acre e o extremo oeste do Amazonas situam-se no fuso GMT -5', 1, 0),
(@p, 'O Brasil está adiantado 3 horas em relação ao horário de Londres', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual linha imaginária localizada aproximadamente no meridiano 180° no Oceano Pacífico marca a mudança oficial de dia no calendário terrestre?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Linha Internacional de Data', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo da hora local de chegada de um voo internacional entre dois fusos distintos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular a diferença de graus de longitude entre as duas cidades e dividir por 15°', 1, 1),
(@p, 'Somar a diferença horária se o destino estiver a Leste ou subtrair se estiver a Oeste', 1, 2),
(@p, 'Adicionar a duração total da viagem de avião ao horário convertido', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando são 14h00 em Brasília (45° O, fuso GMT -3), que horas são simultaneamente em Londres (0°, fuso GMT 0)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '17h00', 1, 0),
(@p, '11h00', 0, 0),
(@p, '18h00', 0, 0),
(@p, '10h00', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os limites práticos dos fusos horários nos mapas políticos não são linhas perfeitamente retas, pois sofrem desvios para acompanhar fronteiras estaduais e nacionais por conveniência administrativa.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 34: Climas
-- -------------------------------------------------------------------------

-- Quiz 34.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tempo Atmosférico, Clima e Elementos Climáticos', 1, 34);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença fundamental entre "Tempo Atmosférico" e "Clima"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O tempo é o estado momentâneo e variável da atmosfera em um local; o clima é a sucessão habitual dos tipos de tempo observada por cerca de 30 anos.', 1, 0),
(@p, 'O tempo só ocorre no verão; o clima só ocorre no inverno.', 0, 0),
(@p, 'O tempo é medido em quilômetros; o clima é medido em toneladas.', 0, 0),
(@p, 'Não existe diferença entre tempo atmosférico e clima.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada instrumento meteorológico ao elemento climático que ele mede:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Pluviômetro', 1, 1, 'Quantidade de precipitação (chuva) acumulada em milímetros'),
(@p, 'Barômetro', 1, 2, 'Pressão atmosférica exercida pelo peso da coluna de ar'),
(@p, 'Anemômetro e Higrômetro', 1, 3, 'Velocidade dos ventos e umidade relativa do ar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os ventos deslocam-se sempre das áreas de alta pressão atmosférica (anticiclonais ou dispersoras) para as áreas de baixa pressão atmosférica (ciclonais ou receptoras).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as camadas principais da atmosfera terrestre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Troposfera (camada inferior onde ocorrem os fenômenos meteorológicos e a vida)', 1, 0),
(@p, 'Estratosfera (onde se localiza a camada de ozônio que filtra raios UV)', 1, 0),
(@p, 'Mesosfera, Termosfera e Exosfera', 1, 0),
(@p, 'Litosfera e Astenosfera', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama o tipo de chuva muito comum nas regiões equatoriais e nas tardes quentes de verão causado pela ascensão rápida do ar quente e úmido que se resfria e condensa em altitude?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Chuva convectiva', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas do processo de formação de uma chuva orográfica (de relevo):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Massa de ar úmida vinda do oceano encontra uma barreira montanhosa', 1, 1),
(@p, 'O ar é forçado a subir pela encosta a barlavento, resfriando-se em altitude', 1, 2),
(@p, 'O vapor de água condensa-se e precipita na encosta voltada para o mar', 1, 3),
(@p, 'O ar desce seco pelo outro lado (sotavento), formando uma sombra de chuva', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que acontece com a pressão atmosférica e com a temperatura à medida que subimos uma montanha muito alta (aumento da altitude)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ambas diminuem, pois o ar torna-se mais rarefeito e retém menos calor irradiado pela superfície.', 1, 0),
(@p, 'Ambas aumentam rapidamente até ferver a água.', 0, 0),
(@p, 'A pressão aumenta e a temperatura permanece constante.', 0, 0),
(@p, 'Não há variação de pressão nem de temperatura com a altitude.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A chuva frontal ocorre pelo encontro entre uma massa de ar frio e denso e uma massa de ar quente e úmido, causando quedas bruscas de temperatura após a precipitação.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 34.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fatores Climáticos: Latitude, Maritimidade, Correntes e Massas de Ar', 2, 34);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença térmica provocada pelos fatores "Maritimidade" e "Continentalidade"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A maritimidade reduz a amplitude térmica diária e anual devido ao calor específico da água; a continentalidade provoca grandes amplitudes térmicas no interior dos continentes.', 1, 0),
(@p, 'A maritimidade provoca desertos secos no litoral; a continentalidade gera furacões diários.', 0, 0),
(@p, 'Cidades litorâneas têm amplitude térmica muito maior que cidades no meio de grandes continentes.', 0, 0),
(@p, 'Os oceanos aquecem e esfriam mais rápido que as rochas continentais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fator climático ao seu efeito principal sobre o clima regional:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Latitude', 1, 1, 'Quanto maior a distância do Equador, mais inclinados chegam os raios solares e menor é a temperatura'),
(@p, 'Correntes marítimas frias', 1, 2, 'Reduzem a evaporação e favorecem a formação de desertos costeiros (como o Atacama)'),
(@p, 'Albedo superficial', 1, 3, 'Capacidade de uma superfície refletir radiação solar (alta na neve, baixa no asfalto)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Corrente do Golfo (corrente marítima quente do Atlântico Norte) ameniza os invernos da Europa Ocidental, impedindo o congelamento de portos em altas latitudes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as cinco principais massas de ar que atuam sobre o território brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Massa Equatorial Continental (mEc) — quente e muito úmida devido à floresta Amazônica', 1, 0),
(@p, 'Massa Equatorial Atlântica (mEa) e Massa Tropical Atlântica (mTa) — quentes e úmidas', 1, 0),
(@p, 'Massa Tropical Continental (mTc — quente e seca) e Massa Polar Atlântica (mPa — fria e úmida)', 1, 0),
(@p, 'Massa Ártica Siberiana (mAs) — gelada e seca sobre o Nordeste', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno climático típico do inverno da Região Norte do Brasil ocorre quando a Massa Polar Atlântica (mPa) avança pela planície amazônica derrubando bruscamente as temperaturas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Friagem', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o fenômeno dos "Rios Voadores" que abastecem de umidade o Centro-Sul do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ventos alísios trazem umidade do Oceano Atlântico para a Amazônia', 1, 1),
(@p, 'A Floresta Amazônica recicla essa umidade por intensa evapotranspiração', 1, 2),
(@p, 'A Cordilheira dos Andes atua como barreira física desviando os ventos úmidos para o Sul', 1, 3),
(@p, 'A umidade precipita sobre o Centro-Oeste, Sudeste e Sul do Brasil', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Massa Equatorial Continental (mEc) é uma exceção entre as massas continentais ao ser quente e muito úmida?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque se origina sobre a Bacia Amazônica, recebendo enorme umidade da densa rede hidrográfica e da evapotranspiração da floresta.', 1, 0),
(@p, 'Porque se origina sobre o Deserto do Saara.', 0, 0),
(@p, 'Porque vem diretamente da geleira da Antártida.', 0, 0),
(@p, 'Porque não possui nenhuma nuvem nem vapor de água.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As brisas marítimas sopram do mar para o continente durante o dia (porque a terra aquece mais rápido que a água) e invertem o sentido durante a noite.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 34.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tipos Climáticos Mundiais e Climas do Brasil', 2, 34);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual tipo climático brasileiro apresenta duas estações bem definidas — verão quente e chuvoso e inverno ameno e seco — abrangendo grande parte do Brasil Central?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Clima Tropical Típico (ou Tropical Continental / Semiúmido)', 1, 0),
(@p, 'Clima Subtropical Úmido', 0, 0),
(@p, 'Clima Polar Glacial', 0, 0),
(@p, 'Clima Mediterrâneo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada clima brasileiro às suas características principais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Clima Equatorial Úmido', 1, 1, 'Elevadas temperaturas o ano todo, baixa amplitude térmica e chuvas abundantes'),
(@p, 'Clima Semiárido', 1, 2, 'Altas temperaturas, chuvas escassas e mal distribuídas no interior nordestino'),
(@p, 'Clima Subtropical', 1, 3, 'Localizado abaixo do Trópico de Capricórnio, com quatro estações definidas e maior amplitude térmica');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Clima Mediterrâneo (encontrado no sul da Europa, Califórnia e centro do Chile) possui uma característica singular: verões quentes e secos e invernos amenos e chuvosos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam a semiaridez do Sertão Nordestino brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Encontro de massas de ar que já chegam ao interior com pouca umidade após precipitarem no litoral', 1, 0),
(@p, 'Barreiras de relevo como o Planalto da Borborema bloqueando parte da umidade oceânica', 1, 0),
(@p, 'Influência de células de alta pressão atmosférica que dificultam a formação de nuvens de chuva', 1, 0),
(@p, 'Localização abaixo do Círculo Polar Antártico com nevascas constantes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo climático do Sul e Sudeste Asiático caracteriza-se por ventos sazonais que provocam verões extremamente chuvosos (com inundações) e invernos secos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Clima de monções', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as zonas térmicas (climáticas) da Terra a partir da Linha do Equador em direção aos polos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Zona Intertropical ou Tórrida (entre os trópicos de Câncer e Capricórnio)', 1, 1),
(@p, 'Zonas Temperadas Norte e Sul (entre os trópicos e os círculos polares)', 1, 2),
(@p, 'Zonas Polares ou Glaciais Ártica e Antártica (acima dos círculos polares)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como interpretamos um "Climograma" de uma determinada cidade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As barras verticais representam o volume mensal de chuvas (mm) e a linha contínua indica a variação da temperatura média (°C) ao longo dos 12 meses.', 1, 0),
(@p, 'As barras representam a altitude das montanhas e a linha indica o número de habitantes.', 0, 0),
(@p, 'As barras indicam o PIB mensal e a linha mede a velocidade dos terremotos.', 0, 0),
(@p, 'O climograma mostra apenas as fases da Lua durante uma semana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Clima Tropical de Altitude ocorre nas áreas mais elevadas do Sudeste brasileiro (como Serra da Mantiqueira e Campos do Jordão), apresentando temperaturas mais amenas que as áreas vizinhas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 34.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fenômenos Climáticos: El Niño, Ilhas de Calor, Inversão Térmica e Efeito Estufa', 3, 34);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o fenômeno oceânico-atmosférico conhecido como "El Niño"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O aquecimento anormal das águas superficiais do Oceano Pacífico Equatorial Central e Oriental, enfraquecendo os ventos alísios e alterando o regime global de chuvas.', 1, 0),
(@p, 'O congelamento completo do Oceano Atlântico Sul durante o verão.', 0, 0),
(@p, 'O resfriamento extremo das águas do Pacífico próximo ao Peru.', 0, 0),
(@p, 'Uma erupção vulcânica no centro do Deserto do Saara.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fenômeno climático urbano ou ambiental ao seu mecanismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ilha de Calor Urbana', 1, 1, 'Elevação das temperaturas nos centros urbanizados devido ao asfalto, concreto e falta de áreas verdes'),
(@p, 'Inversão Térmica', 1, 2, 'Camada de ar frio denso presa próxima ao solo sob ar quente, retendo poluentes no inverno'),
(@p, 'Chuva Ácida', 1, 3, 'Reação de óxidos de enxofre e nitrogênio com a umidade atmosférica formando ácidos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Efeito Estufa é um fenômeno natural essencial para manter a temperatura média da Terra adequada à vida; o problema ambiental atual é a sua intensificação antrópica pela queima de combustíveis fósseis.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique impactos típicos do fenômeno El Niño no território brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento das chuvas e risco de enchentes na Região Sul do Brasil', 1, 0),
(@p, 'Intensificação das secas no Sertão Nordestino e redução das chuvas na Amazônia Oriental', 1, 0),
(@p, 'Invernos mais quentes que a média no Centro-Sul do país', 1, 0),
(@p, 'Nevascas permanentes em todo o litoral do Nordeste', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno climático oposto ao El Niño caracteriza-se pelo resfriamento anormal das águas superficiais do Pacífico Equatorial, intensificando chuvas no Norte/Nordeste e estiagens no Sul do Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'La Niña', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de agravamento da poluição atmosférica durante uma Inversão Térmica urbana:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Resfriamento rápido do solo em noites frias de inverno sem nuvens', 1, 1),
(@p, 'Formação de uma camada de ar frio mais denso junto à superfície sob uma camada de ar quente', 1, 2),
(@p, 'Bloqueio das correntes ascendentes de convecção atmosférica', 1, 3),
(@p, 'Concentração de fumaça e gases tóxicos na baixa troposfera sobre a cidade', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual acordo climático internacional firmado em 2015 estabeleceu a meta de limitar o aquecimento global bem abaixo de 2 °C (preferencialmente a 1,5 °C) em relação aos níveis pré-industriais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Acordo de Paris', 1, 0),
(@p, 'Tratado de Tordesilhas', 0, 0),
(@p, 'Pacto de Varsóvia', 0, 0),
(@p, 'Tratado de Versalhes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A destruição da Camada de Ozônio na estratosfera causada pelos gases CFCs é um problema distinto do aquecimento global, embora ambos exijam cooperação ambiental internacional.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 35: Relevo
-- -------------------------------------------------------------------------

-- Quiz 35.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Estrutura Interna da Terra, Crosta e Tipos de Rochas', 1, 35);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são as três grandes camadas concêntricas que compõem a estrutura interna da Terra do exterior para o centro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crosta terrestre (Litosfera), Manto e Núcleo (externo líquido e interno sólido).', 1, 0),
(@p, 'Troposfera, Hidrosfera e Biosfera.', 0, 0),
(@p, 'Planalto, Planície e Depressão.', 0, 0),
(@p, 'Granito, Basalto e Arenito apenas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada um dos três grandes grupos de rochas à sua origem geológica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Rochas Magmáticas ou Ígneas', 1, 1, 'Resfriamento e solidificação do magma (ex.: granito e basalto)'),
(@p, 'Rochas Sedimentares', 1, 2, 'Compactação e cimentação de sedimentos acumulados em bacias (ex.: arenito e calcário)'),
(@p, 'Rochas Metamórficas', 1, 3, 'Transformação de outras rochas sob alta temperatura e pressão sem fusão (ex.: mármore e gnaisse)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os fósseis de seres vivos antigos e as reservas de combustíveis fósseis (petróleo, carvão mineral e gás natural) são encontrados exclusivamente em bacias de rochas sedimentares.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as grandes estruturas geológicas da crosta terrestre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Escudos Cristalinos ou Crátons (terrenos antigos muito resistentes ricos em minerais metálicos)', 1, 0),
(@p, 'Bacias Sedimentares (depressões preenchidas por sedimentos com potencial energético)', 1, 0),
(@p, 'Dobramentos Modernos (grandes cadeias montanhosas recentes como Andes, Alpes e Himalaia)', 1, 0),
(@p, 'Calotas polares atmosféricas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de rocha magmática extrusiva originada do derrame vulcânico de lava deu origem aos solos férteis de "terra roxa" no Sul e Sudeste do Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Basalto', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo litológico simplificado de formação e transformação das rochas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solidificação do magma formando rochas magmáticas', 1, 1),
(@p, 'Desgaste erosivo gerando partículas transportadas para áreas baixas', 1, 2),
(@p, 'Litificação dos depósitos originando rochas sedimentares', 1, 3),
(@p, 'Submissão a grandes pressões e temperaturas formando rochas metamórficas ou novo magma', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o Brasil NÃO possui grandes cadeias de montanhas recentes (dobramentos modernos) nem vulcões ativos em seu território?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o território brasileiro localiza-se no centro da Placa Sul-Americana, longe das bordas de choque tectônico, e possui formação geológica muito antiga.', 1, 0),
(@p, 'Porque o Brasil fica exatamente sobre o Círculo de Fogo do Pacífico.', 0, 0),
(@p, 'Porque a crosta terrestre sob o Brasil não possui rochas sólidas.', 0, 0),
(@p, 'Porque as montanhas brasileiras foram demolidas pelo homem.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As rochas magmáticas intrusivas (plutônicas, como o granito) resfriam-se lentamente no interior da crosta formando cristais visíveis, enquanto as extrusivas (vulcânicas, como o basalto) resfriam-se rapidamente na superfície.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 35.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Agentes Internos do Relevo: Tectônica de Placas, Vulcanismo e Terremotos', 2, 35);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual mecanismo interno no manto terrestre impulsiona o movimento lento das placas tectônicas na litosfera?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'As correntes de convecção do magma pastoso na astenosfera, aquecido pelo calor do núcleo terrestre.', 1, 0),
(@p, 'Os ventos alísios soprando sobre os oceanos.', 0, 0),
(@p, 'As marés provocadas pelas fases da Lua.', 0, 0),
(@p, 'O peso das cidades construídas no litoral.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de limite entre placas tectônicas às feições geológicas que ele produz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Limite Divergente (afastamento)', 1, 1, 'Formação de dorsais mesoceânicas e expansão do assoalho oceânico'),
(@p, 'Limite Convergente (colisão/subducção)', 1, 2, 'Formação de fossas submarinas, vulcões e dobramentos modernos (Andes, Himalaia)'),
(@p, 'Limite Transformante (deslizamento lateral)', 1, 3, 'Falhas geológicas de grande atividade sísmica (como a Falha de San Andreas)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Teoria da Deriva Continental, proposta inicialmente por Alfred Wegener em 1912, sugeria que todos os continentes estiveram unidos em um único supercontinente chamado Pangeia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre os terremotos (abalos sísmicos):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hipocentro (ou foco) é o ponto profundo no interior da crosta onde ocorre a ruptura das rochas', 1, 0),
(@p, 'Epicentro é o ponto da superfície terrestre situado verticalmente acima do hipocentro', 1, 0),
(@p, 'A Escala Richter mede a magnitude (energia liberada) do terremoto pelo sismógrafo', 1, 0),
(@p, 'Terremotos submarinos nunca provocam ondas gigantes (tsunamis)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual região de intenso contato de placas tectônicas ao redor do Oceano Pacífico concentra cerca de 80% dos terremotos e vulcões ativos do planeta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Círculo de Fogo do Pacífico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de formação da Cordilheira dos Andes na borda oeste da América do Sul:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Convergência entre a Placa oceânica de Nazca e a Placa continental Sul-Americana', 1, 1),
(@p, 'Subducção da placa oceânica mais densa sob a placa continental', 1, 2),
(@p, 'Soerguimento e dobramento da borda continental com intenso vulcanismo e sismicidade', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se formou a Cordilheira do Himalaia (onde fica o Monte Everest)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela colisão convergente entre duas placas continentais (Placa Indo-Australiana e Placa Euro-Asiática).', 1, 0),
(@p, 'Pelo afastamento entre a América do Sul e a África.', 0, 0),
(@p, 'Pela erosão causada pelas chuvas tropicais.', 0, 0),
(@p, 'Pelo derretimento de geleiras antigas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os abalos sísmicos de pequena magnitude registrados ocasionalmente no Brasil decorrem de acomodações em falhas geológicas antigas intraplaca, e não do choque direto de bordas de placas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 35.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Agentes Externos do Relevo: Intemperismo, Erosão e Solos', 2, 35);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "Intemperismo" e "Erosão" na modelagem externa do relevo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O intemperismo é a desagregação física ou decomposição química das rochas no próprio local; a erosão envolve o desgaste, o transporte e a deposição dos sedimentos.', 1, 0),
(@p, 'O intemperismo ocorre apenas no núcleo da Terra; a erosão ocorre apenas na Lua.', 0, 0),
(@p, 'O intemperismo constrói montanhas vulcânicas; a erosão cria magma.', 0, 0),
(@p, 'Não há diferença entre intemperismo e erosão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada agente erosivo às formas de relevo que ele esculpe:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Erosão Marinha (Abrasão)', 1, 1, 'Falésias litorâneas e restingas'),
(@p, 'Erosão Glacial', 1, 2, 'Vales em formato de U e fiordes costeiros'),
(@p, 'Erosão Eólica e Pluvial', 1, 3, 'Dunas desérticas, inselbergs, ravinas e voçorocas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em climas quentes e muito úmidos (como o Brasil tropical), predomina o intemperismo químico causado pela água, gerando solos profundos e relevos de formas arredondadas ("mares de morros").');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique práticas conservacionistas que combatem a erosão dos solos agrícolas em encostas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Plantio em curvas de nível (acompanhando a altitude do terreno)', 1, 0),
(@p, 'Terraceamento em degraus nas encostas íngremes', 1, 0),
(@p, 'Preservação da mata ciliar e plantio direto mantendo palhada sobre o solo', 1, 0),
(@p, 'Queimada total da vegetação e aração no sentido morro abaixo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual processo de empobrecimento do solo ocorre em regiões muito chuvosas quando a água infiltra e lava os sais minerais nutrientes das camadas superficiais para o lençol freático?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Lixiviação', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas do processo de formação do solo (pedogênese):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Exposição da rocha matriz (rocha mãe) aos agentes atmosféricos', 1, 1),
(@p, 'Intemperismo físico e químico fragmentando e alterando os minerais', 1, 2),
(@p, 'Colonização por líquens, microrganismos e raízes incorporando matéria orgânica (húmus)', 1, 3),
(@p, 'Diferenciação de camadas horizontais (horizontes O, A, B, C e R)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são as "voçorocas" frequentemente observadas em áreas desmatadas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Grandes fendas e crateras erosivas escavadas pela água das chuvas que atingem até o lençol freático.', 1, 0),
(@p, 'Depósitos naturais de petróleo no fundo dos oceanos.', 0, 0),
(@p, 'Pequenos vulcões de lama congelada nos polos.', 0, 0),
(@p, 'Reservas de água potável subterrânea cristalina.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A laterização é o acúmulo superficial de hidróxidos de ferro e alumínio formando uma crosta dura (canga laterítica) que dificulta a agricultura em solos tropicais degradados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 35.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Unidades de Relevo e Classificações do Relevo Brasileiro', 3, 35);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença geomorfológica entre "Planalto", "Planície" e "Depressão" segundo a classificação moderna de Jurandyr Ross?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nos planaltos predominam processos de erosão; nas planícies predominam processos de sedimentação (deposição); as depressões são áreas rebaixadas em relação ao entorno.', 1, 0),
(@p, 'Planaltos estão sempre acima de 5.000 metros; planícies são sempre submarinas.', 0, 0),
(@p, 'Planícies sofrem apenas erosão vulcânica; planaltos nunca sofrem desgaste.', 0, 0),
(@p, 'Depressões são exclusivamente regiões abaixo do nível do mar no Brasil.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada geógrafo brasileiro à sua clássica classificação do relevo do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Aroldo de Azevedo (década de 1940)', 1, 1, 'Critério altimétrico (cota de 200 m); dividiu o Brasil em 8 unidades (planaltos e planícies)'),
(@p, 'Aziz AbSaber (década de 1960)', 1, 2, 'Critério morfoclimático (equilíbrio entre erosão e sedimentação); 10 compartimentos'),
(@p, 'Jurandyr Ross (década de 1990)', 1, 3, 'Dados de radar do Projeto RADAMBRASIL; 28 unidades (planaltos, planícies e depressões)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A classificação de Jurandyr Ross introduziu oficialmente as "Depressões" (como a Depressão Sertaneja e a Depressão Periférica da Borda Leste da Bacia do Paraná) no mapa do relevo brasileiro.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique formas de relevo características dos planaltos sedimentares e cristalinos brasileiros:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Chapadas (formas tabulares de topo plano e encostas escarpadas, como a Chapada Diamantina)', 1, 0),
(@p, 'Cuestas (relevo assimétrico com uma frente íngreme e um reverso suavemente inclinado)', 1, 0),
(@p, 'Mares de morros (topos arredondados mamelonares típicos do Sudeste)', 1, 0),
(@p, 'Fiordes glaciais profundos esculpidos por geleiras atuais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o ponto mais alto do relevo brasileiro (com cerca de 2.995 metros de altitude), localizado na Serra do Imeri, no estado do Amazonas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pico da Neblina', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene um perfil topográfico esquemático saindo do Oceano Atlântico em São Paulo em direção ao interior:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Planície Litorânea (Baixada Santista)', 1, 1),
(@p, 'Escarpa da Serra do Mar (Planalto Atlântico)', 1, 2),
(@p, 'Depressão Periférica Paulista', 1, 3),
(@p, 'Cuestas Basálticas e Planalto Ocidental Paulista', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia uma "depressão relativa" de uma "depressão absoluta"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A depressão relativa está abaixo dos terrenos vizinhos, mas acima do nível do mar (todas as do Brasil); a absoluta situa-se abaixo do nível médio do mar (como o Mar Morto).', 1, 0),
(@p, 'A depressão relativa ocorre apenas nos oceanos; a absoluta apenas no topo dos Andes.', 0, 0),
(@p, 'O Brasil possui dezenas de depressões absolutas a 500 m abaixo do nível do mar.', 0, 0),
(@p, 'Não há diferença entre depressão relativa e absoluta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As planícies brasileiras (como a Planície Amazônica, a Planície do Pantanal e as Planícies Costeiras) ocupam a menor parcela do território nacional e são geologicamente recentes (era Cenozoica).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 36: Vegetação
-- -------------------------------------------------------------------------

-- Quiz 36.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos de Bioma, Ecossistema e Adaptações Vegetais', 1, 36);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a vegetação é considerada o melhor "espelho" ou indicador visual do clima de uma região?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque as plantas adaptam suas folhas, caules e raízes diretamente à disponibilidade de água, luz e temperatura do ambiente.', 1, 0),
(@p, 'Porque as árvores escolhem livremente mudar o clima ao seu redor.', 0, 0),
(@p, 'Porque todas as plantas do mundo exigem exatamente a mesma temperatura.', 0, 0),
(@p, 'Porque o solo e a chuva não influenciam o crescimento vegetal.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada adaptação botânica ao tipo de ambiente em que ela ocorre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Plantas Xerófitas (espinhos e caules suculentos)', 1, 1, 'Ambientes áridos e semiáridos (reduzem perda de água por transpiração)'),
(@p, 'Plantas Latifoliadas e Perenifólias (folhas largas e sempre verdes)', 1, 2, 'Florestas equatoriais e tropicais muito quentes e úmidas'),
(@p, 'Plantas Aciculifoliadas (folhas em forma de agulha)', 1, 3, 'Florestas de coníferas de clima frio (evitam acúmulo de neve sobre os galhos)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As plantas caducifólias (ou decíduas) perdem suas folhas durante a estação seca ou o inverno rigoroso como estratégia para economizar água e energia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique adaptações típicas da vegetação dos manguezais litorâneos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Raízes aéreas escoras para sustentação no solo lodoso instável', 1, 0),
(@p, 'Pneumatóforos (raízes respiratórias que emergem acima da lama pobre em oxigênio)', 1, 0),
(@p, 'Tolerância à alta salinidade da água salobra (vegetação halófita)', 1, 0),
(@p, 'Raízes extremamente curtas adaptadas a desertos de areia seca', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo ecológico designa a área de transição ambiental entre dois ou mais biomas distintos, onde se misturam espécies de ambos (como a Mata dos Cocais no Brasil)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ecótono', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sucessão ecológica primária de uma comunidade vegetal sobre uma rocha nua:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Espécies pioneiras (líquens e musgos iniciando a formação do solo)', 1, 1),
(@p, 'Vegetação herbácea e gramíneas', 1, 2),
(@p, 'Arbustos e árvores de porte médio', 1, 3),
(@p, 'Comunidade clímax (floresta madura em equilíbrio dinâmico)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são "plantas higrófilas"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Plantas adaptadas a ambientes com elevadíssima umidade atmosférica e hídrica.', 1, 0),
(@p, 'Plantas que sobrevivem apenas em cavernas sem nenhuma luz.', 0, 0),
(@p, 'Plantas adaptadas a desertos hiperáridos sem chuva.', 0, 0),
(@p, 'Plantas que crescem exclusivamente sobre geleiras eternas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um bioma é um grande conjunto de ecossistemas terrestres que compartilham fisionomia vegetal, clima, solo e fauna semelhantes em escala regional ou continental.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 36.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Grandes Biomas Terrestres do Mundo', 2, 36);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual bioma terrestre localiza-se nas altas latitudes próximas ao Círculo Polar Ártico, apresentando solo permanentemente congelado (permafrost) e vegetação rasteira de musgos e líquens no curto verão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tundra', 1, 0),
(@p, 'Savana', 0, 0),
(@p, 'Floresta Equatorial', 0, 0),
(@p, 'Estrepe Tropical', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada bioma mundial às suas características principais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Taiga (Floresta Boreal)', 1, 1, 'Floresta homogênea de coníferas (pinheiros) nas altas latitudes do Hemisfério Norte'),
(@p, 'Floresta Temperada', 1, 2, 'Árvores caducifólias (carvalhos, bordos) que perdem folhas no outono/inverno'),
(@p, 'Savana', 1, 3, 'Vegetação herbácea com árvores esparsas em clima tropical com estação seca marcada');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Florestas Tropicais e Equatoriais (como a Amazônia, a Bacia do Congo e o Sudeste Asiático) detêm a maior biodiversidade terrestre do planeta, apesar de crescerem frequentemente sobre solos de baixa fertilidade natural.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características das Pradarias e Estepes (campos temperados):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Predomínio de gramíneas rasteiras sem grandes florestas contínuas', 1, 0),
(@p, 'Possuem alguns dos solos mais férteis do mundo (como o Tchernozion na Ucrânia)', 1, 0),
(@p, 'Foram amplamente convertidos em áreas de agricultura de grãos e pecuária extensiva', 1, 0),
(@p, 'Apresentam chuvas torrenciais diárias superiores a 3.000 mm anuais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual bioma típico das regiões de clima mediterrâneo (como o sul da Europa) caracteriza-se por arbustos resistentes à seca estival conhecidos como maquis e garrigues?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Vegetação mediterrânea', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sucessão latitudinal dos biomas caminhando do Polo Norte em direção à Linha do Equador:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tundra Ártica', 1, 1),
(@p, 'Taiga (Floresta Boreal de Coníferas)', 1, 2),
(@p, 'Floresta Temperada e Pradarias', 1, 3),
(@p, 'Desertos subtropicais, Savanas e Floresta Equatorial', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Taiga (Floresta Boreal) existe apenas no Hemisfério Norte e não no Hemisfério Sul?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque nas latitudes equivalentes do Hemisfério Sul (entre 50° S e 65° S) praticamente não há massas continentais emersas, apenas oceanos.', 1, 0),
(@p, 'Porque o Hemisfério Sul nunca recebe luz solar.', 0, 0),
(@p, 'Porque os pinheiros foram proibidos ao sul do Equador.', 0, 0),
(@p, 'Porque o Hemisfério Sul é formado apenas por desertos quentes.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos desertos quentes (como o Saara e o Atacama), a amplitude térmica diária é muito elevada devido à baixíssima umidade do ar e à ausência de nuvens para reter o calor à noite.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 36.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Os Seis Biomas Continentais do Brasil', 2, 36);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual bioma brasileiro ocupa o Brasil Central, é considerado a savana mais biodiversa do mundo e funciona como "caixa-dágua" por abrigar nascentes de grandes bacias hidrográficas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cerrado', 1, 0),
(@p, 'Caatinga', 0, 0),
(@p, 'Pampa', 0, 0),
(@p, 'Pantanal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada bioma brasileiro às suas características distintivas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Caatinga', 1, 1, 'Bioma exclusivamente brasileiro de clima semiárido com plantas xerófitas e cactáceas'),
(@p, 'Pantanal', 1, 2, 'Maior planície alagável contínua do planeta, funcionando como mosaico biodiverso'),
(@p, 'Pampa (Campos Sulinos)', 1, 3, 'Predomínio de gramíneas em relevo suave de coxilhas no Rio Grande do Sul');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Floresta Amazônica divide-se em três estratos principais conforme o nível de inundação dos rios: Mata de Igapó (permanentemente alagada), Mata de Várzea (periodicamente alagada) e Mata de Terra Firme.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características da vegetação típica do Cerrado brasileiro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Árvores de troncos retorcidos, casca grossa (cortiça) e raízes muito profundas para alcançar o lençol freático', 1, 0),
(@p, 'Adaptação ao solo naturalmente ácido e rico em alumínio (corrigido na agricultura pela calagem)', 1, 0),
(@p, 'Presença de matas de galeria acompanhando os cursos dos rios', 1, 0),
(@p, 'Floresta homogênea de pinheiros adaptados à neve eterna', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual bioma florestal brasileiro estendia-se originalmente por toda a faixa litorânea do país, foi o mais devastado desde o período colonial e hoje restam apenas cerca de 12% a 24% de seus remanescentes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Mata Atlântica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os biomas brasileiros do MAIOR para o MENOR em área territorial original:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Amazônia (cerca de 49% do território nacional)', 1, 1),
(@p, 'Cerrado (cerca de 24% do território nacional)', 1, 2),
(@p, 'Mata Atlântica (cerca de 13%) e Caatinga (cerca de 10%)', 1, 3),
(@p, 'Pampa (cerca de 2%) e Pantanal (cerca de 1,8%)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual formação vegetal de transição localizada entre a Amazônia, o Cerrado e a Caatinga (no Maranhão e Piauí) destaca-se pela presença de palmeiras como o babaçu e a carnaúba?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mata dos Cocais', 1, 0),
(@p, 'Mata de Araucárias', 0, 0),
(@p, 'Restinga Litorânea', 0, 0),
(@p, 'Tundra Sul-Americana', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Floresta Ombrófila Mista (Mata de Araucárias ou Pinheirais) ocorre nos planaltos de clima subtropical da Região Sul do Brasil, marcada pelo pinheiro-do-paraná.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 36.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Domínios Morfoclimáticos de Aziz AbSaber, Hotspots e Degradação Ambiental', 3, 36);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o geógrafo Aziz AbSaber definiu como "Domínio Morfoclimático" ao analisar o espaço natural brasileiro?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma grande unidade espacial onde interagem de forma integrada e harmônica o relevo, o clima, a hidrografia, o solo e a vegetação.', 1, 0),
(@p, 'Apenas a divisão política administrativa dos municípios brasileiros.', 0, 0),
(@p, 'Uma área urbana industrializada sem nenhuma vegetação.', 0, 0),
(@p, 'Exclusivamente a profundidade das fossas oceânicas do Atlântico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ambiental contemporâneo à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Hotspot de Biodiversidade', 1, 1, 'Área prioritária de conservação com altíssimo endemismo e mais de 70% de perda original'),
(@p, 'Desertificação', 1, 2, 'Degradação severa dos solos em zonas áridas, semiáridas e subúmidas secas'),
(@p, 'Arenização', 1, 3, 'Formação de bancos de areia em solos arenosos de clima úmido (como no sudoeste do RS)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Brasil possui dois biomas reconhecidos internacionalmente como Hotspots globais de biodiversidade: a Mata Atlântica e o Cerrado.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os seis Domínios Morfoclimáticos brasileiros classificados por Aziz AbSaber:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Domínio Amazônico e Domínio do Cerrado', 1, 0),
(@p, 'Domínio dos Mares de Morros e Domínio da Caatinga', 1, 0),
(@p, 'Domínio das Araucárias e Domínio das Pradarias (separados por faixas de transição)', 1, 0),
(@p, 'Domínio das Estepes Siberianas e Domínio dos Fiordes Nórdicos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o arco territorial que vai do Maranhão ao Acre, concentrando as maiores taxas de desmatamento, queimadas e avanço da fronteira agropecuária na Amazônia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Arco do Desmatamento', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a cadeia de impactos ambientais provocada pelo desmatamento em larga escala da Floresta Amazônica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Remoção da cobertura florestal e emissão de carbono armazenado na biomassa', 1, 1),
(@p, 'Exposição do solo pobre às chuvas intensas e perda de nutrientes por lixiviação', 1, 2),
(@p, 'Redução da evapotranspiração e enfraquecimento dos rios voadores', 1, 3),
(@p, 'Alteração do regime de chuvas no Centro-Sul e risco de savanização regional', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são as Unidades de Conservação de "Proteção Integral" segundo o Sistema Nacional de Unidades de Conservação (SNUC) do Brasil?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Áreas onde se admite apenas o uso indireto dos recursos naturais (pesquisa científica, educação ambiental e turismo ecológico), proibindo a extração direta.', 1, 0),
(@p, 'Áreas liberadas para mineração a céu aberto e desmatamento comercial.', 0, 0),
(@p, 'Loteamentos urbanos destinados à construção de condomínios residenciais.', 0, 0),
(@p, 'Fazendas privadas de monocultura de exportação.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A biopirataria consiste na exploração, manipulação e apropriação ilegal de recursos genéticos da fauna, da flora e de conhecimentos tradicionais de comunidades locais sem autorização ou repartição de benefícios.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 37: Hidrografia
-- -------------------------------------------------------------------------

-- Quiz 37.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ciclo Hidrológico, Distribuição da Água e Partes de um Rio', 1, 37);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se distribui aproximadamente a água existente no planeta Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cerca de 97,5% é água salgada nos oceanos e mares, e apenas cerca de 2,5% é água doce (majoritariamente congelada em geleiras ou subterrânea).', 1, 0),
(@p, 'Cerca de 90% é água doce líquida disponível nos rios superficiais.', 0, 0),
(@p, 'Metade é água doce nos lagos e metade é vapor na atmosfera.', 0, 0),
(@p, 'Não existe água subterrânea nos continentes.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento de uma rede fluvial à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Nascente (ou cabeceira)', 1, 1, 'Local elevado onde o curso de água se origina'),
(@p, 'Foz (estuário ou delta)', 1, 2, 'Local onde o rio deságua em outro rio, lago ou oceano'),
(@p, 'Divisor de águas (interflúvio)', 1, 3, 'Porção mais elevada do relevo que separa duas bacias hidrográficas vizinhas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Bacia hidrográfica é toda a área territorial drenada por um rio principal e seus afluentes e subafluentes, delimitada pelos divisores de águas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os dois tipos principais de foz apresentados pelos rios:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Foz em estuário (canal único e aberto onde as marés limpam os sedimentos)', 1, 0),
(@p, 'Foz em delta (vários canais separados por ilhas de sedimentos acumulados, como no Rio Parnaíba e no Rio Nilo)', 1, 0),
(@p, 'Foz mista (combinação de estuário e delta, como na foz do Rio Amazonas)', 1, 0),
(@p, 'Foz vulcânica submarina', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como são classificados os rios que nunca secam ao longo do ano, mantendo fluxo contínuo de água mesmo na estação de estiagem (como a maioria dos rios brasileiros)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Rios perenes', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas fundamentais do Ciclo Hidrológico impulsionado pela energia solar e pela gravidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Evaporação dos oceanos e evapotranspiração dos continentes', 1, 1),
(@p, 'Condensação do vapor de água em altitude formando nuvens', 1, 2),
(@p, 'Precipitação sobre oceanos e continentes na forma de chuva, neve ou granizo', 1, 3),
(@p, 'Infiltração no solo alimentando aquíferos e escoamento superficial pelos rios de volta ao mar', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia um "rio de planalto" de um "rio de planície"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O rio de planalto percorre terrenos acidentados com quedas-dágua (alto potencial hidrelétrico); o rio de planície corre em terrenos planos com meandros (ideal para navegação).', 1, 0),
(@p, 'O rio de planalto é sempre salgado; o rio de planície é sempre congelado.', 0, 0),
(@p, 'O rio de planalto não possui afluentes; o rio de planície não tem foz.', 0, 0),
(@p, 'Rios de planície geram toda a energia hidrelétrica do mundo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A drenagem exorreica ocorre quando os rios escoam suas águas para fora do continente até o oceano aberto, enquanto a endorreica deságua em lagos ou mares interiores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 37.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Principais Bacias Hidrográficas do Brasil', 2, 37);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a maior bacia hidrográfica do planeta em extensão territorial e volume de água descarregado no oceano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bacia Amazônica', 1, 0),
(@p, 'Bacia do São Francisco', 0, 0),
(@p, 'Bacia do Paraná', 0, 0),
(@p, 'Bacia do Tocantins-Araguaia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada bacia hidrográfica brasileira à sua característica estratégica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Bacia do Paraná', 1, 1, 'Maior aproveitamento hidrelétrico instalado do Brasil (ex.: Usina de Itaipu) e hidrovia Tietê-Paraná'),
(@p, 'Bacia do São Francisco', 1, 2, 'Rio da integração nacional; atravessa o Semiárido nordestino permitindo irrigação e energia'),
(@p, 'Bacia do Tocantins-Araguaia', 1, 3, 'Maior bacia hidrográfica totalmente inserida em território brasileiro (abriga Usina de Tucuruí)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Rio Amazonas possui regime misto (pluvial e nival), pois além de receber intensas chuvas equatoriais, recebe água do degelo das neves da Cordilheira dos Andes onde nasce.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique rios que compõem a grande Bacia Platina na América do Sul:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Rio Paraná', 1, 0),
(@p, 'Rio Paraguai (que drena a Planície do Pantanal)', 1, 0),
(@p, 'Rio Uruguai', 1, 0),
(@p, 'Rio Negro e Rio Solimões', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno natural espetacular ocorre na Amazônia quando as ondas da maré alta do Oceano Atlântico encontram a correnteza do Rio Amazonas formando ondas gigantescas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Pororoca', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o trajeto do Rio São Francisco desde sua nascente até sua foz:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nascente na Serra da Canastra em Minas Gerais', 1, 1),
(@p, 'Percurso pelo interior da Bahia e divisa entre Bahia e Pernambuco', 1, 2),
(@p, 'Passagem pelas usinas de Sobradinho, Paulo Afonso e Xingó', 1, 3),
(@p, 'Deságue no Oceano Atlântico na divisa entre Alagoas e Sergipe', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Bacia Amazônica tem o maior potencial hidrelétrico teórico do Brasil, mas a Bacia do Paraná possui a maior potência efetivamente instalada?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a Bacia do Paraná está próxima aos grandes centros urbano-industriais consumidores do Sudeste/Sul e possui rios de planalto encachoeirados.', 1, 0),
(@p, 'Porque não existe nenhuma usina hidrelétrica na Região Norte.', 0, 0),
(@p, 'Porque o Rio Amazonas é um rio intermitente que seca no verão.', 0, 0),
(@p, 'Porque o transporte de eletricidade é impossível no Paraná.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Bacia Hidrográfica do Paraguai possui rios típicos de planície, muito utilizados para a navegação fluvial e sujeitos a cheias periódicas sazonais no Pantanal.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 37.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Águas Subterrâneas (Aquíferos) e Oceanografia', 2, 37);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é um "Aquífero" na Hidrografia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma formação geológica subterrânea de rochas porosas e permeáveis capaz de armazenar e transmitir grandes volumes de água doce.', 1, 0),
(@p, 'Uma nuvem carregada de chuva ácida sobre grandes metrópoles.', 0, 0),
(@p, 'Um canal artificial construído para irrigação agrícola.', 0, 0),
(@p, 'Uma corrente marítima gelada do Oceano Ártico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada reserva hídrica subterránea ou oceânica à sua localização:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sistema Aquífero Guarani', 1, 1, 'Um dos maiores reservatórios transfronteiriços do mundo (Brasil, Paraguai, Uruguai e Argentina)'),
(@p, 'Sistema Aquífero Alter do Chão', 1, 2, 'Imensa reserva subterrânea de água doce localizada sob a Bacia Amazônica'),
(@p, 'Zona Econômica Exclusiva (ZEE - Amazônia Azul)', 1, 3, 'Faixa marítima de até 200 milhas náuticas sob soberania econômica do Brasil');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A impermeabilização excessiva do solo urbano por asfalto e concreto impede a infiltração da água das chuvas, prejudicando a recarga dos aquíferos e agravando as enchentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique zonas morfológicas do relevo submarino partindo do continente para o oceano profundo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Plataforma Continental (prolongamento submerso pouco profundo rico em pesca e petróleo)', 1, 0),
(@p, 'Talude Continental (declive acentuado que marca o fim do bloco continental)', 1, 0),
(@p, 'Planície Abissal, Dorsais Oceânicas e Fossas Abissais (como a Fossa das Marianas)', 1, 0),
(@p, 'Cuestas basálticas do interior continental', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fenômeno oceanográfico ocorre quando águas profundas, frias e muito ricas em nutrientes sobem até a superfície costeira, favorecendo imensos cardumes pesqueiros (como no litoral do Peru e em Cabo Frio-RJ)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ressurgência', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as faixas marítimas estabelecidas pela Convenção das Nações Unidas sobre o Direito do Mar (CNUDM) a partir da linha de costa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mar Territorial (até 12 milhas náuticas com soberania plena do Estado costeiro)', 1, 1),
(@p, 'Zona Contígua (de 12 a 24 milhas náuticas para fiscalização aduaneira e sanitária)', 1, 2),
(@p, 'Zona Econômica Exclusiva - ZEE (até 200 milhas náuticas para exploração de recursos)', 1, 3),
(@p, 'Alto-Mar (águas internacionais patrimônio comum da humanidade)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal causa das marés oceânicas observadas diariamente nas praias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A atração gravitacional exercida principalmente pela Lua e, em menor grau, pelo Sol sobre as massas oceânicas.', 1, 0),
(@p, 'A movimentação de grandes navios cargueiros nos portos.', 0, 0),
(@p, 'O derretimento diário e congelamento noturno dos oceanos tropicais.', 0, 0),
(@p, 'O vento constante soprando sempre na mesma direção.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As reservas petrolíferas da camada Pré-Sal brasileira estão localizadas na plataforma continental profunda sob espessas camadas de sal no Oceano Atlântico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 37.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Crise Hídrica, Hidrelétricas, Transposição e Geopolítica da Água', 3, 37);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual setor econômico responde pelo maior consumo mundial de água doce captada (cerca de 70% do total global)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A agropecuária (principalmente a irrigação agrícola)', 1, 0),
(@p, 'O uso doméstico residencial (banho e cozinha)', 0, 0),
(@p, 'A indústria de semicondutores', 0, 0),
(@p, 'Os parques aquáticos recreativos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito relacionado à gestão dos recursos hídricos à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Água Virtual', 1, 1, 'Volume total de água utilizado direta e indiretamente na produção de um bem ou alimento'),
(@p, 'Usina Hidrelétrica a Fio de Água', 1, 2, 'Opera sem grandes reservatórios de acumulação, reduzindo a área alagada de floresta'),
(@p, 'Eutrofização', 1, 3, 'Proliferação excessiva de algas por despejo de esgoto e fertilizantes, reduzindo o oxigênio da água');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Embora o Brasil detenha cerca de 12% da água doce superficial do planeta, sofre crises hídricas regionais devido à distribuição desigual (70% na Amazônia) e à poluição dos rios próximos às metrópoles.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique impactos socioambientais associados à construção de grandes usinas hidrelétricas com vastos reservatórios:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alagamento de florestas, terras férteis e áreas arqueológicas', 1, 0),
(@p, 'Deslocamento compulsório de populações ribeirinhas, indígenas e quilombolas', 1, 0),
(@p, 'Alteração do regime hidrológico, da ictiofauna (piracema) e emissão de metano pela decomposição vegetal', 1, 0),
(@p, 'Eliminação completa da necessidade de linhas de transmissão elétrica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual grande obra de infraestrutura hídrica brasileira desvia parte das águas do Rio São Francisco por meio dos eixos Norte e Leste para abastecer açudes e rios intermitentes do Semiárido nordestino?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Transposição do Rio São Francisco', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas do processo de eutrofização artificial de um lago ou represa urbana:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Despejo de esgotos domésticos sem tratamento e fertilizantes ricos em nitrogênio e fósforo', 1, 1),
(@p, 'Multiplicação acelerada de algas e cianobactérias na superfície (floração)', 1, 2),
(@p, 'Bloqueio da entrada de luz solar e morte da vegetação submersa', 1, 3),
(@p, 'Consumo do oxigênio dissolvido por bactérias decompositoras e mortandade de peixes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual bacia hidrográfica transfronteiriça no Oriente Médio é foco histórico de tensões geopolíticas envolvendo Turquia, Síria e Iraque pelo controle de barragens e água?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bacia dos rios Tigre e Eufrates', 1, 0),
(@p, 'Bacia do Rio Tâmisa', 0, 0),
(@p, 'Bacia do Rio São Lourenço', 0, 0),
(@p, 'Bacia do Rio Prata', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A dessalinização da água do mar (por osmose reversa ou destilação) é uma alternativa tecnológica usada em países áridos do Oriente Médio, embora ainda apresente alto custo energético.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 38: Globalização
-- -------------------------------------------------------------------------

-- Quiz 38.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito de Globalização e Evolução do Capitalismo', 1, 38);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que define essencialmente o processo contemporâneo de "Globalização"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A intensificação da integração econômica, financeira, comercial, informacional e cultural em escala planetária, impulsionada pelos avanços nos transportes e telecomunicações.', 1, 0),
(@p, 'O fechamento total das fronteiras nacionais e o fim do comércio internacional.', 0, 0),
(@p, 'O retorno à produção artesanal isolada em feudos medievais.', 0, 0),
(@p, 'A substituição da internet pela comunicação exclusiva por cartas em papel.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fase histórica do capitalismo aos seus marcos técnicos e geográficos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Capitalismo Comercial (séculos XV a XVIII)', 1, 1, 'Grandes Navegações, mercantilismo e expansão colonial europeia'),
(@p, 'Capitalismo Industrial (séculos XVIII a XIX)', 1, 2, 'Máquina a vapor, ferrovias, fábricas e imperialismo'),
(@p, 'Capitalismo Financeiro e Informacional (séculos XX e XXI)', 1, 3, 'Bolsas de valores interligadas, transnacionais, internet e fluxo instantâneo de capitais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "Aldeia Global", cunhada pelo teórico Marshall McLuhan, ilustra a sensação de encurtamento relativo das distâncias provocado pela comunicação instantânea em tempo real.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pilares tecnológicos da Terceira e Quarta Revoluções Industriais que sustentam a globalização atual:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Redes de fibra óptica, satélites de comunicação e internet de alta velocidade', 1, 0),
(@p, 'Conteinerização e transporte intermodal de cargas reduzindo fretes marítimos', 1, 0),
(@p, 'Microeletrônica, robótica, computação em nuvem e inteligência artificial', 1, 0),
(@p, 'Caravelas a vela e telégrafo óptico sem eletricidade', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual doutrina econômica difundida globalmente a partir do final do século XX defende a mínima intervenção estatal na economia, privatizações, abertura comercial e livre circulação de capitais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Neoliberalismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a evolução das Revoluções Industriais e suas fontes de energia e tecnologia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1ª Revolução Industrial: carvão mineral, máquina a vapor e indústria têxtil', 1, 1),
(@p, '2ª Revolução Industrial: petróleo, eletricidade, aço e linha de montagem fordista', 1, 2),
(@p, '3ª Revolução Industrial (Técnico-Científica): informática, telecomunicações e biotecnologia', 1, 3),
(@p, '4ª Revolução Industrial (Indústria 4.0): inteligência artificial, Internet das Coisas e automação', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o fim da Guerra Fria (queda do Muro de Berlim em 1989 e dissolução da URSS em 1991) acelerou a globalização econômica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque integrou os antigos países socialistas do Leste Europeu e mercados emergentes à economia de mercado global.', 1, 0),
(@p, 'Porque acabou com todos os aviões e navios mercantes do mundo.', 0, 0),
(@p, 'Porque proibiu o investimento estrangeiro em todos os continentes.', 0, 0),
(@p, 'Porque eliminou as diferenças de idioma entre todos os povos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A globalização não é apenas um fenômeno econômico; ela envolve também a difusão cultural, o turismo internacional, os fluxos científicos e a circulação global de notícias.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 38.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Meio Técnico-Científico-Informacional (Milton Santos) e Redes', 2, 38);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como o geógrafo brasileiro Milton Santos caracterizou o espaço geográfico da atual fase da globalização?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como Meio Técnico-Científico-Informacional, marcado pela união íntima entre ciência, técnica e informação na organização do território.', 1, 0),
(@p, 'Como Meio Natural intocado sem qualquer intervenção humana.', 0, 0),
(@p, 'Como um espaço onde a informação não tem valor econômico.', 0, 0),
(@p, 'Como um território totalmente homogêneo sem desigualdades regionais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito formulado por Milton Santos ao seu significado geográfico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Globalização como fábula', 1, 1, 'O discurso ideológico que promete uma aldeia global igualitária para todos'),
(@p, 'Globalização como perversidade', 1, 2, 'A realidade concreta do desemprego estrutural, concentração de renda e exclusão'),
(@p, 'Por uma outra globalização', 1, 3, 'Possibilidade de usar as técnicas atuais a serviço da dignidade humana e solidariedade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo David Harvey, a "compressão espaço-tempo" descreve como a aceleração dos transportes e das telecomunicações reduz o tempo necessário para percorrer grandes distâncias, fazendo o mundo parecer menor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características das "redes geográficas" no mundo globalizado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'São compostas por fixos (portos, aeroportos, cabos submarinos, antenas) e fluxos (mercadorias, capitais, dados, pessoas)', 1, 0),
(@p, 'Distribuem-se de forma desigual pelo território, gerando "espaços luminosos" (hiperconectados) e "espaços opacos"', 1, 0),
(@p, 'Mais de 95% do tráfego intercontinental de internet atravessa cabos submarinos de fibra óptica no fundo dos oceanos', 1, 0),
(@p, 'Garantem exatamente a mesma velocidade de conexão em todas as aldeias isoladas do mundo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o fenômeno cultural em que elementos globais (como empresas, mídias e tecnologias) são adaptados e reinterpretados pelas culturas locais em vez de simplesmente apagá-las?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Glocalização', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três etapas históricas da relação sociedade-natureza segundo Milton Santos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Meio Natural (adaptação direta do ser humano aos ritmos da natureza sem grandes técnicas)', 1, 1),
(@p, 'Meio Técnico (mecanização e artificialização localizada por fábricas, ferrovias e cidades)', 1, 2),
(@p, 'Meio Técnico-Científico-Informacional (informação e ciência comandando os fluxos globais)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa a crítica de que a globalização promove uma "homogeneização cultural" parcial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A difusão mundial de hábitos de consumo, marcas, idiomas (como o inglês) e entretenimento padronizado pela indústria cultural.', 1, 0),
(@p, 'A proibição legal de falar qualquer idioma além do latim.', 0, 0),
(@p, 'O desaparecimento imediato de todas as festas e culinárias regionais.', 0, 0),
(@p, 'A obrigação de todos os países adotarem o mesmo clima tropical.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "exclusão digital" revela que, embora a informação circule instantaneamente, milhões de pessoas ainda não têm acesso pleno à internet de banda larga ou à educação tecnológica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 38.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Empresas Transnacionais, Toyotismo e Divisão Internacional do Trabalho', 2, 38);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como operam as grandes "Empresas Transnacionais" (multinacionais) na atual fase da globalização?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mantêm sedes e centros de pesquisa nos países desenvolvidos e fragmentam suas linhas de montagem por vários países buscando menores custos, incentivos fiscais e mercados.', 1, 0),
(@p, 'Produzem todas as peças de um produto dentro de uma única oficina artesanal.', 0, 0),
(@p, 'Recusam-se a vender seus produtos fora de seu país de origem.', 0, 0),
(@p, 'São sempre empresas estatais sem fins lucrativos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fase da Divisão Internacional do Trabalho (DIT) às especializações dos países:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'DIT Clássica (Colonial / Industrial)', 1, 1, 'Colônias exportam matérias-primas e metrópoles exportam manufaturados'),
(@p, 'Nova DIT (pós-Segunda Guerra)', 1, 2, 'Países emergentes industrializam-se e exportam manufaturados de média tecnologia'),
(@p, 'DIT Informacional Atual', 1, 3, 'Países centrais detêm patentes, P&D e marcas; periféricos fornecem commodities e montagem');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O modelo produtivo Toyotista (acumulação flexível) substituiu a produção rígida em massa do Fordismo pela produção sob demanda ("just in time"), estoques mínimos e terceirização global.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores locacionais que atraem filiais de indústrias transnacionais para países emergentes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mão de obra mais barata e legislação trabalhista ou ambiental mais flexível', 1, 0),
(@p, 'Isenções tributárias (guerra fiscal) e doação de terrenos públicos', 1, 0),
(@p, 'Proximidade de matérias-primas, energia e grandes mercados consumidores', 1, 0),
(@p, 'Ausência total de portos, rodovias e energia elétrica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual expressão designa os territórios ou países que oferecem sigilo bancário e impostos baixíssimos ou nulos para atrair capitais estrangeiros e sedes fiscais de grandes corporações?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Paraísos fiscais', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a cadeia global de valor de um smartphone moderno:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Extração de minerais estratégicos (lítio, cobalto, terras raras) na África, América do Sul e Ásia', 1, 1),
(@p, 'Design, engenharia e registro de patentes nos centros tecnológicos (EUA, Europa, Coreia do Sul)', 1, 2),
(@p, 'Fabricação de microchips e componentes em polos especializados (Taiwan, Japão, Coreia)', 1, 3),
(@p, 'Montagem final em fábricas asiáticas e distribuição global aos consumidores', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o "capital especulativo" (ou capital volátil) nos mercados financeiros globalizados?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dinheiro que circula eletronicamente entre bolsas de valores em busca de lucro rápido de curto prazo, sem investir diretamente na produção de fábricas ou empregos.', 1, 0),
(@p, 'Investimento exclusivo na construção de hospitais públicos e escolas rurais.', 0, 0),
(@p, 'Ouro físico enterrado em baús por piratas antigos.', 0, 0),
(@p, 'Moeda utilizada apenas para trocas diretas de alimentos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "uberização" e a precarização do trabalho no século XXI refletem a flexibilização das relações trabalhistas mediadas por plataformas digitais sem vínculos empregatícios tradicionais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 38.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Blocos Econômicos, Protecionismo e Contradições da Globalização', 3, 38);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a contradição mais evidente da globalização contemporânea em relação às fronteiras nacionais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Enquanto as fronteiras são amplamente abertas para a livre circulação de capitais, mercadorias e informações, erguem-se muros e restrições severas contra a migração de trabalhadores.', 1, 0),
(@p, 'Qualquer trabalhador pode mudar de país livremente, mas as mercadorias são proibidas.', 0, 0),
(@p, 'Todos os países do mundo aboliram completamente suas moedas e fronteiras.', 0, 0),
(@p, 'Não existe nenhum fluxo financeiro internacional desde 1990.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada nível de integração de um Bloco Econômico às suas características:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Zona de Livre Comércio (ex.: USMCA)', 1, 1, 'Redução ou eliminação de tarifas alfandegárias entre os países-membros'),
(@p, 'União Aduaneira (ex.: Mercosul)', 1, 2, 'Livre comércio interno somado a uma Tarifa Externa Comum (TEC) para terceiros'),
(@p, 'União Econômica e Monetária (ex.: Zona do Euro)', 1, 3, 'Livre circulação de pessoas, capitais e bens com moeda única e Banco Central comum');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Brexit (saída do Reino Unido da União Europeia) e as guerras tarifárias recentes demonstram que a globalização não é um processo linear, enfrentando ondas de protecionismo e nacionalismo econômico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas típicas do "Protecionismo Econômico" praticadas mesmo por países que defendem o livre comércio:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Subsídios agrícolas internos que barateiam artificialmente seus produtos frente aos concorrentes', 1, 0),
(@p, 'Tarifas alfandegárias elevadas sobre produtos importados estratégicos', 1, 0),
(@p, 'Barreiras fitossanitárias e técnicas rigorosas para dificultar importações', 1, 0),
(@p, 'Isenção total de impostos para qualquer produto estrangeiro sem reciprocidade', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o movimento recente de reorganização das cadeias produtivas em que empresas trazem fábricas de volta para o país de origem ou para países aliados próximos após crises globais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Reshoring', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os estágios crescentes de integração econômica regional entre Estados:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Zona de Preferência Tarifária', 1, 1),
(@p, 'Zona de Livre Comércio', 1, 2),
(@p, 'União Aduaneira (adoção da Tarifa Externa Comum)', 1, 3),
(@p, 'Mercado Comum e União Econômica e Monetária', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o Índice de Gini mede ao analisar os efeitos socioeconômicos da globalização dentro de um país?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O grau de desigualdade na distribuição de renda (variando de 0, igualdade perfeita, a 1, desigualdade máxima).', 1, 0),
(@p, 'A altitude média das montanhas do país.', 0, 0),
(@p, 'A velocidade média da internet nas capitais.', 0, 0),
(@p, 'O volume anual de chuvas na região norte.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "deterioração dos termos de troca" penaliza países subdesenvolvidos especializados apenas em commodities primárias, pois seus produtos têm baixo valor agregado frente às tecnologias importadas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 39: População
-- -------------------------------------------------------------------------

-- Quiz 39.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Demográficos Fundamentais e Indicadores Sociais', 1, 39);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "População Absoluta" e "População Relativa" (densidade demográfica)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'População absoluta é o número total de habitantes de um território; população relativa é a média de habitantes por quilômetro quadrado (hab/km²).', 1, 0),
(@p, 'População absoluta conta apenas crianças; população relativa conta apenas idosos.', 0, 0),
(@p, 'População absoluta é medida em km²; população relativa é medida em toneladas.', 0, 0),
(@p, 'Um país muito populoso é obrigatoriamente muito povoado.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito demográfico à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'País populoso', 1, 1, 'Possui grande população absoluta (ex.: Índia, China, EUA, Brasil)'),
(@p, 'País povoado', 1, 2, 'Possui elevada densidade demográfica (ex.: Japão, Países Baixos, Bangladesh)'),
(@p, 'Crescimento Vegetativo (Natural)', 1, 3, 'Diferença entre a taxa de natalidade e a taxa de mortalidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Brasil é um país muito populoso (mais de 200 milhões de habitantes), mas pouco povoado em média (cerca de 25 hab/km²), devido à sua imensa extensão territorial e vazios demográficos como a Amazônia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três indicadores que compõem o Índice de Desenvolvimento Humano (IDH) calculado pela ONU:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Saúde / Longevidade (expectativa de vida ao nascer)', 1, 0),
(@p, 'Educação (média de anos de estudo e anos esperados de escolaridade)', 1, 0),
(@p, 'Renda (Renda Nacional Bruta per capita ajustada pelo poder de compra)', 1, 0),
(@p, 'Número total de medalhas olímpicas e extensão territorial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo demográfico designa o número médio de filhos que uma mulher teria ao longo de seu período reprodutivo (15 a 49 anos) em determinado país?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Taxa de fecundidade', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o cálculo do Crescimento Demográfico Total de um país em determinado ano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Calcular o crescimento vegetativo (Nascimentos menos Óbitos)', 1, 1),
(@p, 'Calcular o saldo migratório (Imigrantes que entram menos Emigrantes que saem)', 1, 2),
(@p, 'Somar o crescimento vegetativo ao saldo migratório', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que mede a "Taxa de Mortalidade Infantil"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O número de crianças que morrem antes de completar 1 ano de idade para cada grupo de mil nascidas vivas.', 1, 0),
(@p, 'O número de idosos acima de 80 anos em um município.', 0, 0),
(@p, 'A porcentagem de jovens que abandonam o ensino médio.', 0, 0),
(@p, 'O número total de nascimentos ocorridos em hospitais privados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A taxa de fecundidade de reposição populacional — necessária para manter o tamanho de uma população estável sem imigração — é de aproximadamente 2,1 filhos por mulher.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 39.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorias Demográficas: Malthusiana, Neomalthusiana e Reformista', 2, 39);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que defendia Thomas Malthus em seu "Ensaio sobre o Princípio da População" (1798)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que a população cresceria em progressão geométrica (2, 4, 8, 16) enquanto a produção de alimentos cresceria apenas em progressão aritmética (2, 4, 6, 8), gerando fome inevitável.', 1, 0),
(@p, 'Que o crescimento populacional sempre gera riqueza imediata para todos.', 0, 0),
(@p, 'Que a distribuição de renda e a reforma agrária resolveriam a fome mundial.', 0, 0),
(@p, 'Que a humanidade deveria distribuir anticoncepcionais gratuitos nas escolas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada teoria demográfica à sua explicação sobre pobreza e crescimento populacional:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Teoria Malthusiana', 1, 1, 'Propunha sujeição moral (casamentos tardios e abstinência) contra a explosão demográfica'),
(@p, 'Teoria Neomalthusiana', 1, 2, 'Culpa a alta natalidade dos países pobres pelo subdesenvolvimento e defende controle de natalidade'),
(@p, 'Teoria Reformista (Marxista)', 1, 3, 'Afirma que a pobreza gera muitos filhos e que reformas sociais reduzem naturalmente a natalidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A previsão catastrófica de Thomas Malthus sobre a escassez absoluta de alimentos não se confirmou nos séculos XIX e XX devido à mecanização agrícola, aos fertilizantes e à Revolução Verde.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique argumentos defendidos pela Teoria Demográfica Reformista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O subdesenvolvimento e a má distribuição de renda são a causa, e não a consequência, das altas taxas de natalidade', 1, 0),
(@p, 'O investimento em educação, saúde, urbanização e emancipação feminina reduz espontaneamente a fecundidade', 1, 0),
(@p, 'A fome atual decorre de desigualdade no acesso e desperdício, não de falta física global de alimentos', 1, 0),
(@p, 'É preciso proibir o auxílio social aos pobres para que morram de fome naturalmente', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual teoria contemporânea associa o crescimento populacional acelerado nos países em desenvolvimento ao esgotamento dos recursos naturais e à degradação ambiental do planeta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Teoria Ecomalthusiana', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene historicamente o surgimento das principais correntes do pensamento demográfico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Teoria Malthusiana clássica (final do século XVIII durante a Revolução Industrial)', 1, 1),
(@p, 'Teoria Neomalthusiana (pós-Segunda Guerra Mundial diante da explosão demográfica periférica)', 1, 2),
(@p, 'Teoria Reformista (crítica social às políticas compulsórias de controle de natalidade)', 1, 3),
(@p, 'Teoria Ecomalthusiana (final do século XX vinculando demografia e sustentabilidade)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a Teoria Neomalthusiana é criticada por muitos geógrafos e sociólogos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque responsabiliza apenas os pobres pela miséria e ignora o consumo excessivo de recursos pelos países ricos e a desigualdade estrutural.', 1, 0),
(@p, 'Porque defende que cada família deve ter no mínimo dez filhos.', 0, 0),
(@p, 'Porque nega a existência de países subdesenvolvidos.', 0, 0),
(@p, 'Porque proíbe qualquer avanço na medicina preventiva.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "explosão demográfica" ocorrida nos países subdesenvolvidos após 1950 deveu-se à queda brusca da mortalidade (pela difusão de vacinas e antibióticos) enquanto a natalidade ainda permanecia alta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 39.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Transição Demográfica, Pirâmides Etárias e Envelhecimento', 2, 39);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que representa uma pirâmide etária com base muito larga e topo extremamente estreito (formato triangular clássico)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um país subdesenvolvido com elevadas taxas de natalidade (muitos jovens) e baixa expectativa de vida (poucos idosos).', 1, 0),
(@p, 'Um país desenvolvido com população envelhecida e baixíssima natalidade.', 0, 0),
(@p, 'Um país onde não nascem crianças há mais de cinquenta anos.', 0, 0),
(@p, 'Uma população composta exclusivamente por homens adultos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada seção vertical de uma Pirâmide Etária à faixa populacional correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Base da pirâmide', 1, 1, 'População jovem (0 a 19 anos) — reflete as taxas recentes de natalidade'),
(@p, 'Corpo (meio) da pirâmide', 1, 2, 'População adulta (20 a 59 anos) — concentra a População Economicamente Ativa (PEA)'),
(@p, 'Topo (ápice) da pirâmide', 1, 3, 'População idosa (60 anos ou mais) — reflete a expectativa de vida e longevidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O "Bônus Demográfico" (ou janela de oportunidade demográfica) ocorre quando a proporção da população adulta em idade ativa (PEA) supera a soma de jovens e idosos dependentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam a rápida queda da taxa de fecundidade no Brasil nas últimas décadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Intensa urbanização e aumento do custo de criação e educação dos filhos nas cidades', 1, 0),
(@p, 'Maior inserção da mulher no mercado de trabalho e elevação da escolaridade feminina', 1, 0),
(@p, 'Difusão dos métodos contraceptivos e planejamento familiar', 1, 0),
(@p, 'Proibição legal do casamento em todo o território brasileiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo demográfico descreve o fenômeno observado hoje em países como Japão, Alemanha e Itália, onde a taxa de mortalidade supera a de natalidade, provocando redução populacional absoluta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Implosão demográfica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as quatro fases clássicas do modelo da Transição Demográfica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1ª Fase (Pré-transição): natalidade alta e mortalidade alta (crescimento vegetativo baixo)', 1, 1),
(@p, '2ª Fase (Aceleração): queda rápida da mortalidade com natalidade ainda alta (explosão demográfica)', 1, 2),
(@p, '3ª Fase (Desaceleração): queda acentuada da natalidade reduzindo o ritmo de crescimento', 1, 3),
(@p, '4ª Fase (Estabilização): natalidade baixa e mortalidade baixa com envelhecimento populacional', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os principais desafios econômicos enfrentados por países em estágio avançado de envelhecimento populacional (como Japão e países europeus)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Déficit nos sistemas de previdência social (menos trabalhadores ativos financiando mais aposentados), aumento dos gastos com saúde e escassez de mão de obra.', 1, 0),
(@p, 'Falta de vagas em creches e escolas primárias por excesso de recém-nascidos.', 0, 0),
(@p, 'Excesso de jovens desempregados pressionando a base da pirâmide.', 0, 0),
(@p, 'Queda na expectativa de vida média para abaixo de 40 anos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A pirâmide etária atual do Brasil apresenta estreitamento progressivo da base e alargamento do corpo e do topo, confirmando o rápido envelhecimento da população brasileira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 39.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fluxos Migratórios Internacionais, Refugiados e Migrações no Brasil', 3, 39);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia juridicamente um "Refugiado" de um "Migrante Econômico" segundo a ONU (ACNUR)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O refugiado é forçado a deixar seu país por fundado temor de perseguição (política, religiosa, étnica), guerras ou graves violações de direitos humanos, tendo proteção internacional.', 1, 0),
(@p, 'O refugiado viaja apenas a turismo de férias durante o verão.', 0, 0),
(@p, 'O migrante econômico nunca trabalha no país de destino.', 0, 0),
(@p, 'Não existe nenhuma convenção internacional sobre refugiados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito migratório à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fuga de cérebros (Brain drain)', 1, 1, 'Emigração de cientistas, médicos e profissionais qualificados para países ricos'),
(@p, 'Migração pendular', 1, 2, 'Deslocamento diário entre cidade-dormitório e metrópole para trabalho ou estudo'),
(@p, 'Transumância', 1, 3, 'Migração sazonal vinculada às estações climáticas (como na pecuária ou colheitas)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A xenofobia (aversão ou hostilidade contra estrangeiros e imigrantes) costuma intensificar-se nos países desenvolvidos em períodos de crise econômica e desemprego.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique transformações recentes nos fluxos migratórios internos do Brasil desde a década de 1990:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Migração de retorno de muitos nordestinos para suas regiões de origem com o crescimento econômico regional', 1, 0),
(@p, 'Desaceleração da migração para as metrópoles do Sudeste e crescimento das cidades médias do interior', 1, 0),
(@p, 'Continuidade do avanço da fronteira agropecuária em direção ao Centro-Oeste e Norte (MATOPIBA)', 1, 0),
(@p, 'Êxodo urbano maciço levando 80% da população brasileira de volta para o campo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa as pessoas forçadas a abandonar suas casas devido a desastres ambientais severos, secas prolongadas, desertificação ou elevação do nível do mar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Refugiados ambientais', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os principais ciclos históricos das migrações internas no Brasil no século XX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ciclo da Borracha atraindo migrantes nordestinos para a Amazônia (virada do século XX)', 1, 1),
(@p, 'Industrialização concentrada atraindo grandes fluxos para São Paulo e Rio de Janeiro (1930-1970)', 1, 2),
(@p, 'Construção de Brasília e abertura de rodovias impulsionando o Centro-Oeste e Norte (1960-1980)', 1, 3),
(@p, 'Desconcentração industrial, migração de retorno e interiorização (a partir de 1990)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são os "Deslocados Internos" segundo os relatórios da ONU?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pessoas obrigadas a fugir de suas casas por conflitos ou desastres, mas que permanecem dentro das fronteiras do seu próprio país.', 1, 0),
(@p, 'Turistas estrangeiros hospedados em hotéis de luxo.', 0, 0),
(@p, 'Executivos transferidos entre filiais europeias.', 0, 0),
(@p, 'Astronautas em missão na Estação Espacial Internacional.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As remessas financeiras enviadas por emigrantes aos seus familiares nos países de origem representam hoje uma fonte fundamental de divisas para dezenas de países em desenvolvimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 40: Urbanização
-- -------------------------------------------------------------------------

-- Quiz 40.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito de Urbanização, Sítio Urbano e Função das Cidades', 1, 40);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando podemos afirmar corretamente que um país está passando por um processo de "Urbanização"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quando a população urbana cresce em ritmo mais acelerado que a população rural, aumentando o percentual de habitantes nas cidades.', 1, 0),
(@p, 'Sempre que nascem mais crianças nas fazendas do que nas capitais.', 0, 0),
(@p, 'Apenas quando o país possui uma única cidade com mais de 20 milhões de habitantes.', 0, 0),
(@p, 'Quando todas as indústrias se mudam das cidades para as florestas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da Geografia Urbana à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sítio urbano', 1, 1, 'A base topográfica e física sobre a qual a cidade foi construída (planície, vale, colinas)'),
(@p, 'Situação urbana', 1, 2, 'A posição geográfica da cidade em relação às rotas comerciais e regiões vizinhas'),
(@p, 'Função urbana', 1, 3, 'A atividade econômica ou institucional predominante da cidade (industrial, portuária, turística)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Desde 2007, pela primeira vez na história da humanidade, a população mundial residente em áreas urbanas superou a população residente em áreas rurais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos de cidades brasileiras classificadas principalmente pela sua função urbana específica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Brasília (DF) — função político-administrativa (cidade planejada)', 1, 0),
(@p, 'Santos (SP) e Paranaguá (PR) — função portuária', 1, 0),
(@p, 'Aparecida (SP) e Juazeiro do Norte (CE) — função religiosa', 1, 0),
(@p, 'Belo Horizonte (MG) — função exclusivamente pesqueira oceânica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama o deslocamento populacional massivo de trabalhadores do campo em direção às cidades, impulsionado pela mecanização agrícola e atração industrial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Êxodo rural', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene historicamente o ritmo da urbanização mundial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Surgimento das primeiras cidades antigas na Mesopotâmia, Egito, Vale do Indo e China', 1, 1),
(@p, 'Urbanização pioneira nos países desenvolvidos durante a Revolução Industrial (séculos XVIII-XIX)', 1, 2),
(@p, 'Urbanização acelerada e tardia nos países subdesenvolvidos (segunda metade do século XX)', 1, 3),
(@p, 'Predomínio urbano global no século XXI com forte crescimento das cidades asiáticas e africanas', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que diferencia uma "cidade espontânea" (ou natural) de uma "cidade planejada"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A espontânea cresce gradualmente sem projeto urbanístico prévio (como São Paulo e Salvador); a planejada é projetada integralmente antes de ser construída (como Brasília, Belo Horizonte e Palmas).', 1, 0),
(@p, 'A espontânea não possui ruas; a planejada não possui moradores.', 0, 0),
(@p, 'A planejada surge apenas na Antiguidade; a espontânea surge apenas no século XXI.', 0, 0),
(@p, 'Não existe diferença entre cidade planejada e espontânea.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "urbanização" (crescimento percentual da população urbana) difere do simples "crescimento urbano" (expansão física da mancha construída da cidade).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 40.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Hierarquia Urbana, Metrópoles, Conurbação e Megalópoles', 2, 40);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o fenômeno urbano conhecido como "Conurbação"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A unificação física das manchas urbanas de dois ou mais municípios vizinhos em decorrência de seu crescimento horizontal.', 1, 0),
(@p, 'O abandono completo de uma cidade após uma erupção vulcânica.', 0, 0),
(@p, 'A divisão de um município em dez aldeias rurais isoladas.', 0, 0),
(@p, 'A substituição de todos os edifícios por plantações de soja.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da rede urbana mundial à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Megacidade', 1, 1, 'Critério puramente quantitativo: aglomeração urbana com mais de 10 milhões de habitantes'),
(@p, 'Cidade Global', 1, 2, 'Critério qualitativo: centro estratégico de comando financeiro, bolsas e serviços avançados'),
(@p, 'Megalópole', 1, 3, 'Vasta região urbanizada formada pela integração de duas ou mais metrópoles e cidades médias');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Toda cidade global (como Zurique ou Frankfurt) é necessariamente uma megacidade com mais de 10 milhões de habitantes, e toda megacidade (como Lagos ou Daca) é uma cidade global de primeira linha.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Falso', 1, 0),
(@p, 'Verdadeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exemplos famosos de Megalópoles no mundo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Boswash (eixo Boston–Nova York–Filadélfia–Baltimore–Washington nos EUA)', 1, 0),
(@p, 'Tokaido (eixo Tóquio–Nagoya–Osaka–Kobe no Japão)', 1, 0),
(@p, 'Banana Azul / Dorsal Europeia (Londres–Bruxelas–Frankfurt–Milão)', 1, 0),
(@p, 'Faixa desértica central do Saara', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual cidade brasileira ocupa o topo absoluto da hierarquia urbana nacional como a única Grande Metrópole Nacional segundo o IBGE?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'São Paulo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a classificação hierárquica das cidades brasileiras segundo o estudo REGIC do IBGE (do maior nível de polarização para o menor):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Grande Metrópole Nacional (São Paulo)', 1, 1),
(@p, 'Metrópoles Nacionais (Rio de Janeiro e Brasília) e Metrópoles Regionais (Belo Horizonte, Curitiba, Recife, etc.)', 1, 2),
(@p, 'Capitais Regionais e Centros Sub-regionais', 1, 3),
(@p, 'Centros de Zona e Centros Locais', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como funciona a hierarquia urbana na atualidade em comparação com o esquema clássico rígido do passado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tornou-se mais flexível e em rede: graças às telecomunicações e transportes, uma cidade menor pode relacionar-se diretamente com uma metrópole sem passar por intermediárias.', 1, 0),
(@p, 'Tornou-se proibida qualquer comunicação entre cidades pequenas e capitais.', 0, 0),
(@p, 'As metrópoles deixaram de exercer influência econômica sobre o país.', 0, 0),
(@p, 'Todas as cidades do Brasil passaram a ter exatamente o mesmo número de hospitais e universidades.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Região Metropolitana de São Paulo e a Região Metropolitana do Rio de Janeiro formam, ao longo do Vale do Paraíba, o embrião da principal megalópole brasileira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 40.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Urbanização Brasileira: Industrialização e Macrocefalia Urbana', 2, 40);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a principal característica histórica da urbanização brasileira ocorrida entre 1940 e 1980?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Foi tardia, extremamente rápida e desordenada, impulsionada pela industrialização substitutiva de importações e pela concentração fundiária no campo.', 1, 0),
(@p, 'Ocorreu de forma lenta ao longo de 300 anos com pleno planejamento habitacional.', 0, 0),
(@p, 'O Brasil ainda possui hoje mais de 70% de sua população vivendo na zona rural.', 0, 0),
(@p, 'Começou na Região Norte e nunca atingiu o Sudeste.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fenômeno da urbanização brasileira à sua explicação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Macrocefalia urbana', 1, 1, 'Crescimento desproporcional das metrópoles sem infraestrutura e serviços suficientes'),
(@p, 'Terciarização inchada (hipertrofia do terciário)', 1, 2, 'Crescimento do setor informal e subempregos urbanos pela falta de vagas industriais'),
(@p, 'Desmetropolização (interiorização)', 1, 3, 'Crescimento recente mais acelerado das cidades médias do interior em relação às capitais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No Brasil, a população urbana ultrapassou a população rural pela primeira vez no Censo Demográfico de 1970, atingindo hoje mais de 85% do total nacional.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique problemas socioambientais recorrentes nas grandes metrópoles brasileiras decorrentes da urbanização acelerada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Déficit habitacional e ocupação irregular de encostas íngremes e áreas de mananciais', 1, 0),
(@p, 'Enchentes urbanas agravadas pela impermeabilização do solo e canalização de rios', 1, 0),
(@p, 'Congestionamentos crônicos, precariedade do transporte coletivo e poluição atmosférica', 1, 0),
(@p, 'Excesso de moradias populares gratuitas sobrando vazias em todos os bairros centrais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual região brasileira apresenta hoje a maior taxa de urbanização (acima de 93%), sendo também a primeira a se industrializar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Região Sudeste', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o encadeamento entre a modernização agrícola e a urbanização acelerada do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mecanização do campo e concentração fundiária expulsando pequenos trabalhadores rurais', 1, 1),
(@p, 'Intenso êxodo rural em direção às capitais industriais do Sudeste', 1, 2),
(@p, 'Especulação imobiliária elevando o preço da terra nos bairros dotados de infraestrutura', 1, 3),
(@p, 'Periferização e favelização da população trabalhadora de baixa renda', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que as cidades médias brasileiras (entre 100 mil e 500 mil habitantes) têm crescido proporcionalmente mais que as grandes metrópoles nas últimas décadas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela desconcentração industrial, menor custo de vida, melhores índices de qualidade de vida e expansão do agronegócio e universidades no interior.', 1, 0),
(@p, 'Porque as grandes metrópoles proibiram a entrada de novos moradores por lei.', 0, 0),
(@p, 'Porque todas as indústrias do Brasil faliram.', 0, 0),
(@p, 'Porque as cidades médias não possuem energia elétrica nem internet.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Região Nordeste possui a menor taxa percentual de urbanização entre as macrorregiões brasileiras (cerca de 75%), embora conte com grandes metrópoles como Salvador, Recife e Fortaleza.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 40.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Segregação Socioespacial, Gentrificação e Direito à Cidade', 3, 40);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o processo urbano contemporâneo denominado "Gentrificação"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A revitalização estética e imobiliária de antigos bairros populares centrais que eleva os aluguéis e impostos, expulsando os moradores originais de baixa renda.', 1, 0),
(@p, 'A construção de habitações populares gratuitas para moradores de rua no centro.', 0, 0),
(@p, 'O abandono total dos bairros nobres pela classe alta.', 0, 0),
(@p, 'A transformação de shoppings centers em fazendas de gado.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito crítico da Geografia Urbana à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Segregação Socioespacial', 1, 1, 'Separação geográfica das classes sociais no espaço urbano conforme a renda e infraestrutura'),
(@p, 'Especulação Imobiliária', 1, 2, 'Retenção de terrenos ou imóveis vazios aguardando valorização gerada por obras públicas'),
(@p, 'Autossegregação', 1, 3, 'Isolamento voluntário das elites em condomínios horizontais fechados e vigiados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Estatuto da Cidade (Lei Federal 10.257/2001) regulamenta a função social da propriedade urbana no Brasil e prevê instrumentos como o IPTU progressivo no tempo contra terrenos ociosos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique medidas alinhadas ao conceito de "Direito à Cidade" (formulado por Henri Lefebvre) e à mobilidade urbana sustentável:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Priorização do transporte público coletivo de alta capacidade (metrôs, VLTs e corredores de ônibus)', 1, 0),
(@p, 'Integração entre moradia digna, trabalho, lazer, saneamento básico e áreas verdes', 1, 0),
(@p, 'Incentivo ao transporte ativo seguro com ciclovias e calçadas acessíveis', 1, 0),
(@p, 'Canalização de todos os rios urbanos sob avenidas exclusivas para automóveis individuais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual instrumento jurídico obrigatório para municípios brasileiros com mais de 20 mil habitantes orienta o desenvolvimento territorial e a função social da propriedade urbana?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Plano Diretor', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a dinâmica econômica da especulação imobiliária nas metrópoles:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Proprietários retêm lotes vazios intermediários aguardando crescimento urbano', 1, 1),
(@p, 'O Poder Público investe em asfalto, iluminação, escolas e transporte nas áreas mais afastadas', 1, 2),
(@p, 'Os terrenos vazios intermediários valorizam-se sem investimento produtivo de seus donos', 1, 3),
(@p, 'Os imóveis são vendidos com alto lucro enquanto os trabalhadores são empurrados para periferias distantes', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são as "Cidades Inteligentes" (Smart Cities) no planejamento urbano contemporâneo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cidades que integram tecnologias digitais, sensores e dados abertos para otimizar energia, transporte, saneamento e participação cidadã sustentável.', 1, 0),
(@p, 'Cidades onde os seres humanos são proibidos de caminhar nas ruas.', 0, 0),
(@p, 'Cidades construídas exclusivamente dentro de cavernas subterrâneas.', 0, 0),
(@p, 'Cidades sem nenhum tipo de governo ou serviços públicos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "cidade esponja" é um modelo urbanístico sustentável que utiliza jardins de chuva, pavimentos permeáveis e parques alagáveis para absorver águas pluviais e prevenir enchentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 41: Geopolítica
-- -------------------------------------------------------------------------

-- Quiz 41.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Fundamentais: Estado, Nação, Território e Soberania', 1, 41);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença fundamental entre "Estado" e "Nação" na Geografia Política?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estado é a entidade político-jurídica soberana dotada de governo, leis e território; Nação é um grupo humano unido por identidade histórica, língua, cultura e pertencimento.', 1, 0),
(@p, 'Estado é o clima do país; Nação é o tipo de solo.', 0, 0),
(@p, 'Todo Estado possui apenas uma única nação e nenhuma nação existe sem Estado.', 0, 0),
(@p, 'Estado é sinônimo de partido político; Nação é sinônimo de empresa privada.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito geopolítico ao seu exemplo clássico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Nação sem Estado', 1, 1, 'Os Curdos no Oriente Médio (cerca de 35 milhões de pessoas divididas entre 4 países)'),
(@p, 'Estado Plurinacional', 1, 2, 'Espanha (castelhanos, catalães, bascos, galegos) ou Reino Unido (ingleses, escoceses, galeses)'),
(@p, 'Soberania Nacional', 1, 3, 'Autoridade suprema de um Estado sobre seu território sem submissão a poder externo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Território é o espaço geográfico delimitado e apropriado por relações de poder, onde um Estado exerce sua soberania sobre o solo, o subsolo, o espaço aéreo e o mar territorial.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três elementos constitutivos clássicos de um Estado Nacional soberano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Povo (população permanente vinculada juridicamente ao Estado)', 1, 0),
(@p, 'Território delimitado por fronteiras reconhecidas', 1, 0),
(@p, 'Governo soberano dotado de instituições e leis próprias', 1, 0),
(@p, 'Posse obrigatória de armas nucleares e colônias ultramarinas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito geopolítico formulado por Joseph Nye designa a capacidade de um país influenciar outros pela atração cultural, diplomacia, valores e ciência (sem uso de coerção militar ou econômica)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Soft power', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a consolidação histórica do sistema internacional moderno de Estados soberanos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paz de Vestfália (1648) estabelecendo o princípio da soberania territorial dos Estados', 1, 1),
(@p, 'Revoluções liberais e difusão do nacionalismo nos séculos XVIII e XIX', 1, 2),
(@p, 'Descolonização afro-asiática multiplicando os Estados independentes no século XX', 1, 3),
(@p, 'Sistema internacional contemporâneo com 193 Estados-membros reconhecidos na ONU', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que distingue "Hard Power" de "Soft Power" nas relações internacionais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hard Power baseia-se na força militar e sanções econômicas; Soft Power baseia-se na persuasão cultural, diplomática e científica.', 1, 0),
(@p, 'Hard Power é usado apenas por ONGs ambientais; Soft Power é usado apenas por exércitos.', 0, 0),
(@p, 'Hard Power refere-se ao comércio de minério de ferro; Soft Power ao comércio de algodão.', 0, 0),
(@p, 'Não há diferença entre Hard Power e Soft Power.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Faixa de Fronteira" brasileira corresponde a uma largura de até 150 km ao longo das fronteiras terrestres, considerada área fundamental para a defesa e integração nacional.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 41.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Da Ordem Bipolar (Guerra Fria) à Nova Ordem Mundial Multipolar', 2, 41);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se caracterizou a "Ordem Bipolar" vigente entre 1945 e 1991 (Guerra Fria)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pela disputa geopolítica, ideológica, militar e tecnológica entre duas superpotências: Estados Unidos (capitalista) e União Soviética (socialista).', 1, 0),
(@p, 'Pelo domínio exclusivo da Índia e do Brasil sobre todos os continentes.', 0, 0),
(@p, 'Pela ausência completa de armas nucleares e alianças militares.', 0, 0),
(@p, 'Pela unificação política de todos os países da Europa e da Ásia sob um só governo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada regionalização socioeconômica do mundo ao seu critério de classificação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Primeiro, Segundo e Terceiro Mundos', 1, 1, 'Divisão da Guerra Fria (capitalistas desenvolvidos, bloco socialista e subdesenvolvidos)'),
(@p, 'Divisão Norte-Sul', 1, 2, 'Critério socioeconômico pós-Guerra Fria entre países ricos (Norte) e pobres/emergentes (Sul)'),
(@p, 'Ordem Unimultipolar / Multipolar', 1, 3, 'Hegemonia militar dos EUA combinada a vários polos econômicos (China, UE, Japão)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na regionalização socioeconômica "Norte-Sul", a Austrália e a Nova Zelândia pertencem ao "Norte" desenvolvido, apesar de estarem geograficamente situadas no Hemisfério Sul.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que explicam a ascensão geopolítica e econômica da China nas últimas décadas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reformas de abertura econômica e criação das Zonas Econômicas Especiais (ZEEs) a partir de 1978', 1, 0),
(@p, 'Forte investimento estatal em educação, ciência, inovação tecnológica e infraestrutura', 1, 0),
(@p, 'Lançamento da Iniciativa Cinturão e Rota (Nova Rota da Seda) conectando mercados globais', 1, 0),
(@p, 'Isolamento comercial total proibindo qualquer exportação industrial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebeu a aliança militar ocidental liderada pelos Estados Unidos criada em 1949 durante a Guerra Fria e que permanece ativa até hoje na Europa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'OTAN', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sucessão das grandes ordens geopolíticas mundiais desde o século XIX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ordem Multipolar Imperialista Europeia (século XIX até a Segunda Guerra Mundial)', 1, 1),
(@p, 'Ordem Bipolar da Guerra Fria (EUA vs. URSS entre 1945 e 1991)', 1, 2),
(@p, 'Momento Unipolar norte-americano nos anos 1990 pós-queda da URSS', 1, 3),
(@p, 'Multipolaridade contemporânea marcada pela rivalidade estratégica EUA-China', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa o termo "Sul Global" usado frequentemente na geopolítica contemporânea?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O conjunto de países em desenvolvimento e emergentes da América Latina, África e Ásia que buscam maior voz e reforma na governança global.', 1, 0),
(@p, 'Apenas o continente gelado da Antártida.', 0, 0),
(@p, 'Exclusivamente os países membros do G7.', 0, 0),
(@p, 'As regiões polares do Oceano Ártico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "Destruição Mútua Assegurada" (MAD) foi a doutrina nuclear da Guerra Fria segundo a qual um ataque nuclear de uma superpotência provocaria a aniquilação total de ambos os lados, dissuadindo um conflito direto.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 41.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Organismos Internacionais (ONU, OMC, FMI) e Potências Emergentes (BRICS)', 2, 41);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual órgão da Organização das Nações Unidas (ONU) possui o poder de aprovar resoluções vinculantes sobre paz e segurança internacional, autorizar sanções ou missões de paz?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conselho de Segurança da ONU', 1, 0),
(@p, 'Organização Mundial do Turismo', 0, 0),
(@p, 'Fundo Monetário Internacional', 0, 0),
(@p, 'Tribunal de Contas da União', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada organismo multilateral internacional à sua função principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'OMC (Organização Mundial do Comércio)', 1, 1, 'Regular regras do comércio internacional e arbitrar disputas tarifárias entre países'),
(@p, 'FMI (Fundo Monetário Internacional)', 1, 2, 'Garantir estabilidade financeira global e conceder empréstimos a países em crise cambial'),
(@p, 'Banco Mundial (BIRD)', 1, 3, 'Financiar projetos de infraestrutura e desenvolvimento econômico em países emergentes');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os cinco membros permanentes do Conselho de Segurança da ONU (EUA, Rússia, China, França e Reino Unido) possuem poder de veto sobre qualquer resolução substantiva.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique objetivos e iniciativas do agrupamento BRICS (Brasil, Rússia, Índia, China, África do Sul e novos membros):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ampliar a representatividade das economias emergentes em instituições como FMI, Banco Mundial e ONU', 1, 0),
(@p, 'Criação do Novo Banco de Desenvolvimento (Banco dos BRICS) sediado em Xangai', 1, 0),
(@p, 'Intensificar o comércio e o financiamento de infraestrutura entre países do Sul Global', 1, 0),
(@p, 'Criar um exército único comandado por Washington para invadir a América do Sul', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual fórum internacional criado em 1999 reúne as 19 maiores economias desenvolvidas e emergentes do mundo mais a União Europeia e a União Africana para debater estabilidade financeira e desenvolvimento global?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'G20', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos de uma controvérsia comercial julgada pela Organização Mundial do Comércio (OMC):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um país-membro denuncia subsídios ilegais ou tarifas abusivas praticadas por outro país', 1, 1),
(@p, 'Realização de consultas diplomáticas iniciais entre as partes envolvidas', 1, 2),
(@p, 'Abertura de painel de especialistas e julgamento pelo Órgão de Solução de Controvérsias', 1, 3),
(@p, 'Determinação para adequação das regras ou autorização de retaliação comercial legítima', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que países como Brasil, Índia, Alemanha e Japão defendem a reforma do Conselho de Segurança da ONU?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a composição atual dos membros permanentes reflete exclusivamente os vencedores da Segunda Guerra Mundial em 1945, não representando a geopolítica do século XXI.', 1, 0),
(@p, 'Porque querem abolir a ONU e acabar com todas as leis internacionais.', 0, 0),
(@p, 'Porque a Europa e a Ásia não possuem nenhum assento permanente atualmente.', 0, 0),
(@p, 'Porque o Conselho de Segurança só trata de campeonatos esportivos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Conferências de Bretton Woods (1944) deram origem ao FMI e ao Banco Mundial e consolidaram o dólar norte-americano como principal moeda de referência do comércio internacional.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 41.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conflitos Geopolíticos Contemporâneos, Recursos Estratégicos e o Brasil', 3, 41);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que os chamados "minerais críticos" e as "terras raras" tornaram-se o centro de disputas geopolíticas no século XXI?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque são insumos indispensáveis para a transição energética (baterias de lítio, turbinas eólicas, painéis solares), semicondutores e indústria de defesa.', 1, 0),
(@p, 'Porque são usados apenas para fabricar tijolos de barro simples.', 0, 0),
(@p, 'Porque existem em abundância infinita em qualquer praia do mundo.', 0, 0),
(@p, 'Porque substituíram totalmente a água potável na alimentação humana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada ponto de estrangulamento marítimo (chokepoint) à sua importância geopolítica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estreito de Ormuz', 1, 1, 'Passagem estratégica entre o Golfo Pérsico e o Oceano Índico para grande parte do petróleo mundial'),
(@p, 'Canal de Suez e Estreito de Bab el-Mandeb', 1, 2, 'Rota marítima vital conectando o Mar Mediterrâneo ao Mar Vermelho e ao Índico'),
(@p, 'Estreito de Malaca', 1, 3, 'Principal corredor comercial entre o Oceano Índico e o Mar do Sul da China');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O degelo acelerado do Oceano Ártico devido às mudanças climáticas abriu novas rotas de navegação mais curtas entre Ásia e Europa e despertou disputas por reservas de petróleo, gás e minerais no polo norte.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique pilares históricos da política externa e da inserção geopolítica do Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solução pacífica de controvérsias e defesa do multilateralismo diplomático', 1, 0),
(@p, 'Integração regional sul-americana (Mercosul, UNASUL) e cooperação com o Atlântico Sul (ZOPACAS)', 1, 0),
(@p, 'Potência ambiental, energética e agroalimentar com vasta biodiversidade e matriz renovável', 1, 0),
(@p, 'Expansionismo militar territorial sobre os dez países vizinhos sul-americanos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual órgão criado em 1945 pela Liga dos Estados Árabes ou qual organização formada em 1960 pelos grandes países exportadores de petróleo coordena cotas de produção para influenciar o preço internacional do barril?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'OPEP', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os fatores que explicam o prolongamento histórico da questão geopolítica entre Israel e Palestina no Oriente Médio:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Plano de Partilha da Palestina aprovado pela ONU em 1947 e criação do Estado de Israel em 1948', 1, 1),
(@p, 'Guerras árabe-israelenses (como a Guerra dos Seis Dias em 1967) e ocupação de territórios', 1, 2),
(@p, 'Acordos de Oslo nos anos 1990 buscando a solução de dois Estados', 1, 3),
(@p, 'Impasses persistentes sobre fronteiras, assentamentos, status de Jerusalém e refugiados', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que representa a "Guerra Híbrida" nos conflitos geopolíticos do século XXI?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A combinação de operações militares convencionais com ataques cibernéticos, guerra de desinformação, sanções econômicas e pressão energética.', 1, 0),
(@p, 'Um combate realizado exclusivamente com espadas e cavalaria medieval.', 0, 0),
(@p, 'Uma competição amistosa de carros elétricos híbridos.', 0, 0),
(@p, 'A proibição total do uso de satélites e computadores em conflitos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A geopolítica contemporânea incorpora novas dimensões estratégicas além do território terrestre e marítimo, incluindo o espaço sideral (satélites) e o ciberespaço (infraestruturas digitais e dados).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);