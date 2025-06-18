CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

#CRIANDO AS DUAS TABELAS
CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
	nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,	
	nome VARCHAR(255) NOT NULL,
    preco DECIMAL (6,2) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    tarja VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

#INSERINDO VALORES NA TABELA CATEGORIAS
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES ("Cosmético", "Cuidados Pessoais"),
("Remédio", "Comprimido"),
("Remédio", "Em Gotas"),
("Cosmético", "Higiene"),
("Remédio", "Intravenoso");

#ADICIONANDO A CHAVE ESTRANGEIRA NA TABELA DOS PRODUTOS E REFERENCIANDO ELA NA TABELA CATEGORIAS.
ALTER TABLE tb_produtos ADD categoriaid BIGINT;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

#INSERINDO VALORES NA TABELA PRODUTOS
INSERT INTO tb_produtos (nome, preco, tipo, tarja, categoriaid)
VALUES ("Dipirona Monoidratada", 75, "Genérico", "Verde", 5),
("Losartana", 36,"Controlado","Vermelha", 2),
("Neosaldina", 15,"Genérico","Nenhuma", 2),
("Esmalte", 4,"Brilhoso", "Nenhum",1),
("Desodorante", 14,"Spray", "Nenhum",4),
("Desodorante", 9,"Roll-on", "Nenhum",4),
("Simeticona", 45, "Controlado", "Vermelho",3),
("Amoxilina", 80,"Controlado", "Vermelho",3);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

#MOSTRANDO PRODUTOS COM VALORES MAIOR QUE 50 REAIS
SELECT * FROM tb_produtos WHERE preco > 50;

#MOSTRANDO PRODUTOS COM PREÇO ENTRE 5 E 60 REAIS
SELECT * FROM tb_produtos 
WHERE preco BETWEEN 5 AND  60;

#MOSTRANDO PRODUTOS QUE TEM A LETRA C NO NOME
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

#JUNTANDO AS TABELAS E TRAZENDO TODOS OS DADOS DAS DUAS
SELECT nome, preco, tipo, tarja, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;

#TRAZENDO DADOS QUE PERTENCEM A UMA CATEGORIA ESPECÍFICA
SELECT nome, preco, tipo, tarja, tb_categorias.nome_categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id
WHERE nome_categoria = "Remédio";