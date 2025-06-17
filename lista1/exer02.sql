CREATE DATABASE db_ecommerce;

USE db_ecommerce;

# criei a tabela e escolhi os atributos.
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    valor DECIMAL (9,2) NOT NULL,
    quantidade INT NOT NULL,
    marca VARCHAR(255) NOT NULL,
    ano VARCHAR(4),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, valor, quantidade, marca, ano) 
VALUES ("GLE400", 465000, "10", "Mercedes", "2022"),
("Dolphin Plus", 185000, "10", "BYD", "2024"),
("Classe C 200", 350000, "8", "Mercedes", "2023"),
("Han EV", 540000, "5", "BYD", "2024"),
("Range Rover Evoque", 375000, "6", "Land Rover", "2023"),
("Defender 110", 805000, "3", "Land Rover", "2024"),
("Bike Elétrica", 490, "4", "SHING", "2025"),
("GLB 200", 330000, "7", "Mercedes", "2023");

SELECT * FROM tb_produtos WHERE valor > 500;

SELECT * FROM tb_produtos WHERE valor < 500;

UPDATE tb_produtos SET valor = 400 WHERE id = 7;

SELECT * FROM tb_produtos;





