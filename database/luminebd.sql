create database luminebd;
use luminebd;

create table escolaridade (

    id_escolaridade int primary key auto_increment,
    nome_escolaridade varchar(100)
);

insert into escolaridade (nome_escolaridade) values 
('Ensino médio completo'),
('1º ANO (ENSINO FUNDAMENTAL 1)'),
('2º ANO (ENSINO FUNDAMENTAL 1)'),
('3º ANO (ENSINO FUNDAMENTAL 1)'),
('4º ANO (ENSINO FUNDAMENTAL 1)'),
('5º ANO (ENSINO FUNDAMENTAL 1)'),
('6º ANO (ENSINO FUNDAMENTAL 2)'),
('7º ANO (ENSINO FUNDAMENTAL 2)'),
('8º ANO (ENSINO FUNDAMENTAL 2)'),
('9º ANO (ENSINO FUNDAMENTAL 2)'),
('1º ANO (ENSINO MÉDIO)'),
('2º ANO (ENSINO MÉDIO)'),
('3º ANO (ENSINO MÉDIO)');

CREATE TABLE usuario (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    senha VARCHAR(255),
    escolaridade_id INT DEFAULT NULL, -- Alterado de NOT NULL para DEFAULT NULL
    FOREIGN KEY (escolaridade_id) REFERENCES escolaridade (id_escolaridade),
    criacao DATE,
    foto_perfil LONGTEXT DEFAULT NULL
);

create table materia(
    id int primary key auto_increment,
    nome_materia varchar(255),
    imagem_materia longtext default null
);

-- ADIÇÃO DE MATÉRIAS COM IMAGENS (.webp)
INSERT INTO materia (id, nome_materia, imagem_materia) VALUES
    (1, 'Matemática', 'img/matematica.webp'),
    (2, 'Português', 'img/portugues.webp'),
    (3, 'História', 'img/historia.webp'),
    (4, 'Geografia', 'img/geografia.webp'),
    (5, 'Ciências da Natureza', 'img/cienciasdanatureza.webp'),
    (6, 'Física', 'img/fisica.webp'),
    (7, 'Química', 'img/quimica.webp'),
    (8, 'Biologia', 'img/biologia.webp'),
    (9, 'Inglês', 'img/ingles.webp'),
    (10, 'Artes', 'img/artes.webp'),
    (11, 'Educação Física', 'img/educacaofisica.webp'),
    (12, 'Filosofia', 'img/filosofia.webp'),
    (13, 'Sociologia', 'img/sociologia.webp');


create table conteudo(
    id int primary key auto_increment,
    nome varchar(255),
    id_materia int,
    imagem_conteudo longtext default null,
    foreign key (id_materia) references materia (id)
);

-- ADIÇÃO DE CONTEÚDOS COM IMAGENS MAPEADAS

    -- MATEMÁTICA (Sem imagens .webp na pasta)
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Adição e Subtração', 1, NULL),
        ('Multiplicação e Divisão', 1, NULL),
        ('Frações', 1, NULL),
        ('Números Decimais', 1, NULL),
        ('Porcentagem', 1, NULL),
        ('Regra de Três', 1, NULL),
        ('Equações do 1º grau', 1, NULL),
        ('Equações do 2º grau', 1, NULL),
        ('Geometria Plana', 1, NULL),
        ('Geometria Espacial', 1, NULL),
        ('Potenciação', 1, NULL),
        ('Radiciação', 1, NULL);

    -- PORTUGUÊS (Sem imagens .webp na pasta)
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Interpretação de Texto', 2, NULL),
        ('Ortografia', 2, NULL),
        ('Pontuação', 2, NULL),
        ('Classes Gramaticais', 2, NULL),
        ('Verbos', 2, NULL),
        ('Concordância Verbal', 2, NULL),
        ('Concordância Nominal', 2, NULL),
        ('Regência', 2, NULL),
        ('Crase', 2, NULL),
        ('Figuras de Linguagem', 2, NULL);

    -- HISTÓRIA
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Pré-História', 3, 'img/conteudos/pre-historia.webp'),
        ('Antiguidade', 3, 'img/conteudos/antiguidade.webp'),
        ('Idade Média', 3, 'img/conteudos/idademedia.webp'),
        ('Idade Moderna', 3, 'img/conteudos/idademoderna.webp'),
        ('Idade Contemporânea', 3, 'img/conteudos/idadecontemporanea.webp'),
        ('Brasil Colônia', 3, 'img/conteudos/brasilcolonia.webp'),
        ('Brasil Império', 3, 'img/conteudos/brasilimperio.webp'),
        ('Brasil República', 3, 'img/conteudos/brasilrepublica.webp'),
        ('Segunda Guerra Mundial', 3, 'img/conteudos/segundaguerramundial.webp'),
        ('Guerra Fria', 3, 'img/conteudos/guerrafria.webp');

    -- GEOGRAFIA
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Cartografia', 4, 'img/conteudos/cartografia.webp'),
        ('Climas', 4, 'img/conteudos/climas.webp'),
        ('Relevo', 4, 'img/conteudos/relevo.webp'),
        ('Vegetação', 4, 'img/conteudos/vegetacao.webp'),
        ('Hidrografia', 4, 'img/conteudos/hidrografia.webp'),
        ('Globalização', 4, 'img/conteudos/globalizacao.webp'),
        ('População', 4, 'img/conteudos/populacao.webp'),
        ('Urbanização', 4, 'img/conteudos/urbanizacao.webp'),
        ('Geopolítica', 4, 'img/conteudos/geopolitica.webp');

    -- CIÊNCIAS DA NATUREZA
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Sistema Solar', 5, 'img/conteudos/sistemasolar.webp'),
        ('Corpo Humano', 5, 'img/conteudos/corpohumano.webp'),
        ('Ecossistemas', 5, 'img/conteudos/ecossistemas.webp'),
        ('Cadeia Alimentar', 5, 'img/conteudos/cadeiaalimentar.webp'),
        ('Estados da Matéria', 5, 'img/conteudos/estadosdamateria.webp'),
        ('Energia', 5, 'img/conteudos/energia.webp'),
        ('Água', 5, 'img/conteudos/agua.webp');

    -- FÍSICA
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Cinemática', 6, 'img/conteudos/cinematica.webp'),
        ('Dinâmica', 6, 'img/conteudos/dinamica.webp'),
        ('Leis de Newton', 6, 'img/conteudos/leisdenewton.webp'),
        ('Trabalho e Energia', 6, 'img/conteudos/trabalhoeenergia.webp'),
        ('Termologia', 6, 'img/conteudos/termologia.webp'),
        ('Óptica', 6, 'img/conteudos/optica.webp'),
        ('Ondulatória', 6, 'img/conteudos/ondulatoria.webp'),
        ('Eletricidade', 6, 'img/conteudos/eletricidade.webp');

    -- QUÍMICA (Sem imagens .webp na pasta)
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Tabela Periódica', 7, NULL),
        ('Ligações Químicas', 7, NULL),
        ('Reações Químicas', 7, NULL),
        ('Estequiometria', 7, NULL),
        ('Soluções', 7, NULL),
        ('Ácidos e Bases', 7, NULL),
        ('Química Orgânica', 7, NULL);

    -- BIOLOGIA
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Célula', 8, 'img/conteudos/celula.webp'),
        ('Genética', 8, 'img/conteudos/genetica.webp'),
        ('Evolução', 8, 'img/conteudos/evolucao.webp'),
        ('Ecologia', 8, 'img/conteudos/ecologia.webp'),
        ('Sistema Digestório', 8, 'img/conteudos/sistemadigestorio.webp'),
        ('Sistema Respiratório', 8, 'img/conteudos/sistemarespiratorio.webp'),
        ('Sistema Nervoso', 8, 'img/conteudos/sistemanervoso.webp');

    -- INGLÊS
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Verbo To Be', 9, 'img/conteudos/verbotobe.webp'),
        ('Simple Present', 9, NULL),
        ('Simple Past', 9, NULL),
        ('Present Continuous', 9, NULL),
        ('Vocabulary', 9, 'img/conteudos/vocabulary.webp'),
        ('Reading', 9, 'img/conteudos/reading.webp'),
        ('Listening', 9, 'img/conteudos/listening.webp');

    -- ARTES
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('História da Arte', 10, 'img/conteudos/historiadaarte.webp'),
        ('Arte Rupestre', 10, 'img/conteudos/arterupestre.webp'),
        ('Arte Clássica', 10, 'img/conteudos/arteclassica.webp'),
        ('Renascimento', 10, 'img/conteudos/renascimento.webp'),
        ('Arte Moderna', 10, 'img/conteudos/artemoderna.webp'),
        ('Arte Contemporânea', 10, 'img/conteudos/artecontemporanea.webp'),
        ('Elementos das Artes Visuais', 10, 'img/conteudos/elementosdasartesvisuais.webp'),
        ('Cores e Formas', 10, 'img/conteudos/coreseformas.webp'),
        ('Teatro', 10, 'img/conteudos/teatro.webp'),
        ('Música', 10, 'img/conteudos/musica.webp');

    -- EDUCAÇÃO FÍSICA
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Esportes Coletivos', 11, 'img/conteudos/esportescoletivos.webp'),
        ('Esportes Individuais', 11, 'img/conteudos/esportesindividuais.webp'),
        ('Alongamento', 11, 'img/conteudos/alongamento.webp'),
        ('Aquecimento', 11, 'img/conteudos/aquecimento.webp'),
        ('Capacidades Físicas', 11, 'img/conteudos/capacidadesfisicas.webp'),
        ('Coordenação Motora', 11, 'img/conteudos/coordenacaomotora.webp'),
        ('Saúde e Qualidade de Vida', 11, 'img/conteudos/saudeequalidadedevida.webp'),
        ('Jogos e Brincadeiras', 11, 'img/conteudos/jogosebrincadeiras.webp'),
        ('Regras dos Esportes', 11, 'img/conteudos/regrasdosesportes.webp');

    -- FILOSOFIA (Sem imagens .webp na pasta)
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('Mito e Filosofia', 12, NULL),
        ('Filosofia Antiga (Pré-socráticos, Platão e Aristóteles)', 12, NULL),
        ('Filosofia Medieval (Patrística e Escolástica)', 12, NULL),
        ('Filosofia Moderna (Racionalismo e Empirismo)', 12, NULL),
        ('Filosofia Contemporânea', 12, NULL),
        ('Ética e Moral', 12, NULL),
        ('Teoria do Conhecimento (Epistemologia)', 12, NULL),
        ('Filosofia Política', 12, NULL);

    -- SOCIOLOGIA (Sem imagens .webp na pasta)
    INSERT INTO conteudo (nome, id_materia, imagem_conteudo) VALUES
        ('O que é Sociologia (Surgimento e Contexto)', 13, NULL),
        ('Émile Durkheim', 13, NULL),
        ('Max Weber', 13, NULL),
        ('Karl Marx', 13, NULL),
        ('Cultura e Ideologia', 13, NULL),
        ('Desigualdade Social e Estratificação', 13, NULL),
        ('Instituições Sociais (Família, Escola, Estado)', 13, NULL),
        ('Movimentos Sociais e Direitos Humanos', 13, NULL);

create table dificuldade (
    id int primary key auto_increment,
    dificuldade varchar(30)
);

-- ADIÇÃO DE DIFICULDADES --
    INSERT INTO dificuldade (id, dificuldade) VALUES
        (1, 'Fácil'),
        (2, 'Intermediária'),
        (3, 'Difícil');

create table quizzes(
    id int primary key auto_increment,
    nome varchar(255),
    id_dificuldade int,
    id_conteudo int,
    imagem_quiz longtext default null,
    foreign key (id_dificuldade) references dificuldade (id),
    foreign key (id_conteudo) references conteudo (id)
);

create table tipos_perguntas(
    id int primary key auto_increment,
    nome_tipo varchar (255)
);

-- ADIÇÃO DE TIPOS DE PERGUNTAS --

    INSERT INTO tipos_perguntas (id, nome_tipo) VALUES
        (1, 'Multipla escolha (1 correta)'),
        (2, 'Texto'),
        (3, 'Verdadeiro/Falso'),
        (4, 'Multipla escolha (várias corretas)'),
        (5, 'Ordenar itens'),
        (6, 'Arrastar e soltar');

create table perguntas(
    id int primary key auto_increment,
    id_quiz int,
    id_tipo int,
    imagem_perguntas longtext default null,
    foreign key (id_tipo) references tipos_perguntas (id),
    foreign key (id_quiz) references quizzes (id),
    descricao longtext default null
);

CREATE TABLE respostas (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_pergunta INT,
    descricao VARCHAR(255),
    certo BOOLEAN,
    ordem INT DEFAULT 0, -- Campo crucial para ordenação e arrastar/soltar
    FOREIGN KEY (id_pergunta) REFERENCES perguntas(id),
    texto_alvo VARCHAR(255) DEFAULT NULL
);

create table tentativas(
    id int primary key auto_increment,
    id_quiz int,
    foreign key (id_quiz) references quizzes (id),
    id_usuario int,
    foreign key (id_usuario) references usuario (id)
        ON DELETE CASCADE,
	acertos int,
    total_questoes int,
    tempo time,
    data_resolucao DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS configuracoes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT UNIQUE,
    tema_escuro TINYINT DEFAULT 0, -- 0: claro, 1: escuro
    tamanho_fonte TINYINT DEFAULT 2, -- 1: pequena, 2: média, 3: grande
    cores_materia JSON DEFAULT (JSON_OBJECT(
        'bg_claro', '#FFFFFF',
        'bg_escuro', '#121212',
        'matematica', '#3498db',
        'portugues', '#e74c3c',
        'historia', '#f1c40f',
        'geografia', '#2ecc71',
        'biologia', '#27ae60',
        'fisica', '#8e44ad',
        'quimica', '#d35400',
        'ingles', '#2980b9',
        'artes', '#e67e22',
        'filosofia', '#7f8c8d',
        'sociologia', '#16a085',
        'educacao_fisica', '#c0392b',
        'literatura', '#9b59b6'
    )),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id) ON DELETE CASCADE
);

CREATE TABLE recuperacao_senha (
    id int AUTO_INCREMENT primary key,
    email varchar(255) NOT NULL,
    token varchar(255) NOT NULL,
    expira_em DATETIME NOT NULL
);

CREATE TABLE feedbacks_usuarios (
    id int AUTO_INCREMENT primary key,
    id_usuario int,
    foreign key (id_usuario) references usuario (id)
        ON DELETE CASCADE,
    mensagem text,
    data_envio datetime default current_timestamp
);

CREATE TABLE avaliacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    id_quiz INT,
    nota INT NOT NULL,
    data_envio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
        ON DELETE CASCADE,
    FOREIGN KEY (id_quiz) REFERENCES quizzes(id),
    UNIQUE KEY uq_usuario_quiz (id_usuario, id_quiz)
);

CREATE TABLE conteudo_escolaridade (
    id_conteudo INT,
    id_escolaridade INT,
    PRIMARY KEY (id_conteudo, id_escolaridade),
    FOREIGN KEY (id_conteudo) REFERENCES conteudo(id) ON DELETE CASCADE,
    FOREIGN KEY (id_escolaridade) REFERENCES escolaridade(id_escolaridade) ON DELETE CASCADE
);

-- =========================================================================
-- 1. ENSINO FUNDAMENTAL 1 (IDs de escolaridade: 2, 3, 4, 5, 6)
-- Conteúdos básicos de Matemática, Português, Ciências, Artes e Ed. Física
-- =========================================================================

-- Matemática: Adição e Subtração (id: 1), Multiplicação e Divisão (id: 2), Frações (id: 3), Números Decimais (id: 4)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (1, 2, 3, 4) AND e.id_escolaridade IN (2, 3, 4, 5, 6);

-- Português: Interpretação de Texto (id: 13), Ortografia (id: 14), Pontuação (id: 15)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (13, 14, 15) AND e.id_escolaridade IN (2, 3, 4, 5, 6);

-- Ciências da Natureza: Todo o bloco (ids: 43 a 49)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id BETWEEN 43 AND 49 AND e.id_escolaridade IN (2, 3, 4, 5, 6);

-- Artes & Ed. Física básicos (ids: 65, 71, 72, 75, 82)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (65, 71, 72, 75, 82) AND e.id_escolaridade IN (2, 3, 4, 5, 6);


-- =========================================================================
-- 2. ENSINO FUNDAMENTAL 2 (IDs de escolaridade: 7, 8, 9, 10)
-- Conteúdos intermediários de todas as matérias de base
-- =========================================================================

-- Matemática: Porcentagem (5), Regra de Três (6), Equações 1º grau (7), Geometria Plana (9), Potenciação (11), Radiciação (12)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (5, 6, 7, 9, 11, 12) AND e.id_escolaridade IN (7, 8, 9, 10);

-- Português: Classes Gramaticais (16), Verbos (17), Concordâncias (18, 19), Figuras de Linguagem (22)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (16, 17, 18, 19, 22) AND e.id_escolaridade IN (7, 8, 9, 10);

-- História & Geografia: Pré-História à Idade Média (23-25), Brasil Colónia/Império (28, 29), Cartografia, Climas, Relevo, População (33-36, 39)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (23, 24, 25, 28, 29, 33, 34, 35, 36, 39) AND e.id_escolaridade IN (7, 8, 9, 10);

-- Inglês inicial: Verbo To Be (58), Simple Present (59), Vocabulary (62)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (58, 59, 62) AND e.id_escolaridade IN (7, 8, 9, 10);


-- =========================================================================
-- 3. ENSINO MÉDIO E MÉDIO COMPLETO (IDs de escolaridade: 1, 11, 12, 13)
-- Conteúdos avançados, Física, Química, Biologia, Filosofia e Sociologia
-- =========================================================================

-- Matemática Avançada: Equações do 2º grau (8), Geometria Espacial (10) + Revisão do resto
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (8, 10, 5, 6, 9) AND e.id_escolaridade IN (1, 11, 12, 13);

-- Português Avançado: Regência (20), Crase (21) + Revisões textuais
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (20, 21, 13, 22) AND e.id_escolaridade IN (1, 11, 12, 13);

-- História & Geografia Avançadas: Idade Moderna ao séc. XXI, Guerras Mundiais, Globalização e Geopolítica (26, 27, 30, 31, 32, 38, 40, 41)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id IN (26, 27, 30, 31, 32, 38, 40, 41) AND e.id_escolaridade IN (1, 11, 12, 13);

-- Física (ids: 50 a 57) e Química (ids: 65 a 71 - ajustados conforme a ordem da tabela de conteúdos)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id_materia IN (6, 7) AND e.id_escolaridade IN (1, 11, 12, 13);

-- Biologia (ids: 51 a 57 na tabela conteudo)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id_materia = 8 AND e.id_escolaridade IN (1, 11, 12, 13);

-- Inglês Completo (id_materia = 9)
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id_materia = 9 AND e.id_escolaridade IN (1, 11, 12, 13);

-- Filosofia e Sociologia Completas (id_materia = 12 e 13)
-- Isso inclui o Sócrates antigo (id 83), Teoria Clássica (id 84) e todos os novos conteúdos gerados acima
    INSERT INTO conteudo_escolaridade (id_conteudo, id_escolaridade)
    SELECT c.id, e.id_escolaridade 
    FROM conteudo c, escolaridade e 
    WHERE c.id_materia IN (12, 13) AND e.id_escolaridade IN (1, 11, 12, 13);

