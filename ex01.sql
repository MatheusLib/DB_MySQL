CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_funcionario (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario DECIMAL(8 , 2 ) NOT NULL,
    data_de_entrada DATE,
    PRIMARY KEY (id)
);
INSERT INTO tb_funcionario (nome, cargo, salario, data_de_entrada)
VALUES ("Matheus", "engenheiro", 2999.00, "2024-01-08"),
("Caior", "engenheiro", 1999.00, "2024-01-08"),
("Rexa", "engenheiro", 22999.00, "2024-01-08"),
("Fazer", "engenheiro", 999.00, "2024-01-08"),
("Jorge", "engenheiro", 12999.00, "2024-01-08"),
("Melissa", "engenheiro", 52999.00, "2024-01-08");

SELECT * FROM tb_funcionario WHERE salario >2000.00;
SELECT * FROM tb_funcionario WHERE salario <2000.00;
UPDATE tb_funcionario SET salario = 9999.00 WHERE id = 1;
SELECT * FROM tb_funcionario;

