USE luminebd;

-- =========================================================================
-- MATÉRIA 12: FILOSOFIA (CONTEÚDOS 97 A 104)
-- =========================================================================

-- -------------------------------------------------------------------------
-- CONTEÚDO 97: Mito e Filosofia
-- -------------------------------------------------------------------------

-- Quiz 97.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O que é Filosofia e a Atitude Filosófica', 1, 97);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o significado etimológico original da palavra grega "Filosofia" (philos + sophia)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Amizade pela sabedoria ou amor pelo saber', 1, 0),
(@p, 'Posse absoluta de todas as verdades', 0, 0),
(@p, 'Obediência cega às tradições antigas', 0, 0),
(@p, 'Arte de vencer debates a qualquer custo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito básico da Filosofia à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Thauma (espanto ou admiração)', 1, 1, 'Ponto de partida da investigação filosófica diante do mundo'),
(@p, 'Atitude filosófica', 1, 2, 'Postura crítica que questiona o óbvio e busca fundamentos racionais'),
(@p, 'Filósofo', 1, 3, 'Aquele que busca constantemente o conhecimento sem se julgar dono dele');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Filosofia nasceu na Grécia Antiga por volta do século VI a.C., marcando a passagem gradual das explicações míticas para as explicações racionais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características fundamentais da reflexão filosófica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Radicalidade (busca ir até a raiz dos problemas)', 1, 0),
(@p, 'Rigorosidade (uso de argumentos lógicos e coerentes)', 1, 0),
(@p, 'Visão de conjunto (relacionar o problema ao todo da realidade)', 1, 0),
(@p, 'Aceitação passiva de preconceitos sem questionamento', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo grego designa a razão, o discurso racional e a palavra argumentada que substituiu gradualmente o mito na Grécia Antiga?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Logos', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas naturais de uma investigação filosófica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estranhamento diante de algo tido como natural ou óbvio', 1, 1),
(@p, 'Formulação de perguntas claras e problematização do tema', 1, 2),
(@p, 'Análise crítica de conceitos e hipóteses', 1, 3),
(@p, 'Construção de argumentos fundamentados racionalmente', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Pitágoras teria preferido ser chamado de "filósofo" em vez de "sábio" (sophos)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque considerava que a sabedoria plena pertence apenas aos deuses, cabendo aos humanos amar e buscar o saber.', 1, 0),
(@p, 'Porque ele não gostava de estudar matemática nem música.', 0, 0),
(@p, 'Porque a palavra sábio era proibida pelas leis de Atenas.', 0, 0),
(@p, 'Porque ele acreditava que o ser humano nada pode aprender.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Diferente das ciências particulares que recortam um objeto específico, a Filosofia interroga os próprios fundamentos do conhecimento, da existência e dos valores.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 97.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Consciência Mítica vs. Pensamento Filosófico', 2, 97);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que caracterizava o "mito" na Grécia Antiga antes do surgimento da Filosofia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma narrativa simbólica transmitida oralmente que explicava a origem do mundo e dos fenômenos naturais pela ação de deuses e forças sobrenaturais.', 1, 0),
(@p, 'Um experimento controlado realizado em laboratórios de física.', 0, 0),
(@p, 'Uma mentira inventada apenas para enganar crianças.', 0, 0),
(@p, 'Um código de leis escritas em latim pelo Império Romano.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de compreensão do mundo às suas características:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Pensamento Mítico', 1, 1, 'Baseado na autoridade do poeta inspirado, genealogia divina e tradição oral'),
(@p, 'Pensamento Filosófico', 1, 2, 'Baseado na razão crítica, demonstração lógica e debate público'),
(@p, 'Cosmogonia', 1, 3, 'Narrativa mítica sobre o nascimento do universo a partir dos deuses');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na passagem do mito ao logos não houve uma ruptura instantânea e total; os primeiros filósofos ainda utilizaram imagens e termos herdados da tradição mítica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique diferenças centrais entre a explicação mítica e a explicação filosófica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O mito recorre a forças sobrenaturais; a Filosofia busca causas naturais e racionais', 1, 0),
(@p, 'O mito não admite contestação; a Filosofia exige justificação e aceita críticas', 1, 0),
(@p, 'O mito apoia-se na memória poética (Homero e Hesíodo); a Filosofia apoia-se na argumentação', 1, 0),
(@p, 'O mito usa equações matemáticas; a Filosofia usa apenas rituais mágicos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo filosófico designa a explicação racional da ordem e da estrutura do universo por causas naturais, em oposição à cosmogonia mítica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Cosmologia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a transição histórica das formas de pensamento na Grécia Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tradição oral mítica preservada pelos aedos e poetas (Homero e Hesíodo)', 1, 1),
(@p, 'Expansão marítima e contato com outros povos relativizando crenças locais', 1, 2),
(@p, 'Surgimento da pólis e do debate público na ágora', 1, 3),
(@p, 'Nascimento da Filosofia na Jônia com os pensadores pré-socráticos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual função social os mitos desempenhavam nas sociedades antigas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Acalmar a angústia diante do desconhecido, justificar costumes e unir a comunidade em torno de valores compartilhados.', 1, 0),
(@p, 'Construir máquinas a vapor e navios metálicos.', 0, 0),
(@p, 'Substituir completamente a agricultura e o comércio.', 0, 0),
(@p, 'Impedir que os cidadãos falassem a mesma língua.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Os principais poetas gregos que sistematizaram os mitos sobre os deuses e heróis foram Homero (Ilíada e Odisseia) e Hesíodo (Teogonia).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 97.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Condições Históricas do Surgimento da Filosofia na Grécia', 2, 97);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em qual região do mundo grego surgiram os primeiros filósofos no século VI a.C., devido ao intenso comércio marítimo e intercâmbio cultural?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na Jônia (colônias gregas na Ásia Menor, como a cidade de Mileto)', 1, 0),
(@p, 'No interior isolado de Esparta', 0, 0),
(@p, 'Na ilha da Grã-Bretanha', 0, 0),
(@p, 'Nas florestas da Escandinávia', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada fator histórico grego à sua contribuição para o nascimento da Filosofia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Invenção da moeda', 1, 1, 'Estimulou o pensamento abstrato e o cálculo racional nas trocas'),
(@p, 'Escrita alfabética', 1, 2, 'Permitiu registrar ideias, analisá-las criticamente e democratizar o saber'),
(@p, 'Pólis (cidade-estado)', 1, 3, 'Criou o espaço público da palavra, da lei escrita e da argumentação política');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ausência de uma casta sacerdotal fechada e de um livro sagrado dogmático na religião grega facilitou a liberdade de investigação filosófica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique condições históricas decisivas para o surgimento da Filosofia na Grécia Antiga:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Viagens marítimas que revelaram que os mitos variavam de povo para povo', 1, 0),
(@p, 'Invenção do calendário e da moeda', 1, 0),
(@p, 'Surgimento da política e da ágora (praça pública de debate)', 1, 0),
(@p, 'Imposição de uma ditadura militar que proibia qualquer debate', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Como era chamada a praça pública das cidades-estado gregas onde os cidadãos se reuniam para debater leis, política e ideias?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ágora', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o encadeamento entre o surgimento da pólis e a Filosofia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Formação da pólis e substituição do poder divino do rei pela lei humana', 1, 1),
(@p, 'Valorização da persuasão e do discurso racional na ágora', 1, 2),
(@p, 'Exigência de provas e argumentos lógicos para convencer os iguais', 1, 3),
(@p, 'Extensão dessa racionalidade crítica para investigar a natureza e o ser humano', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o historiador francês Jean-Pierre Vernant destacou sobre a relação entre a pólis grega e a Filosofia?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que a Filosofia é filha da pólis, pois nasceu da prática cidadã do debate público e da razão argumentativa.', 1, 0),
(@p, 'Que a Filosofia surgiu exclusivamente dentro de cavernas isoladas sem contato humano.', 0, 0),
(@p, 'Que os gregos copiaram a Filosofia pronta dos romanos.', 0, 0),
(@p, 'Que a Filosofia só existiu após a invenção da imprensa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A expressão "milagre grego" foi criticada por historiadores modernos por sugerir que a Filosofia surgiu do nada, ignorando as influências matemáticas e astronômicas do Egito e da Babilônia.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 97.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Senso Comum, Mito, Ciência e Filosofia', 3, 97);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal diferença entre o "senso comum" e o pensamento filosófico?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O senso comum é acrítico, imediato e baseado em hábitos cotidianos; a Filosofia submete essas crenças ao exame racional e crítico.', 1, 0),
(@p, 'O senso comum é sempre falso; a Filosofia só estuda receitas culinárias.', 0, 0),
(@p, 'O senso comum usa telescópios; a Filosofia usa apenas intuição mágica.', 0, 0),
(@p, 'Não há diferença entre senso comum e Filosofia.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada forma de saber à sua característica distintiva:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Senso Comum', 1, 1, 'Conhecimento espontâneo, prático e transmitido pela experiência cotidiana'),
(@p, 'Ciência', 1, 2, 'Conhecimento metódico, experimental e especializado sobre fenômenos específicos'),
(@p, 'Filosofia', 1, 3, 'Reflexão crítica e totalizante sobre os fundamentos do ser, do saber e do agir');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na sociedade contemporânea, os mitos não desapareceram por completo; eles sobrevivem transformados em narrativas midiáticas, heróis do cinema e ideologias políticas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique áreas fundamentais que compõem a investigação filosófica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Metafísica / Ontologia (estudo do ser e da realidade)', 1, 0),
(@p, 'Epistemologia e Lógica (estudo do conhecimento e da validade dos argumentos)', 1, 0),
(@p, 'Ética, Estética e Filosofia Política (estudo dos valores, da arte e do poder)', 1, 0),
(@p, 'Astrologia adivinhatória comercial', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual disciplina filosófica investiga a natureza do ser, da existência e dos princípios primeiros da realidade?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Metafísica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de ruptura epistemológica do senso comum para a consciência crítica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crença imediata aceita por costume sem verificação', 1, 1),
(@p, 'Dúvida e questionamento sobre a validade dessa crença', 1, 2),
(@p, 'Investigação das causas, contradições e fundamentos', 1, 3),
(@p, 'Elaboração de um juízo crítico autônomo e fundamentado', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como se relacionam a Ciência e a Filosofia no mundo atual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'São complementares: a Ciência investiga como os fenômenos funcionam, enquanto a Filosofia reflete sobre o sentido, os limites e a ética do uso científico.', 1, 0),
(@p, 'São inimigas mortais e uma proíbe a existência da outra.', 0, 0),
(@p, 'A Filosofia resolve todas as equações da física quântica sozinha.', 0, 0),
(@p, 'A Ciência eliminou completamente qualquer pergunta ética ou existencial.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Filosofar significa pensar por si mesmo com rigor lógico, dialogando criticamente com a história do pensamento e com os problemas do presente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 98: Filosofia Antiga (Pré-socráticos, Platão e Aristóteles)
-- -------------------------------------------------------------------------

-- Quiz 98.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Os Pré-Socráticos, a Physis e a Arché', 1, 98);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual era o tema central investigado pelos primeiros filósofos gregos, chamados de pré-socráticos ou filósofos da natureza?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A origem, a ordem e o princípio constitutivo da natureza (physis)', 1, 0),
(@p, 'A organização econômica da Revolução Industrial', 0, 0),
(@p, 'A teologia cristã medieval', 0, 0),
(@p, 'A inteligência artificial moderna', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada filósofo pré-socrático ao princípio originário (arché) que ele propôs:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Tales de Mileto', 1, 1, 'A água'),
(@p, 'Heráclito de Éfeso', 1, 2, 'O fogo e o devir (mudança constante)'),
(@p, 'Demócrito de Abdera', 1, 3, 'Os átomos e o vazio');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Tales de Mileto é tradicionalmente considerado o primeiro filósofo ocidental por buscar na própria natureza (a água), e não nos deuses, a origem de todas as coisas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique filósofos pertencentes ao período pré-socrático (cosmológico):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tales, Anaximandro e Anaxímenes (Escola de Mileto)', 1, 0),
(@p, 'Pitágoras de Samos', 1, 0),
(@p, 'Parmênides de Eleia e Heráclito de Éfeso', 1, 0),
(@p, 'René Descartes e Immanuel Kant', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual palavra grega utilizada pelos pré-socráticos significa o princípio originário e elemento primordial de todas as coisas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Arché', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os grandes períodos da Filosofia Antiga grega:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Período Pré-Socrático ou Cosmológico (investigação da natureza)', 1, 1),
(@p, 'Período Socrático ou Antropológico (Sócrates, Sofistas, Platão e Aristóteles)', 1, 2),
(@p, 'Período Helenístico (Estoicismo, Epicurismo e Ceticismo)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual oposição filosófica clássica marcou o debate entre Heráclito e Parmênides?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Heráclito defendia que tudo flui e muda constantemente; Parmênides afirmava que o Ser é imóvel, eterno e a mudança é ilusão dos sentidos.', 1, 0),
(@p, 'Heráclito defendia a democracia romana; Parmênides defendia o feudalismo.', 0, 0),
(@p, 'Ambos afirmavam que o universo não existe.', 0, 0),
(@p, 'Heráclito era discípulo direto de Aristóteles.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Pitágoras e seus seguidores, a essência profunda de todas as coisas no cosmos é expressa pelos números e pela harmonia matemática.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 98.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Sócrates, os Sofistas e a Virada Antropológica', 2, 98);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual mudança ocorreu na Filosofia Grega no século V a.C. com Sócrates e os Sofistas (virada antropológica)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O foco deslocou-se da origem do cosmos para as questões humanas: ética, justiça, verdade, linguagem e cidadania na pólis.', 1, 0),
(@p, 'Os filósofos abandonaram Atenas para estudar apenas estrelas distantes.', 0, 0),
(@p, 'A Filosofia passou a ser escrita apenas em hieróglifos egípcios.', 0, 0),
(@p, 'Todos os debates sobre justiça foram proibidos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada etapa ou conceito do método socrático à sua função:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Ironia socrática', 1, 1, 'Fazer perguntas que levam o interlocutor a perceber a contradição de seu falso saber'),
(@p, 'Maiêutica ("parto das ideias")', 1, 2, 'Conduzir o diálogo para que o próprio interlocutor dê à luz a verdade interior'),
(@p, 'Conhece-te a ti mesmo', 1, 3, 'Lema adotado por Sócrates como base da sabedoria ética');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Sócrates não deixou nenhuma obra escrita; conhecemos seu pensamento principalmente pelos diálogos de seu discípulo Platão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características dos Sofistas (como Protágoras e Górgias) criticadas por Sócrates e Platão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ensinavam retórica e oratória mediante pagamento aos jovens cidadãos', 1, 0),
(@p, 'Defendiam o relativismo, sintetizado na frase "O homem é a medida de todas as coisas"', 1, 0),
(@p, 'Priorizavam a persuasão eficiente na assembleia em vez da busca por uma verdade universal', 1, 0),
(@p, 'Acreditavam em ideias eternas imutáveis acima do mundo físico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome Sócrates deu à segunda etapa de seu método dialógico, inspirada no ofício de sua mãe parteira, que significa "parto das ideias"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Maiêutica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os passos do diálogo filosófico conduzido por Sócrates:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Interlocutor afirma saber o que é uma virtude (como a justiça ou a coragem)', 1, 1),
(@p, 'Sócrates questiona e expõe contradições na resposta inicial (Ironia)', 1, 2),
(@p, 'Reconhecimento da própria ignorância ("Só sei que nada sei")', 1, 3),
(@p, 'Busca conjunta por uma definição universal mais verdadeira (Maiêutica)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Sócrates foi condenado à morte pelo tribunal de Atenas em 399 a.C.?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Foi acusado injustamente de corromper a juventude e não acreditar nos deuses da cidade, pois seu questionamento incomodava os poderosos.', 1, 0),
(@p, 'Porque tentou roubar o tesouro do templo de Atena.', 0, 0),
(@p, 'Porque liderou uma invasão militar contra Esparta.', 0, 0),
(@p, 'Porque escreveu livros proibidos contra a matemática.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para o intelectualismo moral de Sócrates, ninguém pratica o mal voluntariamente; quem age mal o faz por ignorância do verdadeiro bem.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 98.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Platão: Teoria das Ideias e Alegoria da Caverna', 2, 98);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Platão divide a realidade em sua célebre Teoria das Ideias (Dualismo Platônico)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Mundo Sensível (material, mutável, captado pelos sentidos) e Mundo Inteligível (das Ideias perfeitas, eternas e captadas pela razão).', 1, 0),
(@p, 'Mundo Subterrâneo e Mundo Aquático apenas.', 0, 0),
(@p, 'Mundo dos Ricos e Mundo dos Esportistas.', 0, 0),
(@p, 'Apenas o mundo visível aos olhos, negando qualquer ideia abstrata.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento da Alegoria da Caverna de Platão ao seu significado filosófico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Prisioneiros acorrentados olhando sombras', 1, 1, 'Humanidade presa às aparências, opiniões (doxa) e preconceitos'),
(@p, 'Saída da caverna para a luz do Sol', 1, 2, 'Ascensão da alma pelo conhecimento filosófico até a verdade'),
(@p, 'O Sol fora da caverna', 1, 3, 'A Ideia suprema do Bem, fonte de toda verdade e inteligência');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na obra "A República", Platão defende que a cidade justa deve ser governada pelos filósofos-reis, pois somente eles contemplam a Ideia do Bem.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do Mundo Inteligível segundo Platão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'É eterno, imutável e incorruptível', 1, 0),
(@p, 'Contém as essências ou modelos perfeitos de todas as coisas (Justiça, Beleza, Bem)', 1, 0),
(@p, 'É acessado exclusivamente pelo intelecto e pela dialética', 1, 0),
(@p, 'Envelhece e se deteriora todos os dias como os objetos físicos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo grego Platão usa para designar a simples opinião ilusória baseada nos sentidos, em oposição à ciência verdadeira (episteme)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Doxa', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os acontecimentos narrados por Platão na Alegoria da Caverna:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Prisioneiros vivem desde a infância acorrentados vendo apenas sombras na parede', 1, 1),
(@p, 'Um prisioneiro é libertado e sobe dolorosamente em direção à saída', 1, 2),
(@p, 'Seus olhos adaptam-se à luz e ele contempla os objetos reais e o Sol', 1, 3),
(@p, 'Ele retorna à caverna para libertar os colegas, mas é incompreendido e ridicularizado', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa a "reminiscência" (anamnesis) na teoria do conhecimento de Platão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conhecer é recordar as Ideias eternas que a alma já contemplou antes de se unir ao corpo.', 1, 0),
(@p, 'Conhecer é esquecer tudo o que aprendemos na escola.', 0, 0),
(@p, 'A alma nasce totalmente vazia sem nenhuma ideia inata.', 0, 0),
(@p, 'Apenas os animais possuem memória racional.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Platão fundou em Atenas a Academia, considerada a primeira instituição de ensino superior e pesquisa filosófica do Ocidente.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 98.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Aristóteles: Metafísica, Lógica, Quatro Causas e Virtude', 3, 98);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Aristóteles critica a separação platônica entre Mundo Sensível e Mundo Inteligível?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Afirmando que não existem dois mundos separados: a essência (forma) está unida à matéria nas próprias coisas reais deste mundo.', 1, 0),
(@p, 'Afirmando que existem dez mundos invisíveis acima das nuvens.', 0, 0),
(@p, 'Negando a existência de qualquer objeto material.', 0, 0),
(@p, 'Concordando que as cadeiras reais estão no céu e não na Terra.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada uma das Quatro Causas de Aristóteles ao exemplo de uma estátua de mármore:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Causa Material', 1, 1, 'O bloco de mármore de que a estátua é feita'),
(@p, 'Causa Formal', 1, 2, 'O modelo ou figura esculpida (forma de Apolo)'),
(@p, 'Causa Eficiente e Causa Final', 1, 3, 'O escultor que trabalha a pedra e a finalidade artística da obra');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Aristóteles, toda mudança na natureza é a passagem da "potência" (o que algo pode vir a ser, como a semente) para o "ato" (o que algo já é realizado, como a árvore).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique contribuições fundamentais de Aristóteles para a Filosofia e as Ciências:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Criação da Lógica formal e do silogismo como instrumento do pensamento correto', 1, 0),
(@p, 'Teoria da virtude ética como justa medida (meio-termo entre dois extremos)', 1, 0),
(@p, 'Classificação sistemática dos seres vivos e das formas de governo', 1, 0),
(@p, 'Defesa de que o mundo sensível é uma ilusão irreal', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual forma de raciocínio lógico dedutivo sistematizada por Aristóteles parte de duas premissas para extrair uma conclusão necessária (ex.: Todo homem é mortal; Sócrates é homem; logo, Sócrates é mortal)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Silogismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura clássica de um silogismo aristotélico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Premissa maior (proposição universal)', 1, 1),
(@p, 'Premissa menor (caso particular ligado ao termo médio)', 1, 2),
(@p, 'Conclusão (inferência lógica necessária)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na "Ética a Nicômaco", como Aristóteles define a virtude moral (como a coragem)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como o justo meio-termo (prudência) entre dois vícios extremos: o excesso (temeridade) e a falta (covardia).', 1, 0),
(@p, 'Como agir sempre por impulsos extremos sem pensar.', 0, 0),
(@p, 'Como acumular riquezas materiais acima de tudo.', 0, 0),
(@p, 'Como fugir de qualquer convívio na sociedade.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Aristóteles afirmou que "o ser humano é por natureza um animal político" (zoon politikon), pois só realiza plenamente sua humanidade vivendo em comunidade na pólis.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 99: Filosofia Medieval (Patrística e Escolástica)
-- -------------------------------------------------------------------------

-- Quiz 99.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Panorama da Filosofia Medieval: Fé e Razão', 1, 99);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi o problema filosófico central discutido durante toda a Filosofia Medieval no Ocidente?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A relação entre a fé religiosa (revelação cristã) e a razão filosófica (herança grega)', 1, 0),
(@p, 'A construção de foguetes espaciais para Marte', 0, 0),
(@p, 'A crítica à televisão e às redes sociais', 0, 0),
(@p, 'A negação absoluta de qualquer religião', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada grande período da Filosofia Medieval ao seu representante principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Patrística (séculos I a VIII)', 1, 1, 'Santo Agostinho de Hipona (influência platônica)'),
(@p, 'Escolástica (séculos IX a XIV)', 1, 2, 'São Tomás de Aquino (influência aristotélica)'),
(@p, 'Filosofia Islâmica Medieval', 1, 3, 'Avicena e Averróis (preservaram e comentaram Aristóteles)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: É incorreto chamar a Idade Média de "Idade das Trevas" no campo filosófico, pois nela surgiram as universidades e intensos debates lógicos e metafísicos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique temas centrais investigados pelos filósofos medievais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Demonstração racional da existência de Deus', 1, 0),
(@p, 'Conciliação entre fé e razão', 1, 0),
(@p, 'Problema do livre-arbítrio humano e da origem do mal', 1, 0),
(@p, 'Física nuclear e relatividade restrita', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo caracteriza a visão de mundo predominante na Idade Média em que Deus é colocado no centro de toda a realidade e explicação?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Teocentrismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente as fases do pensamento filosófico medieval:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Filosofia dos Padres Apologistas (defesa inicial do cristianismo)', 1, 1),
(@p, 'Patrística (consolidação doutrinária com Santo Agostinho)', 1, 2),
(@p, 'Surgimento das escolas monásticas e das primeiras universidades', 1, 3),
(@p, 'Escolástica (síntese sistemática com São Tomás de Aquino)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como os filósofos árabes e judeus medievais (como Averróis e Maimônides) contribuíram para o pensamento ocidental?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Traduziram, preservaram e comentaram obras fundamentais de Aristóteles que haviam se perdido na Europa ocidental.', 1, 0),
(@p, 'Queimaram todas as bibliotecas antigas do Mediterrâneo.', 0, 0),
(@p, 'Proibiram o estudo da matemática e da medicina.', 0, 0),
(@p, 'Isolaram-se completamente sem trocar conhecimento com ninguém.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As primeiras universidades europeias (como Bolonha, Paris e Oxford) nasceram durante a Idade Média no contexto da Escolástica.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 99.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('A Patrística e Santo Agostinho', 2, 99);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual filósofo grego exerceu a maior influência sobre o pensamento de Santo Agostinho de Hipona?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Platão (por meio do neoplatonismo de Plotino)', 1, 0),
(@p, 'Karl Marx', 0, 0),
(@p, 'Friedrich Nietzsche', 0, 0),
(@p, 'Demócrito atomista', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito agostiniano ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Teoria da Iluminação Divina', 1, 1, 'Deus ilumina a razão humana para que ela alcance verdades eternas'),
(@p, 'Livre-arbítrio', 1, 2, 'Capacidade humana de escolher entre o bem e o mal, explicando o mal moral'),
(@p, 'Cidade de Deus vs. Cidade Terrena', 1, 3, 'Oposição entre os que vivem pelo amor a Deus e os que vivem pelo egoísmo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A famosa frase de Santo Agostinho "Creio para compreender e compreendo para crer" expressa a cooperação mútua entre fé e razão.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique ideias defendidas por Santo Agostinho sobre a natureza do mal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O mal não é uma substância criada por Deus, mas a privação ou ausência de bem', 1, 0),
(@p, 'O mal moral resulta do mau uso do livre-arbítrio humano', 1, 0),
(@p, 'Deus permite a liberdade humana porque sem escolha não haveria mérito moral', 1, 0),
(@p, 'O mal é um deus eterno tão poderoso quanto o Criador (maniqueísmo)', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual obra autobiográfica famosa escrita por Santo Agostinho narra sua trajetória intelectual, suas dúvidas filosóficas e sua conversão espiritual?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Confissões', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caminho interior do conhecimento segundo Santo Agostinho:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Afastar-se da dispersão exclusiva nos objetos materiais externos', 1, 1),
(@p, 'Voltar-se para a própria interioridade da alma ("No interior do homem habita a verdade")', 1, 2),
(@p, 'Reconhecer na razão verdades imutáveis superiores à mente humana', 1, 3),
(@p, 'Receber a Iluminação Divina que permite contemplar a Verdade eterna', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Santo Agostinho respondeu à célebre pergunta "O que é o tempo?" no Livro XI das Confissões?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como uma distensão da própria alma (mente) que guarda o passado na memória, percebe o presente na atenção e antecipa o futuro na espera.', 1, 0),
(@p, 'Como um objeto físico guardado dentro dos relógios de areia.', 0, 0),
(@p, 'Como algo que existia milhões de anos antes da criação do universo.', 0, 0),
(@p, 'Como uma ilusão inventada pelos imperadores romanos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Patrística recebeu esse nome por ser a filosofia elaborada pelos chamados "Padres da Igreja" nos primeiros séculos do cristianismo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 99.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('A Escolástica e São Tomás de Aquino', 2, 99);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual filósofo grego foi cristianizado e sistematizado por São Tomás de Aquino na Suma Teológica?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Aristóteles', 1, 0),
(@p, 'Epicuro', 0, 0),
(@p, 'Protágoras', 0, 0),
(@p, 'Diogenes o Cínico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe três das "Cinco Vias" de São Tomás de Aquino para demonstrar racionalmente a existência de Deus:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Via do Primeiro Motor Imóvel', 1, 1, 'Tudo o que se move é movido por outro até uma causa primeira imóvel'),
(@p, 'Via da Causa Eficiente Primeira', 1, 2, 'Não há cadeia infinita de causas sem uma causa primeira incausada'),
(@p, 'Via da Finalidade (Governo do Mundo)', 1, 3, 'A ordem harmônica da natureza aponta para uma inteligência ordenadora');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para São Tomás de Aquino, a fé e a razão não se contradizem porque ambas provêm da mesma fonte divina; a razão prepara o caminho para a fé.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características do método escolástico de ensino nas universidades medievais:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Lectio (leitura comentada de textos clássicos e sagrados)', 1, 0),
(@p, 'Quaestio (levantamento de problemas e objeções contrárias)', 1, 0),
(@p, 'Disputatio (debate lógico rigoroso entre argumentos opostos até a síntese)', 1, 0),
(@p, 'Proibição total de fazer perguntas aos mestres', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual é o título da obra monumental escrita por São Tomás de Aquino que sintetiza a filosofia aristotélica e a teologia cristã?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Suma Teológica', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a estrutura lógica de um artigo da Suma Teológica de São Tomás de Aquino:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Formulação da questão interrogativa ("Parece que...")', 1, 1),
(@p, 'Apresentação das objeções contrárias à tese', 1, 2),
(@p, 'Argumento em contrário ("Sed contra") e resposta fundamentada ("Respondeo")', 1, 3),
(@p, 'Refutação pontual de cada uma das objeções iniciais', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como São Tomás de Aquino valorizou o conhecimento sensorial em comparação ao platonismo agostiniano?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Seguindo Aristóteles, afirmou que todo conhecimento humano começa pelos sentidos e é abstraído pelo intelecto.', 1, 0),
(@p, 'Negou que os olhos e ouvidos transmitam qualquer informação real.', 0, 0),
(@p, 'Afirmou que o corpo humano é uma prisão maligna.', 0, 0),
(@p, 'Defendeu que apenas os sonhos revelam a verdade científica.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As Cinco Vias de São Tomás de Aquino são provas "a posteriori", pois partem da observação dos efeitos no mundo sensível para chegar à causa primeira.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 99.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Problema dos Universais, Guilherme de Ockham e Crise da Escolástica', 3, 99);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em que consistiu a célebre "Querela dos Universais" na Filosofia Medieval?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'No debate sobre se conceitos gerais (como "humanidade" ou "beleza") possuem existência real independente ou são apenas nomes criados pela mente.', 1, 0),
(@p, 'Na disputa territorial entre os reis da França e da Inglaterra.', 0, 0),
(@p, 'Na escolha da língua oficial dos jogos olímpicos.', 0, 0),
(@p, 'Na discussão sobre o formato quadrado da Terra.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada posição na Querela dos Universais à sua tese:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Realismo (ex.: Santo Anselmo)', 1, 1, 'Os universais existem realmente como essências antes das coisas individuais'),
(@p, 'Realismo Moderado (São Tomás de Aquino)', 1, 2, 'Os universais existem nas coisas individuais e são abstraídos pela mente'),
(@p, 'Nominalismo (Guilherme de Ockham)', 1, 3, 'Só existem indivíduos singulares; os universais são apenas signos mentais ou nomes');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O princípio metodológico conhecido como "Navalha de Ockham" afirma que não se devem multiplicar entidades sem necessidade, preferindo a explicação mais simples.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique consequências do pensamento de Guilherme de Ockham para o fim da Idade Média e início da Modernidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Separação entre o domínio da fé (teologia) e o domínio da razão empírica (ciência)', 1, 0),
(@p, 'Valorização da observação direta dos indivíduos singulares e da experiência', 1, 0),
(@p, 'Defesa da separação entre o poder espiritual da Igreja e o poder político do Estado', 1, 0),
(@p, 'Submissão total da física experimental aos dogmas religiosos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebe o argumento proposto por Santo Anselmo de Cantuária que tenta provar a existência de Deus apenas a partir da própria definição racional de Deus como "o ser maior do que o qual nada pode ser pensado"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Argumento ontológico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo de transição da crise da Escolástica para o Renascimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crítica nominalista de Guilherme de Ockham às abstrações metafísicas excessivas', 1, 1),
(@p, 'Autonomia progressiva da investigação empírica da natureza', 1, 2),
(@p, 'Redescoberta dos textos clássicos greco-romanos pelos humanistas', 1, 3),
(@p, 'Passagem do teocentrismo medieval ao antropocentrismo renascentista', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que São Tomás de Aquino rejeitou o argumento ontológico "a priori" de Santo Anselmo?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a mente humana finita não compreende diretamente a essência de Deus; portanto, deve partir dos efeitos visíveis no mundo para demonstrar sua existência.', 1, 0),
(@p, 'Porque São Tomás era ateu e negava a existência de Deus.', 0, 0),
(@p, 'Porque Santo Anselmo escreveu sua obra em grego antigo.', 0, 0),
(@p, 'Porque a lógica era proibida nos mosteiros beneditinos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A filosofia de Guilherme de Ockham preparou o terreno epistemológico para o empirismo britânico e para a ciência experimental moderna.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 100: Filosofia Moderna (Racionalismo e Empirismo)
-- -------------------------------------------------------------------------

-- Quiz 100.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Renascimento, Revolução Científica e Filosofia Moderna', 1, 100);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual mudança cultural e filosófica marcou a passagem da Idade Média para a Idade Moderna?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A passagem do teocentrismo para o antropocentrismo, colocando a razão humana e a ciência no centro da investigação.', 1, 0),
(@p, 'O retorno aos mitos de Homero como única explicação científica.', 0, 0),
(@p, 'O fechamento de todas as escolas e universidades da Europa.', 0, 0),
(@p, 'A proibição do uso da matemática na astronomia.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada corrente da Filosofia Moderna à sua fonte principal de conhecimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Racionalismo (Descartes, Espinosa, Leibniz)', 1, 1, 'A razão humana e as ideias inatas como base segura do saber'),
(@p, 'Empirismo (Bacon, Locke, Hume)', 1, 2, 'A experiência sensível e a observação empírica da realidade'),
(@p, 'Criticismo (Immanuel Kant)', 1, 3, 'Síntese entre as estruturas a priori da razão e os dados dos sentidos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Revolução Científica dos séculos XVI e XVII (com Copérnico, Galileu e Newton) transformou a Filosofia Moderna ao exigir um método rigoroso para alcançar a verdade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características marcantes da Filosofia Moderna:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Centralidade do sujeito pensante e da autonomia da razão', 1, 0),
(@p, 'Preocupação com o método científico e a teoria do conhecimento', 1, 0),
(@p, 'Desencantamento do mundo e matematização da natureza', 1, 0),
(@p, 'Submissão obrigatória da ciência à autoridade aristotélica sem testes', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual modelo astronômico defendido por Nicolau Copérnico e Galileu Galilei colocou o Sol no centro do sistema planetário, abalando a visão medieval?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Heliocentrismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene cronologicamente os grandes marcos que impulsionaram a Filosofia Moderna:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Humanismo Renascentista e invenção da imprensa de Gutenberg', 1, 1),
(@p, 'Revolução Copernicana e física experimental de Galileu Galilei', 1, 2),
(@p, 'Publicação do Discurso do Método de René Descartes (1637)', 1, 3),
(@p, 'Iluminismo e filosofia crítica de Immanuel Kant no século XVIII', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que a questão do "método" tornou-se obsessão para filósofos modernos como Descartes e Francis Bacon?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque buscavam um caminho seguro que evitasse o erro e permitisse ao ser humano dominar tecnicamente a natureza.', 1, 0),
(@p, 'Porque queriam escrever poemas épicos mais longos que a Odisseia.', 0, 0),
(@p, 'Porque acreditavam que o conhecimento verdadeiro é impossível.', 0, 0),
(@p, 'Porque queriam abolir a matemática das escolas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Galileu Galilei afirmou que o grande livro da natureza está escrito em linguagem matemática (triângulos, círculos e figuras geométricas).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 100.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Racionalismo Moderno: René Descartes e a Dúvida Metódica', 2, 100);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a primeira verdade indubitável alcançada por René Descartes após aplicar a dúvida metódica radical?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Penso, logo existo (Cogito, ergo sum)', 1, 0),
(@p, 'Nada existe além da matéria visível', 0, 0),
(@p, 'Os sentidos humanos nunca nos enganam', 0, 0),
(@p, 'A Terra é o centro imóvel do universo', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito cartesiano à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Res cogitans (coisa pensante)', 1, 1, 'A mente ou alma imaterial cuja essência é o pensamento'),
(@p, 'Res extensa (coisa extensa)', 1, 2, 'A matéria física que ocupa espaço e obedece às leis da geometria'),
(@p, 'Ideias inatas', 1, 3, 'Verdades racionais que já nascem inscritas na mente humana');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A dúvida de Descartes é "metódica" e "provisória", pois ele duvida de tudo não para permanecer no ceticismo, mas para encontrar uma certeza absoluta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as quatro regras do método propostas por Descartes no "Discurso do Método":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Evidência (aceitar apenas o que for claro e distinto)', 1, 0),
(@p, 'Análise (dividir cada dificuldade em quantas partes simples forem possíveis)', 1, 0),
(@p, 'Síntese (ordenar os pensamentos dos objetos mais simples aos mais complexos)', 1, 0),
(@p, 'Enumeração (fazer revisões completas para ter certeza de nada omitir)', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual famoso recurso hipotético Descartes imaginou nas Meditações Metafísicas — um ser poderosíssimo e enganador — para levar a dúvida até mesmo às verdades matemáticas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Gênio maligno', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o encadeamento lógico das Meditações Metafísicas de Descartes:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Dúvida sobre os sentidos, sobre o sonho e hipótese do gênio maligno', 1, 1),
(@p, 'Descoberta da primeira certeza inabalável: "Penso, logo existo"', 1, 2),
(@p, 'Demonstração da existência de um Deus perfeito e veraz que não engana', 1, 3),
(@p, 'Recuperação segura da existência do mundo material e da ciência', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que Descartes desconfiava do conhecimento obtido exclusivamente pelos sentidos (visão, tato, audição)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque os sentidos já nos enganaram algumas vezes (como ilusões de ótica e sonhos), e não é prudente confiar plenamente em quem já nos enganou.', 1, 0),
(@p, 'Porque Descartes não possuía olhos nem ouvidos.', 0, 0),
(@p, 'Porque os sentidos sempre mostram a realidade eterna sem erro.', 0, 0),
(@p, 'Porque apenas os animais possuem órgãos sensoriais.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Além de pai da Filosofia Moderna, René Descartes revolucionou a matemática ao criar a Geometria Analítica (plano cartesiano).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 100.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Empirismo Britânico: Francis Bacon, John Locke e David Hume', 2, 100);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como John Locke descreve a mente humana no momento do nascimento, opondo-se às ideias inatas de Descartes?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Como uma "tábula rasa" (folha de papel em branco) que será preenchida pelas experiências sensoriais e pela reflexão.', 1, 0),
(@p, 'Como um livro já totalmente escrito antes do nascimento.', 0, 0),
(@p, 'Como incapaz de aprender qualquer coisa pelo contato com o mundo.', 0, 0),
(@p, 'Como idêntica à mente de Deus.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada filósofo empirista à sua contribuição principal:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Francis Bacon', 1, 1, 'Método indutivo experimental, crítica aos ídolos e frase "Saber é poder"'),
(@p, 'John Locke', 1, 2, 'Teoria da tábula rasa e origem empírica das ideias por sensação e reflexão'),
(@p, 'David Hume', 1, 3, 'Crítica ao princípio de causalidade e papel do hábito na crença humana');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para David Hume, não temos impressão sensível direta da "conexão necessária" entre causa e efeito; acreditamos que o Sol nascerá amanhã por força do hábito e do costume.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique os quatro tipos de "ídolos" (preconceitos que distorcem a mente) denunciados por Francis Bacon no Novum Organum:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ídolos da Tribo (falhas comuns à própria natureza humana)', 1, 0),
(@p, 'Ídolos da Caverna (preconceitos individuais da educação e personalidade)', 1, 0),
(@p, 'Ídolos do Foro ou Mercado (ambiguidades da linguagem e comunicação)', 1, 0),
(@p, 'Ídolos do Teatro (dogmas de sistemas filosóficos antigos aceitos sem prova)', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual método científico defendido por Francis Bacon parte da observação repetida de casos particulares para formular leis gerais da natureza?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Método indutivo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a formação das ideias na mente segundo o empirismo de David Hume:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Impressões sensoriais diretas e vívidas (ver o fogo, sentir o calor)', 1, 1),
(@p, 'Ideias simples (cópias menos vívidas das impressões guardadas na memória)', 1, 2),
(@p, 'Ideias complexas (combinação de ideias simples pela imaginação e associação)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa a célebre máxima de Francis Bacon "Saber é poder"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Que o conhecimento científico das leis da natureza permite ao ser humano intervir tecnicamente no mundo em benefício da humanidade.', 1, 0),
(@p, 'Que apenas os reis podem ler livros nas bibliotecas.', 0, 0),
(@p, 'Que a ignorância é mais útil que a ciência.', 0, 0),
(@p, 'Que a natureza deve ser destruída sem nenhum critério.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: David Hume confessou que sua crítica empirista ao hábito e à causalidade despertou Immanuel Kant de seu "sono dogmático".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 100.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Immanuel Kant: Criticismo e Revolução Copernicana na Filosofia', 3, 100);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Em que consistiu a "Revolução Copernicana" promovida por Immanuel Kant na Crítica da Razão Pura?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Inverter a relação tradicional: não é o sujeito que apenas gira passivamente ao redor do objeto, mas o objeto conhecido que se molda às estruturas a priori do sujeito.', 1, 0),
(@p, 'Provar que a Terra é plana e imóvel no centro da galáxia.', 0, 0),
(@p, 'Eliminar completamente o uso da razão e da lógica na ciência.', 0, 0),
(@p, 'Afirmar que podemos conhecer Deus fisicamente pelo telescópio.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito da filosofia crítica de Kant à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Fenômeno', 1, 1, 'A coisa tal como aparece a nós organizada pelo espaço, tempo e categorias'),
(@p, 'Númeno (coisa-em-si)', 1, 2, 'A realidade em si mesma, inacessível ao conhecimento científico teórico'),
(@p, 'Espaço e Tempo', 1, 3, 'Formas puras a priori da sensibilidade humana');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A célebre frase de Kant "Pensamentos sem conteúdo são vazios; intuições sem conceitos são cegas" sintetiza a união necessária entre razão e experiência.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique afirmações verdadeiras sobre a filosofia de Immanuel Kant:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Superou a oposição unilateral entre racionalismo puro e empirismo radical', 1, 0),
(@p, 'Definiu o Esclarecimento (Iluminismo) como a saída do ser humano da menoridade intelectual ("Sapere aude! Ouse saber!")', 1, 0),
(@p, 'Mostrou que a Metafísica tradicional extrapola os limites da experiência possível ao tentar provar Deus e a alma como objetos físicos', 1, 0),
(@p, 'Defendeu que a ciência não precisa de nenhum dado empírico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual tipo de juízo formulado por Kant fundamenta as verdades científicas por ser ao mesmo tempo universal/necessário (a priori) e ampliador do conhecimento (sintético)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Juízo sintético a priori', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o processo do conhecimento humano segundo a Crítica da Razão Pura de Kant:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Recepção dos dados sensíveis através das formas puras de espaço e tempo (Sensibilidade)', 1, 1),
(@p, 'Ordenação conceitual desses dados pelas categorias a priori como causalidade (Entendimento)', 1, 2),
(@p, 'Constituição do objeto conhecido como fenômeno científico válido', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Kant diferencia o "juízo analítico" do "juízo sintético"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'No juízo analítico o predicado já está contido no sujeito (ex.: Todo corpo é extenso); no sintético o predicado acrescenta informação nova.', 1, 0),
(@p, 'O juízo analítico é sempre falso; o sintético é sempre mentira.', 0, 0),
(@p, 'O juízo analítico só existe na música; o sintético só na pintura.', 0, 0),
(@p, 'Ambos são proibidos na lógica formal.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Kant, embora Deus, a liberdade e a imortalidade da alma não possam ser provados pela razão teórica científica, eles são postulados necessários da razão prática (moral).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 101: Filosofia Contemporânea
-- -------------------------------------------------------------------------

-- Quiz 101.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Panorama e Temas da Filosofia Contemporânea', 1, 101);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual evento histórico costuma marcar o início da Idade Contemporânea e das grandes transformações filosóficas do século XIX?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Revolução Francesa de 1789 e a consolidação da Revolução Industrial', 1, 0),
(@p, 'A queda do Império Romano do Ocidente em 476', 0, 0),
(@p, 'A guerra de Troia narrada por Homero', 0, 0),
(@p, 'A fundação da Academia de Platão em Atenas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pensador contemporâneo à corrente ou tema central de sua filosofia:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Karl Marx', 1, 1, 'Materialismo histórico, crítica ao capitalismo e alienação do trabalho'),
(@p, 'Friedrich Nietzsche', 1, 2, 'Crítica à metafísica tradicional e transvaloração de todos os valores'),
(@p, 'Jean-Paul Sartre', 1, 3, 'Existencialismo, liberdade radical e responsabilidade humana');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Filosofia Contemporânea questiona a ideia iluminista ingênua de que o progresso técnico e científico levaria automaticamente à felicidade e à paz humana.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique grandes correntes filosóficas desenvolvidas nos séculos XIX e XX:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Existencialismo e Fenomenologia', 1, 0),
(@p, 'Escola de Frankfurt (Teoria Crítica)', 1, 0),
(@p, 'Filosofia Analítica e Filosofia da Linguagem (Wittgenstein)', 1, 0),
(@p, 'Patrística dos primeiros séculos cristãos', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual filósofo francês do século XIX fundou o Positivismo, defendendo que a humanidade evolui pelos estados teológico, metafísico e positivo (científico)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Auguste Comte', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a "Lei dos Três Estados" formulada por Auguste Comte:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estado Teológico ou Fictício (explicações por seres sobrenaturais)', 1, 1),
(@p, 'Estado Metafísico ou Abstrato (explicações por essências abstratas)', 1, 2),
(@p, 'Estado Positivo ou Científico (observação das leis efetivas dos fenômenos)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que pensadores como Marx, Nietzsche e Freud foram chamados por Paul Ricoeur de "mestres da suspeita"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque mostraram que a consciência humana não é totalmente transparente a si mesma, sendo influenciada por interesses econômicos, vontade de poder e inconsciente.', 1, 0),
(@p, 'Porque trabalhavam como detetives particulares na polícia de Londres.', 0, 0),
(@p, 'Porque negavam a existência de qualquer sociedade humana.', 0, 0),
(@p, 'Porque defendiam o retorno à monarquia absolutista.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Filosofia Contemporânea ampliou o debate filosófico para temas como linguagem, cultura de massas, ecologia, gênero, tecnologia e direitos humanos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 101.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Friedrich Nietzsche: Crítica à Metafísica e Transvaloração dos Valores', 2, 101);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que Friedrich Nietzsche critica na tradição metafísica iniciada por Sócrates e Platão?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A invenção de um "mundo verdadeiro" suprassensível que desvaloriza o corpo, os instintos, as paixões e a vida terrena.', 1, 0),
(@p, 'O excesso de amor à arte, à dança e à música trágica.', 0, 0),
(@p, 'A defesa do corpo e da alegria de viver neste mundo.', 0, 0),
(@p, 'A criação da democracia direta em Atenas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito nietzschiano ao seu sentido filosófico:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Apolíneo vs. Dionisíaco', 1, 1, 'Dualidade estética grega entre ordem/forma e embriaguez/impulso vital'),
(@p, 'Além-do-homem (Übermensch)', 1, 2, 'Aquele que supera os valores herdados e cria sentidos próprios afirmando a vida'),
(@p, 'Amor fati', 1, 3, 'Aceitação plena e afirmativa da existência com suas alegrias e dores');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na filosofia de Nietzsche, a expressão "Deus está morto" significa o colapso histórico dos valores absolutos da metafísica e da moral tradicional na modernidade.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique conceitos centrais da filosofia de Friedrich Nietzsche:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Genealogia da moral (investigar a origem histórica dos conceitos de bom e mau)', 1, 0),
(@p, 'Vontade de potência (impulso vital de expansão e superação)', 1, 0),
(@p, 'Eterno retorno (viver cada instante como se desejássemos repeti-lo eternamente)', 1, 0),
(@p, 'Imperativo categórico universal baseado no dever puro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo designa o fenômeno diagnosticado por Nietzsche como o esvaziamento de sentido e a perda de crença nos valores tradicionais após a morte de Deus?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Niilismo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três metamorfoses do espírito narradas por Nietzsche em "Assim Falou Zaratustra":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O Camelo (carrega o peso dos deveres e valores impostos: "Tu deves")', 1, 1),
(@p, 'O Leão (rebela-se e conquista a liberdade negando os velhos dogmas: "Eu quero")', 1, 2),
(@p, 'A Criança (inocência, esquecimento e criação lúdica de novos valores)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na "Genealogia da Moral", como Nietzsche distingue a "moral dos senhores" da "moral dos escravos"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A moral dos senhores nasce da afirmação ativa de si; a moral dos escravos nasce do ressentimento contra os fortes, invertendo valores.', 1, 0),
(@p, 'A moral dos senhores defende a fraqueza; a dos escravos defende a aristocracia.', 0, 0),
(@p, 'Ambas foram criadas por Descartes no século XVII.', 0, 0),
(@p, 'São apenas regras de gramática latina.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Nietzsche, o "niilismo ativo" não leva ao desespero passivo, mas torna-se oportunidade criadora para transvalorar os valores e afirmar a vida.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 101.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Fenomenologia e Existencialismo: Husserl, Sartre e Beauvoir', 2, 101);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa a célebre tese existencialista de Jean-Paul Sartre: "A existência precede a essência"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ser humano primeiro existe, surge no mundo e, depois, por meio de suas escolhas livres e ações, define quem ele é.', 1, 0),
(@p, 'O ser humano nasce com um destino fixo e imutável como um cortador de papel.', 0, 0),
(@p, 'Ninguém tem responsabilidade pelas próprias escolhas.', 0, 0),
(@p, 'Os objetos inanimados têm mais liberdade que os seres humanos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pensador fenomenólogo ou existencialista à sua ideia central:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Edmund Husserl', 1, 1, 'Fundador da Fenomenologia e do princípio da intencionalidade da consciência'),
(@p, 'Jean-Paul Sartre', 1, 2, 'O ser humano está condenado a ser livre e é responsável por seus atos'),
(@p, 'Simone de Beauvoir', 1, 3, 'Não se nasce mulher: torna-se mulher (crítica ao determinismo biológico)');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Sartre, a "má-fé" ocorre quando o indivíduo tenta fugir da angústia da liberdade fingindo que não teve escolha ou culpando o destino.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique conceitos centrais da Fenomenologia e do Existencialismo:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Intencionalidade ("toda consciência é consciência de alguma coisa")', 1, 0),
(@p, 'Angústia diante da liberdade e do peso da escolha', 1, 0),
(@p, 'Ser-para-si (consciência livre) vs. Ser-em-si (coisas fechadas em sua identidade)', 1, 0),
(@p, 'Determinismo absoluto onde toda ação humana já está escrita nas estrelas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual obra clássica de Simone de Beauvoir publicada em 1949 analisou filosoficamente a condição feminina e a construção social dos papéis de gênero?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'O Segundo Sexo', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a lógica existencialista da responsabilidade humana segundo Sartre:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O ser humano é lançado no mundo sem uma natureza pré-determinada', 1, 1),
(@p, 'Mesmo não escolher já constitui uma escolha livre', 1, 2),
(@p, 'Ao escolher para si, o indivíduo projeta uma imagem de ser humano para toda a humanidade', 1, 3),
(@p, 'Surge a angústia ética e o engajamento responsável no mundo', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que Martin Heidegger denomina "Dasein" (ser-aí) em sua obra "Ser e Tempo"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O modo próprio de existir do ser humano, que está sempre aberto às possibilidades, situado no tempo e consciente de sua finitude.', 1, 0),
(@p, 'Uma pedra imóvel no fundo do oceano.', 0, 0),
(@p, 'Um algoritmo matemático de computador.', 0, 0),
(@p, 'Uma fórmula química da água.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Albert Camus explorou a filosofia do "absurdo", que nasce do confronto entre o desejo humano de sentido e o silêncio irracional do universo.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 101.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Escola de Frankfurt, Indústria Cultural e Michel Foucault', 3, 101);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que Theodor Adorno e Max Horkheimer denunciam com o conceito de "Indústria Cultural"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A transformação da arte e da cultura em mercadorias padronizadas produzidas em série para entretenimento passivo e conformismo social.', 1, 0),
(@p, 'A construção de fábricas de automóveis dentro de museus antigos.', 0, 0),
(@p, 'A leitura de livros clássicos de filosofia nas escolas públicas.', 0, 0),
(@p, 'O apoio financeiro do Estado aos artistas independentes.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada pensador contemporâneo ao conceito-chave que desenvolveu:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Walter Benjamin', 1, 1, 'Perda da aura da obra de arte na era da reprodutibilidade técnica'),
(@p, 'Michel Foucault', 1, 2, 'Microfísica do poder, sociedade disciplinar e biopoder'),
(@p, 'Jürgen Habermas', 1, 3, 'Razão comunicativa e esfera pública democrática');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Michel Foucault, o poder não está concentrado apenas no Estado ou nas leis; ele circula como uma rede capilar por instituições como escolas, hospitais, prisões e saberes.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique críticas formuladas pelos pensadores da Escola de Frankfurt (Teoria Crítica):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crítica à "razão instrumental" que reduz a racionalidade ao cálculo técnico de dominação', 1, 0),
(@p, 'Análise dos mecanismos psicológicos do autoritarismo e do fascismo', 1, 0),
(@p, 'Denúncia da padronização estética e alienação promovidas pela indústria cultural', 1, 0),
(@p, 'Elogio acrítico ao consumo desenfreado e à propaganda manipuladora', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual modelo arquitetônico prisional projetado por Jeremy Bentham foi analisado por Michel Foucault em "Vigiar e Punir" como símbolo da vigilância constante e internalizada?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Panóptico', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o mecanismo disciplinar analisado por Michel Foucault nas instituições modernas:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Distribuição espacial dos indivíduos e controle rigoroso dos horários', 1, 1),
(@p, 'Vigilância hierárquica contínua e exames normalizadores', 1, 2),
(@p, 'Internalização da norma pelo próprio indivíduo vigiado', 1, 3),
(@p, 'Formação de "corpos dóceis" politicamente e úteis economicamente', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença entre "razão emancipatória" e "razão instrumental" na Escola de Frankfurt?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A emancipatória busca a autonomia, a justiça e a liberdade humana; a instrumental preocupa-se apenas com a eficiência técnica dos meios sem questionar os fins.', 1, 0),
(@p, 'A emancipatória é usada apenas para tocar instrumentos musicais.', 0, 0),
(@p, 'A instrumental foi criada por Sócrates na Grécia Antiga.', 0, 0),
(@p, 'Não existe distinção entre os dois conceitos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na obra "Investigações Filosóficas", Ludwig Wittgenstein mostrou que o significado das palavras depende do seu uso concreto nos diversos "jogos de linguagem" sociais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 102: Ética e Moral
-- -------------------------------------------------------------------------

-- Quiz 102.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Fundamentais: Ética, Moral e Valores', 1, 102);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a distinção filosófica mais aceita entre "Moral" e "Ética"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A Moral é o conjunto de normas, costumes e regras de conduta de uma sociedade; a Ética é a reflexão filosófica crítica sobre essas normas.', 1, 0),
(@p, 'A Moral vale apenas para animais; a Ética vale apenas para robôs.', 0, 0),
(@p, 'A Moral é escrita pelos físicos; a Ética é escrita pelos astrônomos.', 0, 0),
(@p, 'Ambas proíbem o ser humano de pensar sobre o bem e o mal.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ético-moral à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sujeito moral', 1, 1, 'Pessoa consciente e livre, capaz de deliberar e responder por seus atos'),
(@p, 'Autonomia moral', 1, 2, 'Capacidade de agir segundo princípios racionais que a própria consciência reconhece'),
(@p, 'Heteronomia', 1, 3, 'Submissão passiva a regras impostas de fora apenas por medo ou obediência cega');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Só existe responsabilidade moral quando há liberdade de escolha; atos praticados sob coação absoluta ou total inconsciência não são atos morais plenos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique condições essenciais para que uma ação seja considerada moralmente responsável:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Consciência (saber o que se faz e suas consequências)', 1, 0),
(@p, 'Liberdade (poder escolher entre diferentes alternativas)', 1, 0),
(@p, 'Responsabilidade (assumir as consequências de suas escolhas perante os outros)', 1, 0),
(@p, 'Reflexo biológico involuntário como piscar ou espirrar', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo filosófico derivado do grego "ethos" designa o estudo racional dos princípios que orientam a conduta humana e os valores de bem e justiça?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ética', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as etapas da deliberação ética diante de um conflito moral:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Percepção do dilema e dos valores envolvidos', 1, 1),
(@p, 'Análise racional das alternativas e de seus impactos sobre os outros', 1, 2),
(@p, 'Decisão livre e consciente baseada em princípios éticos', 1, 3),
(@p, 'Ação prática e assunção responsável das consequências', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que as normas morais variam ao longo da história e entre diferentes culturas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque a moral é uma construção histórica e cultural humana, embora a Ética busque princípios universais de dignidade e justiça.', 1, 0),
(@p, 'Porque cada planeta tem uma gravidade diferente.', 0, 0),
(@p, 'Porque os seres humanos nunca viveram em sociedade.', 0, 0),
(@p, 'Porque não existe nenhuma regra de convivência em nenhum país.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A diferença entre "amoral" e "imoral" é que o ser amoral desconhece o campo moral (como uma pedra ou um bebê), enquanto o ato imoral viola conscientemente normas morais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 102.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Ética das Virtudes (Aristóteles) vs. Ética do Dever (Kant)', 2, 102);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a finalidade última de todas as ações humanas segundo a ética teleológica de Aristóteles?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A felicidade plena ou florescimento humano (Eudaimonia), alcançada pela prática habitual da virtude e da razão.', 1, 0),
(@p, 'O acúmulo ilimitado de ouro e poder militar.', 0, 0),
(@p, 'O isolamento total em uma ilha deserta.', 0, 0),
(@p, 'A busca exclusiva por prazeres físicos imediatos sem moderação.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito ético de Aristóteles ou Kant à sua formulação:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Eudaimonia (Aristóteles)', 1, 1, 'Felicidade conquistada pela excelência moral e vida virtuosa na pólis'),
(@p, 'Imperativo Categórico (Kant)', 1, 2, 'Age de tal modo que a máxima de tua ação possa tornar-se lei universal'),
(@p, 'Boa Vontade (Kant)', 1, 3, 'Agir por puro respeito ao dever moral, e não por interesse ou medo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na ética deontológica de Kant, uma ação só possui verdadeiro valor moral quando é praticada "por dever", e não apenas "conforme o dever" por interesse egoísta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique formulações do Imperativo Categórico de Immanuel Kant:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Fórmula da Lei Universal: agir apenas segundo máximas universalizáveis sem contradição', 1, 0),
(@p, 'Fórmula da Humanidade: tratar a humanidade nunca apenas como meio, mas sempre também como fim em si mesma', 1, 0),
(@p, 'Fórmula do Reino dos Fins: agir como legislador autônomo de uma comunidade racional', 1, 0),
(@p, 'Fórmula da Vantagem: mentir sempre que isso trouxer lucro financeiro', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo grego usado por Aristóteles designa a sabedoria prática ou prudência necessária para discernir o meio-termo virtuoso em cada situação concreta?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Phronesis', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o teste de universalização do Imperativo Categórico de Kant diante de uma mentira:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Formular a máxima subjetiva da ação ("Posso mentir quando estiver em apuros")', 1, 1),
(@p, 'Imaginar essa máxima transformada em lei universal válida para todos', 1, 2),
(@p, 'Perceber a contradição lógica (se todos mentirem, ninguém mais acreditará em promessas)', 1, 3),
(@p, 'Concluir que mentir é moralmente ilícito por violar o dever racional', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como um ser humano adquire as virtudes morais segundo Aristóteles?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Pelo hábito e pela prática constante de atos justos e moderados desde a juventude, formando o caráter.', 1, 0),
(@p, 'Apenas dormindo sem nunca praticar nenhuma ação.', 0, 0),
(@p, 'Comprando um diploma de virtude no mercado.', 0, 0),
(@p, 'Nascendo já com todas as virtudes perfeitas sem precisar educar-se.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A segunda formulação do Imperativo Categórico de Kant ("tratar cada pessoa sempre como um fim em si mesma, nunca apenas como instrumento") é um dos pilares filosóficos da dignidade humana.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 102.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Utilitarismo, Epicurismo, Estoicismo e Ética da Responsabilidade', 2, 102);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o princípio fundamental da ética utilitarista formulada por Jeremy Bentham e John Stuart Mill?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Uma ação é moralmente correta na medida em que promove a maior felicidade (bem-estar) para o maior número possível de pessoas.', 1, 0),
(@p, 'Uma ação é correta apenas se obedecer a regras sem importar suas consequências.', 0, 0),
(@p, 'O bem moral consiste em causar sofrimento máximo à maioria.', 0, 0),
(@p, 'Apenas o interesse individual egoísta tem valor moral.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada escola ética à sua orientação prática:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Epicurismo (Epicuro)', 1, 1, 'Busca da felicidade pela moderação dos prazeres e ausência de dor e medo (ataraxia)'),
(@p, 'Estoicismo (Zenão, Sêneca, Marco Aurélio)', 1, 2, 'Viver em harmonia com a razão universal, distinguindo o que depende ou não de nós'),
(@p, 'Utilitarismo (Bentham e Stuart Mill)', 1, 3, 'Avaliação moral pelas consequências de bem-estar coletivo');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Ao contrário da caricatura popular, o epicurismo não defende excessos desenfreados, mas a serenidade da alma (ataraxia), a amizade e a satisfação dos desejos naturais e necessários.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique ensinamentos fundamentais da ética estoica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Separar o que está sob nosso controle (nossos juízos e atitudes) do que não está (clima, morte, opinião alheia)', 1, 0),
(@p, 'Cultivar a imperturbabilidade (apatheia) diante das adversidades', 1, 0),
(@p, 'Reconhecer todos os seres humanos como cidadãos do mundo (cosmopolitismo)', 1, 0),
(@p, 'Entregar-se à raiva e ao desespero sempre que algo sai do planejado', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual filósofo contemporâneo formulou o "Princípio Responsabilidade", afirmando que devemos agir de modo que os efeitos de nossas ações tecnológicas não destruam a vida futura na Terra?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Hans Jonas', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a classificação dos desejos humanos segundo Epicuro, dos mais recomendados aos evitáveis:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Desejos naturais e necessários (água, alimento simples, abrigo, amizade, filosofia)', 1, 1),
(@p, 'Desejos naturais mas não necessários (comidas refinadas e luxos moderados)', 1, 2),
(@p, 'Desejos não naturais e não necessários (fama, riqueza ilimitada, poder)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como John Stuart Mill aprimorou o utilitarismo quantitativo de Jeremy Bentham?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Introduzindo a distinção qualitativa entre prazeres superiores (intelectuais, morais e estéticos) e prazeres inferiores.', 1, 0),
(@p, 'Afirmando que apenas o dinheiro mede a felicidade humana.', 0, 0),
(@p, 'Rejeitando totalmente a importância da felicidade coletiva.', 0, 0),
(@p, 'Defendendo a censura contra a liberdade de expressão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ética consequencialista avalia a moralidade de um ato pelos seus resultados concretos, enquanto a ética deontológica avalia pelo cumprimento do dever em si.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 102.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Bioética, Direitos Humanos e Ética Contemporânea', 3, 102);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é o campo de estudo da "Bioética" na filosofia contemporânea?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Os problemas morais suscitados pelos avanços da medicina, da biotecnologia, da genética e da intervenção humana sobre a vida e o meio ambiente.', 1, 0),
(@p, 'Apenas a classificação botânica de árvores frutíferas.', 0, 0),
(@p, 'A história das guerras da Antiguidade Clássica.', 0, 0),
(@p, 'A construção de motores a combustão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada princípio clássico da Bioética principialista (Beauchamp e Childress) ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Autonomia', 1, 1, 'Respeito à decisão livre e informada do paciente (consentimento livre e esclarecido)'),
(@p, 'Beneficência e Não Maleficência', 1, 2, 'Agir sempre em benefício do paciente e jamais causar dano intencional'),
(@p, 'Justiça', 1, 3, 'Distribuição justa e equitativa dos recursos e tratamentos de saúde');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Em sua "Ética do Discurso", Jürgen Habermas propõe que uma norma moral só é válida quando pode obter o consenso livre de todos os afetados em um diálogo sem coerção.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique temas contemporâneos debatidos pela Bioética e pela Ética Aplicada:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Edição genética (CRISPR), clonagem e reprodução assistida', 1, 0),
(@p, 'Cuidados paliativos, eutanásia, ortotanásia e dignidade no fim da vida', 1, 0),
(@p, 'Experimentação com animais, inteligência artificial e justiça ambiental', 1, 0),
(@p, 'Regras de acentuação gráfica da língua portuguesa', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo da bioética designa a boa prática médica que evita o prolongamento artificial e doloroso da morte em pacientes terminais, respeitando o curso natural com cuidados paliativos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Ortotanásia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as gerações (dimensões) históricas dos Direitos Humanos:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1ª Dimensão: Direitos civis e políticos (liberdade, vida, voto e expressão)', 1, 1),
(@p, '2ª Dimensão: Direitos sociais, econômicos e culturais (saúde, educação, trabalho)', 1, 2),
(@p, '3ª Dimensão: Direitos difusos e coletivos (meio ambiente equilibrado, paz, desenvolvimento)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que o filósofo australiano Peter Singer defende em sua ética voltada aos animais não humanos?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A igual consideração de interesses baseada na senciência (capacidade de sentir dor e prazer), criticando o especismo.', 1, 0),
(@p, 'Que os animais devem votar nas eleições presidenciais.', 0, 0),
(@p, 'Que os animais são máquinas insensíveis incapazes de sentir dor.', 0, 0),
(@p, 'Que os seres humanos não possuem deveres éticos com nenhum ser vivo.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A Declaração Universal dos Direitos Humanos (1948) reafirmou eticamente que todos os seres humanos nascem livres e iguais em dignidade e direitos, sem distinção.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 103: Teoria do Conhecimento (Epistemologia)
-- -------------------------------------------------------------------------

-- Quiz 103.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('O Ato de Conhecer: Sujeito, Objeto e Formas de Saber', 1, 103);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estuda a "Teoria do Conhecimento" (também chamada de Epistemologia ou Gnosiologia)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A origem, a natureza, os métodos, os critérios de verdade e os limites do conhecimento humano.', 1, 0),
(@p, 'Apenas a anatomia dos músculos humanos.', 0, 0),
(@p, 'A decoração de igrejas barrocas.', 0, 0),
(@p, 'As regras oficiais do futebol de salão.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada elemento fundamental do ato de conhecer ao seu papel:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sujeito cognoscente', 1, 1, 'O ser humano dotado de consciência e razão que busca conhecer'),
(@p, 'Objeto cognoscível', 1, 2, 'Aquilo que é investigado, observado ou pensado pelo sujeito'),
(@p, 'Representação / Conceito', 1, 3, 'A imagem mental ou ideia que o sujeito constrói sobre o objeto');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O conhecimento resulta sempre da relação dinâmica entre um sujeito que conhece e um objeto que é conhecido.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique diferentes formas de conhecimento produzidas pela humanidade:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Conhecimento empírico cotidiano (senso comum)', 1, 0),
(@p, 'Conhecimento científico (metódico e testável)', 1, 0),
(@p, 'Conhecimento filosófico e conhecimento religioso (teológico)', 1, 0),
(@p, 'Ignorância absoluta sem nenhuma experiência', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo filosófico derivado do grego "episteme" designa o estudo crítico dos princípios, hipóteses e resultados das diversas ciências?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Epistemologia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três grandes questões investigadas pela Teoria do Conhecimento:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Possibilidade do conhecimento (É possível alcançar a verdade?)', 1, 1),
(@p, 'Origem do conhecimento (Ele vem da razão, dos sentidos ou de ambos?)', 1, 2),
(@p, 'Essência e critérios da verdade (O que torna um juízo verdadeiro?)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na definição clássica atribuída a Platão no diálogo Teeteto, o que é o "conhecimento" (saber)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Crença verdadeira e justificada (não basta acertar por acaso; é preciso saber demonstrar por que é verdade).', 1, 0),
(@p, 'Qualquer palpite dado sem nenhuma prova.', 0, 0),
(@p, 'Uma mentira repetida muitas vezes.', 0, 0),
(@p, 'Apenas uma opinião pessoal sem fundamento.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A intuição (sensível ou intelectual) é uma apreensão imediata de algo sem precisar passar por uma longa cadeia de raciocínios intermediários.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 103.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Possibilidade do Conhecimento: Dogmatismo, Ceticismo e Relativismo', 2, 103);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a postura filosófica do "Ceticismo" diante da possibilidade de alcançar verdades absolutas e definitivas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Sustenta que a razão e os sentidos humanos são falíveis e limitados, recomendando a suspensão do juízo (epoché) diante de certezas absolutas.', 1, 0),
(@p, 'Afirma que podemos conhecer absolutamente tudo sem jamais errar.', 0, 0),
(@p, 'Proíbe os seres humanos de fazerem qualquer pergunta.', 0, 0),
(@p, 'Acredita cegamente em todas as notícias sem verificar.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada posição epistemológica sobre a possibilidade da verdade à sua tese:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Dogmatismo', 1, 1, 'Afirma que a mente humana pode conhecer plenamente a realidade sem dúvida'),
(@p, 'Ceticismo Pirrônico (Pirro de Élis)', 1, 2, 'Propõe a suspensão do juízo (epoché) como caminho para a tranquilidade da alma'),
(@p, 'Relativismo', 1, 3, 'Sustenta que a verdade depende do ponto de vista histórico, cultural ou individual');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: No sentido filosófico original, ser "cético" não significa negar tudo por preguiça, mas investigar continuamente sem aceitar dogmas prontos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique críticas filosóficas dirigidas ao Relativismo extremo ("tudo é relativo, não existe verdade objetiva"):');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Autocontradição lógica: se toda verdade é relativa, a própria afirmação do relativismo também seria apenas relativa', 1, 0),
(@p, 'Impossibilidade de distinguir fatos científicos comprovados de notícias falsas (fake news)', 1, 0),
(@p, 'Enfraquecimento da defesa de direitos humanos universais', 1, 0),
(@p, 'Excesso de rigor matemático nas demonstrações', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo grego usado pelos céticos antigos designa a "suspensão do juízo" diante de argumentos igualmente fortes de ambos os lados?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Epoché', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o caminho proposto pelo ceticismo antigo de Pirro de Élis:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Constatar que a toda tese dogmática se opõe outra tese de igual força (equipolência)', 1, 1),
(@p, 'Praticar a suspensão do juízo absoluto (epoché)', 1, 2),
(@p, 'Alcançar a serenidade e imperturbabilidade da alma (ataraxia)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que distingue o "dogmatismo crítico" (ou falibilismo) do "dogmatismo ingênuo"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'O falibilismo confia que podemos conhecer a realidade objetivamente, mas reconhece que todo saber humano é provisório e sujeito a revisão.', 1, 0),
(@p, 'O dogmatismo ingênuo usa experimentos; o crítico recusa qualquer prova.', 0, 0),
(@p, 'O falibilismo afirma que o conhecimento é totalmente impossível.', 0, 0),
(@p, 'Não há diferença entre ambos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: O pragmatismo (como em William James e Charles Peirce) avalia a verdade de uma ideia pelas suas consequências práticas e eficácia na resolução de problemas reais.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 103.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Critérios de Verdade e Teorias da Verdade', 2, 103);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que estabelece a "Teoria da Verdade como Correspondência" (formulada por Aristóteles e São Tomás de Aquino)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Um enunciado é verdadeiro quando há adequação ou concordância entre o que o pensamento afirma e os fatos reais do mundo.', 1, 0),
(@p, 'Um enunciado é verdadeiro apenas se rimar poeticamente.', 0, 0),
(@p, 'Qualquer frase dita em voz alta torna-se verdadeira.', 0, 0),
(@p, 'A verdade depende exclusivamente da votação da maioria.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada concepção filosófica da verdade à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Verdade por Correspondência (Adaequatio)', 1, 1, 'Concordância entre o juízo do intelecto e a realidade dos fatos'),
(@p, 'Verdade por Coerência Lógica', 1, 2, 'Ausência de contradição interna dentro de um sistema racional (ex.: matemática)'),
(@p, 'Verdade por Consenso Intersubjetivo', 1, 3, 'Acordo racional alcançado pela comunidade científica através de provas');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na matemática e na lógica formal, o critério principal de verdade é a coerência interna e a demonstração dedutiva a partir de axiomas.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique erros de raciocínio (falácias) que comprometem a busca pela verdade no debate:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ad hominem (atacar quem fala em vez de refutar seu argumento)', 1, 0),
(@p, 'Apelo à autoridade (afirmar que algo é verdade só porque alguém famoso disse)', 1, 0),
(@p, 'Generalização precipitada (concluir uma regra geral a partir de um único caso isolado)', 1, 0),
(@p, 'Demonstração lógica baseada em evidências empíricas replicáveis', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo da lógica designa um argumento aparentemente válido mas logicamente incorreto que induz ao erro ou à manipulação no debate?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Falácia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três princípios fundamentais da Lógica Clássica aristotélica:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Princípio da Identidade (Todo ser é idêntico a si mesmo: A = A)', 1, 1),
(@p, 'Princípio da Não Contradição (Algo não pode ser e não ser ao mesmo tempo sob o mesmo aspecto)', 1, 2),
(@p, 'Princípio do Terceiro Excluído (Uma proposição ou é verdadeira ou é falsa, não há terceira via)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Por que o critério da "evidência" isolado (aquilo que parece óbvio à primeira vista) pode ser perigoso na ciência?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Porque muitas verdades científicas são contraintuitivas (como o movimento da Terra ao redor do Sol, apesar de parecer que o Sol gira em torno de nós).', 1, 0),
(@p, 'Porque a ciência proíbe qualquer observação da natureza.', 0, 0),
(@p, 'Porque o Sol realmente gira ao redor da Terra todos os dias.', 0, 0),
(@p, 'Porque não existem ilusões perceptivas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A "pós-verdade" é um fenômeno contemporâneo em que apelos emocionais e crenças pessoais têm mais influência na opinião pública do que fatos objetivos verificados.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 103.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Filosofia da Ciência: Karl Popper, Thomas Kuhn e Paradigmas', 3, 103);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual critério de demarcação entre Ciência e Pseudociência foi proposto pelo filósofo Karl Popper?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A falseabilidade (refutabilidade): uma teoria só é científica se puder ser submetida a testes empíricos capazes de refutá-la caso seja falsa.', 1, 0),
(@p, 'A infalibilidade: uma teoria é científica quando proíbe qualquer teste contrário.', 0, 0),
(@p, 'A popularidade nas redes sociais.', 0, 0),
(@p, 'A antiguidade superior a dois mil anos.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada epistemólogo contemporâneo da ciência à sua concepção:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Karl Popper', 1, 1, 'Racionalismo crítico e falsificacionismo (conjecturas e refutações)'),
(@p, 'Thomas Kuhn', 1, 2, 'Estrutura das revoluções científicas, ciência normal e quebra de paradigmas'),
(@p, 'Gaston Bachelard', 1, 3, 'Obstáculos epistemológicos e ruptura com o senso comum');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Karl Popper, mil cisnes brancos observados não provam definitivamente que todos os cisnes são brancos, mas um único cisne negro basta para refutar a hipótese.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique conceitos-chave da obra "A Estrutura das Revoluções Científicas" de Thomas Kuhn:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Paradigma científico (modelo compartilhado de problemas e soluções por uma comunidade)', 1, 0),
(@p, 'Ciência normal (pesquisa cotidiana que resolve quebra-cabeças dentro do paradigma vigente)', 1, 0),
(@p, 'Anomalias e crise que levam a uma revolução científica (troca de paradigma)', 1, 0),
(@p, 'Acúmulo linear e contínuo de verdades eternas sem rupturas históricas', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual termo Thomas Kuhn utiliza para designar o conjunto de realizações, métodos e valores compartilhados que orientam uma comunidade científica durante certo período?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Paradigma', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o ciclo histórico do desenvolvimento científico segundo Thomas Kuhn:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ciência Normal operando sob um paradigma dominante', 1, 1),
(@p, 'Acúmulo de anomalias persistentes que o paradigma não consegue explicar', 1, 2),
(@p, 'Crise do paradigma e surgimento de teorias rivais', 1, 3),
(@p, 'Revolução Científica e adoção de um novo paradigma (ex.: Física de Newton -> Relatividade)', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que Gaston Bachelard chama de "obstáculo epistemológico"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Hábitos intelectuais, preconceitos do senso comum e imagens imediatas que bloqueiam o avanço do espírito científico.', 1, 0),
(@p, 'A falta de energia elétrica nos laboratórios.', 0, 0),
(@p, 'O uso da matemática na física.', 0, 0),
(@p, 'A revisão por pares em revistas científicas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A ciência não avança pela posse de dogmas intocáveis, mas pela autocorreção contínua, revisão por pares e abertura crítica a novas evidências.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);


-- -------------------------------------------------------------------------
-- CONTEÚDO 104: Filosofia Política
-- -------------------------------------------------------------------------

-- Quiz 104.1 (Fácil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Conceitos Básicos: Política, Poder, Estado e Cidadania', 1, 104);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a origem etimológica e o sentido filosófico original da palavra "Política"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Deriva do grego "pólis" (cidade) e refere-se à organização da vida coletiva, ao bem comum e à participação nas decisões da comunidade.', 1, 0),
(@p, 'Significa apenas corrupção e troca de favores secretos.', 0, 0),
(@p, 'Refere-se exclusivamente à vida isolada de eremitas nas montanhas.', 0, 0),
(@p, 'Designa o estudo técnico das rochas vulcânicas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito político fundamental à sua definição:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Estado', 1, 1, 'Instituição soberana que organiza juridicamente um povo em um território'),
(@p, 'Governo', 1, 2, 'Grupo transitório que administra o Estado em determinado período'),
(@p, 'Cidadania', 1, 3, 'Condição de titularidade de direitos civis, políticos e sociais e deveres públicos');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Segundo o pensador Max Weber, o Estado moderno caracteriza-se por deter o monopólio do uso legítimo da força física dentro de um determinado território.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características essenciais de um regime democrático:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Soberania popular, eleições livres e alternância no poder', 1, 0),
(@p, 'Estado de Direito (todos, inclusive os governantes, submetem-se à lei)', 1, 0),
(@p, 'Liberdade de expressão, imprensa livre e proteção às minorias', 1, 0),
(@p, 'Censura prévia e concentração total dos poderes em um único ditador', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual forma de governo nascida na Atenas Antiga significa etimologicamente "governo ou poder do povo" (demos + kratos)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Democracia', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene os três poderes do Estado moderno sistematizados por Montesquieu em "O Espírito das Leis":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Poder Legislativo (elabora e aprova as leis)', 1, 1),
(@p, 'Poder Executivo (administra o Estado e executa as leis)', 1, 2),
(@p, 'Poder Judiciário (julga conflitos e garante o cumprimento da Constituição)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a principal diferença entre "democracia direta" e "democracia representativa"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Na direta os cidadãos votam pessoalmente nas leis em assembleia; na representativa elegem representantes para decidir em seu nome.', 1, 0),
(@p, 'Na direta existem eleições; na representativa há um rei hereditário vitalício.', 0, 0),
(@p, 'Na direta apenas militares votam; na representativa ninguém vota.', 0, 0),
(@p, 'Não há diferença entre democracia direta e representativa.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A separação e harmonia entre os três poderes (sistema de freios e contrapesos) tem como objetivo impedir o abuso de poder e a tirania.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 104.2 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Política Antiga e Moderna: Platão, Aristóteles e Maquiavel', 2, 104);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual foi a grande ruptura promovida por Nicolau Maquiavel em "O Príncipe" (1513) na história da Filosofia Política?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Separou a política da moral religiosa tradicional, analisando a "verità effettuale" (a verdade efetiva de como o poder funciona na prática).', 1, 0),
(@p, 'Defendeu que o governante deve ser escolhido apenas por sorteio entre monges.', 0, 0),
(@p, 'Propôs o fim imediato de todos os Estados e leis.', 0, 0),
(@p, 'Escreveu um manual sobre como construir catedrais góticas.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito político clássico ou maquiaveliano ao seu significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Sofocracia (Platão)', 1, 1, 'Governo dos sábios (filósofos-reis) guiados pela razão e justiça'),
(@p, 'Virtù (Maquiavel)', 1, 2, 'Capacidade estratégica, energia e astúcia do governante para manter o Estado'),
(@p, 'Fortuna (Maquiavel)', 1, 3, 'O acaso, a sorte e as circunstâncias históricas imprevisíveis');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Na "Política", Aristóteles classificou como formas retas de governo (que visam o bem comum) a Monarquia, a Aristocracia e a Politeia (república constitucional).');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique as formas degeneradas de governo (que visam apenas o interesse próprio dos governantes) apontadas por Aristóteles:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Tirania (degeneração da monarquia)', 1, 0),
(@p, 'Oligarquia (degeneração da aristocracia)', 1, 0),
(@p, 'Demagogia / democracia extrema sem leis (degeneração da politeia)', 1, 0),
(@p, 'República constitucional voltada ao bem comum', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual conceito político criado por Nicolau Maquiavel designa a habilidade prática e estratégica do governante para dominar os imprevistos da Fortuna e conservar o Estado?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Virtù', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene as três classes sociais da cidade ideal na obra "A República" de Platão:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Produtores e artesãos (alma concupiscível - virtude da temperança)', 1, 1),
(@p, 'Guardiões ou guerreiros (alma irascível - virtude da coragem)', 1, 2),
(@p, 'Governantes filósofos (alma racional - virtude da sabedoria)', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Na obra "O Príncipe", Maquiavel afirma que se o governante não puder ser ao mesmo tempo amado e temido, é mais seguro ser temido do que amado, desde que:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Evite ser odiado pelo povo, não mexendo nos bens nem na honra dos cidadãos.', 1, 0),
(@p, 'Confisque todas as propriedades privadas todas as semanas.', 0, 0),
(@p, 'Declare guerra contra todos os países vizinhos sem exército.', 0, 0),
(@p, 'Elimine completamente o comércio e a agricultura.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Além de escrever O Príncipe, Maquiavel foi um fervoroso defensor das instituições republicanas nos "Discursos sobre a Primeira Década de Tito Lívio".');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 104.3 (Intermediária)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Os Contratualistas: Hobbes, Locke e Rousseau', 2, 104);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que explica o "Contrato Social" para os filósofos contratualistas modernos (Hobbes, Locke e Rousseau)?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A origem racional e legítima do Estado e das leis a partir de um pacto entre os indivíduos para sair do "estado de natureza".', 1, 0),
(@p, 'Um contrato comercial assinado entre empresas de navegação.', 0, 0),
(@p, 'A origem divina hereditária do poder absoluto dos reis.', 0, 0),
(@p, 'A proibição de qualquer lei escrita na sociedade.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada filósofo contratualista à sua visão do "estado de natureza" e do Estado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Thomas Hobbes (Leviatã)', 1, 1, 'Guerra de todos contra todos ("o homem é o lobo do homem"); Estado absolutista forte'),
(@p, 'John Locke', 1, 2, 'Direitos naturais à vida, liberdade e propriedade; Estado liberal limitado'),
(@p, 'Jean-Jacques Rousseau', 1, 3, 'O ser humano nasce bom ("bom selvagem") e a sociedade o corrompe; soberania popular');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para John Locke, se o governo violar os direitos naturais dos cidadãos (vida, liberdade e propriedade), o povo possui o legítimo direito de resistência e revolução.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique ideias centrais da filosofia política de Jean-Jacques Rousseau:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A propriedade privada originou a desigualdade civil entre os homens', 1, 0),
(@p, 'A soberania pertence inalienavelmente ao povo por meio da Vontade Geral', 1, 0),
(@p, 'A verdadeira liberdade consiste na obediência à lei que nós mesmos prescrevemos', 1, 0),
(@p, 'O poder absoluto deve pertencer sem limites a um monarca tirânico', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual nome recebeu a famosa obra de Thomas Hobbes publicada em 1651 que compara o Estado soberano a um gigantesco monstro bíblico criado para garantir a paz e a segurança?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Leviatã', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene o raciocínio contratualista de Thomas Hobbes para a criação do Estado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Estado de natureza sem leis marcado pelo medo da morte violenta e guerra de todos contra todos', 1, 1),
(@p, 'Reconhecimento racional da necessidade de paz para autopreservação', 1, 2),
(@p, 'Pacto social em que os indivíduos transferem seus direitos de força a um soberano', 1, 3),
(@p, 'Instituição do Estado (Leviatã) capaz de impor a ordem e o cumprimento dos pactos', 1, 4);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Qual é a diferença em Rousseau entre "vontade geral" e "vontade de todos"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'A vontade geral visa exclusivamente o interesse comum e o bem público; a vontade de todos é apenas a soma de interesses privados egoístas.', 1, 0),
(@p, 'A vontade geral é decidida apenas pelo rei; a vontade de todos pelos estrangeiros.', 0, 0),
(@p, 'Não existe diferença entre vontade geral e vontade de todos.', 0, 0),
(@p, 'A vontade geral proíbe qualquer participação popular.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: As ideias de John Locke sobre direitos naturais, tolerância e divisão de poderes inspiraram diretamente o Iluminismo e a Declaração de Independência dos Estados Unidos.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

-- Quiz 104.4 (Difícil)
INSERT INTO quizzes (nome, id_dificuldade, id_conteudo) VALUES ('Teorias da Justiça (John Rawls) e Totalitarismo (Hannah Arendt)', 3, 104);
SET @q = LAST_INSERT_ID();

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'O que significa o recurso hipotético do "Véu da Ignorância" criado por John Rawls em sua obra "Uma Teoria da Justiça"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Imaginar que escolhemos os princípios de justiça da sociedade sem saber qual será nossa classe social, gênero, etnia ou talentos naturais, garantindo imparcialidade.', 1, 0),
(@p, 'Proibir os cidadãos de estudarem história e filosofia nas escolas.', 0, 0),
(@p, 'Cobrir os olhos dos juízes durante todas as audiências judiciais.', 0, 0),
(@p, 'Defender que os mais ricos devem ter privilégios legais hereditários.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 6, 'Associe cada conceito político contemporâneo ao seu autor e significado:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem, texto_alvo) VALUES
(@p, 'Princípio da Diferença (John Rawls)', 1, 1, 'Desigualdades sociais só são justas se beneficiarem os menos favorecidos'),
(@p, 'Banalidade do Mal (Hannah Arendt)', 1, 2, 'Crimes monstruosos cometidos por burocratas comuns que abdicam de pensar criticamente'),
(@p, 'Direito a ter direitos (Hannah Arendt)', 1, 3, 'Pertencimento a uma comunidade política que garanta dignidade e cidadania');

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: Para Hannah Arendt, o poder político autêntico nasce da ação conjunta e do diálogo entre cidadãos livres na esfera pública, distinguindo-se da violência bruta.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 4, 'Identifique características dos regimes totalitários analisados por Hannah Arendt em "Origens do Totalitarismo":');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Ideologia única que pretende explicar totalmente a história e controlar a vida privada', 1, 0),
(@p, 'Uso sistemático do terror, da propaganda de massa e da polícia secreta', 1, 0),
(@p, 'Destruição do espaço público plural e fabricação de inimigos internos', 1, 0),
(@p, 'Pluralismo partidário, liberdade de imprensa e alternância democrática', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 2, 'Qual expressão famosa cunhada por Hannah Arendt ao acompanhar o julgamento de Adolf Eichmann descreve a incapacidade de refletir moralmente sobre as próprias ordens burocráticas?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES (@p, 'Banalidade do mal', 1, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 5, 'Ordene a prioridade léxica dos dois princípios da "Justiça como Equidade" de John Rawls:');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, '1º Princípio (Prioritário): Garantia igual das liberdades básicas fundamentais para todos', 1, 1),
(@p, '2º Princípio (Parte A): Igualdade equitativa de oportunidades no acesso a cargos e posições', 1, 2),
(@p, '2º Princípio (Parte B - Princípio da Diferença): Maior benefício aos membros menos avantajados da sociedade', 1, 3);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 1, 'Como Amartya Sen e Martha Nussbaum ampliam o debate contemporâneo sobre justiça social com a "Abordagem das Capacidades"?');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Avaliando a justiça não apenas pela renda monetária, mas pelas liberdades reais e capacidades concretas que cada pessoa tem para florescer (saúde, educação, participação).', 1, 0),
(@p, 'Reduzindo a justiça apenas ao crescimento do PIB sem olhar para a pobreza.', 0, 0),
(@p, 'Negando a importância da educação básica e da saúde pública.', 0, 0),
(@p, 'Retornando ao sistema feudal medieval.', 0, 0);

INSERT INTO perguntas (id_quiz, id_tipo, descricao) VALUES (@q, 3, 'Avalie: A filosofia política contemporânea demonstra que a democracia não é um dado automático, exigindo participação cidadã ativa, educação crítica e defesa permanente das instituições.');
SET @p = LAST_INSERT_ID();
INSERT INTO respostas (id_pergunta, descricao, certo, ordem) VALUES
(@p, 'Verdadeiro', 1, 0),
(@p, 'Falso', 0, 0);