CREATE DATABASE db_construindo_vidas;

CREATE TABLE tb_categorias (
cat_Id BIGINT AUTO_INCREMENT,
cat_Nome VARCHAR(80) NOT NULL,
descricao VARCHAR(80) NOT NULL,
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

INSERT INTO tb_categorias (cat_Nome, descricao) VALUES 
("Decoração", "Tintas, Cortinas, Tapetes, Quadros e Luminárias"),
("Material Elétrico", "Fios, Cabos, Interruptores e Tomadas"),
("Material Hidráulico", "Caixas D' Água, Chuveiros, Duchas e Torneiras"),
("Móveis", "Cozinha, Quarto, Sala e Banheiro"),
("Ferramentas", "Manuais e Elétricas");

INSERT INTO tb_produtos (prod_Nome, quantidade, calculoQtde, preco, estoque, cat_Id_fk) 
VALUES 
("Lata de Tinta Branco Gelo", 1, "Litro", 48.99, 19, 1),
("Tapete para Sala 200cmx250cm", 1, "Unidade", 1499.00, 10, 1),
("Cabo de Energia 750v 2,5mm 100 Metros", 1, "Unidade", 156.19, 24, 2),
("Chuveiro Elétrico 6800w 220v", 1, "Unidade", 143.99, 30, 3),
("Poltrona em Aço com Fibra Sintética", 1, "Unidade", 99.99, 5, 4),
("Mesa para Computador com Prateleira 75x110cm", 1, "Unidade", 349.89, 9, 4),
("Alicate Corte Diagonal em Aço 4''", 1, "Unidade", 34.99, 85, 5),
("Furadeira de Impacto 18v 13mm", 1, "Unidade", 854.99, 34, 5);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

-- Exercícios:

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE prod_Nome LIKE '%c%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.cat_Id_fk = tb_categorias.cat_Id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.cat_Id_fk = tb_categorias.cat_Id
WHERE cat_Id = 5;

-- drop
DROP TABLE tb_produtos;
DROP TABLE tb_categorias;