CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
datanascimento DATE,
email VARCHAR(255) NOT NULL,
salario DECIMAL(7,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores(nome, datanascimento, email, salario)
values ('Ana', '1997-07-07', 'ana@gmail.com', 2500.00);
INSERT INTO tb_colaboradores(nome, datanascimento, email, salario)
values ('Lucas', '1998-08-08', 'lucas@gmail.com', 2800.00);
INSERT INTO tb_colaboradores(nome, datanascimento, email, salario)
values ('Luiz', '1999-09-09', 'luiz@gmail.com', 1900.00);
INSERT INTO tb_colaboradores(nome, datanascimento, email, salario)
values ('Neemias', '2000-10-10', 'neemias@gmail.com', 1800.00);
INSERT INTO tb_colaboradores(nome, datanascimento, email, salario)
values ('Sabrina', '2001-11-11', 'sabrina@gmail.com', 3000.00);

# Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaboradores WHERE salario > 2000;

# Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_colaboradores WHERE salario < 2000;

# Atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_colaboradores SET salario = 2600.00 WHERE id = 1;
