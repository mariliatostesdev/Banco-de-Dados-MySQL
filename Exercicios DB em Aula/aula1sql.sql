CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    datavalidade DATE,
    preco DECIMAL NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("tomate", 100, "2023-12-15", 8.00);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco)
VALUES ("abacaxi", 50, "2023-12-18", 12.00),
("goiaba", 80, "2023-12-28", 6.00),
("manga", 20, "2023-12-11", 5.00),
("morango", 90, "2023-12-10", 11.00),
("cereja", 50, "2023-12-18", 12.00);

SELECT nome, preco FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;

DELETE FROM tb_produtos WHERE id = 8;

SELECT * FROM tb_produtos WHERE preco > 10.0;

SELECT * FROM tb_produtos WHERE preco > 6.0 AND quantidade < 80;

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6, 2);

SELECT * FROM tb_produtos;

SET SQL_SAFE_UPDATES = 0;
UPDATE tb_produtos SET preco = 5.99 WHERE id = 5;

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

UPDATE tb_produtos SET descricao = "Tomate Cereja" WHERE id = 1;
UPDATE tb_produtos SET descricao = "Abacaxi Pérola" WHERE id = 3;
UPDATE tb_produtos SET descricao = "Goiaba Branca" WHERE id = 4;
UPDATE tb_produtos SET descricao = "Manga Palmer" WHERE id = 5;
UPDATE tb_produtos SET descricao = "Morango da Luiza Sonza" WHERE id = 6;
UPDATE tb_produtos SET descricao = "Cereja de bolo" WHERE id = 7;

SELECT * FROM tb_produtos;

SET SQL_SAFE_UPDATES = 1;
