CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
tipoPokemon VARCHAR(255) NOT NULL,
regiaoPokemon VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nomePokemon VARCHAR(255) NOT NULL,
ataque INT,
defesa INT,
nivel INT,
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes(tipoPokemon, regiaoPokemon) 
VALUES ('Água', 'Kanto');
INSERT INTO tb_classes(tipoPokemon, regiaoPokemon) 
VALUES ('Fogo', 'Kanto');
INSERT INTO tb_classes(tipoPokemon, regiaoPokemon) 
VALUES ('Planta', 'Johto');
INSERT INTO tb_classes(tipoPokemon, regiaoPokemon) 
VALUES ('Elétrico', 'Kanto');
INSERT INTO tb_classes(tipoPokemon, regiaoPokemon) 
VALUES ('Terra', 'Hoenn');

INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Blastoise', 1000, 1500, 36, 1);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Moltres', 2500, 2900, 60, 2);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Celebi', 2000, 900, 50, 3);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Pikachu', 500, 400, 25, 4);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Groudon', 3000, 3500, 75, 5);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Psyduck', 300, 200, 5, 1);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Charizard', 2100, 1600, 36, 2);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Meganium', 2050, 1700, 75, 3);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Zapdos', 2500, 2700, 55, 4);
INSERT INTO tb_personagens(nomePokemon, ataque, defesa, nivel, classe_id)
VALUES ('Swampert', 1900, 1800, 40, 5);

# Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE ataque > 2000;

# Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

# Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nomePokemon LIKE '%c%';

# Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT p.nomePokemon, p.ataque, p.defesa, p.nivel, c.tipoPokemon, c.regiaoPokemon 
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id;

# Faça um SELECT utilizando a cláusula INNER JOIN, 
# unindo os dados da tabela tb_personagens com os dados da tabela tb_classes,
# onde traga apenas os personagens que pertençam a uma classe específica.
SELECT p.nomePokemon, p.ataque, p.defesa, p.nivel, c.tipoPokemon, c.regiaoPokemon
FROM tb_personagens p
INNER JOIN tb_classes c
ON p.classe_id = c.id
WHERE c.tipoPokemon = 'Terra' AND c.regiaoPokemon = 'Hoenn';

