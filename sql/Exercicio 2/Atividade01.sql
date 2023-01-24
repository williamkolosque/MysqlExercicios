CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
-- 1
CREATE TABLE tb_classe(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(250) NOT NULL,
atributos VARCHAR(250)
);
-- 2
CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250) NOT NULL,
defesa INT,
jogo VARCHAR(250),
ataque INT,
classe_id BIGINT,
FOREIGN KEY (classe_id) references tb_classe(id)
);
-- 4
INSERT INTO tb_classe(tipo,atributos) values("Mago","lançar magia");
INSERT INTO tb_classe(tipo,atributos) values("guerreiro","força");
INSERT INTO tb_classe(tipo,atributos) values("ladino","roubar");
INSERT INTO tb_classe(tipo,atributos) values("elfo","arqueiro");
INSERT INTO tb_classe(tipo,atributos) values("chuck noriz","destruir tudo");
-- 5
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("Mario",20,"super mario",400,3);
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("Kratos",500,"god of war",1000,2);
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("Zelda",1500,"zelda break of the wild",2500,2);
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("chuck", 999999999,"browforce",99999999,5); 
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("cloud", 600, "final fantasy 7","1200",2);
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("legolas", 800,"o senhor dos aneis", 1200,4);
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id)
 VALUE("vivi", 1200, "final fantasy IX", 1500,1);
INSERT INTO tb_personagem(nome,defesa,jogo, ataque, classe_id) 
VALUE("pikachu",500,"Pokemom", 600, 3);

-- 6
SELECT * FROM tb_personagem WHERE ataque > 2000;
-- 7
SELECT * FROM tb_personagem WHERE defesa > 1000 AND defesa < 2000;
-- 8
SELECT * FROM tb_personagem WHERE nome LIKE 'c%';
-- 9
select nome,jogo, defesa, ataque, tipo, atributos from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- 10
select nome,jogo, defesa, ataque, tipo, atributos from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.classe_id WHERE classe_id = 4;








