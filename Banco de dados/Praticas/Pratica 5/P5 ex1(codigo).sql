create database petshop;
use petshop;

create table cliente(
id int primary key auto_increment,
nome varchar(45),
telefone_fixo varchar(10),
telefone_celular varchar(11),
endereco varchar(100)
);

create table pet(
id int primary key auto_increment,
nome varchar(45),
raca varchar(45),
tipo varchar(45),
dtNasc date,
fkCliente int,
constraint fk_cliente_pet foreign key (fkCliente) references cliente(id)
) auto_increment=101;


insert into cliente values
(null,'Davi','123123123','123123123','rua bem legal'),
(null,'Joao','123123123','123123123','rua bem feliz'),
(null,'Pedro','123123123','123123123','rua bem alegre');

insert into pet values
('Blue','arara-azul','ave','2020-12-31'),
('Princeso','golden','cachorro','2018-02-11'),
('Armando','siames','gato','2019-03-09');
