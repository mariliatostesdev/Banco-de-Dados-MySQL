CREATE DATABASE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
cat_Id BIGINT AUTO_INCREMENT,
cat_Nome VARCHAR(80) NOT NULL,
descricao VARCHAR(80) NOT NULL,
PRIMARY KEY (cat_Id)
);

CREATE TABLE tb_cursos (
curso_Id BIGINT AUTO_INCREMENT,
curso_Nome VARCHAR(80) NOT NULL,
instrutor VARCHAR(80) NOT NULL,
numAulas BIGINT NOT NULL,
cargaHoraria BIGINT NOT NULL,
preco DECIMAL(9,2) NOT NULL,
cat_Id_fk BIGINT NOT NULL,
PRIMARY KEY (curso_Id),
FOREIGN KEY (cat_Id_fk) REFERENCES tb_categorias (cat_Id)
);

INSERT INTO tb_categorias (cat_Nome, descricao) VALUES 
("Finanças","Cursos de investimentos e organização financeira"),
("Marketing","Cursos de Marketing Digital, SEO e Social Media"),
("Tecnologia","Cursos de Programação Full Stack, Data Science e DevOps"),
("Idiomas","Cursos de Inglês, Francês, Espanhol e Italiano"),
("Artes","Cursos de Desenho, Ilustração, Dança e Canto");

INSERT INTO tb_cursos (curso_Nome, instrutor, numAulas, cargaHoraria, preco, cat_Id_fk) 
VALUES 
("Investindo na Bolsa pela Primeira Vez", "Nathalia Arcuri", 60, 8, 298.89, 1),
("Estratégias de SEO para Impulsionar seu Site", "Vitor Peçanha", 95, 15, 367.00, 2),
("Masterizando o Copywriting", "Cristiano Santos", 45, 20, 2284.89, 2),
("Curso Completo de Front End + 50 Projetos", "Filipe Deschamps", 30, 10, 1147.00, 3),
("APIs REST para Iniciantes", "Alexandre Correia", 21, 9, 159.99, 3),
("Aprenda Inglês com Música", "Mairo Vergara", 89, 75, 624.90, 4),
("Diálogos em Francês para Viagens", "Rafael Camargo", 136, 9, 122.90, 4),
("Saia do Zero no Desenho de Mangá", "Cesar Kenji", 61, 31, 99.00, 5);



SELECT * FROM tb_categorias;

SELECT * FROM tb_cursos;

-- Exercícios:

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE curso_Nome LIKE '%j%';

SELECT * FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.cat_Id_fk = tb_categorias.cat_Id;

SELECT * FROM tb_cursos
INNER JOIN tb_categorias
ON tb_cursos.cat_Id_fk = tb_categorias.cat_Id
WHERE cat_Id = 3;

-- drop
DROP TABLE tb_cursos;
DROP TABLE tb_categorias;