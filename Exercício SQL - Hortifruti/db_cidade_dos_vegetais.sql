CREATE DATABASE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
cat_Id BIGINT AUTO_INCREMENT,
cat_Nome VARCHAR(80) NOT NULL,
descricao VARCHAR(20) NOT NULL,
PRIMARY KEY (cat_Id)
);

CREATE TABLE tb_produtos (
prod_Id BIGINT AUTO_INCREMENT,
prod_Nome VARCHAR(80) NOT NULL,
quantidade DECIMAL(9,2) NOT NULL,
calculoQtde VARCHAR(20) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
estoque BIGINT NOT NULL,
cat_Id_fk BIGINT NOT NULL,
PRIMARY KEY (prod_Id),
FOREIGN KEY (cat_Id_fk) REFERENCES tb_categorias (cat_Id)
);

INSERT INTO tb_categorias (cat_Nome, descricao) VALUES ("Frutas", "R$/Unidade");
INSERT INTO tb_categorias (cat_Nome, descricao) VALUES ("Legumes", "R$/Unidade");
INSERT INTO tb_categorias (cat_Nome, descricao) VALUES ("Verduras", "R$/Maço");
INSERT INTO tb_categorias (cat_Nome, descricao) VALUES ("Ervas e Temperos", "R$/Kg");
INSERT INTO tb_categorias (cat_Nome, descricao) VALUES ("Grãos", "R$/Kg");

INSERT INTO tb_produtos (prod_Nome, quantidade, calculoQtde, preco, estoque, cat_Id_fk) 
VALUES 
("Mamão Papaya", 1, "Unidade", 7.99, 19, 1),
("Abacaxi Pérola", 1, "Unidade", 8.98, 12, 2),
("Cenoura", 1, "Unidade", 1.56, 24, 2),
("Abobrinha", 1, "Unidade", 2.74, 19, 2),
("Rúcula", 1, "Maço", 2.59, 5, 3),
("Alface Crespa", 1, "Maço", 3.79, 9, 3),
("Orégano", 1, "Pacote", 4.99, 15, 4),
("Páprica Doce", 1, "Pacote", 4.99, 28, 4),
("Quinoa Vermelha", 1, "Kg", 31.90, 5, 5),
("Linhaça Dourada", 1, "Kg", 12.90, 5, 5);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

-- Exercícios:

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE prod_Nome LIKE '%c%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.cat_Id_fk = tb_categorias.cat_Id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.cat_Id_fk = tb_categorias.cat_Id
WHERE cat_Id = 4;
