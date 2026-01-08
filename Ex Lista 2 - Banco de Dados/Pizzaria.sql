CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT,
nomePizza VARCHAR(255) NOT NULL,
valor DECIMAL(5,2) NOT NULL,
bordaRecheada BOOLEAN NOT NULL,
quantidadeSabores INT NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ('Salgada', 'Pequena');
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ('Salgada', 'Média');
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ('Salgada', 'Grande');
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ('Doce', 'Pequena');
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ('Doce', 'Média');
INSERT INTO tb_categorias(tipo, tamanho) 
VALUES ('Doce', 'Grande');

INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Muçarela', 35.00, TRUE, 1, 1);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Calabresa', 45.00, FALSE, 1, 2);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Portuguesa', 55.00, TRUE, 2, 1);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Chocolate', 40.00, FALSE, 1, 4);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Frango com Catupiry', 60.00, TRUE, 2, 1);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Quatro Queijos', 55.00, FALSE, 1, 2);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Marguerita', 48.00, FALSE, 1, 3);
INSERT INTO tb_pizzas(nomePizza, valor, bordaRecheada, quantidadeSabores, categoria_id)
VALUES ('Prestígio', 46.00, FALSE, 1, 6);

# Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE valor > 45.00;

# Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE VALOR BETWEEN 50.00 AND 100.00;

# Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE nomePizza LIKE '%m%';

# Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT p.nomePizza, p.valor, p.bordaRecheada, p.quantidadeSabores, c.tipo, c.tamanho
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id;

# Faça um SELECT utilizando a cláusula INNER JOIN,
# unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias,
# onde traga apenas as pizzas que pertençam a uma categoria específica.
SELECT p.nomePizza, p.valor, p.bordaRecheada, p.quantidadeSabores, c.tipo, c.tamanho
FROM tb_pizzas p
INNER JOIN tb_categorias c
ON p.categoria_id = c.id
WHERE c.tipo = 'Doce';



