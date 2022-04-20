
-- -------------------------------------------------- ATIVIDADE 1 --------------------------------------------------

-- 1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
CREATE DATABASE recursos_humanos;
USE recursos_humanos;

-- 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
CREATE TABLE colaborador(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(10) NOT NULL, 
    telefone INT,
	idade INT, 
    email VARCHAR(30), 
    salario DOUBLE NOT NULL,
    
    PRIMARY KEY (id)
    );
    
-- 3. Insira nesta tabela no mínimo 5 dados (registros)
INSERT INTO colaborador(nome, telefone, idade, email, salario)
	VALUES
		('Etta', '087390', '29', 'etta@mail.com', '1663.00'), 
		('Irma', '973390', '46', 'irma@mail.com', '2993.00'), 
		('Barbara', '833344', '19', 'barb@mail.com', '1593.00'), 
		('Gladys','883390', '59', 'galdys@mail.com', '1993.00'),
        ('Almar', '888890', '29', 'alamr@mail.com', '3000');

-- 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM colaborador WHERE salario > 2000;

-- 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM colaborador WHERE salario < 2000;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE colaborador SET salario=2100.00 WHERE nome='Gladys'; 

SELECT * FROM colaborador;


-- -------------------------------------------------- ATIVIDADE 2 --------------------------------------------------

-- 1. Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE ecommerce;
USE ecommerce;

-- 2. Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE produto(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL, 
    marca VARCHAR(30),
	preco REAL NOT NULL, 
    cor VARCHAR(10),
	disponibilidade BOOLEAN, 
    
    PRIMARY KEY (id)
    );

-- 3. Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO produto(nome, marca, preco, cor, disponibilidade)
	VALUES
		('TV', 'Sansong', 1500.00, 'preto', TRUE), 
		('Geladeira', 'Consum', 1300.00 , 'branco', FALSE), 
		('Notebook', 'Asos', 1800.00 , 'cinza', TRUE), 
		('Webcam', 'Logi', 100.30 , 'preto', FALSE), 
        ('Liquidificador', 'Phillo', 80.60 , 'vermelho', TRUE), 
        ('Maquina de lavar', 'Mideo', 2405.00 , 'prata', FALSE), 
        ('Batedeira', 'Bter', 350.00 , 'branca', TRUE), 
        ('Forno', 'Forman', 840.00 , 'cinza', FALSE); 

-- 4. Faça um SELECT que retorne todos os produtos com o valor maior do que 500.
SELECT * FROM produto WHERE preco > 500;

-- 5. Faça um SELECT que retorne todos os produtos com o valor menor do que 500.
SELECT * FROM produto WHERE preco < 500;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE produto SET preco=100.00 WHERE nome='Liquidificador'; 
UPDATE produto SET disponibilidade=TRUE WHERE disponibilidade=FALSE; 

SELECT * FROM produto;


-- -------------------------------------------------- ATIVIDADE 3 --------------------------------------------------

-- 1. Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
CREATE DATABASE escola;
USE escola;

-- 2. Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
CREATE TABLE estudante(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(10) NOT NULL, 
    telefone VARCHAR(15),
	idade INT, 
    nota REAL NOT NULL, 
    serie VARCHAR(10),
    
	PRIMARY KEY (id)
    );

-- 3. Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO estudante(nome, telefone, idade, nota, serie)
	VALUES
		('Etta', 087390, 14, 3.4, '3-B'), 
        ('Larissa', 080390, 15, 5.4, '3-A'), 
        ('Lore', 087890, 14, 7.4, '3-C'), 
        ('Alma', 987390, 14, 8.4, '3-D'), 
        ('Selma', 087380, 15, 5.6, '3-B'), 
        ('Aros', 088390, 15, 9.4, '3-A'), 
        ('Aristes', 087399, 14, 8.4, '3-D'), 
        ('Almar', 087490, 14, 3.4, '3-B'), 
        ('Ethan', 080390, 15, 7.9, '3-C');
        
        
-- 4. Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM estudante WHERE nota > 7.0;

-- 5. Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM estudante WHERE nota < 7.0;

-- 6. Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE estudante SET nome='Lores' WHERE id=3; 
UPDATE estudante SET nome='Lomer' WHERE nome='Lores'; 

SELECT * FROM estudante;