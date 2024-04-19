create database sprint1;
use sprint1;
create table Atleta(
idAtleta int primary key,
nome varchar (40),
modalidade varchar (40),
qtdMedalha int 
);
insert into Atleta (idAtleta, nome, modalidade, qtdMedalha)
values (1, 'Endrick' , 'futebo', 1),
(2, ' Michael', 'basquete', 4),
(3, 'Rebeca', 'ginastica', 2),
(4, 'Felipe', 'natação', 5),
(5, 'Neymar', 'futebol', 3);
select * from Atleta;
update Atleta set qtdMedalha=3 where idAtleta=1;
update Atleta 
set qtdMedalha=2 where idAtleta=1 AND 2;
select * from Atleta;
update Atleta set qtdMedalha=3 where idAtleta between 1 And 2;
select * from Atleta;
update Atleta set qtdMedalha=3 where idAtleta between 2 And 3;
update Atleta set nome= 'Fernando' where idAtleta=4;
update Atleta set dtNasc= '2005-12-06' where idAtleta=1;
update Atleta set dtNasc= '1990-01-22' where idAtleta=2;
update Atleta set dtNasc= '1999-10-01' where idAtleta=3;
update Atleta set dtNasc= '1979-07-12' where idAtleta=4;
update Atleta set dtNasc= '1993-03-25' where idAtleta=5;
delete from Atleta where idAtleta=5;
select * from Atleta where modalidade <> 'natação';
select * from Atleta where qtdMedalha >= 3;
alter table Atleta modify column modalidade varchar (60);
desc Atleta;
drop table Atleta;

-----------------------------------

use sprint1;
create table Musica(
idMusica int primary key, 
titulo varchar (40),
artista varchar (40),
genero varchar (40)
);
insert into Musica (idMusica, titulo, artista, genero)
values (1, 'Estilo Cachorro', 'Racionais MCs', 'RAP'),
(2, '21 questions', '50 Cent', 'Hip-Hop'),
(3, 'Esqueci', 'Bruno e Marrone', 'Sertanejo'),
(4, 'Flying High', 'Yunk Vino', 'Trap'),
(5, 'Bolsa de ombro', 'Veigh', 'Trap'),
(6, 'Coração radiante','Grupo Revelção','Pagode'),
(7, 'Could You Be Loved', 'Bob Marley', 'Reagge');
select * from Musica;
Alter table Musica add column curtidas int;
select * from Musica;
update Musica set curtidas= 1000000 where idMusica=1;
update Musica set curtidas= 9000000 where idMusica=2;
update Musica set curtidas= 2000000 where idMusica=3;
update Musica set curtidas= 500000 where idMusica=4;
update Musica set curtidas= 900000 where idMusica=5;
update Musica set curtidas= 300000 where idMusica=6;
update Musica set curtidas= 2000000 where idMusica=7;
alter table Musica modify column artista varchar (80);
update Musica set curtidas=5000000 where idMusica=1;
update Musica set curtidas=7000000 where idMusica between 2 and 3;
select * from Musica;
update Musica set titulo= 'Tendenciosa' where idMusica=5;
delete from Musica where idMusica=4;
select * from Musica where genero <> 'funk';
select * from Musica where curtidas >= 20;
desc Musica;
drop table Musica;

--------------------------------------------------------------------


use sprint1;
create table Filme(
idFilme int primary key,
titulo varchar (50),
genero varchar(50),
diretor varchar (40)
);
insert into Filme (idFilme, titulo, genero, diretor)
values (1, 'De volta para o futuro', 'ficção' , 'Robert Zemeckis'),
(2,'Tropa de elite', 'ação policial', 'Jose Padilha'),
(3,'Cidade de Deus', 'ação', 'Fernando Meirelles'),
(4,'O menino do pijama listrado', 'guerra','Mark Herman'),
(5,'Django livre', 'aventura', 'Quentin Tarantino'),
(6,'Bastardos inglorios', 'ação', 'Quentin Tarantino'),
(7,'Esqueceram de mim', 'comédia', 'Chris Columbus');
select * from Filme;
alter table Filme add column protagonista varchar (50);
update Filme set protagonista='Martin McFly' where idFilme=1;
update Filme set protagonista='Capitao Nascimento' where idFilme=2;
update Filme set protagonista='Shmuel' where idFilme=4;
update Filme set protagonista='Django' where idFilme=5;
update Filme set protagonista='Hans Landa' where idFilme=6;
update Filme set protagonista='Kevin McCallister' where idFilme=7;
alter table Filme modify column diretor varchar (150);
update Filme set diretor= 'Jorge Benjor' where idFilme=5;
update Filme set diretor= 'Neymar Junior' where idFilme=2;
update Filme set diretor= 'Gustavo Gomez' where idFilme=7;
update Filme set titulo = 'Kill Bill' where idFilme=6;
delete from Filme where idFilme=3;
select * from Filme where genero <> 'drama';
select * from Filme where genero = 'suspense';
desc Filme;
drop table Filme;


----------------------------------------------------------------------------------



use sprint1;
create table Professor(
idProfessor int primary key,
nome varchar (50),
especialidade varchar (40),
dtNasc date
);
insert into Professor(idProfessor, nome, especialidade, dtNasc)
values (1, 'Marcelo Rosim', 'Banco de dados', '1970-12-01'),
(2, 'Caio', 'Algoritimos', '1950-09-30'),
(3, 'Vera', 'Socioemocional', '1989-05-04'),
(4,'Marise', 'Arquitetura Computacional', '1960-08-17'),
(5, 'Frizza', 'Projetos', '2000-02-21'),
(6, 'JP', 'Algoritimos', '1980-11-12');
select * from Professor;
alter table Professor add column função varchar(50);
update Professor set função='titular' where idProfessor=1;
update Professor set função='monitor' where idProfessor=2;
update Professor set função='titular' where idProfessor=3;
update Professor set função='assistente' where idProfessor=4;
update Professor set função='titular' where idProfessor=5;
update Professor set função='assistente' where idProfessor=6;
insert into Professor(idProfessor, nome, especialidade, função, dtNasc)
values (8, 'Betina', 'Socioemocional','assistente', '1970-12-01');
delete from Professor where idProfessor=5;
select especialidade, dtNasc from Professor where função = 'monitor';
update Professor set dtNasc='1999-12-01' where idProfessor=3;
truncate table Professor;
drop table Professor;


------------------------------------------------------------------------------


use sprint1;
create table curso(
idCurso int primary key,
nome varchar (50),
sigla varchar (3),
coordenador varchar (40) 
);
insert into curso(idCurso, nome, sigla, coordenador)
values (1, 'Analise e desenvolvimento de sistemas' , 'ADS', 'Marcos'),
(2,'Ciencia da computação', 'CCO', 'Vera'),
(3,'Sistemas de informação','SIS', 'Fernando Brandão');
select coordenador from curso;
select*from curso where sigla='SIS';
select*from curso order by nome;
select*from curso where nome like 'S%';
select*from curso where nome like '%S';
select*from curso where nome like '_N%';
select*from curso where nome like '%A_';
truncate table curso;
drop table curso;


------------------------------------------------------------------------------------

use sprint1;
create table revista(
idrevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30));
insert into revista(nome)
values ('Forbes'),
('Placar'),
('Veja'),
('Abril');
select*from revista;
update revista set categoria= 'informação' where idrevista= 1;
update revista set categoria= 'esporte' where idrevista= 2;
update revista set categoria= 'noticias' where idrevista= 3;
update revista set categoria= 'noticias' where idrevista= 4;
select * from revista;
insert into revista(idrevista, nome, categoria)
values (5, 'Vogue','moda'),(6, 'Exame', 'noticias'),(7, 'GQ','moda');
select * from revista;
describe revista;
alter table revista modify column categoria varchar(40);
describe revista;
alter table revista add column periodicidade varchar(15);
select * from revista;
alter table revista drop column periodicidade;


------------------------------------------------------------------------------------

create table serie(
idserie int primary key auto_increment,
nome varchar(40),
qtdtemporadas int,
statusSerie varchar(40) check(statusSerie= 'em andamento' or statusSerie='finalizado' or statusSerie='não assistida'))auto_increment=100;
insert into serie(nome, qtdtemporadas, statusSerie)
values ('The Boys', 4, 'em andamento'),
('Dark',4, 'finalizado'),
('The Umbrella Academy', 4, 'não assistida'),
('The End of the F***ing World', 2, 'finalizado');
select * from serie;
drop table serie;


-----------------------------------------------------------------------------------------------------------------------------------------

use sprint1;

create table carro(
idcarro int primary key,
nome varchar(70),
placa varchar(7),
marca varchar(20));
alter table carro modify column marca varchar(40);
insert into carro(idcarro, placa, marca, nome)
values(1, 'LWJ-7751', 'Peugeot ', '208'),
(2, 'JWA-1457', 'BMW', 'X6'),
(3, 'NEW-8111', 'Toyota', 'Corola'),
(4, 'NEL-0728', 'Mercedez-Benz', 'GLE200'),
(5, 'NBE-1824', 'Ford ', 'EcoSport');
select * from carro;
select nome, placa from carro;
select * from carro where placa='NBE-1824';
select * from carro where marca='BMW ';
select * from carro order by marca;
select * from carro order by nome desc;
select * from carro where nome like '%a';
select * from carro where nome like 'f%';
select * from carro where nome like '_r%';
select * from carro where nome like '%n_';
update carro set placa='HXU-6320' where idcarro=1;
select * from carro;
delete from carro where idcarro=2;
drop table carro;


----------------------------------------------------------------------------------------


create table restaurante(
idrest int primary key,
nome varchar(40),
CEP varchar(9),
tipo varchar(30)
);
insert into restaurante(idrest, CEP, tipo, nome)
values(1, '98721-421', 'churrascaria ', 'Matuto'),
(2, '12345-678', 'fast-food', 'McDonalds'),
(3, '54321-123', 'arabe', 'Almanara'),
(4, '76807-952', 'arabe', 'Kalili'),
(5, '16561-853', 'japonesa', 'Kitchen');
alter table restaurante modify column tipo varchar(50);
/*1*/select * from restaurante;
/*2*/select nome, tipo from restaurante;
/*3*/select * from restaurante where tipo='Almanara';
/*4*/select * from restaurante where CEP='54321-123';
/*5*/select * from restaurante order by nome;
/*6*/select * from restaurante order by tipo desc;
/*7*/select * from restaurante where nome like 'a%';
/*8*/select * from restaurante where CEP like '%2';
/*9*/select * from restaurante where nome like '_i%';
/*10*/select * from restaurante where nome like '%t_';
/*11*/update restaurante set CEP='73734-792' where idrest=1;
select * from restaurante;
/*12*/ delete from restaurante where idrest=1;
drop table restaurante;







