CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

-- 1

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(200),
    vacuo BOOLEAN
);

-- 2 e 3

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,  
nome VARCHAR(100), 
cortada BOOLEAN,
osso VARCHAR(100),
valor DOUBLE,
categorias_id BIGINT,
FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

-- 4

INSERT INTO tb_categorias (tipo, vacuo) VALUES("aves", true);
INSERT INTO tb_categorias (tipo, vacuo) VALUES("res", true);
INSERT INTO tb_categorias (tipo, vacuo) VALUES("porco", true);
INSERT INTO tb_categorias (tipo, vacuo) VALUES("peixe", true);
INSERT INTO tb_categorias (tipo, vacuo) VALUES("exotico", true);

INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id) 
VALUES("coxa sobre coxa", true, "sim",9.80, 1);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id) 
VALUES("costela", true, "sim",19.80, 2);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id)
 VALUES("paca", false, "sim",139.80, 5);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id)
 VALUES("costela janela", false, "sim",29.80, 2);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id)
 VALUES("copa lombo", true, "sim",19.00, 3);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id)
 VALUES("Paleta de porco", true, "sim",29.00, 3);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id)
 VALUES("peito de peru", true, "sim", 27.80, 1);
INSERT INTO tb_produtos (nome, cortada, osso, valor, categoria_id)
 VALUES("peito de frango", true, "sim",12.80, 1);

 -- 6

 SELECT * FROM tb_produtos WHERE valor > 50;

 -- 7
SELECT * FROM tb_produtos WHERE valor > 50 AND valor < 150;

-- 8 
SELECT * FROM tb_produtos WHERE nome LIKE 'c';

-- 9 
select nome,cortada, osso, valor, tipo, vacuo from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

-- 10
select nome,cortada, osso, valor, tipo, vacuo from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where categorias_id = 1;