CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_categorias (
cat_Id BIGINT AUTO_INCREMENT,
cat_Nome VARCHAR(45) NOT NULL,
precoMinimo DECIMAL(8,2) NOT NULL,
PRIMARY KEY (cat_Id)
);

CREATE TABLE tb_pizzas (
pizza_Id BIGINT AUTO_INCREMENT,
pizza_Nome VARCHAR(80) NOT NULL,
bordaRecheada VARCHAR(20) NOT NULL,
tamanho INT NOT NULL,
preco DECIMAL(8,2),
cat_Id_fk BIGINT NOT NULL,
PRIMARY KEY (pizza_Id),
FOREIGN KEY (cat_Id_fk) REFERENCES tb_categorias (cat_Id)
);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

INSERT INTO tb_categorias (cat_Nome, precoMinimo) VALUES ("Salgada", 39.99);
INSERT INTO tb_categorias (cat_Nome, precoMinimo) VALUES ("Doce", 39.99);
INSERT INTO tb_categorias (cat_Nome, precoMinimo) VALUES ("Salgada Especial", 69.99);
INSERT INTO tb_categorias (cat_Nome, precoMinimo) VALUES ("Doce Especial", 69.99);
INSERT INTO tb_categorias (cat_Nome, precoMinimo) VALUES ("Novidades", 49.99);

INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Mussarela", "NÃO", 8, 39.99, 1);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Calabresa", "SIM", 8, 49.99, 1);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Portuguesa", "NÃO", 8, 49.99, 1);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Camarão", "SIM", 8, 69.99, 3);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Chocolate", "NÃO", 4, 39.99, 2);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Beijinho", "NÃO", 4, 49.99, 2);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Nutella com Morango", "NÃO", 4, 69.99, 4);
INSERT INTO tb_pizzas (pizza_Nome, bordaRecheada, tamanho, preco, cat_Id_fk) VALUES ("Pistache", "NÃO", 4, 69.99, 5);

-- Exercícios 6 a 10
SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE pizza_Nome LIKE '%m%';

SELECT * 
FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.cat_Id_fk = tb_categorias.cat_Id;

SELECT * 
FROM tb_pizzas 
INNER JOIN tb_categorias
ON tb_pizzas.cat_Id_fk = tb_categorias.cat_Id
WHERE cat_Id = 2 OR cat_Id = 4;