INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("saia", 45.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("calça", 45.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("roupão", 45.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("saia", 45.99, 4);
INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("roupão", 15.99, 4);


SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE marca_id = 4 AND nome LIKE '%cal%';

SHOW DATABASES;

CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

SELECT * FROM Persons;

ALTER TABLE Persons MODIFY COLUMN Age int NOT NULL;
ALTER TABLE Persons MODIFY Age int NOT NULL;

SELECT * FROM tb_marcas;

ALTER TABLE tb_marcas ADD descricao VARCHAR(255);

UPDATE tb_marcas SET descricao = 'Marca Nike' WHERE nome = 'Nike';

DELETE FROM tb_marcas WHERE nome = 'Nike';