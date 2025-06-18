CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

#CRIANDO AS DUAS TABELAS
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
	nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,	
	nome VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    pedacos INT NOT NULL,
    borda VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

#ADICIONANDO A CHAVE ESTRANGEIRA NA TABELA DAS PIZZAS E REFERENCIANDO ELA NA TABELA CATEGORIAS.
ALTER TABLE tb_pizzas ADD categoriaid BIGINT;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_pizzas_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

SELECT * FROM tb_pizzas;

#INSERINDO VALORES NA TABELA CATEGORIAS
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Doce", "Chocolate e Frutas"),
("Salgada", "Queijo e Tomate "),
("Salgada", "Frango e Catupiry"),
("Vegana", "Brócolis"),
("Doce", "Chocolate e Côco");

SELECT * FROM tb_categorias;

ALTER TABLE tb_personagens ADD classeid BIGINT;

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

#INSERINDO VALORES NA TABELA PIZZAS
INSERT INTO tb_pizzas (nome, preco, pedacos, borda, categoriaid)
VALUES ("Nutella com Morango", 45, 6, "Com borda recheada", 1),
("Pizza de Brócolis", 40, 8, "Sem borda recheada", 4),
("Pizza de Nutella com Morango", 35, 6, "Sem borda recheada", 1),
("Pizza de Frango Catupiry", 80, 12, "Com borda recheada",3),
("Pizza de Mussarela", 67, 8, "Sem borda recheada",2),
("Pizza de Prestígio", 50, 8, "Com borda recheada",5),
("Pizza de Brócolis", 47, 8, "Com borda recheada",4),
("Pizza de Mussarela", 75, 8, "Com borda recheada",2);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

#MOSTRANDO PIZZAS COM VALORES MAIOR QUE 45 REAIS
SELECT * FROM tb_pizzas WHERE preco > 45;

#MOSTRANDO PIZZAS COM PREÇO ENTRE 50 E 100 REAIS
SELECT * FROM tb_pizzas 
WHERE preco BETWEEN 50 AND  100;

#MOSTRANDO PIZZAS QUE TEM A LETRA M NO NOME
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

#JUNTANDO AS TABELAS E TRAZENDO TODOS OS DADOS DAS DUAS
SELECT nome, preco, pedacos, borda, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id;

SELECT nome, preco, pedacos, borda, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoriaid = tb_categorias.id
WHERE nome_categoria = "Doce";



