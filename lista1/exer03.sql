CREATE DATABASE db_school;

USE db_school;

#CRIANDO A TABELA ESTUDANTES E ATRIBUINDO ATRIBUTOS.
CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    nota DECIMAL (3,1) NOT NULL,
    semestre INT,
    faltas INT NOT NULL,
    disciplina VARCHAR(255),
PRIMARY KEY (id)
);

#INSERINDO DADOS NA TABELA ESTUDANTES.
INSERT INTO tb_estudantes (nome, nota, semestre, faltas, disciplina)
VALUES ("Marcos", 6.2, 2, 11, "Matemática"),
("Ana", 8.3, 2, 6, "Filosofia"),
("Gleisson", 4.1, 4, 18, "Inglês"),
("José", 9.5, 3, 3, "História"),
("Liana", 10 , 1, 2, "Sociologia"),
("Vinícius", 7.0, 2, 8, "Literatura"),
("Flávio", 8.6, 3, 5, "Biologia"),
("Juninho", 10, 1, 7, "Artes");

#FAZENDO BUSCA DE ALUNOS COM A NOTA MAIOR E MENOR QUE 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

#FAZENDO BUSCA DE ALUNOS COM NOTA IGUAL A 7.0
SELECT * FROM tb_estudantes WHERE nota = 7.0;

#MOSTRANDO TABELA PARA VERIFICAR OS ID's DE CADA ALUNO
SELECT * FROM tb_estudantes;

#ATUALIZANDO O VALOR DO "semestre" NA TABELA ATRAVES DO UPDATE COM BUSCA PELO ID.
UPDATE tb_estudantes SET semestre = 3 WHERE id = 1;

#MOSTRA TABELA COM DADOS ATUALIZADOS.
SELECT * FROM tb_estudantes;




