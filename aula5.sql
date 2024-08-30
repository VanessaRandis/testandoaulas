create database loja;

drop database loja;
use loja;

CREATE TABLE produtos(
	codigo_produto int primary key not null, 
    nome varchar(50) not null,
    quantidade int, 
    valor numeric(10,2) not null
);

CREATE TABLE vendas(
	codigo_venda int primary key not null,
    data_venda date,
    valor_total numeric(10,2)
);

CREATE TABLE clientes(
	codigo_cliente int primary key not null,
    cpf varchar(14),
    nome varchar(100),
    cel numeric(14)
);
describe clientes;
describe produtos;
describe vendas;
DROP TABLE funcionarios;
DROP TABLE produtos;
DROP TABLE vendas;

describe funcionarios;
select * from funcionarios;


truncate TABLE PESSOAS;
delete from pessoas where codigo_cliente=1;
select * from pessoas;


ALTER TABLE clientes rename to pessoas;
describe pessoas;
select * from pessoas;
ALTER TABLE pessoas change cel telefone numeric(14);
ALTER TABLE pessoas modify column cpf numeric(15);
ALTER TABLE pessoas rename to funcionarios;

INSERT INTO pessoas(codigo_cliente, cpf, nome, telefone) VALUES(1,454554, 'Vanessa Felix',114447);
INSERT INTO pessoas(codigo_cliente, cpf, nome, telefone) VALUES(2,43354, 'Vitor',13337), 
(3,488854, 'Gustavo',8814447), 
(4,4999554, 'Layla',1449887), 
(5,4555554, 'Beatriz',1155447);

UPDATE pessoas set nome='LAYLA ALUNA' WHERE codigo_cliente=1;


SELECT * FROM pessoas;
select * from funcionarios;

SELECT nome FROM pessoas;
truncate table pessoas;
delete from pessoas where codigo_cliente=5;
DELETE FROM pessoas;
INSERT INTO produtos(codigo_produto, data_venda, valor_total) VALUES(1,'2024-10-20', 85.0);
SELECT * FROM pessoas;
DELETE FROM pessoas WHERE codigo_produto=1; 
INSERT INTO vendas (codigo_venda, data_venda, valor_total) VALUES(3,'2020-10-20', 85.00);
INSERT INTO vendas (codigo_venda, data_venda, valor_total) VALUES(3,'2020-10-20', 85.00);
SELECT * FROM vendas;

UPDATE pessoas SET nome='Vanessa Randis' where codigo_cliente=1;

DELETE FROM pessoas where codigo_cliente= 4;


