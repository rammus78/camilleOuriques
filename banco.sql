create database casaMuitoDinheiro;
use casaMuitoDinheiro;

create table operacoes (
    numerooperacao int NOT NULL,
    nomecliente varchar (30) NOT NULL,
    moedaorigem numeric(10, 2),
    moedadestino numeric(10, 2),
    dataoperacao date,
    valororiginal numeric(10, 2),
    valorconvertido numeric(10, 2),
    taxacobrada numeric(10, 2),
    primary key (numerooperacao)
);

insert into operacoes(numerooperacao, nomecliente, moedaorigem, moedadestino, dataoperacao, valororiginal, valorconvertido, taxacobrada) VALUES (1, "Joao", 50, 250, "2021/02/12", 5, 10, 25);

select * from operacoes;

select numerooperacao from operacoes;

select SUM(valorconvertido) from operacoes;

select SUM(taxacobrada) from operacoes;

select * from operacoes order by nomecliente asc;

select * from operacoes order by dataoperacao;

