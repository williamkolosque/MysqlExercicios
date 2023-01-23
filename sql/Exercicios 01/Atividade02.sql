CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(200),
quantidade INT,
categoria VARCHAR(200),
frete BOOLEAN,
valor DOUBLE,
PRIMARY KEY(id)
);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("macmook",14,"informatica",true,14000);

INSERT  INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("notebook",20,"informatica",true,1000);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("motoxe34",30,"celular",false,4000);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("caneca star wars",14,"canecas",true,14.50);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("outbook",44,"informatica",true,13000);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("s50",20,"celular",true,140000);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("xxox",14,"video games",false,400);

INSERT INTO tb_produtos(nome,quantidade,categoria,frete,valor) 
VALUES("feistation",14,"video games",true,100);

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

SELECT * FROM tb_produtos;

UPDATE tb_produtos SET quantidade = 400 WHERE id = 6;

SELECT * FROM tb_produtos;

