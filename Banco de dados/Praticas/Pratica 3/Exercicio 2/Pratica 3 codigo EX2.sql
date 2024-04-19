-- CRIANDO E USANDO DATABASE "SPRINT2"
create database Sprint2;
use Sprint2;

-- CRIANDO TABELA MUSICA
create table Musica(
idMusica int primary key,
titulo varchar(40),
artista varchar (40),
genero varchar (40)
);

-- INSERINDO VALORES NA TABELA
insert into Musica
values(1,'snooze','SZA','R&B'),
(2,'Nois é nois','Veish','Trap'),
(3,'The Weekend','SZA','R&B'),
(4,'Movimento','Veigh','Trap'),
(5,'Sina','Djavan','MPB'),
(6,'Oceano','Djavan','MPB');

-- CRIANDO TABELA "ALBUM"
create table album(
idAlbum int primary key,
nome varchar (40),
tipo varchar (10),
dtLancamento date
);

-- INSERINDO VALORES NA TABELA
insert into album
values (1,'SOS','digital','2022-12-09'),
(2,'Dos Prédios','digital','2022-11-18');


-- MOSTRANDO A TABELA

select * from album;
select * from Musica;






