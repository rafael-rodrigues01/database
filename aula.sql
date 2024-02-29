
-- Cria tabela
CREATE TABLE teste (
	idTeste int primary key,
	nome varchar(50)
);

-- Altera a tabela (Adiciona colunas)
ALTER TABLE teste
ADD idade int, 
ADD cpf varchar(14);

-- Altera a tabela (Altera o tipo de dado de uma coluna)
ALTER TABLE teste ALTER COLUMN nome TYPE varchar(60);

-- Apaga a tabela
DROP TABLE teste;

-- Visualiza toda a tabela
SELECT * FROM teste;

-- *************************************** --
-- COMANDOS DDL (DATA DEFINITION LANGUAGE) --
-- *************************************** --

-- Criando a tabela de clientes
CREATE TABLE client (
	idClient int primary key, 
	cpf varchar(14) unique,
	firstName text not null,
	lastName text,
	address text
);


-- Criando uma tabela  extra apenas 
-- para aprender a deleta-la
CREATE TABLE clientB (
	idClient int primary key, 
	cpf varchar(14) unique,
	firstName text not null,
	lastName text,
	address text
);

-- Deletando uma tabela
DROP TABLE clientB;

-- Criando a tabela de produtos 
CREATE TABLE product (
	id_product int primary key,
	productName varchar(50),
	branch varchar(20),
	category varchar(20),
	price decimal
)

-- Fazer alterações na tabela
-- Renomeando uma coluna BRANCH→BRAND
ALTER TABLE product RENAME COLUMN branch TO brand

-- Alterando um tipo de dado de uma coluna
ALTER TABLE client ALTER COLUMN address TYPE varchar(50)

-- Adicionando coluna
ALTER TABLE product ADD COLUMN aaaa text

-- Apagando coluna
ALTER TABLE product DROP COLUMN aaaa

-- Adicionando Foreign Key
ALTER TABLE product ADD COLUMN idClient int

ALTER TABLE product ADD 
FOREIGN KEY (idClient) REFERENCES client

-- Adicionando restrições
ALTER TABLE product ALTER COLUMN productName 
SET NOT NULL

-- **************************************** --
-- COMANDOS DML (DATA MANIPULATION LANGUAGE)--
-- **************************************** --

-- Inserindo dados na tabela
INSERT INTO client VALUES(
	1,
	'111.111.111-11',
	'Jubileu',
	'Catatau',
	'Praça Roberto Mange, 30, Sorocaba-SP'
)

-- Inserindo dados na tabela
INSERT INTO client VALUES(2,'111.111.111-12','Cain',null,'Praça Roberto Mange, 30, Sorocaba-SP')

-- Inserindo dados em ordem diferente
INSERT INTO client (cpf, firstName, lastName, idClient, address)
VALUES ('333.333.333-33', 'Abel', '', 3, '')

-- inserindo dados com colunas faltantes
INSERT INTO client (cpf, firstName, idClient)
VALUES ('444.444.444-44', 'Moises',4)

-- Atualizando valores
UPDATE client SET address='rua 2'
WHERE idclient = 1

-- povoando a tabela de produtos
INSERT INTO product VALUES (1,'caneta','bic','escritorio',1.25,1);
INSERT INTO product VALUES (2,'lapis','fabercastel','escritorio',0.5,1);
INSERT INTO product VALUES (3,'mouse','dell','informatica',120.25,3);
INSERT INTO product VALUES (4,'headset','dell','informatica',80.5,2);
INSERT INTO product VALUES (5,'borracha','fabercastel','escritorio',0.35,1);

-- Conceder desconto de 10 reais para todos os produtos acima de 50 reais
UPDATE product SET price=price-10
WHERE price>50

-- reajustar preço em 5 reais para todos os produtos entre 1 e 80 reais
UPDATE product SET price=price+5
WHERE price>=1 AND price<=80

-- conceder desconto de 50% para todos os produtos 
-- abaixo de 1 ou acima de 70 reais
UPDATE product SET price=price/2
WHERE price<1 OR price>70

-- *************************************** --
-- COMANDOS DQL (DATA QUERY LANGUAGE)      --
-- *************************************** --

SELECT * FROM client
SELECT * FROM product