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
    escolaridade_id INT NULL, -- Alterado para NULL para permitir cadastro sem escolaridade inicial
    FOREIGN KEY (escolaridade_id) REFERENCES escolaridade (id_escolaridade),
    criacao DATE,
    foto_perfil LONGTEXT DEFAULT NULL
);

create table materia(
    id int primary key auto_increment,
    nome_materia varchar(255),
    imagem_materia longtext default null
);

insert into materia (nome_materia) values 
('Matemática'),
('Português'),
('História'),
('Geografia'),
('Ciências da Natureza'),
('Física'),
('Química'),
('Biologia'),
('Inglês'),
('Artes'),
('Educação Física'),
('Filosofia'),
('Sociologia');


create table conteudo(
    id int primary key auto_increment,
    nome varchar(255),
    id_materia int,
    imagem_conteudo longtext default null,
    foreign key (id_materia) references materia (id)
);

-- ADIÇÃO DE CONTEÚDOS

    -- MATEMÁTICA
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Adição e Subtração', 1),
        ('Multiplicação e Divisão', 1),
        ('Frações', 1),
        ('Números Decimais', 1),
        ('Porcentagem', 1),
        ('Regra de Três', 1),
        ('Equações do 1º grau', 1),
        ('Equações do 2º grau', 1),
        ('Geometria Plana', 1),
        ('Geometria Espacial', 1),
        ('Potenciação', 1),
        ('Radiciação', 1);

    -- PORTUGUÊS

    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Interpretação de Texto', 2),
        ('Ortografia', 2),
        ('Pontuação', 2),
        ('Classes Gramaticais', 2),
        ('Verbos', 2),
        ('Concordância Verbal', 2),
        ('Concordância Nominal', 2),
        ('Regência', 2),
        ('Crase', 2),
        ('Figuras de Linguagem', 2);

    -- HISTÓRIA
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Pré-História', 3),
        ('Antiguidade', 3),
        ('Idade Média', 3),
        ('Idade Moderna', 3),
        ('Idade Contemporânea', 3),
        ('Brasil Colônia', 3),
        ('Brasil Império', 3),
        ('Brasil República', 3),
        ('Segunda Guerra Mundial', 3),
        ('Guerra Fria', 3);

    -- GEOGRAFIA
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Cartografia', 4),
        ('Climas', 4),
        ('Relevo', 4),
        ('Vegetação', 4),
        ('Hidrografia', 4),
        ('Globalização', 4),
        ('População', 4),
        ('Urbanização', 4),
        ('Geopolítica', 4);

    -- CIÊNCIAS DA NATUREZA
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Sistema Solar', 5),
        ('Corpo Humano', 5),
        ('Ecossistemas', 5),
        ('Cadeia Alimentar', 5),
        ('Estados da Matéria', 5),
        ('Energia', 5),
        ('Água', 5);

    -- FÍSICA

    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Cinemática', 6),
        ('Dinâmica', 6),
        ('Leis de Newton', 6),
        ('Trabalho e Energia', 6),
        ('Termologia', 6),
        ('Óptica', 6),
        ('Ondulatória', 6),
        ('Eletricidade', 6);

    -- QUÍMICA
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Tabela Periódica', 7),
        ('Ligações Químicas', 7),
        ('Reações Químicas', 7),
        ('Estequiometria', 7),
        ('Soluções', 7),
        ('Ácidos e Bases', 7),
        ('Química Orgânica', 7);

    -- BIOLOGIA

    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Célula', 8),
        ('Genética', 8),
        ('Evolução', 8),
        ('Ecologia', 8),
        ('Sistema Digestório', 8),
        ('Sistema Respiratório', 8),
        ('Sistema Nervoso', 8);

    -- INGLÊS

    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Verbo To Be', 9),
        ('Simple Present', 9),
        ('Simple Past', 9),
        ('Present Continuous', 9),
        ('Vocabulary', 9),
        ('Reading', 9),
        ('Listening', 9);
        
    -- ARTES
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('História da Arte', 10),
        ('Arte Rupestre', 10),
        ('Arte Clássica', 10),
        ('Renascimento', 10),
        ('Arte Moderna', 10),
        ('Arte Contemporânea', 10),
        ('Elementos das Artes Visuais', 10),
        ('Cores e Formas', 10),
        ('Teatro', 10),
        ('Música', 10);
        
    -- EDUCAÇÃO FÍSICA
        
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Esportes Coletivos', 11),
        ('Esportes Individuais', 11),
        ('Alongamento', 11),
        ('Aquecimento', 11),
        ('Capacidades Físicas', 11),
        ('Coordenação Motora', 11),
        ('Saúde e Qualidade de Vida', 11),
        ('Jogos e Brincadeiras', 11),
        ('Regras dos Esportes', 11);
        
    -- FILOSOFIA

    INSERT INTO conteudo (nome, id_materia) VALUES
        ('Mito e Filosofia', 12),
        ('Filosofia Antiga (Pré-socráticos, Platão e Aristóteles)', 12),
        ('Filosofia Medieval (Patrística e Escolástica)', 12),
        ('Filosofia Moderna (Racionalismo e Empirismo)', 12),
        ('Filosofia Contemporânea', 12),
        ('Ética e Moral', 12),
        ('Teoria do Conhecimento (Epistemologia)', 12),
        ('Filosofia Política', 12);

    -- SOCIOLOGIA
    INSERT INTO conteudo (nome, id_materia) VALUES
        ('O que é Sociologia (Surgimento e Contexto)', 13),
        ('Émile Durkheim', 13),
        ('Max Weber', 13),
        ('Karl Marx', 13),
        ('Cultura e Ideologia', 13),
        ('Desigualdade Social e Estratificação', 13),
        ('Instituições Sociais (Família, Escola, Estado)', 13),
        ('Movimentos Sociais e Direitos Humanos', 13);

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
    descricao varchar(255)
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
    FOREIGN KEY (id_quiz) REFERENCES quizzes(id)
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

