CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- 1

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    medicamento CHAR,
    cosmeticos CHAR
);

-- 2
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    laboratorio VARCHAR(100),
    receita BOOLEAN,
    valor DOUBLE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- 4

INSERT INTO tb_categorias (medicamento, cosmeticos) VALUES("s","n");
INSERT INTO tb_categorias (medicamento, cosmeticos) VALUES("n","s");

INSERT INTO tb_categorias (medicamento, cosmeticos) VALUES("n","n");

INSERT INTO tb_categorias (medicamento, cosmeticos) VALUES("s","s");

-- 5
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("Paracetamol","medley", false,13.00,1);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("kayak","natura",false,60.0,2);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("batom","natura",false,25.0,2);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("salgadinho","elama chips", false,15.00,3);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("klaricid","medlay", true, 85.00,1);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("fraldas", "huggies", false, 85.00,2);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("batom de cacau", "nivea", false, 35.00, 4);
INSERT INTO tb_produtos (nome,laboratorio, receita,valor,categoria_id)
 VALUES("shampoo", "elsev", false, 25.00,2);

 -- 6
SELECT * FROM tb_produtos WHERE valor > 50;

-- 7
SELECT * FROM tb_produtos WHERE valor > 5 AND valor < 60;

-- 8

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- 9

select nome,laboratorio, receita, valor, medicamento, cosmetico from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select nome,laboratorio, receita, valor, medicamento, cosmetico from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias = cosmeticos;