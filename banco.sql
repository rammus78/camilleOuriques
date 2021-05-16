create database casaMuitoDinheiro;
use casaMuitoDinheiro;

create table operacoes (
    numerooperacao int,
    nomecliente varchar (30) NOT NULL,
    moedaorigem varchar,
    moedadestino varchar,
    dataoperacao date,
    valororiginal varchar,
    valorconvertido varchar,
    taxacobrada varchar,
    primary key (codigo)
);

insert into operacoes(numerooperacao, nomecliente, moedaorigem, moedadestino, dataoperacao, valororiginal, valorconvertido, taxacobrada) VALUES ("1","Joao", "50", "250", "12/02/2021", "5", "10", "25");

select * from operacoes;

select numerooperacao from operacoes;

select SUM(valorconvertido) from operacoes;

select SUM(taxacobrada) from operacoes;

select * from operacoes order by nomecliente asc;

select * from operacoes order by dataoperacao;

