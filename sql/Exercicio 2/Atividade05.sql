CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(250),
    material VARCHAR
);

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(250),
    valor double,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categorias (tipo,material) VALUES("hidraulica", "pvc");
INSERT INTO tb_categorias (tipo,material) VALUES("hidraulica", "ferro");
INSERT INTO tb_categorias (tipo,material) VALUES("tijolo", "barro");
INSERT INTO tb_categorias (tipo,material) VALUES("tijolo", "concreto");
INSERT INTO tb_categorias (tipo,material) VALUES("placa", "cimento");

INSERT INTO tb_produtos (nome,valor,categoria_id) VALUES("tijolo 6 furo", 5.00, 3);
INSERT INTO tb_produtos (nome,valor,categoria_id) VALUES("tijolo 12 furo", 9.00, 3);
INSERT INTO tb_produtos (nome,valor,categoria_id) VALUES("cano de água", 30.00, 1);
INSERT INTO tb_produtos (nome,valor,categoria_id) VALUES("cano 60' ", 50.00, 2);
INSERT INTO tb_produtos (nome,valor,categoria_id) VALUES("canor 80' ", 105.00, 2);


SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco > 70 AND preco < 150;

SELECT * FROM tb_produtos WHERE nome LIKE 'c';

select nome,valor, tipo, material from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select nome,valor, tipo, material from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id 
where categorias_id = 1;