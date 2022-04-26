-- -------------------------------------------------- ATIVIDADE 1 --------------------------------------------------

-- 1. Crie um banco de dados para um serviço de um Games Online. O nome do banco de dados deverá ser generation_game_online.
CREATE DATABASE generation_game_online;
USE generation_game_online;

-- 2. Crie a tabela classes e determine pelo menos 2 atributos, além da chave primária.
CREATE TABLE classes (
	PRIMARY KEY (id),
    
	id   BIGINT       AUTO_INCREMENT,
    nome VARCHAR(30)  NOT NULL,
	arma VARCHAR(30)  NOT NULL
);

-- 3. Crie uma tabela de personagens e determine 4 atributos relevantes.
-- 4. Faça o relacionamento com a tabela classes.
CREATE TABLE personagens (
	PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES classes(id),
    
	id         BIGINT      AUTO_INCREMENT,
    classe_id  BIGINT,
	nome       VARCHAR(30) NOT NULL,
	planeta    VARCHAR(30) NOT NULL,
    ataque     NUMERIC,
	defesa     NUMERIC
);

-- 5. Insira 5 registros na tabela classes.
INSERT INTO classes (nome, arma) 
     VALUES ('Guerreiro', 'Espada'), 
			('Mago', 'Cajado'),
			('Elfo', 'Arco'),
			('Anão', 'Machado'),
			('Ladrão', 'Adaga');
	
-- 6. Insira 8 registros na tabela personagens.
INSERT INTO personagens (nome, planeta, ataque, defesa, classe_id) 
	 VALUES ('Dom Quixote', 'Terra', 3000, 3300, 1), 
			('Salandriel', 'Urano', 1500, 1200, 2),
			('Muriel', 'Plutão', 2300, 1800, 3),
			('Saladar', 'Montora', 2800, 1100, 4),
			('Snackar', 'Saturno', '2000', 3000, 5),
            ('Somel', 'Plutão', 1600, 1800, 3),
			('Bunel', 'Python', 2200, 1100, 2),
			('Mondel', 'Saturno', '1900', 2600, 5);

-- 7. Faça um SELECT que retorne todos os personagens cujo poder de ataque seja maior do que 2000.
SELECT * 
  FROM personagens
 WHERE ataque > 2000;

-- 7. Faça um SELECT que retorne todos os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * 
  FROM personagens
 WHERE defesa BETWEEN 1000 AND 2000;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todos os personagens que possuam a letra C no atributo nome.
SELECT * 
  FROM personagens
 WHERE nome LIKE '%c%';

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela personagens com os dados da tabela classes.
SELECT * 
  FROM personagens AS p
	   INNER JOIN classes AS c
       ON p.classe_id = c.id;
       
-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela personagens com os dados da tabela classes, onde traga apenas os personagens que pertençam a uma classe específica.
SELECT * 
  FROM personagens AS p
	   INNER JOIN classes AS c
       ON p.classe_id = c.id
       WHERE p.classe_id = 3;


-- -------------------------------------------------- ATIVIDADE 2 --------------------------------------------------
       
-- 1. Crie um banco de dados para um serviço de uma pizzaria. O nome do banco de dados deverá ser pizzaria_legal.
CREATE DATABASE pizzaria_legal;
USE pizzaria_legal;

-- 2. Crie a tabela categorias e determine pelo menos 2 atributos, além da chave primária.
CREATE TABLE categorias (
	PRIMARY KEY (id),
    
	id       BIGINT       AUTO_INCREMENT,
    nome     VARCHAR(30)  NOT NULL,
	calorica BOOLEAN  NOT NULL
);

-- 3. Crie uma tabela de pizzas e determine 4 atributos relevantes.
-- 4. Faça o relacionamento com a tabela categorias.
CREATE TABLE pizzas (
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id),
    
	id              BIGINT      AUTO_INCREMENT,
    categoria_id    BIGINT,
	nome            VARCHAR(30) NOT NULL,
	disponibilidade BOOLEAN     NOT NULL,
    preco           DECIMAL
);

-- 5. Insira 5 registros na tabela classes.
INSERT INTO categorias (nome, calorica)
     VALUES ('Vegetaria', false), 
			('Vegana', false),
			('Gluteica', true),
			('Tradicional', true),
			('Doce', true);
	
-- 6. Insira 8 registros na tabela personagens.
INSERT INTO pizzas (nome, disponibilidade, preco, categoria_id) 
	 VALUES ('Milho', true, 55.00, 1), 
			('Brócolis', true, 65.00, 2),
			('Calabresa', true, 40.00, 4),
			('Cheddar', false, 75.00, 3),
            ('Mussarela', true, 35.00, 1),
			('Banana', true, 85.00, 5),
			('Abobrinha', true, 76.00, 2),
			('Portuguesa', true, 44.00, 4);
            
-- 7. Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * 
  FROM pizzas
 WHERE preco > 45.00;

-- 7. Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * 
  FROM pizzas
 WHERE preco BETWEEN 50.00 AND 100.00;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todos as pizzas que possuam a letra M no atributo nome.
SELECT * 
  FROM pizzas
 WHERE nome LIKE '%m%';

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela pizzas com os dados da tabela categorias.
SELECT * 
  FROM pizzas AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id;
       
-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela pizzas com os dados da tabela categorias, onde traga apenas as pizzas que pertençam a uma categoria específica.
SELECT * 
  FROM pizzas AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id
       WHERE p.categoria_id = 4;
       
       
-- -------------------------------------------------- ATIVIDADE 3 --------------------------------------------------

-- 1. Crie um banco de dados para um serviço de farmácia. O nome do banco de dados deverá ser farmacia_bem_estar.
CREATE DATABASE farmacia_bem_estar;
USE farmacia_bem_estar;

-- 2. Crie a tabela categorias e determine pelo menos 2 atributos, além da chave primária.
CREATE TABLE categorias (
	PRIMARY KEY (id),
    
	id         BIGINT       AUTO_INCREMENT,
    nome       VARCHAR(30)  NOT NULL,
	controlado BOOLEAN      NOT NULL
);

-- 3. Crie uma tabela de produtos e determine 4 atributos relevantes.
-- 4. Faça o relacionamento com a tabela categorias.
CREATE TABLE produtos (
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id),
    
	id           BIGINT      AUTO_INCREMENT,
    categoria_id BIGINT,
	nome         VARCHAR(30) NOT NULL,
	preco        DECIMAL     NOT NULL, 
    promocao     BOOLEAN,
	quantidade   NUMERIC
);

-- 5. Insira 5 registros na tabela categorias.
INSERT INTO categorias (nome, controlado) 
     VALUES ('Fitoterápico', false), 
			('Alopático', true),
			('Homeopático', false),
			('Similar', true),
			('Genérico', true),
            ('Referência', true);
	
-- 6. Insira 8 registros na tabela produtos.
INSERT INTO produtos (nome, preco, promocao, quantidade, categoria_id) 
	 VALUES ('Ginko Biloba', 25.00, true, 100, 1), 
			('Paracetamol', 15.00, false, 150, 2),
			('Dipirona', 6.00, true, 80, 2),
			('Buchinha paulista', 25.00, false, 30, 3),
			('Amoxicilina', 70.00, false, 23, 4),
			('Tylenol', 35.00, false, 15, 6),
			('Anfetamina', 86.00, false, 80, 5),
			('Captopril', 85.00, false, 5, 5),
			('Efavirenz', 26.00, true, 43, 5);
            
-- 7. Faça um SELECT que retorne todos os produtos cujo cujo valor seja maior do que R$ 50,00.
SELECT * 
  FROM produtos
 WHERE preco > 2000;

-- 7. Faça um SELECT que retorne todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * 
  FROM produtos
 WHERE preco BETWEEN 5.00 AND 60.00;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome.
SELECT * 
  FROM produtos
 WHERE nome LIKE '%c%';

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela produtos com os dados da tabela categorias.
SELECT * 
  FROM produtos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id;
       
-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela produtos com os dados da tabela categorias, onde traga apenas os produtos que pertençam a uma categoria específica.
SELECT * 
  FROM produtos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id
       WHERE p.categoria_id = 5;

-- -------------------------------------------------- ATIVIDADE 4 --------------------------------------------------

-- 1. Crie um banco de dados para um serviço de hortifruti. O nome do banco de dados deverá ser cidade_dos_vegetais.
CREATE DATABASE cidade_dos_vegetais;
USE cidade_dos_vegetais;

-- 2. Crie a tabela categorias e determine pelo menos 2 atributos, além da chave primária.
CREATE TABLE categorias (
	PRIMARY KEY (id),
    
	id   BIGINT      AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    temporada VARCHAR(30) NOT NULL
);


-- 3. Crie uma tabela de produtos e determine 4 atributos relevantes.
-- 4. Faça o relacionamento com a tabela categorias.
CREATE TABLE produtos (
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id),
    
	id           BIGINT      AUTO_INCREMENT,
    categoria_id BIGINT,
	nome         VARCHAR(30) NOT NULL,
	preco        FLOAT       NOT NULL, 
    tipo         VARCHAR(30),
	quantidade   NUMERIC
);

-- 5. Insira 5 registros na tabela categorias.
INSERT INTO categorias (nome, temporada) 
     VALUES ('Asteraceas', 'Março'), 
			('Cruciferas', 'Junho'),
			('Leguminosas', 'Setembro'),
			('Liliáceas', 'Dezembro'),
			('Quenopodiáceas', 'Agosto');
	
-- 6. Insira 8 registros na tabela produtos.
INSERT INTO produtos (nome, preco, tipo, quantidade, categoria_id) 
	 VALUES ('Alface', 5.66, 'Verdura', 40, 1), 
			('Brócolis', 8.67, 'Legume', 24, 2),
			('Ervilha', 3.45, 'Legume', 80, 3),
			('Alho', 2.20, 'Raiz', 100, 4),
			('Beterraba', 6.20, 'Legume', 0, 5),
            ('Laranja', 1.45, 'Fruta', 80, 3),
			('Chocoria', 10.20, 'Raiz', 100, 2),
			('Maça', 8.45, 'Fruta', 34, 1);
    
            
-- 7. Faça um SELECT que retorne todos os produtos cujo cujo valor seja maior do que R$ 5,00.
SELECT * 
  FROM produtos
 WHERE preco > 5.00;

-- 7. Faça um SELECT que retorne todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 15,00.
SELECT * 
  FROM produtos
 WHERE preco BETWEEN 5.00 AND 15.00;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome.
SELECT * 
  FROM produtos
 WHERE nome LIKE '%c%';

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela produtos com os dados da tabela categorias.
SELECT * 
  FROM produtos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id;
       
-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela produtos com os dados da tabela categorias, onde traga apenas os produtos que pertençam a uma categoria específica.
SELECT * 
  FROM produtos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id
       WHERE p.categoria_id = 1;

-- -------------------------------------------------- ATIVIDADE 5 --------------------------------------------------

-- 1. Crie um banco de dados para um serviço de materiais de construção. O nome do banco de dados deverá ser construindo_vidas.
CREATE DATABASE construindo_vidas;
USE construindo_vidas;

-- 2. Crie a tabela categorias e determine pelo menos 2 atributos, além da chave primária.
CREATE TABLE categorias (
	PRIMARY KEY (id),
    
	id     BIGINT      AUTO_INCREMENT,
	nome   VARCHAR(30) NOT NULL,
    toxico BOOLEAN
);


-- 3. Crie uma tabela de produtos e determine 4 atributos relevantes.
-- 4. Faça o relacionamento com a tabela categorias.
CREATE TABLE produtos (
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id),
    
	id            BIGINT      AUTO_INCREMENT,
    categoria_id  BIGINT,
	nome          VARCHAR(30) NOT NULL,
	preco         FLOAT       NOT NULL, 
	quantidade    NUMERIC,
    armazenamento VARCHAR(30) NOT NULL
);

-- 5. Insira 5 registros na tabela categorias.
INSERT INTO categorias (nome, toxico) 
     VALUES ('Aço', false), 
			('Massas', true),
			('Ferro', false),
			('Madeira', false),
			('Resvestimento', true);
	
-- 6. Insira 8 registros na tabela produtos.
INSERT INTO produtos (nome, preco, quantidade, armazenamento, categoria_id) 
	 VALUES ('Cal', 100.00, 500, 'Armazém', 2), 
			('Reboco', 134.00, 1000, 'Armazém', 5), 
			('Tinta', 65.00, 160, 'Loja', 5), 
			('Viga', 45.00, 50, 'Loja', 3), 
			('Cantoneira', 24.00, 234, 'Loja', 1), 
            ('Porta', 450.00, 31, 'Loja', 4), 
			('Cimento', 175.00, 300, 'Armazém', 2), 
			('Aglomerante', 40.00, 400, 'Armazém', 2);
    
            
-- 7. Faça um SELECT que retorne todos os produtos cujo cujo valor seja maior do que R$ 5,00.
SELECT * 
  FROM produtos
 WHERE preco > 100.00;

-- 7. Faça um SELECT que retorne todos os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 15,00.
SELECT * 
  FROM produtos
 WHERE preco BETWEEN 70.00 AND 150.00;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todos os produtos que possuam a letra C no atributo nome.
SELECT * 
  FROM produtos
 WHERE nome LIKE '%c%';

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela produtos com os dados da tabela categorias.
SELECT * 
  FROM produtos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id;
       
-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela produtos com os dados da tabela categorias, onde traga apenas os produtos que pertençam a uma categoria específica.
SELECT * 
  FROM produtos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id
       WHERE p.categoria_id = 2;

-- -------------------------------------------------- ATIVIDADE 6 --------------------------------------------------

-- 1. Crie um banco de dados para um serviço de cursos online. O nome do banco de dados deverá ser curso_da_minha_vida.
CREATE DATABASE curso_da_minha_vida;
USE curso_da_minha_vida;

-- 2. Crie a tabela categorias e determine pelo menos 2 atributos, além da chave primária.
CREATE TABLE categorias (
	PRIMARY KEY (id),
    
	id     BIGINT      AUTO_INCREMENT,
	nome   VARCHAR(30) NOT NULL,
	tipada BOOLEAN
);


-- 3. Crie uma tabela de cursos e determine 4 atributos relevantes.
-- 4. Faça o relacionamento com a tabela categorias.
CREATE TABLE cursos (
	PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias (id),
    
	id           BIGINT      AUTO_INCREMENT,
    categoria_id BIGINT,
	nome         VARCHAR(30) NOT NULL,
	preco        FLOAT       NOT NULL, 
	vagas    	 NUMERIC,
    requisitos   BOOLEAN
);

-- 5. Insira 5 registros na tabela categorias.
INSERT INTO categorias (nome, tipada) 
     VALUES ('Java', true), 
			('Python', false),
			('Ruby', false),
			('JavaScipt', false),
			('C++', true);
	
-- 6. Insira 8 registros na tabela cursos.
INSERT INTO cursos (nome, preco, vagas, requisitos, categoria_id) 
	 VALUES ("Orientação a objetos", 555.00, 100, true, 5),
	        ("Lógica de programação", 400.00, 200, false, 1),
            ("Machine Learning", 889.00, 55, true, 2),
            ("Prototipos", 345.00, 150, false, 4),
            ("Estruturas de e-commerce", 900.00, 40, true, 3),
            ("Análise estatística", 600.00, 80, true, 2),
            ("REST API", 784.00, 70, true, 1),
            ("Construindo sites", 545.00, 100, false, 4);
    
            
-- 7. Faça um SELECT que retorne todos os cursos cujo cujo valor seja maior do que R$ 5,00.
SELECT * 
  FROM cursos
 WHERE preco > 500.00;

-- 7. Faça um SELECT que retorne todos os cursos cujo valor esteja no intervalo R$ 5,00 e R$ 15,00.
SELECT * 
  FROM cursos
 WHERE preco BETWEEN 600.00 AND 1000.00;

-- 8. Faça um SELECT utilizando o operador LIKE, buscando todos os cursos que possuam a letra J no atributo nome.
SELECT * 
  FROM cursos
 WHERE nome LIKE '%j%';

-- 9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela cursos com os dados da tabela categorias.
SELECT * 
  FROM cursos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id;
       
-- 10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela cursos com os dados da tabela categorias, onde traga apenas os cursos que pertençam a uma categoria específica.
SELECT * 
  FROM cursos AS p
	   INNER JOIN categorias AS c
       ON p.categoria_id = c.id
       WHERE p.categoria_id = 2;