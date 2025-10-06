create database cadastro
default character set utf8mb4
default collate utf8mb4_general_ci; # pra ter os caracteres que vou utilizar com o idioma pt-br

use cadastro;
create table pessoas(
	id int not null auto_increment,
	nome varchar(30) not null,
    nascimento date,
    sexo enum('M', 'F'), # apenas duas opções M ou F
    peso decimal(5,2), # primeiro numero = total de digitos, segundo num = numeros depois da virgula
    altura decimal(3,2),
    nacionalidade varchar(20) default 'Brasil',
    primary key(id)
) default charset = utf8mb4;


# not null: obriga a pessoa a digitar um nome pra uma pessoa
# decimal(5,2) -> exemplo: 111,22 -> 5 digitos, com dois numeros depois da virgula (22)
# default 'Brasil' = se ninguem digitar nada, por default, a pessoa vai ter nacionalidade do BR
# chave primaria: permite que exista um ID unico pra cada pessoa -> para não repetir tuplas dentro de uma tabela
# drop table ~nome-da-tabela~ = apaga a tabela
# drop database ~nome-do-banco-de-dados~ = apaga o database
