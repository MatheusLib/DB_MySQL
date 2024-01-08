CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    serie VARCHAR(255) NOT NULL,
    media DECIMAL(8 , 2 ) NOT NULL,
    idade INT,
    PRIMARY KEY (id)
);
INSERT INTO tb_estudantes (nome, serie, media, idade)
VALUES ("Matheus", "5 Serie", 7.00, 8),
("Caior", "5 Serie", 8.00, 8),
("Rexa", "5 Serie", 2.00, 8),
("Fazer", "5 Serie", 10.00, 8),
("Jorge", "5 Serie", 10.00, 8),
("Melissa", "5 Serie", 6.00, 8),
("Jessica", "5 Serie", 5.00, 8),
("Luciana", "5 Serie", 9.00, 8),
("Felipe", "5 Serie", 7.50, 8),
("Rafael", "5 Serie", 1.00, 8);

SELECT * FROM tb_estudantes WHERE media >7.00;
SELECT * FROM tb_estudantes WHERE media <8.00;
UPDATE tb_estudantes SET idade = 9 WHERE id = 6;
SELECT * FROM tb_estudantes;