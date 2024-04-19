create database gastos;
use gastos;

create table pessoa(
idPessoa int primary key,
nome varchar(45),
dtNasc date,
profissao varchar(45)
);

create table gastos(
idGasto int primary key,
valor varchar(45),
data date,
descrição varchar(45)
);

insert into pessoa values
(1,'Carlos','1999-12-01','Marceneiro'),
(2,'Maria','1970-08-30','Secretaria'),
(3,'Silos Malafaio','1988-04-14','Reporter'),
(4,'Joana Dark','1920-12-05','Coordenadora');
(5,'Toninho','1980-06-12','Artista');

insert into gastos values
(1,'R$900','2022-01-30','pneu'),
(2,'R$20','2024-04-07','revista'),
(3,'R$3000','2022-11-09','geladeira brastemp'),
(4,'R$7','2024-09-12','coxinha'),
(5,'R$200','2021-09-01','bola');



