create database luminebd;
use luminebd;

create table usuario(
    id int primary key auto_increment,
    nome varchar(255),
    email varchar (255) not null unique,
    senha varchar(255),
    escolaridade_id int,
    foreign key (escolaridade_id) references escolaridade (id_escolaridade),
    criacao date
);

create table escolaridade (

    id_escolaridade int primary key auto_increment,
    nome_escolaridade varchar(100)
);

select nome_escolaridade from escolaridade where usuario.escolaridade_id = escolaridade.id_escolaridade;

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

create table materia(
    id int primary key auto_increment,
    nome_materia varchar(255)
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
    foreign key (id_materia) references materia (id)
);

create table quizzes(
    id int primary key auto_increment,
    nome varchar(255),
    dificuldade int,
    id_conteudo int,
    foreign key (id_conteudo) references conteudo (id)
);

create table perguntas(
    id int primary key auto_increment,
    id_quiz int,
    foreign key (id_quiz) references quizzes (id),
     descricao varchar(255)
);

create table respostas(
    id int primary key auto_increment,
    id_pergunta int,
    foreign key (id_pergunta) references perguntas (id),
	descricao varchar(255),
    certo boolean
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

