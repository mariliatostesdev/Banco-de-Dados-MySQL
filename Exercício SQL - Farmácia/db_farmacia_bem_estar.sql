CREATE DATABASE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
cat_Id BIGINT AUTO_INCREMENT,
cat_nome VARCHAR(80) NOT NULL,
precisaReceita VARCHAR(20) NOT NULL,
PRIMARY KEY (cat_Id)
);

CREATE TABLE tb_produtos (
prod_Id BIGINT AUTO_INCREMENT,
prod_Nome VARCHAR(80) NOT NULL,
descricao VARCHAR(255) NOT NULL,
preco DECIMAL(8,2) NOT NULL,
estoque BIGINT NOT NULL,
cat_Id_fk BIGINT NOT NULL,
PRIMARY KEY (prod_Id),
FOREIGN KEY (cat_Id_fk) REFERENCES tb_categorias (cat_Id)
);

INSERT INTO tb_categorias (cat_nome, precisaReceita) VALUES ("Remédios", "NÃO");
INSERT INTO tb_categorias (cat_nome, precisaReceita) VALUES ("Remédios Tarja Preta", "SIM");
INSERT INTO tb_categorias (cat_nome, precisaReceita) VALUES ("Cosméticos", "NÃO");
INSERT INTO tb_categorias (cat_nome, precisaReceita) VALUES ("Balas e Chicletes", "NÃO");
INSERT INTO tb_categorias (cat_nome, precisaReceita) VALUES ("Alimentos", "NÃO");

INSERT INTO tb_produtos (prod_Nome, descricao, preco, estoque, cat_Id_fk) 
VALUES 
("Buscopan Composto", "20 comprimidos. Remédio indicado para cólica menstrual", 24.29, 61, 1),
("Alivium", "100mg, Gotas 20ml. Remédio indicado para dor de cabeça", 36.59, 24, 1),
("Rivotril Clonazepam", "30 comprimidos, 2mg. Remédio com propriedades sedativas, relaxantes e anticonvulsivantes", 32.57, 19, 2),
("Venvanse", "28 cápsulas, 30mg. Remédio indicado para o tratamento do Transtorno do Déficit de Atenção / Hiperatividade (TDAH).", 364.37, 10, 2),
("Kit Needs Proteção Solar", "1 protetor solar (200g) e 1 protetor solar facial (40g), ambos com FPS 30.", 39.09, 67, 3),
("Creme Cicaplast Baume", "B5+ La Roche-Posay 20ml. Creme multirreparador calmante que acelera e melhora a reparação da barreira da pele", 40.99, 98, 3),
("Bebida Láctea UHT YoPro Chocolate", "15g Proteínas. Fórmula conta com whey + caseína e nutrientes que contribuem para recuperação muscular e saciedade.", 11.89, 56, 5),
("Trident Sabor Melancia", "5 unidades. Goma de mascar sem açúcar e sem glúten sabor melancia", 3.55, 126, 4);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

-- Exercícios 6 a 10:

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE prod_Nome LIKE '%c%';

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.cat_Id_fk = tb_categorias.cat_Id;

SELECT * FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.cat_Id_fk = tb_categorias.cat_Id
WHERE cat_Id = 2;
