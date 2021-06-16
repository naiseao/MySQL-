create database cadastro;

create table login (
idlogin int NOT NULL AUTO_INCREMENT,
email varchar (50),
senha varchar(30),
primary key (idlogin)
)default charset= utf8;

create table cliente (
idcliente int NOT NULL AUTO_INCREMENT,
nome_completo varchar (50),
sexo enum('F','M'),
nascimento date,
endereço varchar (30),
bairro varchar (30),
cep int(8),
telefone bigint(14),
primary key (idcliente)
)default charset= utf8;

create table pedido (
idpedido int NOT NULL AUTO_INCREMENT,
produto varchar (30),
quantidade int unsigned,
endereço_entrega varchar (50),
primary key (idpedido)
)default charset= utf8;

create table produto_pedido (
idprodutopedido int NOT NULL AUTO_INCREMENT,
quantidade int unsigned,
categoria varchar (50),
preço float,
primary key (idprodutopedido)
)default charset= utf8;

create table if not exists produtos(
idprodutos int NOT NULL AUTO_INCREMENT,
fornecedor varchar(50),
marca varchar(30),
quantidade int unsigned,
preço float,
primary key (idprodutos)
)default charset= utf8;

create table if not exists categorias_produtos(
idcategorias int NOT NULL AUTO_INCREMENT,
descrição varchar(35),
primary key (idcategorias)
)default charset= utf8;

create table if not exists entrega (
identrega int NOT NULL AUTO_INCREMENT,
cidade varchar (50),
endereço varchar (30),
bairro varchar (30),
cep int(8),
frete float,
primary key (identrega)
)default charset= utf8;

use cadastro;
desc categorias_produtos;
desc cliente;