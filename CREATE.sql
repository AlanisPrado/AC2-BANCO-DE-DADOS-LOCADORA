create database videolocadora;
use videolocadora;

create table cliente
(
cod_cliente int auto_increment primary key not null,
rg varchar(15) not null,
nome varchar(50) not null,
endereco varchar(50) null,
bairro varchar(30) null,
cidade varchar(30) null,
estado char(2) not null,
telefone varchar(15) null,
email varchar(30) null,
datanascimento datetime null,
sexo char(1)
);
create table categoria
(
cod_categoria int auto_increment primary key not null,
nome_categoria varchar(20) not null
);
create table filme
(
cod_filme int auto_increment primary key not null,
filme varchar(30) not null,
cod_categoria int not null,
diretor varchar(50) not null,
valor_locacao float not null,
reservada char(1) not null
);
create table locacao
(
cod_locacao int auto_increment not null,
cod_cliente int not null,
cod_filme int not null,
data_retirada datetime not null,
data_devolucao datetime null,
constraint pk_locacao_cliente primary key(cod_locacao, cod_cliente,
cod_filme)
);