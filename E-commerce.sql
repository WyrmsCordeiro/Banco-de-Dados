CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
estoque INT,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Camiseta', 79.90, 50, 'Roupa');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Calça', 259.90, 20, 'Roupa');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Moletom', 399.90, 25, 'Roupa');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Boné', 35.90, 35, 'Acessório');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Jaqueta de Couro', 699.90, 10, 'Roupa');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Tênis Premium', 539.90, 30, 'Calçado');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Bolsa', 589.90, 60, 'Acessório');
INSERT INTO tb_produtos(nome, preco, estoque, descricao)
values ('Casaco de Pele', 1099.90, 10, 'Roupa');

# Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE preco > 500.00;

# Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE preco < 500.00;

# Atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos SET preco = 159.90 WHERE id = 2;

