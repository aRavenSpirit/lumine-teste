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

create table usuario(
    id int primary key auto_increment,
    nome varchar(255) not null,
    email varchar (255) not null unique,
    senha varchar(255),
    escolaridade_id int not null,
    foreign key (escolaridade_id) references escolaridade (id_escolaridade),
    criacao date,
    foto_perfil longtext default null
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
('Educação Física');


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
    foreign key (id_usuario) references usuario (id),
	acertos int,
    total_questoes int,
    tempo time
);

create table configuracoes (
    id int primary key auto_increment,
    id_usuario int,
    foreign key (id_usuario) references usuario (id),
    tema_escuro TINYINT default 0, -- 0: claro, 1: escuro
    tamanho_fonte TINYINT default 2, -- 1: pequena, 2: média, 3: grande
    cores_materia json default (json_object(
        -- cores do background
        'bg_claro', '#FFFFFF',
        'bg_escuro', '#121212',

        -- cores das matérias
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
    ))
);

    CREATE TABLE recuperacao_senha (
    id int AUTO_INCREMENT primary key,
    email varchar(255) NOT NULL,
    token varchar(255) NOT NULL,
    expira_em DATETIME NOT NULL
);

-- Exemplo caso o usuário quiser alterar a cor do fundo
    UPDATE configuracoes 
    SET tema_escuro = 1 
    WHERE id_usuario = 1;

-- Exemplo caso o usuário quiser alterar a fonte
    UPDATE configuracoes 
    SET tamanho_fonte = 3 
    WHERE id_usuario = 1;

-- Exemplo caso o usuário quiser alterar a cor das matérias
    UPDATE configuracoes 
    SET cores_materias = JSON_SET(cores_materias, '$.matematica', '#6200ee') 
    WHERE usuario_id = 101;


-- TESTES
    select nome_escolaridade from escolaridade where usuario.escolaridade_id = escolaridade.id_escolaridade;
    select * from materia;
    select * from conteudo;
