CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
elemento INT NOT NULL,
poder_principal VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nivel INT NOT NULL,
vida INT NOT NULL,
pet VARCHAR(255),
classe_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

INSERT INTO tb_classes (nome, elemento, poder_principal) VALUES ("Mago", 1, "Chuva de Meteoros");
INSERT INTO tb_classes (nome, elemento, poder_principal) VALUES ("Guerreiro", 2, "Super Força");
INSERT INTO tb_classes (nome, elemento, poder_principal) VALUES ("Ninja", 2, "Ataque Furtivo");
INSERT INTO tb_classes (nome, elemento, poder_principal) VALUES ("Arqueiro", 3, "Flechas Duplas");
INSERT INTO tb_classes (nome, elemento, poder_principal) VALUES ("Curandeiro", 4, "Chá de Ervas");

INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Marilia", 1, 100, 1);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Giulia", 3, 100, 2);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Gabrielle", 5, 100, 3);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Isabella", 1, 100, 4);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Rafael", 9, 100, 5);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Claudia", 23, 100, 1);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("Maria", 6, 100, 2);
INSERT INTO tb_personagens (nome, nivel, vida, classe_id) VALUES("João", 56, 100, 3);

ALTER TABLE tb_personagens ADD poder_ataque INT NOT NULL;

UPDATE tb_personagens SET poder_ataque = 1000 WHERE id = 1;
UPDATE tb_personagens SET poder_ataque = 1500 WHERE id = 2;
UPDATE tb_personagens SET poder_ataque = 2000 WHERE id = 3;
UPDATE tb_personagens SET poder_ataque = 1000 WHERE id = 4;
UPDATE tb_personagens SET poder_ataque = 3000 WHERE id = 5;
UPDATE tb_personagens SET poder_ataque = 10000 WHERE id = 6;
UPDATE tb_personagens SET poder_ataque = 2300 WHERE id = 7;
UPDATE tb_personagens SET poder_ataque = 15000 WHERE id = 8;
UPDATE tb_personagens SET classe_id = 3 WHERE id = 4;

-- Exercícios 6 a 10
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

SELECT * 
FROM tb_classes 
INNER JOIN tb_personagens 
ON tb_classes.id = tb_personagens.classe_id;

SELECT * 
FROM tb_personagens
INNER JOIN tb_classes
ON tb_classes.id = tb_personagens.classe_id
WHERE classe_id = 3;
