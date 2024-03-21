create database sprint1;
use sprint1;
create table atleta(
idatleta int primary key, 
nome varchar (50),
modalidade varchar (50), qtdmedalha int);
insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (1, 'GIOVANNA', 'volei', 1); 
insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (2, 'JULIANA', 'Volei', 1);
insert into atleta(idAtleta, nome, modalidade, qtdMedalha) 
values (3, 'MICHAEL', 'Natação', 2),
       (4, 'STEPHANO', 'Basquete', 1),
       (5, 'GUILHERME', 'Futebol', 3),
       (6, 'JAMES', 'Basquete', 0),
       (7, 'NATHALIA', 'Volei de Praia', 1),
       (8, 'CAROL', 'Volei de Praia', 1),
       (9, 'JULIA', 'Volei', 2),
       (10, 'NEYMAR', 'Futebol', 0);
       select * from atleta;
       select nome, qtdMedalha from atleta;
        select * from atleta where modalidade = 'volei';
select * from atleta order by  modalidade;
select * from atleta order by  qtdMedalha desc;
select * from atleta where nome like '%s%';
select * from atleta where nome like 'a%';
select * from atleta where nome like '%a';
select * from atleta where nome like '%r_';
drop table atleta;

create table musica(
idmusica int primary key,
titulo varchar(40),
artista varchar(40), 
genero varchar(40));
insert into musica(idmusica, titulo, artista, genero)
values (1, 'Vida vazia', 'Bruno e Marrone', 'Sertanejo'),
(2, 'Snooze', 'SZA', 'R&B'),
(3, 'Do for love', '2PAC', 'RAP'),
(4, 'Do jeito que a vida quer', 'Grupo Revelação', 'Pagode'),
(5, 'Jesus chorou', 'Racionais MCs', 'RAP'),
(6, 'Sete da noite','tchelo rodrigues', 'TRAP'),
(7, '2AM', 'Yunk Vino', 'TRAP');
select * from musica;
select titulo, artista from musica;
select * from musica where genero = 'TRAP';
select * from musica where artista = 'Bruno e Marrone';
select * from musica order by  titulo;
select * from musica order by  artista desc;
select * from musica where titulo like 'i%';
select * from musica where artista like '%s';
select * from musica where genero like '_a%';
select * from musica where titulo like '%e_';
drop table musica;
       
       
create table filme(
idfilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40));
insert into filme(idfilme, titulo, genero, diretor)
values (1, 'De volta para o futuro I','ficção','Robert Zemeckis'),
(2, 'Bird Box','suspense', 'Susanne Bier'),
(3, 'Django Livre','aventura','Quentin Tarantino'),
(4, 'Tropa de Elite','drama e policial','José Padilha'),
(5,'Até que a sorte nos separe','comedia','Roberto Santucci'),
(6,'Cidade de Deus','ação','Kátia Lund'),
(7,'O menino do pijama listrado','guerra','Mark Herman');
select * from filme;
select titulo, diretor from filme;
select * from filme where genero = 'ação';
select * from filme where diretor = 'José Padilha';
select * from filme order by titulo;
select * from filme order by diretor desc;
select * from filme where titulo like 's%';
select * from filme where diretor like '%n';
select * from filme where genero like '_a%';
select * from filme where titulo like '%a_';
drop table filme;

create table professor(
idprofessor int primary key,
nome varchar(50),
especialidade varchar(40), 
dtnasc date);
insert into professor(idprofessor, nome, especialidade, dtnasc)
values (1,'Vera','Socio Emocional', '1996-09-11'),
(2,'Brandão','TI','1950-11-03'),
(3, 'Frizza','PI','2000-05-22'),
(4,'Eduardo','S.O','1990-01-01'),
(5,'Caio','Algoritmos','1971-06-05'),
(6,'Marise','Arquitetura Computacional','1959-07-08');
select * from professor;
select especialidade from professor;
select * from professor where especialidade = 'TI';
select * from professor order by  nome;
select * from professor order by  dtnasc desc;
select * from professor where nome like 'b%';
select * from professor where nome like '%o';
select * from professor where nome like '_r%';
select * from professor where nome like '%z_';
drop table professor;


create table curso(
idcurso int primary key,
nome varchar(50),
sigla varchar(3),
coordenador varchar(40));
insert into curso(idcurso, nome, sigla, coordenador)
values (1, 'Análise e Desenvolvimento de Sistemas' ,'ADS','Fernando'),
(2,'Sistemas da Informação','SIS','Joao Pedro'),
(3, 'Ciências da Computação','CCO','Marcos');
select * from curso;
select coordenador from curso;
select * from curso where sigla = 'ads';
select * from curso order by nome;
select * from curso order by coordenador desc;
select * from curso where nome like 'a%';
select * from curso where nome like '%o';
select * from curso where nome like '_i%';
select * from curso where nome like '%a_';
drop table curso;


use sprint1;
create table revista(
idrevista int primary key,
nome varchar(40),
categoria varchar(30));
insert into revista(idrevista, nome)
values (1, 'Veja'),
(2 ,'Abril'),
(3,'Forbes'),
(4,'Vogue');
select*from revista;
update revista
set categoria= 'informação'
where idrevista= 1;
update revista set categoria= 'informação' where idrevista= 1;
update revista set categoria= 'noticias' where idrevista= 2;
update revista set categoria= 'informação' where idrevista= 3;
update revista set categoria= 'moda' where idrevista= 4;
select * from revista;
insert into revista(idrevista, nome, categoria)
values (5, 'ELLE','moda'),(6, 'Placar', 'futebol'),(7, 'CULT','literatura');
select * from revista;
describe revista;
alter table revista modify column categoria varchar(40);
describe revista;
alter table revista add column periodicidade varchar(15);
select * from revista;
alter table revista drop column periodicidade;
select * from revista;
drop database sprint1;

     
       
       
