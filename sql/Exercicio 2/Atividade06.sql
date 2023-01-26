CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT PRIMARY KEY,  
tipo VARCHAR(250),
presencial BOOLEAN 
);

CREATE TABLE tb_cursos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(250),
    valor DOUBLE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id) 
);

INSERT INTO ŧb_categoria (tipo,presencial ) VALUES(
     "superior", true
);
INSERT INTO ŧb_categoria (tipo,presencial ) VALUES(
     "superior", false
);
INSERT INTO ŧb_categoria (tipo,presencial ) VALUES(
     "TECNOLOGO", true
);
INSERT INTO ŧb_categoria (tipo,presencial ) VALUES(
     "tecnologo", false
);

INSERT INTO ŧ (tipo,presencial ) VALUES(
     "tecnico", true
);
INSERT INTO ŧb_categoria (tipo,presencial ) VALUES(
     "tecnico", false
);

INSERT INTO tb_cursos (nome,valor,categoria_id ) VALUES(
     "ads",500.00,1
);
INSERT INTO tb_cursos (nome,valor,categoria_id ) VALUES(
     "ads",400.00,2
);
INSERT INTO tb_cursos (nome,valor,categoria_id ) VALUES(
     "marketing",600.00,3
);
INSERT INTO tb_cursos (nome,valor,categoria_id ) VALUES(
     "informatica",500.00,5
);
INSERT INTO tb_cursos (nome,valor,categoria_id ) VALUES(
     "Hardware",400.00,5
);
INSERT INTO tb_cursos (nome,valor,categoria_id ) VALUES(
     "manutenção",300.00,6
);

SELECT * FROM tb_cursos WHERE valor > 500;

SELECT * FROM tb_cursos WHERE valor > 500 AND valor < 1000;

SELECT * FROM tb_cursos WHERE nome LIKE 'j';

select nome,valor, tipo, presencial from tb_cursos 
inner join tb_categorias on tb_categorias.id = tb_cursos.categorias_id;

select nome,valor, tipo, presencial from tb_cursos 
inner join tb_categorias on tb_categorias.id = tb_cursos.categorias_id 
where categorias_id = 1;
