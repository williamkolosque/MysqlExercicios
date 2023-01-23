CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(250) NOT NULL,
email VARCHAR(250) NOT NULL,
telefone VARCHAR(250),
endereco VARCHAR(250),
salario DOUBLE,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, email, telefone, endereco,salario)
VALUES("Fabio","fabio@rh.com.br","5599844775","rua jose sifrao 25",2500);

INSERT INTO tb_colaboradores(nome, email, telefone, endereco,salario)
VALUES("Bernardo","bernardo@rh.com.br","53842211155","rua caio rolando 662",3500);

INSERT INTO tb_colaboradores(nome, email, telefone, endereco,salario)
VALUES("Juliete","bbbexbbb@rh.com.br","53669955221","rua sem graça 86",2000);

INSERT INTO tb_colaboradores(nome, email, telefone, endereco,salario)
VALUES("Aline","aline@rh.com.br","532211144555","rua jabuticaba 52",4000);

INSERT INTO tb_colaboradores(nome, email, telefone, endereco,salario)
VALUES("Lorenzo","lorenzo@rh.com.br","5522211444777","rua um",1000);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET email = "juliete@rh.com.br" WHERE id = 3;

SELECT * FROM tb_colaboradores;





