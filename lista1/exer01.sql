CREATE DATABASE db_rh;

USE db_rh;

# criei a tabela e escolhi os atributos.
CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    salario DECIMAL (6,2) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    datainicio DATE NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, salario, setor, datainicio) 
VALUES ("Márcio", 1500, "Assistente de ADM", "2023-04-03");
INSERT INTO tb_colaboradores(nome, salario, setor, datainicio) 
VALUES ("Miguel", 3500, "Engenheiro de Software", "2024-07-30");
INSERT INTO tb_colaboradores(nome, salario, setor, datainicio) 
VALUES ("Thiago", 6500, "Desenvolvedor Frontend Sênior", "2025-03-01");
INSERT INTO tb_colaboradores(nome, salario, setor, datainicio) 
VALUES ("Flávia", 2500, "Assistente de compras", "2024-03-05");
INSERT INTO tb_colaboradores(nome, salario, setor, datainicio) 
VALUES ("Maria", 3000, "Suporte de TI", "2024-07-10");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 1700 WHERE id = 1;

SELECT * FROM tb_colaboradores;


