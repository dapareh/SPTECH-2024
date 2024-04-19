-- CRIANDO E USANDO DATABASE "SPRINT2"
create database Sprint2;
use Sprint2;

-- CRIANDO TABELA "ATLETA"
create table Atleta(
idAtleta int primary key,
nome varchar(40),
modalidade varchar (40),
qtdMedalha int
);

-- INSERINDO VALORES NA TABELA
insert into Atleta
values(1,'Jaqueline','Volei',1),
(2,'Michael','Natacao',3),
(3,'Neymar','Futebol', 5),
(4,'Stefano','Basquete',7),
(5,'Joao','Basquete',3),
(6,'Joana', 'Volei',2),
(7,'Fred','Futebol',4),
(8,'Miguel','Natacao',1);

-- CRIANDO TABELA "PAIS"
create table país(
idPais int primary key,
nome varchar (40),
capital varchar (40)
);

-- INSERINDO VALORES NA TABELA
insert into país 
values (1,'Brasil','Brasilia'),
(2,'Estados Unidos','Washington'),
(3,'França','Paris'),
(4,'Espanha','Madrid');


