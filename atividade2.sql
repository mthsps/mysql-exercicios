-- 1. Crie um banco de dados para um serviço de uma quitanda, onde o sistema trabalhará com as informações dos produtos desta empresa. 
CREATE DATABASE quitanda;
USE quitanda;


-- 2. Crie uma tabela de categorias para produtos da quitanda.
CREATE TABLE categoria (
	id BIGINT AUTO_INCREMENT,
	classificacao VARCHAR(30) NOT NULL, 
    
    PRIMARY KEY(id)
    );


-- 3. Crie uma tabela de produtos e determine 5 atributos relevantes para se trabalhar com o serviço desta quitanda.
-- 4. Faça o relacionamento de categorias na tabela de produto através da foreign key (id_categoria).
CREATE TABLE produto (
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	preco REAL NOT NULL, 
    tipo VARCHAR(30),
	quantidade INT, 
    categoria_id BIGINT,
    
    FOREIGN KEY (categoria_id) REFERENCES categoria(id),
	PRIMARY KEY(id)
    );

-- 5. Insira nestas tabelas no mínimo 5 dados (registros).
INSERT INTO categoria (classificacao) 
	VALUES 
		('Asteraceas'), 
		('Cruciferas'),
		('Leguminosas'),
		('Liliáceas'),
		('Quenopodiáceas');
		
INSERT INTO produto (nome, preco, tipo, quantidade, categoria_id) 
	VALUES 
		('Alface', 5.66, 'Verdura', 40, 1), 
		('Brócolis', 8.67, 'Legume', 24, 2),
		('Ervilha', 3.45, 'Legume', 80, 3),
		('Alho', 2.20, 'Raiz', 100, 4),
		('Beterraba', 6.20, 'Legume', 0, 5);
    

-- 6. Faça um SELECT que retorne todos os produtos.
SELECT * FROM produto;

-- 7. Faça um SELECT que retorne todas as categorias.
SELECT * FROM categoria;

-- 8. Faça um SELECT que retorne todas as com o valor maior do que 5.
SELECT * 
FROM produto
WHERE preco > 5;

-- 9. Faça um SELECT que retorne todos os produtos que contém a letra %a%.
SELECT * 
FROM produto
WHERE 
	nome LIKE '%a%';

-- 10. Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE produto 
SET 
	preco = 10.00 
WHERE 
	nome = 'Brócolis'; 
