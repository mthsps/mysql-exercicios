CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produto(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL, 
    marca VARCHAR(30),
	preco REAL NOT NULL, 
    cor VARCHAR(10),
	disponibilidade BOOLEAN, 
    
    PRIMARY KEY (id)
    );
    
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

SELECT * FROM produto WHERE preco > 500;
SELECT * FROM produto WHERE preco < 500;
UPDATE produto SET preco=100.00 WHERE nome='Liquidificador'; 
UPDATE produto SET disponibilidade=TRUE WHERE disponibilidade=FALSE; 
SELECT * FROM produto;