use db_quitanda;

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 

SELECT * FROM tb_produtos;

CREATE TABLE tb_categorias (
id bigint auto_increment primary key,
descricao VARCHAR(255) NOT NULL
);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao)
VALUES ("FRUTAS"),
("VERDURAS"),
("LEGUMES"),
("TEMPEROS"),
("OVOS"),
("OUTROS");

ALTER TABLE tb_produtos ADD categoriaid bigint;

SELECT * FROM tb_produtos;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

UPDATE tb_produtos SET categoriaid = 3 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 7;

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nomeproduto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);

INSERT INTO tb_produtos (nomeproduto, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos (nomeproduto, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY nomeproduto DESC;
SELECT * FROM tb_produtos ORDER BY nomeproduto;

SELECT * FROM tb_produtos WHERE preco IN (1.50,13.00,15.00);

SELECT * FROM tb_produtos WHERE preco BETWEEN 8.00 AND 15.00;

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "%mate";

SELECT * FROM tb_produtos WHERE nomeproduto LIKE "m_r%";