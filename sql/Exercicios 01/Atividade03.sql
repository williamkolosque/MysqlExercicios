CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudante(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(200),
idade INT,
email VARCHAR(200),
materia VARCHAR(200),
nota DOUBLE,
PRIMARY KEY(id)
);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("joao",18,"joao@escola.com","java", 8.0);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("joana",21,"joana@escola.com","java", 9.5);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("otavio",19,"otavio@escola.com","java", 8.5);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("carlos",18,"carlos@escola.com","logica", 4.0);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("camila",19,"camila@escola.com","logica", 8.5);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("gabriel",20,"gabriel@escola.com","banco de dados", 3.0);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("gabriela",18,"gabriela@escola.com","banco de dados", 7.0);

INSERT INTO tb_estudante(nome, idade, email, materia, nota) 
VALUE("olivia",20,"olivia@escola.com","banco de dados", 6.0);

SELECT * FROM tb_estudante WHERE nota > 7;

SELECT * FROM tb_estudante WHERE nota < 7;

UPDATE tb_estudante SET nota = 8.5 WHERE id = 8;

SELECT * FROM tb_estudante;



