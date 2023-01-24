CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- 1

CREATE TABLE tb_categoria(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    bordas BOOLEAN,
    quantidade_sab INT
);

-- 2
CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(100),
    fatias INT,
    quant INT,
    valor DOUBLE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)    
);

-- 4

INSERT INTO  tb_categoria (bordas,quantidade_sab) VALUES(false, 1);
INSERT INTO  tb_categoria (bordas,quantidade_sab) VALUES(true, 1);
INSERT INTO  tb_categoria (bordas,quantidade_sab) VALUES(true, 2);
INSERT INTO  tb_categoria (bordas,quantidade_sab) VALUES(false, 2);
INSERT INTO  tb_categoria (bordas,quantidade_sab) VALUES(true, 3);

-- 5
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id)
 VALUES("queijo",8,1,35,1);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id) 
VALUES("queijo e calabresa",16,1,70,3);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id)
 VALUES("coração com queijo, presunto",32,1,150,3);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id)
 VALUES("gauderia", 16,1,70,4);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id)
 VALUES("strogonoff, lombinho", 16,1,85,3);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id)
 VALUES("milho e coração, presunto", 32,1,3,150);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id)
 VALUES("queijo e pato",8,1,35,1);
INSERT INTO tb_pizzas (sabor,fatias,quant,valor,categoria_id) 
VALUES("queijo presunto",8,1,35,1);

-- 6
SELECT * FROM tb_pizzas WHERE valor < 45;

-- 7

SELECT * FROM tb_pizzas WHERE valor > 50 AND valor < 100;

-- 8
SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';

-- 9

select sabor, fatias, quant, valor, bordas, quantidade_sab from tb_pizzas 
inner join tb_categoria on tb_categoria.id = tb_pizzas.categoria_id;

-- 10

select sabor, fatias, quant, valor, bordas, quantidade_sab from tb_pizzas 
inner join tb_categoria on tb_categoria.id = tb_pizzas.categoria_id WHERE bordas = false;