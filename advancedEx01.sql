CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL,
    grau_classe VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR(255) NOT NULL,
    level_atual BIGINT NOT NULL,
    pet VARCHAR(255),
    classe_id BIGINT,    
    PRIMARY KEY (id)
);

INSERT INTO tb_classes (nome_classe, grau_classe) VALUES ("Guerreiro", "Primaria"),
("Arqueiro", "Primaria"),
("Mago", "Primaria"),
("Paladino", "Secundaria"),
("Gatuno", "Secundaria"),
("Feiticeiro", "Secundaria");

INSERT INTO tb_personagens (nome_personagem, level_atual, pet, classe_id) VALUES
("LUis250", 25, "doguinho", 1),
("XxMatheusxX", 47, "Sombra da Noite", 5),
("LEstat", 33, "aparicao", 2),
("20Matar", 99, "Pet", 6),
("70MasNaoConsegue", 70, "Nulo", 6);

INSERT INTO tb_personagens (nome_personagem, level_atual, classe_id) VALUE ("Fernando", 7, 4);
INSERT INTO tb_personagens (nome_personagem, level_atual) VALUES ("Teste", 1),
("Arqueiro VIda", 3),
("Hello World", 1);

ALTER TABLE tb_personagens ADD poder_ataque BIGINT;
ALTER TABLE tb_personagens ADD poder_defesa BIGINT;
UPDATE tb_personagens SET poder_ataque = 2500 where id = 1;
UPDATE tb_personagens SET poder_defesa = 2500 where id = 1;
UPDATE tb_personagens SET poder_ataque = 3500 where id = 2;
UPDATE tb_personagens SET poder_defesa = 3500 where id = 2;
UPDATE tb_personagens SET poder_ataque = 1500 where id = 3;
UPDATE tb_personagens SET poder_defesa = 1500 where id = 3;
UPDATE tb_personagens SET poder_ataque = 500 where id = 4;
UPDATE tb_personagens SET poder_defesa = 500 where id = 4;
UPDATE tb_personagens SET poder_ataque = 6500 where id = 5;
UPDATE tb_personagens SET poder_defesa = 6500 where id = 5;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa > 1000 and poder_defesa <2000;
SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

ALTER TABLE tb_personagens ADD CONSTRAINT fk_classe_personagens
FOREIGN KEY (classe_id) REFERENCES tb_classes(id);

SELECT 
    *
FROM
    tb_personagens
        INNER JOIN
    tb_classes ON tb_personagens.classe_id = tb_classes.id;
    
SELECT 
    *
FROM
    tb_personagens
        INNER JOIN
    tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 2;


