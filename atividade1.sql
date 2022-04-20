CREATE DATABASE recursos_humanos;
USE recursos_humanos;

CREATE TABLE colaborador(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(10) NOT NULL, 
    telefone INT,
	idade INT, 
    email VARCHAR(30), 
    salario DOUBLE NOT NULL,
    
    PRIMARY KEY (id)
    );
    
INSERT INTO colaborador(nome, telefone, idade, email, salario)
	VALUES
		('Etta', '087390', '29', 'etta@mail.com', '1663.00'), 
		('Irma', '973390', '46', 'irma@mail.com', '2993.00'), 
		('Barbara', '833344', '19', 'barb@mail.com', '1593.00'), 
		('Gladys','883390', '59', 'galdys@mail.com', '1993.00'),
        ('Almar', '888890', '29', 'alamr@mail.com', '3000');

SELECT * FROM colaborador WHERE salario > 2000;
SELECT * FROM colaborador WHERE salario < 2000;
UPDATE colaborador SET salario=2100.00 WHERE nome='Gladys'; 
SELECT * FROM colaborador;