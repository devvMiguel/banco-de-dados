CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;


CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
	nome_classe VARCHAR(255),
    especial VARCHAR(255),
PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome_classe, especial)
VALUES ("Mago", "Bola de fogo"),
("Arqueiro", "Rajada de Flechas"),
("Guerreiro", "Espada Flamejante"),
("Pugilista", "Socos Explosivos"),
("Druida", "Metamorfo");

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,	
	nome VARCHAR(255) NOT NULL,
    forca_ataque INT NOT NULL,
    armadura INT NOT NULL,
    lvl INT NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome, forca_ataque, armadura, lvl)
VALUES ("Ryze", 2000, 1400, 9),
("Ashe", 1000, 1500, 12),
("Garen", 1800, 2200, 12),
("Lee sin", 2500, 3000, 13),
("LeBlanc", 3000, 2500, 11),
("Veigar", 6000, 3100, 16),
("Olaf",1900,5000,14),
("Caitlyn",1100, 20, 17);

SELECT * FROM tb_personagens;
SELECT * FROM tb_classes;

ALTER TABLE tb_personagens ADD classeid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classeid) REFERENCES tb_classes (id); 

UPDATE tb_personagens SET classeid = 1 WHERE id = 1;
UPDATE tb_personagens SET classeid = 2 WHERE id = 2;
UPDATE tb_personagens SET classeid = 3 WHERE id = 3;
UPDATE tb_personagens SET classeid = 4 WHERE id = 4;
UPDATE tb_personagens SET classeid = 1 WHERE id = 5;
UPDATE tb_personagens SET classeid = 1 WHERE id = 6;
UPDATE tb_personagens SET classeid = 3 WHERE id = 7;
UPDATE tb_personagens SET classeid = 2 WHERE id = 8;

SELECT * FROM tb_personagens WHERE forca_ataque > 2000;

SELECT * FROM tb_personagens 
WHERE armadura BETWEEN 1000 AND  2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

SELECT nome, forca_ataque, armadura, lvl, tb_classes.nome_classe, tb_classes.especial 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, forca_ataque, armadura, lvl, tb_classes.nome_classe, tb_classes.especial 
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classeid = tb_classes.id
WHERE classeid = 2;

SELECT * FROM tb_classes;