CREATE DATABASE IF NOT EXISTS loja_online;

USE loja_online;

CREATE TABLE IF NOT EXISTS produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL, -- Alterado para VARCHAR(255) para nome
    descricao TEXT NOT NULL,
    categoria ENUM('Eletrônicos', 'Móveis', 'Cozinha', 'Banheiro', 'Alimentação') NOT NULL, -- Corrigido o acento
    preco FLOAT,
    quantidade INT UNSIGNED,
    criado_em DATETIME
);

INSERT INTO produtos
    (nome, descricao, categoria, preco, quantidade, criado_em)
VALUES
    ('SmartTV', 'SmartTV 60p 4K', 'Eletrônicos', 6000, 20, '2024-12-03 14:30:35'),
    ('SmartPhone', 'SmartPhone Samsung', 'Eletrônicos', 1200, 15, '2023-10-30 14:30:35'),
    ('Panela', 'Panela Tramotina 10L', 'Cozinha', 50, 100, '2024-08-14 13:30:35'),
    ('Chuveiro', 'Chuveiro Eletrico 220w', 'Banheiro', 45, 80, '2024-01-01 08:30:35'),
    ('Melancia', 'Melancia 1kg', 'Alimentação', 30, 25, '2024-11-26 10:30:35'),
    ('Cama', 'Cama de King Size', 'Móveis', 3000, 50, '2024-05-08 14:30:35'),
    ('Bicicleta', 'Bicicleta 18 29', 'Móveis', 3000, 30, '2024-06-18 14:30:35'),
    ('Escova de Dentes', 'Escova Dental X', 'Banheiro', 5, 10000, '2024-04-26 14:30:35');


SELECT * FROM produtos;

SELECT * FROM produtos WHERE preco > 50;

SELECT nome, quantidade FROM produtos;

SELECT * FROM produtos ORDER BY preco DESC;

SELECT * FROM produtos ORDER BY preco ASC LIMIT 5;

SELECT * FROM produtos WHERE nome LIKE '%Smart%';

SELECT COUNT(*) AS contagem_produtos FROM produtos;

SELECT
	categoria,
    AVG(preco) AS media_preco
FROM produtos
GROUP BY categoria;

UPDATE produtos
SET descricao = 'Bicicleta MTB aro29', nome = 'Bicicleta MTB'
WHERE id = 7;

DELETE FROM produtos WHERE id = 8;