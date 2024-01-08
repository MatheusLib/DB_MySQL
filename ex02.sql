CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    valor DECIMAL(8 , 2 ) NOT NULL,
    data_de_validade DATE,
    PRIMARY KEY (id)
);
INSERT INTO tb_produtos (descricao, tipo, valor, data_de_validade)
VALUES ("Leite", "Laticinio", 2999.00, "2024-01-08"),
("Uva", "Fruta", 1999.00, "2024-01-08"),
("Queijo", "Laticinio", 22999.00, "2024-01-08"),
("Maca", "Fruta", 99.00, "2024-01-08"),
("Picanha", "Carne", 12999.00, "2024-01-08"),
("Linguica", "Carne", 52999.00, "2024-01-08"),
("Cenoura", "Vegetal", 1999.00, "2024-01-08"),
("Queijo Branco", "Laticinio", 399.00, "2024-01-08"),
("Melancia", "Fruta", 99.00, "2024-01-08");

SELECT * FROM tb_produtos WHERE valor >500.00;
SELECT * FROM tb_produtos WHERE valor <500.00;
UPDATE tb_produtos SET valor = 9999.00 WHERE id = 1;
SELECT * FROM tb_produtos;