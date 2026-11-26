USE luminebd;

-- =========================================================================
-- 1. INSERÇÃO DE 30 ESTUDANTES (COM ESCOLARIDADES E DATAS SEMANAIS VARIADAS)
-- =========================================================================
-- Nota: Senhas simuladas em hash padrão bcrypt ($2y$10$...)
INSERT INTO usuario (id, nome, email, senha, escolaridade_id, criacao, foto_perfil) VALUES
(1, 'Lucas Almeida Silva', 'lucas.almeida@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 11, '2026-09-02', NULL),
(2, 'Mariana Costa Oliveira', 'mariana.costa@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 12, '2026-09-04', NULL),
(3, 'Pedro Henrique Santos', 'pedro.santos@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 7, '2026-09-08', NULL),
(4, 'Ana Clara Rodrigues', 'ana.rodrigues@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 13, '2026-09-10', NULL),
(5, 'Gabriel Ferreira Lima', 'gabriel.lima@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 9, '2026-09-14', NULL),
(6, 'Beatriz Souza Martins', 'beatriz.martins@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 1, '2026-09-16', NULL),
(7, 'Matheus Pereira Gomes', 'matheus.gomes@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 8, '2026-09-18', NULL),
(8, 'Julia Barbosa Ribeiro', 'julia.ribeiro@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 10, '2026-09-21', NULL),
(9, 'Rafael Carvalho Dias', 'rafael.dias@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 12, '2026-09-24', NULL),
(10, 'Larissa Mendes Rocha', 'larissa.rocha@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 11, '2026-09-28', NULL),
(11, 'Gustavo Moreira Alves', 'gustavo.alves@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 6, '2026-09-30', NULL),
(12, 'Camila Nascimento Pinto', 'camila.pinto@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 13, '2026-10-02', NULL),
(13, 'Felipe Araujo Cardoso', 'felipe.cardoso@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 1, '2026-10-05', NULL),
(14, 'Isabela Teixeira Castro', 'isabela.castro@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 9, '2026-10-08', NULL),
(15, 'Bruno Fernandes Correia', 'bruno.correia@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 7, '2026-10-12', NULL),
(16, 'Amanda Vieira Melo', 'amanda.melo@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 11, '2026-10-14', NULL),
(17, 'Thiago Monteiro Azevedo', 'thiago.azevedo@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 12, '2026-10-16', NULL),
(18, 'Leticia Cavalcanti Nunes', 'leticia.nunes@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 8, '2026-10-19', NULL),
(19, 'Vinicius Cunha Barros', 'vinicius.barros@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 10, '2026-10-22', NULL),
(20, 'Fernanda Freitas Lopes', 'fernanda.lopes@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 13, '2026-10-26', NULL),
(21, 'Leonardo Duarte Moura', 'leonardo.moura@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 5, '2026-10-28', NULL),
(22, 'Carolina Ramos Pires', 'carolina.pires@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 11, '2026-11-02', NULL),
(23, 'Rodrigo Batista Campos', 'rodrigo.campos@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 1, '2026-11-04', NULL),
(24, 'Sophia Farias Machado', 'sophia.machado@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 9, '2026-11-06', NULL),
(25, 'Eduardo Nogueira Tavares', 'eduardo.tavares@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 12, '2026-11-09', NULL),
(26, 'Bianca Siqueira Neves', 'bianca.neves@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 10, '2026-11-11', NULL),
(27, 'Henrique Rezende Aguiar', 'henrique.aguiar@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 7, '2026-11-13', NULL),
(28, 'Natalia Borges Peixoto', 'natalia.peixoto@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 13, '2026-11-17', NULL),
(29, 'Caio Guimarães Soares', 'caio.soares@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 8, '2026-11-19', NULL),
(30, 'Yasmin Paiva Miranda', 'yasmin.miranda@email.com', '$2y$10$abcdefghijklmnopqrstuv1234567890abcdef', 4, '2026-11-23', NULL);

-- Inicializa configurações padrão para os 30 usuários
INSERT INTO configuracoes (id_usuario, tema_escuro, tamanho_fonte)
SELECT id, (id % 2), 2 FROM usuario WHERE id BETWEEN 1 AND 30;


-- =========================================================================
-- 2. INSERÇÃO DE TENTATIVAS DE QUIZZES (BASEADAS NOS QUIZZES DE TUDO.SQL)
-- =========================================================================
-- Nota: Todos os quizzes do arquivo Tudo.sql possuem 8 perguntas.

INSERT INTO tentativas (id_quiz, id_usuario, acertos, total_questoes, tempo, data_resolucao) VALUES
-- Semana 1 e 2 (Setembro)
((SELECT id FROM quizzes WHERE nome = 'Organização da Tabela Periódica: Períodos, Grupos e Metais' LIMIT 1), 1, 7, 8, '00:04:15', '2026-09-03 14:20:00'),
((SELECT id FROM quizzes WHERE nome = 'Regra do Octeto e Ligação Iônica' LIMIT 1), 1, 6, 8, '00:05:10', '2026-09-05 16:00:00'),
((SELECT id FROM quizzes WHERE nome = 'Principais Famílias Químicas: Alcalinos, Halogênios e Gases Nobres' LIMIT 1), 2, 8, 8, '00:03:50', '2026-09-05 10:15:00'),
((SELECT id FROM quizzes WHERE nome = 'Hominização, Paleolítico e Domínio do Fogo' LIMIT 1), 3, 6, 8, '00:06:12', '2026-09-09 15:30:00'),
((SELECT id FROM quizzes WHERE nome = 'Verbo To Be no Presente: Afirmativa, Negativa e Interrogativa' LIMIT 1), 3, 7, 8, '00:04:05', '2026-09-10 11:00:00'),
((SELECT id FROM quizzes WHERE nome = 'Propriedades Periódicas: Raio Atômico, Eletronegatividade e Ionização' LIMIT 1), 4, 8, 8, '00:07:45', '2026-09-11 19:10:00'),
((SELECT id FROM quizzes WHERE nome = 'Postulados de Kekulé, Classificação do Carbono e Cadeias Carbônicas' LIMIT 1), 4, 7, 8, '00:05:30', '2026-09-12 20:00:00'),

-- Semana 3 e 4 (Setembro)
((SELECT id FROM quizzes WHERE nome = 'Simple Present: Rotinas, Hábitos e Verdades Universais' LIMIT 1), 5, 5, 8, '00:05:40', '2026-09-15 14:45:00'),
((SELECT id FROM quizzes WHERE nome = 'Revolução Neolítica, Sedentarização e Primeiras Aldeias' LIMIT 1), 5, 6, 8, '00:06:20', '2026-09-16 17:10:00'),
((SELECT id FROM quizzes WHERE nome = 'Oxirredução (Redox), Número de Oxidação (Nox) e Cinética' LIMIT 1), 6, 7, 8, '00:08:15', '2026-09-17 09:30:00'),
((SELECT id FROM quizzes WHERE nome = 'Inferência Textual, Ironia e Interpretação Estilo ENEM' LIMIT 1), 6, 8, 8, '00:09:00', '2026-09-18 10:20:00'),
((SELECT id FROM quizzes WHERE nome = 'Simple Past: Ações Concluídas e Verbos Regulares (-ed)' LIMIT 1), 7, 4, 8, '00:06:50', '2026-09-19 15:00:00'),
((SELECT id FROM quizzes WHERE nome = 'Idade dos Metais e o Surgimento das Primeiras Cidades e Estados' LIMIT 1), 8, 7, 8, '00:05:18', '2026-09-22 18:40:00'),
((SELECT id FROM quizzes WHERE nome = 'Present Continuous: Ações em Andamento no Momento da Fala' LIMIT 1), 8, 8, 8, '00:03:55', '2026-09-23 19:05:00'),
((SELECT id FROM quizzes WHERE nome = 'Conceito de Arrhenius, Escala de pH e Indicadores' LIMIT 1), 9, 6, 8, '00:04:50', '2026-09-25 13:15:00'),
((SELECT id FROM quizzes WHERE nome = 'Hidrocarbonetos e Nomenclatura IUPAC' LIMIT 1), 10, 7, 8, '00:06:33', '2026-09-29 21:00:00'),

-- Outubro
((SELECT id FROM quizzes WHERE nome = 'Verbo To Be no Presente: Afirmativa, Negativa e Interrogativa' LIMIT 1), 11, 6, 8, '00:05:12', '2026-10-01 16:20:00'),
((SELECT id FROM quizzes WHERE nome = 'Reagente Limitante, Excesso, Pureza e Rendimento' LIMIT 1), 12, 5, 8, '00:09:40', '2026-10-03 11:30:00'),
((SELECT id FROM quizzes WHERE nome = 'Mistura de Soluções e Propriedades Coligativas' LIMIT 1), 13, 7, 8, '00:08:05', '2026-10-06 14:50:00'),
((SELECT id FROM quizzes WHERE nome = 'False Friends (Falsos Cognatos) Mais Cobrados em Provas' LIMIT 1), 14, 8, 8, '00:04:10', '2026-10-09 17:25:00'),
((SELECT id FROM quizzes WHERE nome = 'Pré-História Americana e Povos Originários do Brasil' LIMIT 1), 15, 6, 8, '00:07:15', '2026-10-13 10:40:00'),
((SELECT id FROM quizzes WHERE nome = 'Fenômenos Físicos vs. Químicos e Evidências de Reação' LIMIT 1), 16, 8, 8, '00:03:40', '2026-10-15 15:10:00'),
((SELECT id FROM quizzes WHERE nome = 'Massa Molecular, Massa Molar e Conceito de Mol' LIMIT 1), 17, 7, 8, '00:05:55', '2026-10-17 18:00:00'),
((SELECT id FROM quizzes WHERE nome = 'Civilizações Hidráulicas: Mesopotâmia e Egito Antigo' LIMIT 1), 18, 7, 8, '00:05:02', '2026-10-20 14:15:00'),
((SELECT id FROM quizzes WHERE nome = 'Phrasal Verbs Essenciais no Cotidiano' LIMIT 1), 19, 5, 8, '00:06:18', '2026-10-23 19:45:00'),
((SELECT id FROM quizzes WHERE nome = 'Isomeria Plana e Espacial e Principais Reações Orgânicas' LIMIT 1), 20, 8, 8, '00:08:30', '2026-10-27 20:30:00'),
((SELECT id FROM quizzes WHERE nome = 'Vocabulary: Cotidiano, Família, Tempo e Lugares da Cidade' LIMIT 1), 21, 7, 8, '00:04:45', '2026-10-29 15:50:00'),

-- Novembro
((SELECT id FROM quizzes WHERE nome = 'Soluto, Solvente e Classificação quanto à Solubilidade' LIMIT 1), 22, 6, 8, '00:05:10', '2026-11-03 11:10:00'),
((SELECT id FROM quizzes WHERE nome = 'Connected Speech, Contrações Informais e Entonação Nativa' LIMIT 1), 23, 7, 8, '00:06:00', '2026-11-05 16:40:00'),
((SELECT id FROM quizzes WHERE nome = 'Estratégias de Leitura: Cognatos, Palavras-Chave e Skimming' LIMIT 1), 24, 8, 8, '00:04:22', '2026-11-07 09:50:00'),
((SELECT id FROM quizzes WHERE nome = 'Teorias de Brønsted-Lowry e Lewis, Força Ácida e Cálculo de pH' LIMIT 1), 25, 6, 8, '00:08:50', '2026-11-10 14:35:00'),
((SELECT id FROM quizzes WHERE nome = 'Conectivos Lógicos (Linking Words): Contraste, Causa e Consequência' LIMIT 1), 26, 7, 8, '00:05:45', '2026-11-12 17:00:00'),
((SELECT id FROM quizzes WHERE nome = 'Hominização, Paleolítico e Domínio do Fogo' LIMIT 1), 27, 5, 8, '00:06:10', '2026-11-14 13:20:00'),
((SELECT id FROM quizzes WHERE nome = 'Funções Orgânicas Oxigenadas e Nitrogenadas no Cotidiano' LIMIT 1), 28, 8, 8, '00:05:25', '2026-11-18 21:15:00'),
((SELECT id FROM quizzes WHERE nome = 'Verbos Irregulares Essenciais no Simple Past' LIMIT 1), 29, 6, 8, '00:06:05', '2026-11-20 16:10:00'),
((SELECT id FROM quizzes WHERE nome = 'Vocabulary: Cotidiano, Família, Tempo e Lugares da Cidade' LIMIT 1), 30, 8, 8, '00:04:30', '2026-11-24 14:00:00');


-- =========================================================================
-- 3. INSERÇÃO DE AVALIAÇÕES VARIADAS (NOTAS DE 1 A 5)
-- =========================================================================
-- Respeitando a restrição UNIQUE KEY uq_usuario_quiz (id_usuario, id_quiz)

INSERT INTO avaliacoes (id_usuario, id_quiz, nota, data_envio) VALUES
(1, (SELECT id FROM quizzes WHERE nome = 'Organização da Tabela Periódica: Períodos, Grupos e Metais' LIMIT 1), 5, '2026-09-03 14:21:00'),
(1, (SELECT id FROM quizzes WHERE nome = 'Regra do Octeto e Ligação Iônica' LIMIT 1), 4, '2026-09-05 16:02:00'),
(2, (SELECT id FROM quizzes WHERE nome = 'Principais Famílias Químicas: Alcalinos, Halogênios e Gases Nobres' LIMIT 1), 5, '2026-09-05 10:16:00'),
(3, (SELECT id FROM quizzes WHERE nome = 'Hominização, Paleolítico e Domínio do Fogo' LIMIT 1), 4, '2026-09-09 15:31:00'),
(4, (SELECT id FROM quizzes WHERE nome = 'Propriedades Periódicas: Raio Atômico, Eletronegatividade e Ionização' LIMIT 1), 5, '2026-09-11 19:12:00'),
(5, (SELECT id FROM quizzes WHERE nome = 'Simple Present: Rotinas, Hábitos e Verdades Universais' LIMIT 1), 3, '2026-09-15 14:46:00'),
(6, (SELECT id FROM quizzes WHERE nome = 'Oxirredução (Redox), Número de Oxidação (Nox) e Cinética' LIMIT 1), 5, '2026-09-17 09:32:00'),
(7, (SELECT id FROM quizzes WHERE nome = 'Simple Past: Ações Concluídas e Verbos Regulares (-ed)' LIMIT 1), 2, '2026-09-19 15:02:00'),
(8, (SELECT id FROM quizzes WHERE nome = 'Idade dos Metais e o Surgimento das Primeiras Cidades e Estados' LIMIT 1), 4, '2026-09-22 18:41:00'),
(9, (SELECT id FROM quizzes WHERE nome = 'Conceito de Arrhenius, Escala de pH e Indicadores' LIMIT 1), 4, '2026-09-25 13:16:00'),
(10, (SELECT id FROM quizzes WHERE nome = 'Hidrocarbonetos e Nomenclatura IUPAC' LIMIT 1), 5, '2026-09-29 21:02:00'),
(11, (SELECT id FROM quizzes WHERE nome = 'Verbo To Be no Presente: Afirmativa, Negativa e Interrogativa' LIMIT 1), 4, '2026-10-01 16:22:00'),
(12, (SELECT id FROM quizzes WHERE nome = 'Reagente Limitante, Excesso, Pureza e Rendimento' LIMIT 1), 3, '2026-10-03 11:32:00'),
(13, (SELECT id FROM quizzes WHERE nome = 'Mistura de Soluções e Propriedades Coligativas' LIMIT 1), 5, '2026-10-06 14:51:00'),
(14, (SELECT id FROM quizzes WHERE nome = 'False Friends (Falsos Cognatos) Mais Cobrados em Provas' LIMIT 1), 5, '2026-10-09 17:26:00'),
(15, (SELECT id FROM quizzes WHERE nome = 'Pré-História Americana e Povos Originários do Brasil' LIMIT 1), 4, '2026-10-13 10:42:00'),
(16, (SELECT id FROM quizzes WHERE nome = 'Fenômenos Físicos vs. Químicos e Evidências de Reação' LIMIT 1), 5, '2026-10-15 15:11:00'),
(17, (SELECT id FROM quizzes WHERE nome = 'Massa Molecular, Massa Molar e Conceito de Mol' LIMIT 1), 4, '2026-10-17 18:02:00'),
(18, (SELECT id FROM quizzes WHERE nome = 'Civilizações Hidráulicas: Mesopotâmia e Egito Antigo' LIMIT 1), 5, '2026-10-20 14:16:00'),
(19, (SELECT id FROM quizzes WHERE nome = 'Phrasal Verbs Essenciais no Cotidiano' LIMIT 1), 3, '2026-10-23 19:46:00'),
(20, (SELECT id FROM quizzes WHERE nome = 'Isomeria Plana e Espacial e Principais Reações Orgânicas' LIMIT 1), 5, '2026-10-27 20:32:00'),
(21, (SELECT id FROM quizzes WHERE nome = 'Vocabulary: Cotidiano, Família, Tempo e Lugares da Cidade' LIMIT 1), 4, '2026-10-29 15:52:00'),
(22, (SELECT id FROM quizzes WHERE nome = 'Soluto, Solvente e Classificação quanto à Solubilidade' LIMIT 1), 3, '2026-11-03 11:12:00'),
(23, (SELECT id FROM quizzes WHERE nome = 'Connected Speech, Contrações Informais e Entonação Nativa' LIMIT 1), 5, '2026-11-05 16:41:00'),
(24, (SELECT id FROM quizzes WHERE nome = 'Estratégias de Leitura: Cognatos, Palavras-Chave e Skimming' LIMIT 1), 5, '2026-11-07 09:51:00'),
(25, (SELECT id FROM quizzes WHERE nome = 'Teorias de Brønsted-Lowry e Lewis, Força Ácida e Cálculo de pH' LIMIT 1), 4, '2026-11-10 14:37:00'),
(26, (SELECT id FROM quizzes WHERE nome = 'Conectivos Lógicos (Linking Words): Contraste, Causa e Consequência' LIMIT 1), 4, '2026-11-12 17:02:00'),
(27, (SELECT id FROM quizzes WHERE nome = 'Hominização, Paleolítico e Domínio do Fogo' LIMIT 1), 1, '2026-11-14 13:22:00'),
(28, (SELECT id FROM quizzes WHERE nome = 'Funções Orgânicas Oxigenadas e Nitrogenadas no Cotidiano' LIMIT 1), 5, '2026-11-18 21:16:00'),
(29, (SELECT id FROM quizzes WHERE nome = 'Verbos Irregulares Essenciais no Simple Past' LIMIT 1), 3, '2026-11-20 16:12:00'),
(30, (SELECT id FROM quizzes WHERE nome = 'Vocabulary: Cotidiano, Família, Tempo e Lugares da Cidade' LIMIT 1), 5, '2026-11-24 14:01:00');