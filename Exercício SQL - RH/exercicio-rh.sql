CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
idade BIGINT,
data_admissao DATE NOT NULL,
salario DECIMAL(5,2),
departamento BIGINT
);

SELECT * FROM tb_colaboradores;

ALTER TABLE tb_colaboradores MODIFY salario DECIMAL(9,2);
ALTER TABLE tb_colaboradores MODIFY departamento VARCHAR(255);

INSERT INTO tb_colaboradores (nome, idade, data_admissao, salario, departamento)
VALUES ("Marília Tostes", 25, "2023-01-08", 2500.00, "TI");

INSERT INTO tb_colaboradores (nome, idade, data_admissao, salario, departamento)
VALUES ("Giulia Rossi", 24, "2022-06-10", 10200.00, "Marketing");

INSERT INTO tb_colaboradores (nome, idade, data_admissao, salario, departamento)
VALUES ("Gabrielle Sain", 42, "2010-12-13", 1200.00, "RH");

INSERT INTO tb_colaboradores (nome, idade, data_admissao, salario, departamento)
VALUES ("Isabella Knoplich", 36, "2015-04-29", 1900.00, "Ilustração");

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET idade = 43 WHERE id = 3;

SELECT * FROM tb_colaboradores;