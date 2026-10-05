CREATE TABLE produto (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INTEGER,
    marca VARCHAR(50),
    descricao VARCHAR(200)
);

INSERT INTO produto
(nome, categoria, preco, estoque, marca, descricao)
VALUES
('Notebook IdeaPad 3', 'Notebook', 3200.00, 10, 'Lenovo', 'Notebook para estudos e trabalho'),
('Notebook Aspire 5', 'Notebook', 4100.00, 5, 'Acer', 'Notebook com processador Intel'),
('MacBook Air M2', 'Notebook', 7500.00, 3, 'Apple', 'Notebook compacto e potente'),
('Mouse Logitech M170', 'Periférico', 89.90, 25, 'Logitech', 'Mouse sem fio'),
('Mouse Gamer G203', 'Periférico', 179.90, 15, 'Logitech', 'Mouse gamer com RGB'),
('Teclado Mecânico K2', 'Periférico', 350.00, 8, 'Keychron', 'Teclado mecânico sem fio'),
('Monitor LG 24"', 'Monitor', 899.90, 12, 'LG', 'Monitor Full HD'),
('Monitor Samsung 27"', 'Monitor', 1299.90, 0, 'Samsung', 'Monitor QHD'),
('Smartphone Galaxy A55', 'Celular', 1899.90, 20, 'Samsung', 'Smartphone Android'),
('iPhone 15', 'Celular', 4999.90, 7, 'Apple', 'Smartphone Apple'),
('iPhone 13', 'Celular', 3299.90, 0, 'Apple', 'Smartphone Apple'),
('Smart TV 50"', 'TV', 2499.90, 6, 'Samsung', 'Smart TV 4K'),
('Smart TV 43"', 'TV', 1999.90, 4, 'LG', 'Smart TV 4K'),
('Headset Cloud II', 'Áudio', 599.90, 9, 'HyperX', 'Headset gamer'),
('Fone Bluetooth', 'Áudio', 249.90, 30, 'JBL', NULL);



-- Buscar produtos com faixa de preço
-- BETWEEN
SELECT * FROM Produto
WHERE preco BETWEEN 1000 AND 3000;

-- Verificar se o valor pertece a algo da lista
-- Listar todos os produtos de categorias:
-- notebook, monitor, tv
SELECT * from produto
WHERE categoria IN('Notebook', 'Monitor', 'TV');

-- O contrário
SELECT * from produto
WHERE categoria NOT IN('Notebook', 'Monitor', 'TV');


-- Buscar textos usando "parte"
-- Buscar produtos cujo o nome começa com Notebook
SELECT * FROM produto
where nome ILIKE 'notebook%'

-- Buscar produto cujo o nome tenha ideapad
SELECT * FROM produto
where nome ILIKE '%ideapad%';
-- em outra coluna
SELECT * FROM produto
where descricao ILIKE '%apple%';

-- Buscar dados  que tenha campos nulos
SELECT * FROM produto
WHERE descricao is null;

-- Nao esta nullo
SELECT * FROM produto
WHERE descricao is not null OR nome is not null ;

-- NEGAR codição 
-- Selectionar categoria que nao seja celular
SELECT * FROM produto
where NOT categoria = 'Celular';


SELECT * FROM produto
where NOT preco > 3000;

-- Distinct - Valores unicos
SELECT DISTINCT categoria FROM produto

-- DIFERENTE
Select * from produto
where categoria <> 'Celular';

-- Misturando
SELECT * from produto
where marca IN ('Apple', 'Samsung') AND
preco < 5000;

SELECT * from produto
where marca IN ('Apple', 'Samsung') AND
estoque BETWEEN 5 AND 15;


SELECT distinct categoria from produto
where marca IN ('Apple', 'Samsung') AND
estoque BETWEEN 5 AND 15;


-- Order by and Group by

--1
SELECT * from produto
ORDER BY nome ASC;

--2
SELECT * from produto
ORDER BY preco ASC;

--3
SELECT * from produto
ORDER BY preco DESC;

--4
SELECT * from produto
ORDER BY estoque DESC;

--5
SELECT * from produto
WHERE categoria = 'Celular' ORDER BY preco DESC;

--6
SELECT COUNT(categoria)
FROM produto;

--7
SELECT AVG(preco)
FROM produto;

--8
SELECT SUM(estoque)
FROM produto

--9
SELECT MAX(preco)
FROM produto;

--10
SELECT MIN(preco)
FROM produto;

--11
SELECT categoria, COUNT (categoria)
FROM produto
GROUP BY categoria;

--12
SELECT marca,COUNT(marca)
FROM produto
GROUP BY marca;

--13
SELECT categoria, AVG(preco)
FROM produto
GROUP BY categoria;

--14

SELECT categoria, MAX(preco)
FROM produto
GROUP BY categoria;

--15

SELECT categoria, MIN(preco)
FROM produto
GROUP BY categoria;

--16

SELECT categoria, SUM(preco)
FROM produto
GROUP BY categoria;

--17

SELECT categoria,COUNT(estoque), AVG(preco)
FROM produto
GROUP BY categoria;

--18

SELECT marca, COUNT(estoque)
FROM produto
GROUP BY marca; -- estoque e quantidade de produtos observei ser a mesma coisa

--19

SELECT categoria, MAX(preco) , MIN(preco)
FROM produto
GROUP BY categoria;

--20

SELECT categoria, COUNT(estoque),
AVG(preco), MAX(preco),
MIN (preco)
FROM produto
GROUP BY categoria;