CREATE DATABASE escola;
USE escola;

CREATE TABLE estudante(
	id BIGINT AUTO_INCREMENT,
	nome VARCHAR(10) NOT NULL, 
    telefone VARCHAR(15),
	idade INT, 
    nota REAL NOT NULL, 
    serie VARCHAR(10),
    
	PRIMARY KEY (id)
    );
    
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

SELECT * FROM estudante WHERE nota > 7.0;
SELECT * FROM estudante WHERE nota < 7.0;
UPDATE estudante SET nome='Lores' WHERE id=3; 
UPDATE estudante SET nome='Lomer' WHERE nome='Lores'; 
SELECT * FROM estudante;