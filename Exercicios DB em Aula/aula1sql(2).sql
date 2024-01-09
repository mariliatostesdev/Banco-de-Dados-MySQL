CREATE DATABASE db_estoque;
-- Usado para criar uma DB

DROP DATABASE db_estoque;
-- Usado para apagar a DB 

USE db_estoque;
-- Usado para indicar a DB que queremos manipular

CREATE TABLE tb_marcas(id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY(id)
);
-- Usado para criar a tabela tb_marcas, com 3 campos diferentes + estabelecer o campo 'id' como chave primária.

DROP TABLE tb_marcas;
-- Usado para apagar a tabela

TRUNCATE TABLE tb_marcas;
-- Usado para apagar todos os dados da tabela, mas não sua estrutura.

INSERT INTO tb_marcas(nome, ativo) VALUES ("nike", true);
-- Usado para inserirmos dados em tabelas (coluna, valor)

SELECT * FROM tb_marcas;
-- Usado para visualizar toda a tabela tb_marcas

SELECT nome FROM tb_marcas;
-- Usado para visualizar apenas o campo/a coluna 'nome' da tabela tb_marcas.

UPDATE tb_marcas SET ativo = true WHERE id = 2;
-- Usado para atualizar o valor do campo 'ativo', apenas no id 2.
-- id <> 2 -> significa "id DIFERENTE de 2"

DELETE FROM tb_marcas WHERE id = 2;
-- Usado para apagar a linha do id 2. Nunca mais poderemos ter um id 2.

ALTER TABLE tb_marcas ADD descricao VARCHAR(255);
-- Usado para criar um novo campo/uma nova coluna chamada "descrição", com tipo de dados varchar, mas com valores nulos ainda.

UPDATE tb_marcas SET descricao = "Marca Nike" WHERE id = 1;
-- Usado para alterar o valor do campo/coluna ‘descricao’, apenas na marca de id 1.

CREATE TABLE tb_produtos (id BIGINT AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
preco DECIMAL,
marca_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (marca_id) REFERENCES tb_marcas(id)
);
-- Usado para criar uma segunda tabela que vai usar o campo/a coluna 'id' da outra tabela como chave estrangeira/secundária.

INSERT INTO tb_produtos(nome, preco, marca_id) VALUES ("tênis", 199.90, 2);
-- Usado para inserir um produto em tb_produtos. Repare que em BDs, o preço decimal deve ser com ponto, e não vírgula.
-- O "2" está fazendo referência à marca com id 2, presente em tb_marcas. Se colocarmos um id de marca inexistente, dá erro 1452

ALTER TABLE tb_produtos MODIFY COLUMN preco DECIMAL(6, 2);
-- Usado para alterar o tipo de dados do campo/da coluna DECIMAL. Antes, estava sem especificar casas, agora podemos ter até 6 casas à esquerda e até 2 à direita.

UPDATE tb_produtos SET preco = 199.90 WHERE id = 2;
-- Usado para alterar o valor de fato, após a mudança no decimal.

SELECT * FROM tb_produtos WHERE marca_id = 4;
-- Usado para visualizar apenas produtos pertencentes à marca de id 4.

SELECT * FROM tb_produtos WHERE marca_id = 4 AND nome LIKE '%cal%';
-- Usado para visualizar apenas produtos percententes à marca de id 4 QUE TAMBÉM tenham nome que contém "cal". 
-- Ou seja, podemos pesquisar por apenas partes de um nome ou de qualquer outra informação da tabela com o LIKE e os '%' entre aspas simples.
-- Os "%" indicam a possibilidade de existir uma quantidade qualquer de caracteres.


