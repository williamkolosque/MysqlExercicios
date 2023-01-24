CREATE DATABASE db_quitanda;

 -- CREATE DATABASE db_teste;

USE db_quitanda;

CREATE TABLE tb_produtos(
 id BIGINT AUTO_INCREMENT, 
 nome VARCHAR(255) NOT NULL,
 quantidade INT,
 preco DECIMAL NOT NULL,
 PRIMARY KEY (id)
);

-- Inserindo dados na Tabela

INSERT INTO tb_produtos(nome,preco) 
VALUES ("tomate",8.00);
INSERT INTO tb_produtos(nome, preco) 
values ("laranja", 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);


-- Selecionando dados da Tabela

SELECT * FROM tb_produtos;

SELECT nome FROM tb_produtos;

SELECT nome,preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1;

-- WHERE com Operados Relacionais

SELECT * FROM tb_produtos WHERE preco < 8;

-- Selecionando dados com os Operadores Lógicos

SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;


 -- UPDATE
 
UPDATE tb_produtos SET nome = "Laranja" WHERE id = 1;

-- DELETE

DELETE FROM tb_produtos WHERE id = 2;

-- DELETE FROM tb_produtos;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
descricao VARCHAR(250) not null
);

select * from tb_categoria;

insert into tb_categoria(descricao) values("frutas");
insert into tb_categoria(descricao) values("verdura");
insert into tb_categoria(descricao) values("legumes");
insert into tb_categoria(descricao) values("temperos");

ALTER TABLE tb_produtos add categoria_id BIGINT;

-- constraint é uma restrição
alter table tb_produtos add CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id);

INSERT into tb_produtos(nome, quantidade, preco, categoria_id)
 values ("pitaya doce",10,15.00,1);

INSERT into tb_produtos(nome, quantidade, preco, categoria_id)
 values ("cove",16,14.00,2);
 
 INSERT into tb_produtos(nome, quantidade, preco, categoria_id)
 values ("batata",18,10.00,3);
 
select * from tb_produtos;

select nome, quantidade, descricao from tb_produtos 
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select nome, quantidade, descricao from tb_produtos 
left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select nome, quantidade, descricao from tb_produtos 
RIGHT join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

