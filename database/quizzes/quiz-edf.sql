USE luminebd;

-- =========================================================================
-- MATÉRIA 11: EDUCAÇÃO FÍSICA (CONTEÚDOS 88 A 96)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 88: Esportes Coletivos
-- -------------------------------------------------------------------------

-- Quiz 88.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito e Características dos Esportes Coletivos', 1, 88);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que define fundamentalmente um esporte coletivo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Modalidade praticada por equipes que cooperam entre si e enfrentam adversários em busca de um objetivo comum.', 1, 0),
(@p, 'Atividade realizada sempre de forma solitária sem interação com outras pessoas.', 0, 0),
(@p, 'Qualquer exercício feito exclusivamente dentro de academias de musculação.', 0, 0),
(@p, 'Competição sem regras definidas nem pontuação.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada esporte coletivo ao implemento ou equipamento principal utilizado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Basquetebol', 1, 1, 'Bola arremessada em uma cesta elevada com tabela'),
(@p, 'Voleibol', 1, 2, 'Bola passada por cima de uma rede central sem quicar no chão'),
(@p, 'Handebol', 1, 3, 'Bola conduzida e arremessada com as mãos em direção ao gol');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos esportes coletivos, a comunicação e a cooperação entre os companheiros de equipe são tão importantes quanto a habilidade individual.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique modalidades classificadas como esportes coletivos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Futebol e Futsal', 1, 0),
(@p, 'Voleibol e Basquetebol', 1, 0),
(@p, 'Handebol e Rugby', 1, 0),
(@p, 'Salto em altura individual', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o esporte coletivo mais popular do Brasil, disputado por duas equipes de 11 jogadores em um campo gramado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Futebol', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência básica de uma jogada ofensiva bem-sucedida no voleibol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Recepção (passe) do saque adversário', 1, 1),
(@p, 'Levantamento da bola próximo à rede', 1, 2),
(@p, 'Ataque (cortada) para a quadra adversária', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual habilidade socioemocional é diretamente desenvolvida pela prática regular de esportes coletivos na escola?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trabalho em equipe, respeito mútuo e saber lidar com vitórias e derrotas.', 1, 0),
(@p, 'Isolamento social e recusa em ajudar os colegas.', 0, 0),
(@p, 'Desrespeito sistemático às decisões da arbitragem.', 0, 0),
(@p, 'Eliminação completa de qualquer esforço físico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O futsal é a versão adaptada do futebol praticada em quadra coberta ou descoberta por equipes de cinco jogadores cada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 88.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fundamentos Técnicos: Futebol, Futsal e Handebol', 2, 88);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No futsal e no futebol, qual fundamento técnico consiste em enviar a bola com precisão para um companheiro de equipe?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Passe', 1, 0),
(@p, 'Bloqueio de rede', 0, 0),
(@p, 'Saque por cima', 0, 0),
(@p, 'Cortada', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fundamento técnico ao esporte em que ele é característico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Domínio e condução com os pés', 1, 1, 'Futebol e Futsal'),
(@p, 'Empunhadura e arremesso com salto', 1, 2, 'Handebol'),
(@p, 'Manchete e toque por cima', 1, 3, 'Voleibol');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No handebol, o jogador com a posse da bola pode dar no máximo três passos sem quicá-la no chão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fundamentos técnicos ofensivos do futebol e do futsal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Passe e recepção (domínio)', 1, 0),
(@p, 'Condução e drible', 1, 0),
(@p, 'Chute (finalização ao gol)', 1, 0),
(@p, 'Rebote no aro da cesta', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o movimento técnico no futsal em que o jogador pisa sobre a bola para interromper sua trajetória e controlá-la?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Domínio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a execução correta de um arremesso em suspensão no handebol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Empunhar a bola firmemente com uma das mãos', 1, 1),
(@p, 'Realizar a passada de impulsão fora da área do goleiro', 1, 2),
(@p, 'Saltar em direção ao gol elevando o braço de arremesso', 1, 3),
(@p, 'Soltar a bola antes de tocar o solo dentro da área restrita', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual posição no futsal tem como principal função organizar as jogadas no centro da quadra, equilibrando defesa e ataque?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fixo (ou ala centralizador)', 1, 0),
(@p, 'Líbero', 0, 0),
(@p, 'Pivô de garrafão', 0, 0),
(@p, 'Levantador', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No handebol, o drible consiste em quicar a bola continuamente no solo com uma das mãos enquanto o jogador se desloca pela quadra.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 88.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fundamentos Técnicos: Voleibol e Basquetebol', 2, 88);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual fundamento do voleibol é executado com os antebraços unidos e estendidos, sendo muito utilizado na recepção de saques e defesas de bolas baixas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Manchete', 1, 0),
(@p, 'Bandeja', 0, 0),
(@p, 'Cabeceio', 0, 0),
(@p, 'Tiro de meta', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fundamento do basquetebol à sua descrição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Drible', 1, 1, 'Ato de quicar a bola no chão para se deslocar pela quadra'),
(@p, 'Bandeja', 1, 2, 'Arremesso em movimento próximo à cesta após dois passos'),
(@p, 'Rebote', 1, 3, 'Recuperação da bola após um arremesso não convertido');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No voleibol, cada equipe pode dar no máximo três toques na bola antes de enviá-la para a quadra adversária (sem contar o toque do bloqueio).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique tipos de passes comuns no basquetebol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Passe de peito', 1, 0),
(@p, 'Passe picado (quicando no chão)', 1, 0),
(@p, 'Passe por cima da cabeça', 1, 0),
(@p, 'Passe de calcanhar na grama', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual jogador especialista em defesa no voleibol usa uniforme de cor diferente e não pode sacar, bloquear nem atacar bolas acima da borda superior da rede?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Líbero', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as fases do arremesso de bandeja no basquetebol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aproximação driblando em direção à cesta', 1, 1),
(@p, 'Segurar a bola e executar o primeiro passo longo', 1, 2),
(@p, 'Executar o segundo passo curto de impulsão vertical', 1, 3),
(@p, 'Saltar e depositar suavemente a bola no aro ou na tabela', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No voleibol, o fundamento defensivo realizado junto à rede por um ou mais jogadores saltando com os braços estendidos para interceptar o ataque adversário é o:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bloqueio', 1, 0),
(@p, 'Saque viagem', 0, 0),
(@p, 'Lance livre', 0, 0),
(@p, 'Escanteio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No basquetebol, o jogador que está driblando não pode segurar a bola com as duas mãos e voltar a driblar novamente (infração de dois dribles).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 88.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sistemas Táticos e Lógica Interna dos Esportes Coletivos', 3, 88);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na classificação dos esportes segundo sua lógica interna, modalidades como futebol, basquetebol e handebol pertencem ao grupo dos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Esportes de invasão (territoriais), pois as equipes disputam a posse da bola para invadir o setor defendido pelo adversário.', 1, 0),
(@p, 'Esportes de rede divisória sem contato físico entre adversários.', 0, 0),
(@p, 'Esportes de marca baseados apenas em cronômetro individual.', 0, 0),
(@p, 'Esportes de precisão sem oposição direta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada sistema tático ao esporte em que é amplamente utilizado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sistema 5x1 (cinco atacantes e um levantador)', 1, 1, 'Voleibol'),
(@p, 'Defesa 6:0 (seis defensores na linha dos 6 metros)', 1, 2, 'Handebol'),
(@p, 'Formação 4-3-3 ou 4-4-2', 1, 3, 'Futebol de campo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos esportes de rede divisória (como voleibol e tênis), não há invasão do espaço físico do adversário, sendo o objetivo enviar a bola para o campo oponente dificultando sua devolução.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique princípios táticos ofensivos comuns aos esportes de invasão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Manutenção da posse de bola e criação de linhas de passe', 1, 0),
(@p, 'Ocupação racional dos espaços vazios (amplitude e profundidade)', 1, 0),
(@p, 'Progressão em direção à meta adversária para finalizar', 1, 0),
(@p, 'Aglomeração de todos os jogadores no mesmo canto da quadra', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o movimento obrigatório no voleibol em que os jogadores trocam de posição no sentido horário sempre que a equipe recupera o direito de sacar?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Rodízio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as fases da transição tática quando uma equipe recupera a bola na defesa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Recuperação da posse de bola (interceptação ou desarme)', 1, 1),
(@p, 'Transição defesa-ataque (contra-ataque ou saída organizada)', 1, 2),
(@p, 'Organização ofensiva e criação de oportunidade de finalização', 1, 3),
(@p, 'Conclusão da jogada e recomposição defensiva caso perca a bola', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal diferença entre "marcação individual" e "marcação por zona" nos esportes coletivos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na individual cada defensor acompanha um adversário específico; na marcação por zona cada defensor protege um setor determinado da quadra.', 1, 0),
(@p, 'Na individual o goleiro sai jogando no ataque; na por zona não existe goleiro.', 0, 0),
(@p, 'Na individual só pode defender com os pés; na por zona só com a cabeça.', 0, 0),
(@p, 'Não existe diferença tática entre os dois tipos de defesa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A tática coletiva envolve a organização coordenada dos jogadores em quadra para resolver problemas de ataque e defesa durante o jogo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 89: Esportes Individuais
-- -------------------------------------------------------------------------

-- Quiz 89.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Introdução aos Esportes Individuais', 1, 89);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza um esporte individual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O atleta compete sozinho, dependendo diretamente do seu próprio desempenho físico, técnico e mental.', 1, 0),
(@p, 'É obrigatório jogar em times de pelo menos 11 pessoas.', 0, 0),
(@p, 'Não existem competições oficiais nem medalhas.', 0, 0),
(@p, 'Só pode ser praticado na neve.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada esporte individual ao ambiente ou espaço em que é praticado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Natação', 1, 1, 'Piscina olímpica ou águas abertas'),
(@p, 'Atletismo (corridas e saltos)', 1, 2, 'Pista e campo de atletismo'),
(@p, 'Ginástica Artística', 1, 3, 'Tablado e aparelhos específicos como argolas e trave');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Mesmo nos esportes individuais, o atleta conta com o apoio de treinadores, preparadores físicos e equipe multidisciplinar fora das competições.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique modalidades classificadas como esportes individuais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Natação e Atletismo', 1, 0),
(@p, 'Judô e Tênis simples', 1, 0),
(@p, 'Ciclismo e Surfe', 1, 0),
(@p, 'Polo aquático e Voleibol', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual esporte individual envolve os quatro estilos oficiais: crawl, costas, peito e borboleta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Natação', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as distâncias oficiais das corridas rasas do atletismo da mais curta para a mais longa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '100 metros rasos', 1, 1),
(@p, '400 metros rasos', 1, 2),
(@p, '5.000 metros', 1, 3),
(@p, 'Maratona (42,195 km)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o atletismo é considerado o "esporte-base" de muitas outras modalidades?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque trabalha movimentos naturais fundamentais do ser humano: correr, saltar, lançar e arremessar.', 1, 0),
(@p, 'Porque utiliza bolas de todos os tamanhos ao mesmo tempo.', 0, 0),
(@p, 'Porque é praticado apenas sentado.', 0, 0),
(@p, 'Porque não exige nenhum tipo de treinamento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A maratona é uma corrida de longa distância com percurso oficial de 42,195 quilômetros.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 89.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Atletismo: Provas de Pista e Provas de Campo', 2, 89);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se dividem as grandes categorias de provas dentro do atletismo oficial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Provas de pista (corridas), provas de campo (saltos, lançamentos e arremesso) e provas combinadas/rua.', 1, 0),
(@p, 'Apenas lutas de contato e nado sincronizado.', 0, 0),
(@p, 'Apenas corridas de automóveis e motocicletas.', 0, 0),
(@p, 'Somente jogos de tabuleiro.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada prova do atletismo à sua categoria:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, '100m, 200m e 110m com barreiras', 1, 1, 'Provas de pista (velocidade)'),
(@p, 'Salto em distância, salto em altura e salto com vara', 1, 2, 'Provas de campo (saltos)'),
(@p, 'Lançamento de disco, dardo, martelo e arremesso de peso', 1, 3, 'Provas de campo (arremesso e lançamentos)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No atletismo, o peso é "arremessado" (empurrado a partir do ombro), enquanto o disco, o dardo e o martelo são "lançados".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as quatro modalidades oficiais de saltos no atletismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Salto em distância e Salto triplo', 1, 0),
(@p, 'Salto em altura', 1, 0),
(@p, 'Salto com vara', 1, 0),
(@p, 'Salto ornamental de plataforma aquática', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual equipamento posicionado no chão ajuda os velocistas a obterem maior impulsão explosiva na largada dos 100 metros rasos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Bloco de partida', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as quatro fases técnicas de um salto em distância:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Corrida de aproximação em aceleração', 1, 1),
(@p, 'Impulsão na tábua de chamada', 1, 2),
(@p, 'Voo (fase aérea)', 1, 3),
(@p, 'Queda (aterrissagem na caixa de areia)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual técnica revolucionária de salto em altura, criada por Dick Fosbury em 1968, consiste em transpor o sarrafo de costas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fosbury Flop', 1, 0),
(@p, 'Salto tesoura simples', 0, 0),
(@p, 'Mortal carpado', 0, 0),
(@p, 'Mergulho crawl', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As provas combinadas mais famosas do atletismo olímpico são o Decatlo (10 provas, masculino) e o Heptatlo (7 provas, feminino).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 89.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ginástica, Lutas e Esportes de Raquete Individuais', 2, 89);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual modalidade de ginástica olímpica utiliza aparelhos manuais como arco, bola, maças, fita e corda acompanhados de música?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ginástica Rítmica', 1, 0),
(@p, 'Levantamento de peso olímpico', 0, 0),
(@p, 'Halterofilismo paralímpico', 0, 0),
(@p, 'Remo individual', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada arte marcial ou esporte de combate à sua origem histórica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Judô e Karatê', 1, 1, 'Japão'),
(@p, 'Taekwondo', 1, 2, 'Coreia'),
(@p, 'Capoeira', 1, 3, 'Brasil (cultura afro-brasileira)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nas lutas esportivas (como judô, esgrima e boxe), existem regras rígidas, equipamentos de proteção e divisão por categorias de peso para garantir a segurança e o equilíbrio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique aparelhos oficiais da Ginástica Artística:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Solo e Salto sobre a mesa', 1, 0),
(@p, 'Trave de equilíbrio e Barras assimétricas', 1, 0),
(@p, 'Argolas, Barra fixa e Cavalo com alças', 1, 0),
(@p, 'Trampolim aquático de 10 metros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é a pontuação máxima instantânea no judô, obtida quando o atleta projeta o adversário com força, velocidade e controle de costas no tatame?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ippon', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a progressão pedagógica segura de uma rolamento para frente na ginástica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Agachar apoiando as mãos paralelas no colchonete', 1, 1),
(@p, 'Encostar o queixo no peito para proteger a coluna cervical', 1, 2),
(@p, 'Impulsionar com as pernas apoiando a nuca e as costas arredondadas', 1, 3),
(@p, 'Finalizar o giro retornando à posição agachada ou em pé', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual esporte individual de raquete é considerado o mais rápido do mundo em velocidade de deslocamento do implemento (peteca)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Badminton', 1, 0),
(@p, 'Tênis de mesa', 0, 0),
(@p, 'Golfe', 0, 0),
(@p, 'Tiro com arco', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A diferença fundamental entre "luta" e "briga" é que a luta possui regras, ética, respeito mútuo e não visa ferir o oponente, enquanto a briga é violência descontrolada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 89.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Classificação dos Esportes: Marca, Precisão e Técnico-Combinatórios', 3, 89);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na classificação oficial da BNCC (Base Nacional Comum Curricular), como são definidos os "esportes de marca"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Modalidades em que o resultado é comparado por registros quantitativos de tempo, distância ou peso (ex.: atletismo, natação, ciclismo).', 1, 0),
(@p, 'Modalidades julgadas apenas pela beleza estética das coreografias.', 0, 0),
(@p, 'Modalidades que dependem exclusivamente de acertar um alvo fixo.', 0, 0),
(@p, 'Jogos sem cronômetro nem medição.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada esporte individual à sua categoria na classificação da BNCC:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tiro com arco, golfe e bocha', 1, 1, 'Esportes de precisão'),
(@p, 'Ginástica artística, saltos ornamentais e surfe', 1, 2, 'Esportes técnico-combinatórios'),
(@p, 'Natação, remo e levantamento de peso', 1, 3, 'Esportes de marca');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos esportes técnico-combinatórios, a pontuação depende da avaliação de árbitros sobre a qualidade estética, dificuldade e perfeição técnica dos movimentos executados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características psicológicas e fisiológicas exigidas nos esportes individuais de alto rendimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Autoconhecimento corporal e controle emocional sob pressão', 1, 0),
(@p, 'Disciplina rigorosa na rotina de treinamentos', 1, 0),
(@p, 'Foco e concentração máxima no momento da execução', 1, 0),
(@p, 'Dependência de substituições constantes a cada 10 segundos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual prova multidisciplinar de resistência combina natação, ciclismo e corrida em sequência contínua?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Triatlo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três modalidades disputadas consecutivamente no Triatlo olímpico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Natação', 1, 1),
(@p, 'Ciclismo', 1, 2),
(@p, 'Corrida', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o tiro esportivo e o tiro com arco exigem controle respiratório preciso no instante do disparo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque os movimentos da caixa torácica e os batimentos acelerados provocam micro-oscilações que desviam a pontaria.', 1, 0),
(@p, 'Porque a flecha é impulsionada pelo sopro do atleta.', 0, 0),
(@p, 'Porque o alvo se move a 200 km/h em todas as provas.', 0, 0),
(@p, 'Porque o atleta corre uma maratona antes de cada flecha.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Esportes de rede como o tênis e o tênis de mesa podem ser disputados tanto na categoria individual (simples) quanto em duplas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 90: Alongamento
-- -------------------------------------------------------------------------

-- Quiz 90.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceito e Benefícios do Alongamento Muscular', 1, 90);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o principal objetivo da prática de alongamento muscular?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Manter ou aumentar a flexibilidade muscular e a amplitude de movimento das articulações, reduzindo tensões.', 1, 0),
(@p, 'Aumentar ao máximo a frequência cardíaca como uma corrida de velocidade.', 0, 0),
(@p, 'Substituir totalmente a alimentação e a hidratação diária.', 0, 0),
(@p, 'Enrijecer as articulações para impedir que elas se dobrem.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada benefício do alongamento ao seu efeito no corpo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Melhora da flexibilidade', 1, 1, 'Permite movimentos articulares mais amplos e fluidos'),
(@p, 'Alívio de tensões musculares', 1, 2, 'Promove relaxamento físico e melhora da postura corporal'),
(@p, 'Melhora da circulação local', 1, 3, 'Favorece o fluxo sanguíneo nos músculos alongados');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Durante um exercício de alongamento, devemos respeitar o limite do próprio corpo, sentindo um leve desconforto de tensão, mas nunca dor aguda.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique benefícios proporcionados pela prática regular de alongamentos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumento da amplitude articular e prevenção de encurtamentos musculares', 1, 0),
(@p, 'Consciência corporal e auxílio na correção postural', 1, 0),
(@p, 'Sensação de bem-estar e redução do estresse muscular', 1, 0),
(@p, 'Aumento imediato de 20 kg de massa óssea em um dia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual capacidade física está diretamente relacionada ao alongamento e permite realizar movimentos com grande amplitude articular?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Flexibilidade', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a execução segura de um alongamento estático simples:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adotar uma postura alinhada e estável', 1, 1),
(@p, 'Avançar lentamente até sentir leve tensão no músculo-alvo', 1, 2),
(@p, 'Manter a posição respirando profunda e calmamente (15 a 30 segundos)', 1, 3),
(@p, 'Retornar suavemente à posição inicial sem movimentos bruscos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como deve ser a respiração durante a realização de exercícios de alongamento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lenta, profunda e contínua, evitando prender a respiração.', 1, 0),
(@p, 'Em apneia total (prendendo o ar o tempo inteiro).', 0, 0),
(@p, 'Muito ofegante e acelerada como em um sprint.', 0, 0),
(@p, 'Respirando apenas uma vez a cada dois minutos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Pessoas que passam muitas horas sentadas estudando ou trabalhando no computador beneficiam-se de pausas para alongar pescoço, ombros e coluna.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 90.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Tipos de Alongamento: Estático, Dinâmico e Balístico', 2, 90);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracteriza o "alongamento estático"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alcançar lentamente uma posição de estiramento muscular e mantê-la parada por cerca de 15 a 30 segundos.', 1, 0),
(@p, 'Dar saltos e balanços violentos sem parar.', 0, 0),
(@p, 'Correr em velocidade máxima por 400 metros.', 0, 0),
(@p, 'Levantar halteres pesados rapidamente.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada método de alongamento à sua característica técnica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Alongamento Estático', 1, 1, 'Posição mantida sem movimento por alguns segundos'),
(@p, 'Alongamento Dinâmico', 1, 2, 'Movimentos ativos controlados que aumentam gradualmente a amplitude'),
(@p, 'Alongamento Passivo', 1, 3, 'Realizado com ajuda externa de um parceiro, faixa ou gravidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O alongamento dinâmico (como balanços controlados de pernas e rotação de braços) é especialmente indicado na preparação antes de treinos e jogos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique cuidados fundamentais ao realizar alongamento assistido (em dupla):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Comunicação constante entre quem alonga e quem auxilia', 1, 0),
(@p, 'Aplicação gradual e suave de força sem empurrões bruscos', 1, 0),
(@p, 'Parar imediatamente ao sinal de dor do colega', 1, 0),
(@p, 'Forçar o máximo possível mesmo se o colega pedir para parar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de alongamento envolve insistenças ou balanços rápidos e bruscos, sendo geralmente desaconselhado para iniciantes pelo risco de lesão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Alongamento balístico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene uma rotina completa de alongamento corporal seguindo o sentido céfalo-caudal (da cabeça aos pés):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pescoço e ombros', 1, 1),
(@p, 'Braços, peitoral e costas', 1, 2),
(@p, 'Quadril e musculatura da coxa (quadríceps e posteriores)', 1, 3),
(@p, 'Panturrilhas e tornozelos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "alongamento ativo" e "alongamento passivo"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'No ativo o próprio praticante usa sua força muscular para manter a posição; no passivo uma força externa (parceiro ou acessório) realiza o estiramento.', 1, 0),
(@p, 'O ativo só é feito dormindo; o passivo só é feito correndo.', 0, 0),
(@p, 'O ativo trabalha apenas os dedos; o passivo trabalha apenas os olhos.', 0, 0),
(@p, 'Não existe diferença entre eles.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Após exercícios físicos intensos, o alongamento leve ajuda na volta à calma e no relaxamento gradual da musculatura solicitada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 90.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Principais Grupos Musculares Alongados na Prática Física', 2, 90);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Ao ficar em pé, flexionar um joelho e segurar o pé atrás próximo ao glúteo, qual grupo muscular principal estamos alongando?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Quadríceps (parte anterior da coxa)', 1, 0),
(@p, 'Tríceps braquial (parte posterior do braço)', 0, 0),
(@p, 'Peitoral maior', 0, 0),
(@p, 'Músculos do pescoço', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada exercício de alongamento ao grupo muscular trabalhado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sentado com pernas estendidas, alcançar a ponta dos pés', 1, 1, 'Isquiotibiais (posteriores da coxa) e lombar'),
(@p, 'Puxar o cotovelo flexionado por trás da cabeça', 1, 2, 'Tríceps braquial'),
(@p, 'Empurrar a parede com uma perna atrás e calcanhar no chão', 1, 3, 'Panturrilha (gastrocnêmio e sóleo)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Manter os joelhos estendidos sem travá-los com violência e a coluna alinhada evita sobrecarga articular durante os alongamentos de membros inferiores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique grupos musculares importantes dos membros superiores que devem ser alongados após atividades de arremesso ou natação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Deltoides (ombros)', 1, 0),
(@p, 'Peitoral maior e grande dorsal', 1, 0),
(@p, 'Bíceps e tríceps braquial', 1, 0),
(@p, 'Gastrocnêmio da panturrilha', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual posição clássica sentado no chão com as solas dos pés unidas e joelhos afastados lateralmente alonga os músculos adutores (parte interna) da coxa?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Borboleta', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a execução do alongamento do peitoral apoiado na parede:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Posicionar-se lateralmente próximo a uma parede', 1, 1),
(@p, 'Apoiar o antebraço e a palma da mão na parede na altura do ombro', 1, 2),
(@p, 'Girar suavemente o tronco para o lado oposto até sentir abrir o peitoral', 1, 3),
(@p, 'Manter por 20 segundos e repetir com o outro braço', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que corredores e jogadores de futebol precisam dar atenção especial ao alongamento dos isquiotibiais (posteriores da coxa) e panturrilhas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque esses músculos são muito exigidos nas arrancadas, frenagens e chutes, tendo grande tendência ao encurtamento.', 1, 0),
(@p, 'Porque são os únicos músculos existentes no corpo humano.', 0, 0),
(@p, 'Porque nunca são usados durante uma corrida.', 0, 0),
(@p, 'Para diminuir a capacidade pulmonar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A flexibilidade varia de pessoa para pessoa e até mesmo de uma articulação para outra no mesmo indivíduo (especificidade articular).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 90.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fisiologia do Alongamento, FNP e Prevenção de Encurtamentos', 3, 90);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual estrutura sensorial localizada no interior das fibras musculares detecta o estiramento rápido e desencadeia o "reflexo miotático" (contração protetora)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fuso muscular', 1, 0),
(@p, 'Alvéolo pulmonar', 0, 0),
(@p, 'Papila gustativa', 0, 0),
(@p, 'Glomérulo renal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada mecanismo fisiológico do alongamento à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fuso muscular', 1, 1, 'Sensível à velocidade e amplitude do estiramento; evita ruptura por alongamento brusco'),
(@p, 'Órgão Tendinoso de Golgi (OTG)', 1, 2, 'Localizado nos tendões; detecta tensão elevada e promove relaxamento muscular'),
(@p, 'Método FNP (Facilitação Neuromuscular Proprioceptiva)', 1, 3, 'Alterna contração isométrica breve e relaxamento para ganhar amplitude');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Quando alongamos um músculo de forma lenta e gradual (sem movimentos bruscos), evitamos ativar intensamente o reflexo de estiramento do fuso muscular, permitindo maior relaxamento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores que influenciam diretamente o nível de flexibilidade de um indivíduo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Idade (crianças tendem a ser mais flexíveis que idosos sedentários)', 1, 0),
(@p, 'Temperatura muscular (músculos aquecidos apresentam maior elasticidade)', 1, 0),
(@p, 'Prática regular de treinamento de flexibilidade e mobilidade', 1, 0),
(@p, 'Cor dos olhos e tipo sanguíneo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual sigla designa o método avançado de alongamento que combina alongamento passivo com contração isométrica do músculo alongado (Facilitação Neuromuscular Proprioceptiva)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'FNP', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas do método FNP (contrai-relaxa) realizado com auxílio:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Levar passivamente o membro até o limite confortável de alongamento', 1, 1),
(@p, 'Realizar contração isométrica contra a resistência do parceiro por ~6 segundos', 1, 2),
(@p, 'Relaxar completamente a musculatura por alguns segundos', 1, 3),
(@p, 'Avançar suavemente para uma nova amplitude de alongamento maior', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que evidências científicas atuais recomendam sobre alongamentos estáticos muito longos (acima de 60 segundos por músculo) imediatamente antes de provas de força máxima ou salto explosivo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Devem ser evitados logo antes de esforços explosivos máximos, pois podem reduzir temporariamente a potência muscular; prefere-se mobilidade dinâmica.', 1, 0),
(@p, 'Devem durar 30 minutos em cada dedo antes de qualquer corrida.', 0, 0),
(@p, 'Aumentam em 500% o salto vertical instantaneamente.', 0, 0),
(@p, 'Substituem o aquecimento cardiovascular.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ginástica laboral incorpora pausas ativas com alongamentos e mobilidade no ambiente de trabalho para prevenir lesões por esforços repetitivos (LER/DORT).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 91: Aquecimento
-- -------------------------------------------------------------------------

-- Quiz 91.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Importância do Aquecimento antes da Atividade Física', 1, 91);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal finalidade do aquecimento antes de iniciar um treino, aula de Educação Física ou jogo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Preparar gradualmente o organismo (músculos, articulações, coração e pulmões) para o esforço físico, reduzindo o risco de lesões.', 1, 0),
(@p, 'Cansar o atleta até a exaustão antes mesmo do jogo começar.', 0, 0),
(@p, 'Diminuir a temperatura do corpo até causar calafrios.', 0, 0),
(@p, 'Eliminar a necessidade de beber água durante o exercício.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada efeito do aquecimento ao benefício correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Aumento da temperatura muscular', 1, 1, 'Deixa os músculos mais elásticos e eficientes'),
(@p, 'Elevação gradual dos batimentos cardíacos', 1, 2, 'Envia mais oxigênio e nutrientes aos músculos ativos'),
(@p, 'Lubrificação das articulações', 1, 3, 'Estimula o líquido sinovial reduzindo o atrito articular');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Iniciar uma corrida intensa ou um chute forte "a frio", sem aquecimento prévio, aumenta significativamente o risco de estiramentos e distensões musculares.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique atividades adequadas para um aquecimento geral inicial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Caminhada acelerada ou trote leve', 1, 0),
(@p, 'Polichinelos e deslocamentos laterais suaves', 1, 0),
(@p, 'Movimentos circulares de mobilidade nos ombros, quadril e tornozelos', 1, 0),
(@p, 'Arrancada máxima de 100 metros logo no primeiro segundo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamado o líquido natural que lubrifica as articulações móveis e tem sua produção estimulada durante o aquecimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Líquido sinovial', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura clássica de uma sessão de aula de Educação Física ou treino:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aquecimento (preparação gradual)', 1, 1),
(@p, 'Parte principal (atividade esportiva ou exercício intenso)', 1, 2),
(@p, 'Volta à calma (desaceleração e relaxamento)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto tempo costuma durar um bom aquecimento para aulas escolares ou atividades recreativas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cerca de 5 a 15 minutos, com intensidade leve a moderada e progressiva.', 1, 0),
(@p, 'Apenas 3 segundos parado.', 0, 0),
(@p, 'Mais de 3 horas sem descanso.', 0, 0),
(@p, 'Exatamente 1 segundo de salto.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Além dos benefícios físicos, o aquecimento ajuda a aumentar o foco mental e a concentração para a atividade que será realizada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 91.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Aquecimento Geral e Aquecimento Específico', 2, 91);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "aquecimento geral" e "aquecimento específico"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O geral ativa grandes grupos musculares e o sistema cardiorrespiratório; o específico reproduz gestos técnicos da modalidade que será praticada.', 1, 0),
(@p, 'O geral é feito apenas com os dedos; o específico é feito dormindo.', 0, 0),
(@p, 'O geral só existe na natação; o específico só existe no xadrez.', 0, 0),
(@p, 'Ambos são proibidos em competições oficiais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada esporte a um exemplo adequado de aquecimento ESPECÍFICO:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Voleibol', 1, 1, 'Trocas de toques, manchetes e saques leves em dupla'),
(@p, 'Basquetebol', 1, 2, 'Dribles curtos, passes e arremessos próximos à cesta'),
(@p, 'Futebol', 1, 3, 'Passes curtos, condução leve de bola e acelerações progressivas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A sequência ideal de preparação antes de uma partida começa pelo aquecimento geral (trote e mobilidade) seguido pelo aquecimento específico com bola ou gestos do esporte.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique sinais corporais normais que indicam que o organismo está bem aquecido:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Leve transpiração (suor inicial) e sensação de calor corporal', 1, 0),
(@p, 'Aumento moderado da frequência cardíaca e respiratória', 1, 0),
(@p, 'Sensação de maior soltura e leveza nos movimentos articulares', 1, 0),
(@p, 'Tontura forte, falta de ar extrema e exaustão total', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a fase final da aula ou treino, oposta ao aquecimento, que reduz gradualmente os batimentos cardíacos e a temperatura corporal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Volta à calma', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene uma rotina lógica de aquecimento para uma aula de handebol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Trote leve pela quadra variando deslocamentos', 1, 1),
(@p, 'Mobilidade articular de ombros, cotovelos, punhos, quadril e joelhos', 1, 2),
(@p, 'Passes em dupla com aumento gradual da distância e velocidade', 1, 3),
(@p, 'Arremessos progressivos ao gol para aquecer jogadores e goleiros', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o aquecimento antes de um treino de musculação costuma incluir séries iniciais com cargas bem leves?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para ativar a coordenação neuromuscular do movimento e irrigar especificamente os músculos e tendões antes das cargas maiores.', 1, 0),
(@p, 'Para quebrar os equipamentos da academia.', 0, 0),
(@p, 'Para diminuir a circulação de sangue nos braços.', 0, 0),
(@p, 'Porque pesos leves pesam mais que pesos pesados.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em dias muito frios, o tempo de aquecimento deve ser um pouco mais longo e gradual do que em dias quentes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 91.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Mobilidade Articular e Aquecimento Lúdico', 2, 91);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são exercícios de "mobilidade articular" realizados durante o aquecimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Movimentos ativos e controlados que levam cada articulação (ombros, quadril, tornozelos) por toda a sua amplitude natural de movimento.', 1, 0),
(@p, 'Ficar totalmente imóvel sentado no banco durante 20 minutos.', 0, 0),
(@p, 'Levantar pesos máximos acima da cabeça sem dobrar os joelhos.', 0, 0),
(@p, 'Correr de olhos fechados pela quadra.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada articulação ao movimento de mobilidade correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ombros', 1, 1, 'Circundução (giros amplos para frente e para trás)'),
(@p, 'Quadril', 1, 2, 'Abertura lateral e elevação alternada de joelhos'),
(@p, 'Tornozelos', 1, 3, 'Flexão plantar, dorsiflexão e rotações suaves');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Brincadeiras como pega-pega, nunca-três e jogos pré-desportivos leves são excelentes formas de aquecimento lúdico nas aulas escolares.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique benefícios do aquecimento lúdico (por meio de jogos e brincadeiras):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aumenta a motivação e o engajamento dos alunos', 1, 0),
(@p, 'Eleva a frequência cardíaca e a temperatura corporal de forma prazerosa', 1, 0),
(@p, 'Estimula a atenção, agilidade e tomada rápida de decisão', 1, 0),
(@p, 'Provoca sonolência imediata em toda a turma', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo descreve o aquecimento realizado por meio de movimentos ativos do próprio corpo, sem uso de fontes externas como bolsas térmicas ou massagens?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Aquecimento ativo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a progressão de intensidade durante um aquecimento seguro:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Movimentos articulares suaves e caminhada leve', 1, 1),
(@p, 'Trote moderado e exercícios coordenativos (skipping, deslocamento lateral)', 1, 2),
(@p, 'Alongamentos dinâmicos amplos', 1, 3),
(@p, 'Acelerações curtas e gestos específicos em ritmo próximo ao do jogo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que devemos evitar mudanças bruscas de direção em alta velocidade logo no início do aquecimento?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque ligamentos, tendões e músculos ainda não atingiram a temperatura e elasticidade ideais, elevando o risco de entorses e distensões.', 1, 0),
(@p, 'Porque os tênis derretem no chão.', 0, 0),
(@p, 'Porque o coração para de bater ao virar para o lado.', 0, 0),
(@p, 'Porque a gravidade aumenta nas curvas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um aquecimento bem planejado deve aumentar progressivamente a intensidade sem gerar fadiga muscular antes da atividade principal.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 91.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Adaptações Fisiológicas do Aquecimento e Prevenção de Lesões', 3, 91);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que acontece com a distribuição do fluxo sanguíneo no corpo humano durante o aquecimento físico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ocorre vasodilatação nos músculos esqueléticos ativos e vasoconstrição em órgãos digestivos, direcionando mais oxigênio aos músculos.', 1, 0),
(@p, 'Todo o sangue vai para o estômago e abandona completamente as pernas e braços.', 0, 0),
(@p, 'O sangue deixa de circular pelos pulmões.', 0, 0),
(@p, 'A pressão arterial cai para zero.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada adaptação fisiológica do aquecimento ao seu mecanismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Redução da viscosidade muscular', 1, 1, 'O calor diminui o atrito interno entre as fibras musculares'),
(@p, 'Aceleração da transmissão nervosa', 1, 2, 'Impulsos elétricos viajam mais rápido, melhorando o tempo de reação'),
(@p, 'Liberação facilitada de O2 pela hemoglobina', 1, 3, 'O aumento de temperatura favorece a entrega de oxigênio aos tecidos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O aquecimento reduz o chamado "déficit de oxigênio" no início do exercício intenso, ativando mais cedo o metabolismo aeróbico.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique lesões esportivas comuns cuja incidência é reduzida por um aquecimento adequado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estiramento e distensão muscular (ex.: posteriores da coxa)', 1, 0),
(@p, 'Entorses articulares (como tornozelo e joelho)', 1, 0),
(@p, 'Tendinites por sobrecarga brusca a frio', 1, 0),
(@p, 'Cárie dentária e miopia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual programa preventivo internacional criado pela FIFA combina corrida, força do core, equilíbrio e pliometria no aquecimento para reduzir lesões no futebol?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'FIFA 11+', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a cascata fisiológica desencadeada pelo início do aquecimento ativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Início das contrações musculares leves e produção de calor metabólico', 1, 1),
(@p, 'Aumento da frequência cardíaca, do débito cardíaco e da ventilação pulmonar', 1, 2),
(@p, 'Vasodilatação dos capilares musculares e aumento da temperatura tecidual', 1, 3),
(@p, 'Melhora da elasticidade, velocidade de contração e coordenação motora', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quanto tempo após o término do aquecimento os seus benefícios fisiológicos (temperatura muscular elevada) começam a diminuir significativamente se o atleta ficar parado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Após cerca de 10 a 15 minutos de inatividade, exigindo reaquecimento breve antes de entrar em jogo.', 1, 0),
(@p, 'Dura exatamente 7 dias sem precisar aquecer de novo.', 0, 0),
(@p, 'Desaparece em meio segundo.', 0, 0),
(@p, 'Dura até o ano seguinte.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "volta à calma" após exercícios intensos auxilia na remoção gradual do lactato sanguíneo e evita tonturas por acúmulo de sangue nos membros inferiores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 92: Capacidades Físicas
-- -------------------------------------------------------------------------

-- Quiz 92.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conhecendo as Capacidades Físicas Humanas', 1, 92);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são "capacidades físicas" na Educação Física?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Qualidades físicas treináveis do organismo humano (como força, velocidade, resistência e flexibilidade) essenciais para o movimento.', 1, 0),
(@p, 'Apenas as roupas esportivas usadas nos campeonatos.', 0, 0),
(@p, 'As notas musicais de uma canção.', 0, 0),
(@p, 'Somente o tamanho dos pés de um atleta.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada capacidade física ao seu exemplo prático:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Força', 1, 1, 'Empurrar um objeto pesado ou fazer flexões de braço'),
(@p, 'Velocidade', 1, 2, 'Correr os 100 metros rasos no menor tempo possível'),
(@p, 'Resistência', 1, 3, 'Pedalar ou correr por 40 minutos sem parar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Todas as pessoas nascem com certo potencial genético, mas as capacidades físicas podem ser desenvolvidas e melhoradas com treinamento regular.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique capacidades físicas fundamentais do corpo humano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Força e Potência', 1, 0),
(@p, 'Resistência aeróbica e anaeróbica', 1, 0),
(@p, 'Velocidade, Flexibilidade e Agilidade', 1, 0),
(@p, 'Telepatia e invisibilidade', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual capacidade física permite ao corpo sustentar um esforço físico por um longo período de tempo combatendo a fadiga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Resistência', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene estas atividades da que exige mais VELOCIDADE explosiva para a que exige mais RESISTÊNCIA prolongada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Corrida de 50 metros rasos (velocidade máxima)', 1, 1),
(@p, 'Corrida de 400 metros (velocidade prolongada)', 1, 2),
(@p, 'Corrida de 5 quilômetros (resistência média)', 1, 3),
(@p, 'Maratona de 42 km (resistência de longa duração)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual capacidade física permite mudar rapidamente a direção e o sentido do deslocamento do corpo com controle e velocidade (como driblar cones)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Agilidade', 1, 0),
(@p, 'Flexibilidade estática', 0, 0),
(@p, 'Sonolência', 0, 0),
(@p, 'Imobilidade', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um jogador de futebol ou basquetebol utiliza várias capacidades físicas combinadas durante a mesma partida (velocidade, resistência, força e agilidade).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 92.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Força, Potência Muscular e Velocidade', 2, 92);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é "potência muscular" (também chamada de força explosiva)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A combinação de força e velocidade, permitindo aplicar grande força no menor tempo possível (como em um salto ou cortada).', 1, 0),
(@p, 'Manter-se parado dormindo por 12 horas.', 0, 0),
(@p, 'Alongar devagar por 5 minutos.', 0, 0),
(@p, 'Caminhar lentamente olhando a vitrine.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de contração muscular à sua característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Contração Isotônica (dinâmica)', 1, 1, 'Há movimento articular com encurtamento ou alongamento do músculo'),
(@p, 'Contração Isométrica (estática)', 1, 2, 'O músculo gera tensão sem alterar seu comprimento nem mover a articulação'),
(@p, 'Potência (Força Explosiva)', 1, 3, 'Execução rápida e vigorosa, como arremessar um peso ou saltar');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O exercício abdominal "prancha" (manter o corpo reto apoiado nos antebraços e pontas dos pés sem se mover) é um exemplo clássico de força isométrica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os três componentes principais que formam a velocidade no esporte:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Velocidade de reação (tempo entre o sinal de largada e o início do movimento)', 1, 0),
(@p, 'Velocidade de deslocamento (percorrer uma distância no menor tempo)', 1, 0),
(@p, 'Velocidade de membros / gestual (rapidez de um chute ou golpe)', 1, 0),
(@p, 'Velocidade de digestão estomacal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual teste físico escolar muito comum mede a resistência de força abdominal contando quantas repetições o aluno faz em 1 minuto?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Teste abdominal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas de resposta de um velocista ao tiro de largada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Captação do som do disparo pelos ouvidos (estímulo sensorial)', 1, 1),
(@p, 'Processamento nervoso e envio do impulso aos músculos (tempo de reação)', 1, 2),
(@p, 'Empurrão explosivo contra o bloco de partida (potência)', 1, 3),
(@p, 'Aceleração máxima até atingir a velocidade de deslocamento', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na fase concêntrica de uma flexão de braços (empurrando o chão para subir), o músculo peitoral e o tríceps estão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Encurtando suas fibras para vencer a resistência do peso corporal.', 1, 0),
(@p, 'Totalmente desligados sem nenhuma atividade elétrica.', 0, 0),
(@p, 'Sendo alongados passivamente por outra pessoa.', 0, 0),
(@p, 'Transformando-se em tecido adiposo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O treinamento de força bem orientado para jovens melhora a saúde óssea, a postura e protege as articulações contra lesões.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 92.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Resistência Aeróbica, Anaeróbica e Equilíbrio', 2, 92);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "resistência aeróbica" e "resistência anaeróbica"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A aeróbica usa oxigênio em esforços moderados e prolongados; a anaeróbica sustenta esforços intensos e curtos sem depender de oxigênio suficiente.', 1, 0),
(@p, 'A aeróbica só ocorre dentro da água; a anaeróbica só ocorre no espaço.', 0, 0),
(@p, 'A aeróbica dura 2 segundos; a anaeróbica dura 10 horas.', 0, 0),
(@p, 'Não existe diferença energética entre elas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada atividade à capacidade física predominante:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Corrida contínua de 30 minutos em ritmo leve', 1, 1, 'Resistência aeróbica'),
(@p, 'Caminhar sobre uma trave estreita ou slackline', 1, 2, 'Equilíbrio dinâmico'),
(@p, 'Sprint intenso de 300 metros sem pausa', 1, 3, 'Resistência anaeróbica');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O equilíbrio estático mantém o corpo estável em uma posição parada (como ficar num pé só), enquanto o equilíbrio dinâmico mantém a estabilidade em movimento.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique exercícios que desenvolvem principalmente a resistência cardiorrespiratória (aeróbica):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Caminhada rápida e corrida contínua', 1, 0),
(@p, 'Natação e ciclismo de longa duração', 1, 0),
(@p, 'Pular corda em ritmo constante por vários minutos', 1, 0),
(@p, 'Uma única repetição máxima no supino', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual sistema sensorial localizado no ouvido interno (labirinto) é fundamental junto com a visão para o controle do equilíbrio corporal?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Sistema vestibular', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a progressão de dificuldade para treinar o equilíbrio estático:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Apoio bipodal (dois pés no chão) com olhos abertos', 1, 1),
(@p, 'Apoio unipodal (um pé só no chão) com olhos abertos', 1, 2),
(@p, 'Apoio unipodal sobre superfície instável (colchonete ou disco)', 1, 3),
(@p, 'Apoio unipodal com olhos fechados', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o treinamento regular de resistência aeróbica reduz a frequência cardíaca em repouso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o coração torna-se mais forte e eficiente, bombeando maior volume de sangue a cada batimento.', 1, 0),
(@p, 'Porque o coração diminui de tamanho e para de trabalhar.', 0, 0),
(@p, 'Porque os pulmões deixam de absorver oxigênio.', 0, 0),
(@p, 'Porque o sangue fica sólido nas veias.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A musculatura do "core" (abdômen, lombar e pelve) é essencial para o equilíbrio, a estabilidade da coluna e a transferência de força entre membros.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 92.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Princípios do Treinamento Físico e Avaliação das Capacidades', 3, 92);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estabelece o "Princípio da Sobrecarga Progressiva" no treinamento das capacidades físicas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para que o organismo evolua, os estímulos de treino (carga, duração ou intensidade) devem aumentar gradualmente conforme o corpo se adapta.', 1, 0),
(@p, 'Deve-se levantar o peso máximo possível já no primeiro dia sem descanso.', 0, 0),
(@p, 'Deve-se fazer exatamente o mesmo esforço leve por 20 anos sem mudar nada.', 0, 0),
(@p, 'O descanso deve ser completamente eliminado da semana.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada princípio do treinamento desportivo à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Individualidade Biológica', 1, 1, 'Cada pessoa responde de forma única aos mesmos estímulos de treino'),
(@p, 'Especificidade', 1, 2, 'As adaptações ocorrem exatamente nos sistemas e gestos treinados'),
(@p, 'Reversibilidade', 1, 3, 'Os ganhos físicos diminuem quando o treinamento é interrompido por muito tempo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A supercompensação ocorre durante o período de recuperação (descanso e sono) após o treino, quando o organismo eleva sua capacidade acima do nível anterior.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique testes clássicos utilizados na avaliação física escolar e esportiva (como no protocolo PROESP-BR):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Teste de sentar e alcançar (Banco de Wells) para flexibilidade', 1, 0),
(@p, 'Corrida/caminhada de 6 ou 12 minutos (Cooper) para resistência aeróbica', 1, 0),
(@p, 'Salto horizontal parado para potência de membros inferiores', 1, 0),
(@p, 'Exame de vista para medir força abdominal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual indicador fisiológico representa o volume máximo de oxigênio que o organismo consegue captar, transportar e utilizar durante o exercício intenso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'VO2 máximo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo da supercompensação no treinamento físico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aplicação do estímulo de treino (carga física)', 1, 1),
(@p, 'Fadiga temporária e queda momentânea do desempenho', 1, 2),
(@p, 'Recuperação nutricional e repouso adequado', 1, 3),
(@p, 'Supercompensação (elevação do condicionamento acima do nível inicial)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que acontece quando um atleta treina excessivamente sem respeitar o tempo de descanso necessário, entrando em "overtraining" (sobretreinamento)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Queda de rendimento, fadiga persistente, irritabilidade, distúrbios do sono e maior vulnerabilidade a lesões e infecções.', 1, 0),
(@p, 'Aumento milagroso de força sem precisar dormir nunca.', 0, 0),
(@p, 'Cura imediata de todas as fraturas ósseas.', 0, 0),
(@p, 'Redução da necessidade de beber água.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As capacidades físicas são classificadas em condicionais (força, velocidade, resistência, flexibilidade) e coordenativas (equilíbrio, ritmo, agilidade).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 93: Coordenação Motora
-- -------------------------------------------------------------------------

-- Quiz 93.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O que é Coordenação Motora e sua Importância', 1, 93);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa "coordenação motora"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A capacidade do cérebro e dos músculos trabalharem em harmonia para realizar movimentos precisos, eficientes e econômicos.', 1, 0),
(@p, 'Apenas a força bruta para levantar carros.', 0, 0),
(@p, 'A habilidade de ficar imóvel sem piscar por uma hora.', 0, 0),
(@p, 'A velocidade com que o cabelo cresce.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada tipo de coordenação motora ao seu exemplo cotidiano:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Coordenação motora grossa (ampla)', 1, 1, 'Correr, pular corda, nadar e andar de bicicleta'),
(@p, 'Coordenação motora fina', 1, 2, 'Escrever, recortar com tesoura, desenhar e amarrar cadarços'),
(@p, 'Coordenação óculo-manual', 1, 3, 'Receber uma bola com as mãos ou rebater com uma raquete');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A coordenação motora desenvolve-se desde a infância por meio de brincadeiras, jogos, atividades artísticas e práticas esportivas variadas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique atividades que estimulam a coordenação motora grossa:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pular amarelinha e pular corda', 1, 0),
(@p, 'Saltar obstáculos e correr em zigue-zague', 1, 0),
(@p, 'Dançar e praticar ginástica', 1, 0),
(@p, 'Digitar apenas uma letra no teclado parado', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de coordenação motora envolve pequenos músculos das mãos e dos dedos em tarefas de alta precisão, como escrever ou tocar piano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Coordenação motora fina', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de realização de um movimento coordenado (como pegar uma bola lançada):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os olhos acompanham a trajetória e velocidade da bola', 1, 1),
(@p, 'O cérebro calcula o ponto e o momento exato da interceptação', 1, 2),
(@p, 'O sistema nervoso envia comandos aos músculos dos braços e mãos', 1, 3),
(@p, 'As mãos fecham-se no tempo certo segurando a bola com firmeza', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como chamamos a coordenação que integra a visão com os movimentos dos pés (essencial no futebol e na dança)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Coordenação óculo-pedal', 1, 0),
(@p, 'Coordenação auditivo-olfativa', 0, 0),
(@p, 'Coordenação estática cervical', 0, 0),
(@p, 'Coordenação respiratória passiva', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um movimento bem coordenado gasta menos energia do que um movimento desorganizado e tenso.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 93.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Capacidades Coordenativas: Ritmo, Lateralidade e Noção Espacial', 2, 93);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é "lateralidade" no desenvolvimento motor humano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A percepção e o domínio dos dois lados do corpo (direito e esquerdo), incluindo a preferência funcional por uma das mãos, pés ou olhos.', 1, 0),
(@p, 'A capacidade de andar apenas de costas o dia inteiro.', 0, 0),
(@p, 'A altura máxima que uma pessoa alcança ao saltar.', 0, 0),
(@p, 'O medo de praticar esportes coletivos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento psicomotor à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ritmo', 1, 1, 'Organização temporal dos movimentos em cadência e fluidez'),
(@p, 'Estruturação espacial', 1, 2, 'Percepção da posição do próprio corpo em relação aos objetos e colegas'),
(@p, 'Esquema corporal', 1, 3, 'Consciência global das partes do corpo e de suas possibilidades de ação');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Treinar habilidades esportivas (como dribles e passes) utilizando tanto o lado dominante quanto o lado não dominante melhora a coordenação bilateral e o repertório motor.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique atividades físicas em que o senso de RITMO é fundamental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dança e ginástica rítmica', 1, 0),
(@p, 'Pular corda em grupo (corda batida)', 1, 0),
(@p, 'Corrida com barreiras e natação (cadência de braçadas e respiração)', 1, 0),
(@p, 'Ficar sentado lendo em silêncio', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como é chamada a pessoa que apresenta habilidade motora equivalente e eficiente com ambos os lados do corpo (direito e esquerdo)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ambidestra', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a progressão de complexidade em um circuito de coordenação motora com escada de agilidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Caminhar pisando um pé em cada quadrado olhando para a frente', 1, 1),
(@p, 'Correr em ritmo constante colocando dois apoios por quadrado', 1, 2),
(@p, 'Realizar deslocamentos laterais cruzando os passos (tesoura)', 1, 3),
(@p, 'Executar a sequência coordenada conduzindo ou quicando uma bola', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quando um jogador de basquetebol consegue driblar a bola sem olhar para ela, mantendo a visão levantada para observar a quadra, ele demonstra excelente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Propriocepção e dissociação de movimentos (coordenação automatizada).', 1, 0),
(@p, 'Falta de equilíbrio estático.', 0, 0),
(@p, 'Perda total de visão periférica.', 0, 0),
(@p, 'Encurtamento muscular grave.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A dissociação de movimentos é a capacidade de movimentar independentemente diferentes segmentos corporais ao mesmo tempo (como bater palmas no ritmo enquanto caminha).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 93.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Habilidades Motoras Fundamentais e Especializadas', 2, 93);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como são classificadas as habilidades motoras fundamentais desenvolvidas na infância?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Habilidades de locomoção, manipulação e estabilização (equilíbrio).', 1, 0),
(@p, 'Apenas digitação, leitura e cálculo mental.', 0, 0),
(@p, 'Somente mergulho profundo e paraquedismo.', 0, 0),
(@p, 'Apenas dormir e mastigar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada habilidade motora fundamental à sua categoria:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Correr, saltar, galopar e deslizar', 1, 1, 'Habilidades de locomoção'),
(@p, 'Arremessar, receber, chutar e rebater', 1, 2, 'Habilidades de manipulação'),
(@p, 'Equilibrar-se, girar, esquivar e rolar', 1, 3, 'Habilidades de estabilização');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A bandeja do basquetebol ou a cortada do voleibol são exemplos de habilidades motoras especializadas, construídas pela combinação de habilidades fundamentais (correr, saltar e manipular).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique habilidades motoras de MANIPULAÇÃO:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lançar uma bola ao alvo', 1, 0),
(@p, 'Receber (agarrar) um objeto em movimento', 1, 0),
(@p, 'Chutar ou driblar uma bola', 1, 0),
(@p, 'Ficar parado em equilíbrio sobre um pé só', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa a capacidade sensorial interna de perceber a posição e o movimento das próprias articulações e músculos mesmo sem olhar para eles?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Propriocepção', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as fases do desenvolvimento motor humano segundo o modelo clássico de Gallahue:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fase motora reflexiva (bebês recém-nascidos)', 1, 1),
(@p, 'Fase motora rudimentar (sentar, engatinhar e andar inicial)', 1, 2),
(@p, 'Fase motora fundamental (correr, saltar e arremessar na infância)', 1, 3),
(@p, 'Fase motora especializada (aplicação aos esportes, danças e lutas)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a "especialização esportiva precoce" (treinar apenas um gesto esportivo repetitivo muito cedo) pode prejudicar a criança?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque limita o repertório motor amplo, sobrecarrega articulações em crescimento e pode causar abandono precoce do esporte.', 1, 0),
(@p, 'Porque torna a criança boa demais em todas as matérias escolares.', 0, 0),
(@p, 'Porque aumenta a altura em 50 centímetros.', 0, 0),
(@p, 'Não traz nenhum risco físico nem psicológico.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A vivência diversificada de múltiplos jogos, brincadeiras e modalidades esportivas na infância e adolescência enriquece o acervo motor do indivíduo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 93.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Controle Neuromuscular, Cerebelo e Aprendizagem Motora', 3, 93);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual estrutura do encéfalo é o principal centro coordenador dos movimentos finos, da postura, do equilíbrio e do ajuste motor em tempo real?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Cerebelo', 1, 0),
(@p, 'Pâncreas', 0, 0),
(@p, 'Fígado', 0, 0),
(@p, 'Glândula tireoide', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada estágio da aprendizagem motora (Fitts e Posner) à sua característica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estágio Cognitivo', 1, 1, 'Iniciante pensa muito em cada passo, comete muitos erros e movimentos rígidos'),
(@p, 'Estágio Associativo', 1, 2, 'Movimentos tornam-se mais fluidos e o praticante começa a detectar próprios erros'),
(@p, 'Estágio Autônomo', 1, 3, 'Habilidade automatizada, executada com precisão e pouca atenção consciente');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O "feedback" (retorno informativo sobre a execução do movimento, seja sensorial interno ou dado pelo professor) é essencial para corrigir erros e consolidar a aprendizagem motora.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique capacidades coordenativas específicas reconhecidas pela ciência do treinamento esportivo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Diferenciação cinestésica (dosar a força exata de um passe curto ou longo)', 1, 0),
(@p, 'Orientação espaço-temporal e reação motora', 1, 0),
(@p, 'Acoplamento de movimentos e adaptação motora', 1, 0),
(@p, 'Fotossíntese clorofiliana', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como se chama o conjunto formado por um neurônio motor e todas as fibras musculares esqueléticas que ele inerva e controla?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Unidade motora', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três estágios da aprendizagem motora do iniciante até o especialista:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estágio Cognitivo (compreensão inicial e tentativa)', 1, 1),
(@p, 'Estágio Associativo (refinamento e redução de erros)', 1, 2),
(@p, 'Estágio Autônomo (automatização e foco tático)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "habilidade motora aberta" e "habilidade motora fechada"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na aberta o ambiente é imprevisível e muda constantemente (ex.: drible no futebol); na fechada o ambiente é estável e previsível (ex.: lance livre).', 1, 0),
(@p, 'Na aberta o atleta joga de olhos fechados; na fechada joga no escuro.', 0, 0),
(@p, 'Na aberta não há movimento; na fechada há apenas corrida.', 0, 0),
(@p, 'Não existe diferença entre habilidades abertas e fechadas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A coordenação intermuscular refere-se à sincronia entre músculos agonistas (que executam o movimento) e antagonistas (que relaxam e controlam o gesto).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 94: Saúde e Qualidade de Vida
-- -------------------------------------------------------------------------

-- Quiz 94.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Atividade Física, Sedentarismo e Bem-Estar', 1, 94);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'De acordo com a Organização Mundial da Saúde (OMS), o que é saúde?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um estado de completo bem-estar físico, mental e social, e não apenas a ausência de doenças.', 1, 0),
(@p, 'Apenas ter músculos gigantes e nunca sentir cansaço.', 0, 0),
(@p, 'Passar o dia inteiro jogando videogame sem sair de casa.', 0, 0),
(@p, 'Nunca visitar um médico ou dentista.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada hábito saudável ao seu benefício para a qualidade de vida:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Prática regular de atividade física', 1, 1, 'Fortalece coração, músculos, ossos e melhora o humor'),
(@p, 'Alimentação equilibrada e hidratação', 1, 2, 'Fornece energia, vitaminas e nutrientes essenciais ao corpo'),
(@p, 'Sono reparador (7 a 9 horas por noite)', 1, 3, 'Recupera o organismo, consolida a memória e regula hormônios');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O sedentarismo (falta de atividade física regular e excesso de tempo sentado ou deitado) é um dos principais fatores de risco para doenças crônicas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique benefícios comprovados da prática regular de exercícios físicos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Redução do estresse, da ansiedade e melhora da autoestima', 1, 0),
(@p, 'Controle do peso corporal e prevenção de hipertensão e diabetes tipo 2', 1, 0),
(@p, 'Melhora da qualidade do sono e da disposição diária', 1, 0),
(@p, 'Aumento garantido do sedentarismo crônico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual substância natural liberada pelo cérebro durante e após o exercício físico promove sensação de prazer, bem-estar e alívio do estresse?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Endorfina', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene passos simples para abandonar o sedentarismo com segurança:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Reduzir o tempo sentado fazendo pausas ativas durante o dia', 1, 1),
(@p, 'Escolher uma atividade física prazerosa (caminhar, pedalar, dançar ou jogar)', 1, 2),
(@p, 'Começar com intensidade leve e aumentar o tempo gradualmente', 1, 3),
(@p, 'Manter a regularidade semanal combinada com boa hidratação e sono', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual recomendação mínima de atividade física moderada a vigorosa a OMS indica para crianças e adolescentes (5 a 17 anos)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pelo menos 60 minutos por dia, em média, ao longo da semana.', 1, 0),
(@p, 'Apenas 5 minutos uma vez por mês.', 0, 0),
(@p, 'Zero minutos até completar 30 anos.', 0, 0),
(@p, '10 horas diárias sem dormir.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Trocar o elevador pelas escadas e ir a pé ou de bicicleta para locais próximos são formas eficientes de aumentar a atividade física diária.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 94.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Atividade Física vs. Exercício Físico e Hábitos Posturais', 2, 94);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença conceitual entre "atividade física" e "exercício físico"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Atividade física é qualquer movimento corporal que gasta energia (varrer, caminhar); exercício físico é planejado, estruturado e repetitivo para melhorar o condicionamento.', 1, 0),
(@p, 'Atividade física só existe em competições olímpicas; exercício físico é ficar dormindo.', 0, 0),
(@p, 'Atividade física não gasta nenhuma caloria.', 0, 0),
(@p, 'São palavras proibidas na Educação Física.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada situação cotidiana à sua classificação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Subir escadas, passear com o cachorro e limpar a casa', 1, 1, 'Atividade física cotidiana'),
(@p, 'Aula de natação, treino de corrida ou musculação orientada', 1, 2, 'Exercício físico sistematizado'),
(@p, 'Ficar 6 horas seguidas deitado mexendo no celular', 1, 3, 'Comportamento sedentário');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Carregar a mochila escolar pesada em apenas um ombro ou usar o celular com o pescoço muito inclinado para baixo pode causar dores e desvios posturais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique hábitos posturais saudáveis para proteger a coluna vertebral:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Usar as duas alças da mochila ajustadas nas costas e evitar excesso de peso', 1, 0),
(@p, 'Flexionar os joelhos (agachar) ao levantar objetos pesados do chão', 1, 0),
(@p, 'Manter a tela do computador na altura dos olhos ao estudar sentado', 1, 0),
(@p, 'Dobrar apenas a coluna com as pernas esticadas para erguer caixas pesadas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual ciência estuda a adaptação do ambiente de trabalho, móveis e ferramentas às características físicas do ser humano para prevenir dores e lesões?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ergonomia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a postura correta para levantar uma caixa pesada do chão com segurança:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aproximar-se bem da caixa mantendo os pés afastados para dar base', 1, 1),
(@p, 'Flexionar os joelhos e o quadril mantendo a coluna reta e o abdômen contraído', 1, 2),
(@p, 'Segurar firmemente a carga próxima ao tronco', 1, 3),
(@p, 'Estender as pernas usando a força das coxas e glúteos para subir', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a importância da hidratação antes, durante e após a prática de exercícios físicos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Repor a água e os sais minerais perdidos no suor, regulando a temperatura corporal e evitando a desidratação.', 1, 0),
(@p, 'Aumentar a febre corporal para 42 graus.', 0, 0),
(@p, 'Impedir que o suor seja produzido pela pele.', 0, 0),
(@p, 'Substituir completamente o oxigênio da respiração.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A sede já é um sinal de que o corpo começou a apresentar leve desidratação; por isso, deve-se beber água regularmente ao longo do dia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 94.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Alimentação Saudável, Energia e Composição Corporal', 2, 94);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual grupo de nutrientes atua como a principal fonte rápida de energia para o cérebro e os músculos durante atividades físicas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Carboidratos (presentes em frutas, cereais, pães, arroz e tubérculos)', 1, 0),
(@p, 'Sais minerais inorgânicos', 0, 0),
(@p, 'Água destilada pura', 0, 0),
(@p, 'Fibras insolúveis de celulose', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada macronutriente à sua função principal no organismo ativo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Carboidratos', 1, 1, 'Fornecimento prioritário de energia para o exercício'),
(@p, 'Proteínas', 1, 2, 'Construção e reparação dos tecidos e fibras musculares'),
(@p, 'Lipídios (gorduras boas)', 1, 3, 'Reserva energética, isolamento térmico e absorção de vitaminas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O Guia Alimentar para a População Brasileira recomenda priorizar alimentos in natura ou minimamente processados e evitar produtos ultraprocessados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique riscos associados ao consumo frequente de alimentos ultraprocessados (refrigerantes, salgadinhos de pacote, embutidos):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Excesso de açúcares, sódio e gorduras saturadas ou trans', 1, 0),
(@p, 'Maior risco de obesidade, hipertensão arterial e diabetes', 1, 0),
(@p, 'Baixo teor de fibras, vitaminas e minerais naturais', 1, 0),
(@p, 'Prevenção garantida de todas as doenças cardiovasculares', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual índice popularmente usado como triagem populacional relaciona o peso (massa em kg) dividido pela altura ao quadrado (m²)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'IMC', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os grupos alimentares do menos processado (mais recomendado) para o mais industrializado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Alimentos in natura (frutas frescas, verduras, ovos, legumes)', 1, 1),
(@p, 'Alimentos minimamente processados (arroz, feijão, aveia, leite)', 1, 2),
(@p, 'Alimentos processados (queijos artesanais, pães simples, conservas)', 1, 3),
(@p, 'Alimentos ultraprocessados (refrigerantes, biscoitos recheados, salgadinhos)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o IMC (Índice de Massa Corporal) isolado possui limitações ao avaliar um atleta musculoso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque o IMC não diferencia massa muscular (massa magra) de gordura corporal, podendo classificar um atleta forte como "sobrepeso".', 1, 0),
(@p, 'Porque o IMC mede apenas a altura das orelhas.', 0, 0),
(@p, 'Porque atletas não possuem massa muscular.', 0, 0),
(@p, 'Porque a fórmula usa apenas a idade em meses.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A saúde e a beleza corporal não se resumem a um padrão estético único imposto pelas redes sociais; cada corpo tem sua estrutura genética e precisa de equilíbrio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 94.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Doenças Crônicas, Riscos do Doping/Anabolizantes e Saúde Mental', 3, 94);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Quais são os graves riscos à saúde causados pelo uso indiscriminado de esteroides anabolizantes sem prescrição médica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hipertensão, infarto, AVC, danos graves ao fígado, alterações hormonais, infertilidade e distúrbios psiquiátricos.', 1, 0),
(@p, 'Aumento seguro da expectativa de vida em 50 anos sem efeitos colaterais.', 0, 0),
(@p, 'Melhora natural da visão noturna e da audição.', 0, 0),
(@p, 'Fortalecimento permanente dos tendões sem necessidade de treino.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ligado à ética e saúde no esporte à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Doping esportivo', 1, 1, 'Uso de substâncias ou métodos proibidos para melhorar artificialmente o rendimento'),
(@p, 'Vigorexia (dismorfia muscular)', 1, 2, 'Transtorno psicológico em que a pessoa se vê sempre fraca mesmo sendo musculosa'),
(@p, 'Doenças Crônicas Não Transmissíveis (DCNT)', 1, 3, 'Hipertensão, diabetes tipo 2 e doenças cardíacas ligadas ao estilo de vida');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Além de prejudicar gravemente a saúde do atleta, o doping viola o princípio do "fair play" (jogo limpo) e a igualdade de condições nas competições.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique fatores de proteção contra doenças cardiovasculares e metabólicas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Prática regular de exercícios aeróbicos e de força', 1, 0),
(@p, 'Não fumar e evitar o consumo abusivo de álcool', 1, 0),
(@p, 'Alimentação rica em vegetais, fibras e baixo teor de sódio', 1, 0),
(@p, 'Uso de anabolizantes e tabagismo diário', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual agência internacional é responsável por coordenar o código mundial antidoping e fiscalizar o jogo limpo nos esportes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'WADA', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo positivo entre exercício físico e saúde mental:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Prática regular de atividade física e convivência social', 1, 1),
(@p, 'Liberação de neurotransmissores como endorfina, serotonina e dopamina', 1, 2),
(@p, 'Redução dos níveis de cortisol (hormônio do estresse) e melhora do sono', 1, 3),
(@p, 'Aumento da disposição, autoestima e equilíbrio emocional', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como calcular a Frequência Cardíaca Máxima (FCmáx) teórica estimada pela fórmula clássica mais utilizada para adultos saudáveis?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '220 menos a idade em anos (FCmáx = 220 - idade).', 1, 0),
(@p, '100 multiplicado pelo peso corporal em quilos.', 0, 0),
(@p, '50 somado à altura em centímetros.', 0, 0),
(@p, '300 dividido pelo número de horas dormidas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Políticas públicas que oferecem praças, ciclovias, parques seguros e aulas gratuitas de esporte promovem saúde coletiva e inclusão social.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 95: Jogos e Brincadeiras
-- -------------------------------------------------------------------------

-- Quiz 95.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Diferença entre Jogo, Brincadeira e Esporte', 1, 95);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é uma característica marcante dos jogos e brincadeiras populares em comparação aos esportes oficiais?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Suas regras são flexíveis e podem ser adaptadas pelos próprios participantes conforme o espaço e o número de jogadores.', 1, 0),
(@p, 'Exigem obrigatoriamente estádios olímpicos e árbitros internacionais.', 0, 0),
(@p, 'Proíbem qualquer tipo de diversão ou risada.', 0, 0),
(@p, 'Nunca podem ser praticados por crianças nem por adultos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada prática corporal à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Brincadeira', 1, 1, 'Atividade lúdica espontânea, livre e imaginativa sem placar rígido'),
(@p, 'Jogo', 1, 2, 'Atividade lúdica com regras combinadas pelo grupo e objetivo definido'),
(@p, 'Esporte', 1, 3, 'Prática institucionalizada com regras oficiais padronizadas por federações');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os jogos e brincadeiras fazem parte do patrimônio cultural da humanidade e são transmitidos de geração em geração.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique brincadeiras tradicionais da cultura popular brasileira:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Amarelinha e Pular corda', 1, 0),
(@p, 'Queimada (ou baleado) e Pique-esconde', 1, 0),
(@p, 'Cabra-cega e Ciranda', 1, 0),
(@p, 'Maratona olímpica oficial com cronometragem eletrônica', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual brincadeira tradicional consiste em desenhar quadrados numerados no chão, jogar uma pedrinha e saltar com um ou dois pés até o "céu"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Amarelinha', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de organização de um jogo popular na escola:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Escolher o espaço seguro e os materiais disponíveis', 1, 1),
(@p, 'Combinar coletivamente as regras e adaptações para incluir todos', 1, 2),
(@p, 'Vivenciar o jogo respeitando os colegas e os combinados', 1, 3),
(@p, 'Avaliar juntos como foi a experiência e propor novas variações', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa o termo "lúdico" muito usado na Educação Física?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tudo aquilo que está relacionado ao brincar, ao jogar, ao prazer, à criatividade e à espontaneidade.', 1, 0),
(@p, 'Apenas castigos físicos rigorosos.', 0, 0),
(@p, 'Somente cálculos matemáticos avançados.', 0, 0),
(@p, 'A proibição de qualquer movimento corporal.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Brincar e jogar estimulam a criatividade, a imaginação, a socialização e o desenvolvimento motor em todas as idades.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 95.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Jogos Cooperativos vs. Jogos Competitivos', 2, 95);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a proposta principal dos "jogos cooperativos"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Jogar COM os outros e não CONTRA os outros, unindo esforços para superar um desafio comum sem eliminar participantes.', 1, 0),
(@p, 'Eliminar o mais rápido possível todos os colegas mais fracos.', 0, 0),
(@p, 'Humilhar quem comete algum erro durante a brincadeira.', 0, 0),
(@p, 'Competir sozinho sem falar com ninguém.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada característica ao tipo de jogo correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Jogo Cooperativo', 1, 1, 'Todos vencem juntos ao alcançar a meta coletiva; ninguém é excluído'),
(@p, 'Jogo Competitivo', 1, 2, 'Há oposição direta entre adversários para definir um vencedor'),
(@p, 'Jogo Semicooperativo', 1, 3, 'Cooperação interna na equipe combinada com disputa entre times');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No "jogo das cadeiras cooperativo", vão sendo retiradas cadeiras a cada rodada, mas ninguém sai do jogo: todos precisam ajudar-se para caber juntos nas cadeiras restantes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique valores promovidos pelos jogos cooperativos na escola:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Empatia, solidariedade e inclusão de todos os colegas', 1, 0),
(@p, 'Comunicação assertiva e resolução pacífica de conflitos', 1, 0),
(@p, 'Redução do medo de errar e melhora da confiança no grupo', 1, 0),
(@p, 'Individualismo extremo e exclusão social', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual jogo popular em duas equipes consiste em arremessar uma bola para acertar os adversários e enviá-los para o "cemitério" ou "prisão" no fundo da quadra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Queimada', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a resolução de um desafio cooperativo (ex.: atravessar a quadra usando apenas três arcos no chão sem pisar fora):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ouvir as ideias de todos os integrantes da equipe', 1, 1),
(@p, 'Planejar uma estratégia conjunta para passar os arcos de trás para frente', 1, 2),
(@p, 'Executar o deslocamento apoiando-se mutuamente para manter o equilíbrio', 1, 3),
(@p, 'Comemorar a chegada de todo o grupo reunido à linha final', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'A competição saudável nos jogos educativos só cumpre seu papel formativo quando:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Há respeito às regras, ao adversário e compreensão de que o oponente é um parceiro indispensável para que o jogo aconteça.', 1, 0),
(@p, 'Vale trapacear e empurrar os colegas para ganhar a qualquer custo.', 0, 0),
(@p, 'Apenas os mais habilidosos podem participar enquanto os outros ficam excluídos.', 0, 0),
(@p, 'A derrota gera brigas e ofensas pessoais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Um mesmo jogo tradicional (como queimada ou pique-pega) pode ser modificado para se tornar mais inclusivo e participativo, evitando que alunos fiquem muito tempo parados fora do jogo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 95.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Jogos Indígenas, Afro-Brasileiros e Regionais', 2, 95);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que é a "peteca", brinquedo e esporte genuinamente brasileiro cuja palavra vem do tupi "pe teka" (bater com a mão)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Artefato indígena tradicional com base macia e penas que é rebatido no ar com as mãos.', 1, 0),
(@p, 'Um tipo de patins de gelo europeu.', 0, 0),
(@p, 'Uma bola de boliche de ferro maciço.', 0, 0),
(@p, 'Um tabuleiro de xadrez medieval.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada jogo ou brincadeira à sua matriz cultural:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Peteca, cabo de força e corrida de tora', 1, 1, 'Cultura Indígena Brasileira'),
(@p, 'Terra-mar, escravos de Jó e mancála', 1, 2, 'Cultura Africana e Afro-brasileira'),
(@p, 'Pião, bolinha de gude e pipa (papagaio)', 1, 3, 'Brincadeiras populares multiculturais');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos Jogos dos Povos Indígenas, o espírito principal não é a rivalidade comercial, mas a celebração cultural, a integração entre etnias e a valorização das tradições.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique jogos e brincadeiras de origem indígena praticados no Brasil:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Peteca e Arco e flecha tradicional', 1, 0),
(@p, 'Cabo de força (cabo de guerra) e Zarabatana', 1, 0),
(@p, 'Arranca-mandioca e Corrida do saci', 1, 0),
(@p, 'Hóquei sobre o gelo canadense', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tradicional brincadeira africana originária de Moçambique consiste em saltar para um lado ou para o outro conforme o comando das palavras "Terra" e "Mar"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Terra-mar', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a dinâmica da brincadeira "Arranca-mandioca":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os participantes sentam-se em fila agarrados firmemente pela cintura do colega da frente', 1, 1),
(@p, 'O primeiro da fila abraça um poste, árvore ou pilar seguro', 1, 2),
(@p, 'O "colhedor" puxa o último da fila tentando soltá-lo do grupo', 1, 3),
(@p, 'Quem se soltar passa a ajudar o colhedor até todos serem "colhidos"', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que são os jogos de "Mancála" (como o Ayo ou Oware), muito difundidos no continente africano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Jogos de tabuleiro de semeadura e colheita com sementes ou pedrinhas que desenvolvem raciocínio lógico e matemático.', 1, 0),
(@p, 'Corridas de motocicletas no deserto.', 0, 0),
(@p, 'Saltos de paraquedas em equipe.', 0, 0),
(@p, 'Lutas de esgrima com espadas de metal.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Valorizar os jogos indígenas, africanos e regionais nas aulas de Educação Física combate o preconceito e reconhece a diversidade cultural formadora do Brasil.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 95.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Jogos Pré-Desportivos, Jogos Eletrônicos e Cultura Lúdica Contemporânea', 3, 95);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a função pedagógica dos "jogos pré-desportivos" no ensino dos esportes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Adaptar regras, espaços e materiais para introduzir gradualmente os princípios táticos e técnicos de um esporte de modo acessível e lúdico.', 1, 0),
(@p, 'Aplicar punições severas a quem ainda não sabe todas as regras oficiais da federação.', 0, 0),
(@p, 'Substituir definitivamente qualquer atividade física por provas escritas.', 0, 0),
(@p, 'Excluir iniciantes para jogar apenas com profissionais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada jogo pré-desportivo à modalidade esportiva que ele prepara:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Câmbio (segurar e arremessar a bola por cima da rede)', 1, 1, 'Voleibol'),
(@p, 'Jogo dos 10 passes (trocar passes sem deixar o adversário interceptar)', 1, 2, 'Basquetebol ou Handebol'),
(@p, 'Bobinho (roda de passe com interceptadores no centro)', 1, 3, 'Futebol e Futsal');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os "exergames" (jogos eletrônicos ativos que captam movimentos corporais, como jogos de dança ou tênis virtual) combinam entretenimento digital com gasto energético.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique cuidados necessários para manter uma relação saudável com os jogos eletrônicos (videogames e jogos de celular):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estabelecer limites diários de tempo de tela', 1, 0),
(@p, 'Não substituir o sono, os estudos nem as atividades físicas ao ar livre pelas telas', 1, 0),
(@p, 'Manter postura ergonômica e fazer pausas para alongar e descansar os olhos', 1, 0),
(@p, 'Jogar 16 horas seguidas durante a madrugada sem dormir nem beber água', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual jogo pré-desportivo do voleibol permite aos iniciantes segurar a bola com as duas mãos e arremessá-la para o colega ou para a quadra adversária, facilitando a compreensão do rodízio e dos espaços?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Câmbio', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de transformação histórica de um jogo popular em esporte moderno (esportivização):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Prática popular local com regras orais variadas em cada região', 1, 1),
(@p, 'Padronização escrita das regras, dimensões de campo e número de jogadores', 1, 2),
(@p, 'Criação de clubes, ligas e federações nacionais e internacionais', 1, 3),
(@p, 'Profissionalização e inserção em grandes eventos como os Jogos Olímpicos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a urbanização desordenada e o excesso de telas reduziram as brincadeiras de rua nas grandes cidades, e como a escola pode atuar diante disso?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A escola torna-se um espaço privilegiado para resgatar, vivenciar e recriar jogos populares com segurança e inclusão.', 1, 0),
(@p, 'A escola deve proibir qualquer brincadeira no recreio e nas aulas.', 0, 0),
(@p, 'As crianças de hoje não precisam mais de movimento corporal.', 0, 0),
(@p, 'Os jogos populares só podem ser praticados em outros planetas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Brinquedos confeccionados com materiais recicláveis (como bilboquê de garrafa PET ou peteca de jornal) unem educação ambiental, criatividade e cultura corporal.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 96: Regras dos Esportes
-- -------------------------------------------------------------------------

-- Quiz 96.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Função das Regras e Fair Play no Esporte', 1, 96);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que existem regras oficiais nas modalidades esportivas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Para organizar a disputa, garantir igualdade de condições entre os competidores e proteger a integridade física dos participantes.', 1, 0),
(@p, 'Para impedir que qualquer equipe consiga marcar pontos.', 0, 0),
(@p, 'Apenas para deixar o jogo confuso e demorado.', 0, 0),
(@p, 'Para favorecer sempre o time da casa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ligado às regras esportivas ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fair Play (Jogo Limpo)', 1, 1, 'Conduta ética, lealdade e respeito às regras, adversários e árbitros'),
(@p, 'Arbitragem', 1, 2, 'Equipe imparcial encarregada de aplicar as regras durante a partida'),
(@p, 'Infração ou Falta', 1, 3, 'Violação de uma regra prevista no regulamento da modalidade');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Sem regras comuns aceitas por todos, seria impossível realizar campeonatos oficiais entre equipes de diferentes cidades ou países.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique atitudes que demonstram "Fair Play" (jogo limpo) em uma competição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ajudar um adversário caído a se levantar', 1, 0),
(@p, 'Reconhecer quando a bola tocou em si antes de sair pela linha', 1, 0),
(@p, 'Cumprimentar o time adversário e a arbitragem ao final do jogo', 1, 0),
(@p, 'Simular faltas inexistentes para enganar o árbitro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual expressão em inglês mundialmente usada no esporte significa "jogo limpo", ética e respeito mútuo entre competidores?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Fair play', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a hierarquia de punições disciplinares com cartões no futebol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Advertência verbal do árbitro', 1, 1),
(@p, 'Cartão amarelo (advertência formal)', 1, 2),
(@p, 'Segundo cartão amarelo seguido de cartão vermelho', 1, 3),
(@p, 'Expulsão imediata da partida com cartão vermelho direto', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No voleibol oficial moderno, quantos pontos uma equipe precisa atingir (com vantagem mínima de 2 pontos) para vencer um set normal (do 1º ao 4º set)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '25 pontos', 1, 0),
(@p, '10 pontos', 0, 0),
(@p, '50 pontos', 0, 0),
(@p, '100 pontos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As regras dos esportes não são imutáveis; as federações atualizam regulamentos periodicamente para tornar o jogo mais dinâmico, seguro e justo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 96.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regras Oficiais: Futebol, Futsal e Handebol', 2, 96);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a duração oficial de uma partida profissional de futebol de campo e de futsal, respectivamente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Futebol: dois tempos de 45 minutos (90 min); Futsal: dois tempos de 20 minutos cronometrados (40 min).', 1, 0),
(@p, 'Futebol: quatro tempos de 5 minutos; Futsal: um tempo de 3 horas.', 0, 0),
(@p, 'Ambos duram exatamente 10 minutos sem intervalo.', 0, 0),
(@p, 'Futebol: dois tempos de 60 minutos; Futsal: dois tempos de 5 minutos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada regra específica ao esporte correspondente:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tiro livre direto sem barreira a partir da 6ª falta acumulada por tempo', 1, 1, 'Futsal'),
(@p, 'Exclusão temporária de 2 minutos por infração disciplinar grave', 1, 2, 'Handebol'),
(@p, 'Regra do impedimento no campo de ataque', 1, 3, 'Futebol de campo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No futsal, o arremesso lateral e o tiro de canto (escanteio) são cobrados com os pés, devendo ser executados em até 4 segundos após a bola estar posicionada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique infrações previstas nas regras oficiais do handebol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dar mais de 3 passos sem quicar a bola', 1, 0),
(@p, 'Tocar a bola intencionalmente com os pés ou pernas abaixo do joelho (exceto o goleiro na sua área)', 1, 0),
(@p, 'Pisar na linha ou dentro da área do goleiro (6 metros) com a bola na mão', 1, 0),
(@p, 'Arremessar a bola com a mão dominante fora da área de 6 metros', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual penalidade máxima do handebol é cobrada de uma linha a 7 metros do gol apenas contra o goleiro adversário após uma falta que impediu chance clara de gol?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Tiro de 7 metros', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a escala disciplinar progressiva do handebol oficial:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Advertência (cartão amarelo)', 1, 1),
(@p, 'Exclusão temporária por 2 minutos (equipe joga com um a menos)', 1, 2),
(@p, 'Desqualificação (cartão vermelho após 3 exclusões de 2 min ou falta grave)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No futsal, quando o goleiro recua ou recebe a bola de um companheiro dentro da sua meia quadra defensiva sem que a bola tenha tocado no adversário, por quanto tempo máximo ele pode ficar com a bola?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'No máximo 4 segundos, sendo proibido tocar novamente na bola na mesma posse na quadra de defesa.', 1, 0),
(@p, 'Por tempo ilimitado durante todo o jogo.', 0, 0),
(@p, 'Por até 5 minutos seguidos.', 0, 0),
(@p, 'O goleiro não pode tocar na bola em hipótese alguma.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No futebol de campo, não existe impedimento em cobranças de lateral, tiro de meta e escanteio.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 96.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regras Oficiais: Voleibol e Basquetebol', 2, 96);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como funciona a pontuação de uma cesta convertida no basquetebol oficial?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1 ponto (lance livre), 2 pontos (arremesso dentro do arco) e 3 pontos (arremesso atrás da linha de 3 pontos).', 1, 0),
(@p, 'Todas as cestas valem exatamente 10 pontos.', 0, 0),
(@p, '1 ponto no primeiro tempo e 5 pontos no segundo tempo.', 0, 0),
(@p, 'Apenas enterradas contam pontos no placar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada regra de tempo do basquetebol (FIBA) à sua finalidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Regra dos 24 segundos', 1, 1, 'Tempo máximo que a equipe tem para arremessar a bola ao aro'),
(@p, 'Regra dos 8 segundos', 1, 2, 'Tempo máximo para passar da quadra de defesa para a quadra de ataque'),
(@p, 'Regra dos 3 segundos', 1, 3, 'Tempo máximo que um atacante pode permanecer dentro do garrafão adversário');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No voleibol, se uma partida empatar em 2 sets a 2, é disputado um 5º set decisivo chamado "tie-break", vencido por quem fizer 15 pontos com diferença mínima de 2 pontos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique faltas (infrações) cometidas durante uma partida de voleibol:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dois toques consecutivos pelo mesmo jogador (exceto após bloqueio)', 1, 0),
(@p, 'Condução (segurar ou acompanhar a bola em vez de rebatê-la)', 1, 0),
(@p, 'Tocar na borda superior da rede durante a ação de jogar a bola', 1, 0),
(@p, 'A bola tocar na rede durante o saque e passar para o lado adversário', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Com quantas faltas pessoais cometidas um jogador de basquetebol (regras FIBA) é eliminado da partida e deve ser substituído?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, '5 faltas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura temporal de uma partida oficial de basquetebol pelas regras da FIBA:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1º quarto (10 minutos cronometrados)', 1, 1),
(@p, '2º quarto (10 minutos) seguido pelo intervalo principal', 1, 2),
(@p, '3º quarto (10 minutos cronometrados)', 1, 3),
(@p, '4º quarto (10 minutos) ou prorrogação de 5 minutos em caso de empate', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'No voleibol, quando a bola toca exatamente sobre uma das linhas que delimitam a quadra, ela é considerada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Bola dentro (ponto válido), pois as linhas fazem parte da área de jogo.', 1, 0),
(@p, 'Bola fora automaticamente.', 0, 0),
(@p, 'Ponto anulado sem vencedor.', 0, 0),
(@p, 'Falta técnica do treinador.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No basquetebol, após a equipe cruzar a linha central para a quadra de ataque, ela não pode devolver a bola para sua própria quadra de defesa (infração de bola voltada).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 96.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Regras de Atletismo, Natação, Tecnologia na Arbitragem e Esporte Paralímpico', 3, 96);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Nas provas de velocidade do atletismo (como os 100 metros rasos), o que ocorre atualmente quando um atleta realiza uma "queima de largada" (sai antes do sinal)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O atleta responsável pela saída falsa é desclassificado imediatamente da prova (regra de tolerância zero).', 1, 0),
(@p, 'Ele ganha uma vantagem de 10 metros à frente dos demais.', 0, 0),
(@p, 'A prova é cancelada e adiada para o ano seguinte.', 0, 0),
(@p, 'Ele pode queimar a largada até 15 vezes sem punição.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada recurso tecnológico de arbitragem ao esporte em que é amplamente empregado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'VAR (Árbitro Assistente de Vídeo)', 1, 1, 'Futebol (revisão de gols, pênaltis e cartões vermelhos)'),
(@p, 'Photo Finish (câmera de alta velocidade na linha de chegada)', 1, 2, 'Atletismo e ciclismo'),
(@p, 'Desafio eletrônico (Hawk-Eye / Olho de Águia)', 1, 3, 'Voleibol e tênis');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Nos revezamentos 4x100m do atletismo, a passagem do bastão deve ocorrer obrigatoriamente dentro de uma zona demarcada de 30 metros; se ocorrer fora dela, a equipe é desclassificada.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique regras oficiais da natação competitiva:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Nos estilos peito e borboleta, o toque na borda na virada e na chegada deve ser feito com as duas mãos simultaneamente', 1, 0),
(@p, 'Na saída (exceto estilo costas), o nadador não pode submergir por mais de 15 metros antes de romper a superfície com a cabeça', 1, 0),
(@p, 'O nadador deve permanecer na sua própria raia durante toda a prova sem obstruir o adversário', 1, 0),
(@p, 'É permitido caminhar pelo fundo da piscina durante provas oficiais', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual esporte paralímpico exclusivo para atletas com deficiência visual utiliza uma bola com guizos internos (chocalho) e exige silêncio absoluto da torcida durante o jogo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Goalball', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a sequência oficial dos quatro estilos na prova do "Medley Individual" da natação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Borboleta', 1, 1),
(@p, 'Costas', 1, 2),
(@p, 'Peito', 1, 3),
(@p, 'Crawl (Livre)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a ordem oficial dos estilos na prova de "Revezamento 4x100m Medley" (em equipe) na natação?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Costas, Peito, Borboleta e Crawl (pois o nadador de costas já larga dentro da água).', 1, 0),
(@p, 'Crawl, Crawl, Crawl e Crawl.', 0, 0),
(@p, 'Peito, Crawl, Costas e Borboleta.', 0, 0),
(@p, 'Borboleta, Borboleta, Peito e Costas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No esporte paralímpico, a classificação funcional agrupa os atletas conforme o grau de comprometimento funcional para garantir disputas justas e equilibradas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);