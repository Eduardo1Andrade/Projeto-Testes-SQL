
CREATE TABLE professor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    disciplina VARCHAR(100) NOT NULL,
    idade INT,
    salario NUMERIC(10,2),
    cidade VARCHAR(100)
);

INSERT INTO professor (nome, disciplina, idade, salario, cidade)
VALUES
('Ana Silva', 'Banco de Dados', 35, 5500.00, 'Teresina'),
('Carlos Souza', 'Programação', 42, 7200.00, 'Teresina'),
('Mariana Lima', 'Engenharia de Software', 29, 4800.00, 'Parnaíba'),
('João Santos', 'Redes de Computadores', 45, 6800.00, 'Teresina'),
('Fernanda Costa', 'Banco de Dados', 31, 5200.00, 'Picos'),
('Rafael Oliveira', 'Programação', 27, 4500.00, 'Floriano');

INSERT INTO professor (nome, disciplina, idade, salario, cidade)
VALUES
('Viva Mariana','Idiomas', 45,5567.00, 'Codó'),
('Diana', 'Libras', 25, 10045.00,'São Paulo'),
('Andersson', 'Banco de Dados', 15, 45.00, 'Duque de Caxias')

-- Ajeitar um negocio
DELETE FROM professor WHERE nome = 'Andersson';
INSERT INTO professor (nome, disciplina, idade, salario, cidade)
VALUES
('Andersson', 'Banco de Dados', 15, 45.00, 'Codó')
--Q1

SELECT * FROM professor;

--Q2

SELECT nome,disciplina FROM professor;


-- Q3

SELECT * FROM professor
WHERE disciplina = 'Banco de dados';

-- Q4

SELECT * FROM professor
WHERE cidade = 'Teresina';

-- Q5

SELECT * FROM professor
WHERE idade > 35;

-- Q6


SELECT * FROM professor
WHERE salario < 5000.00;

-- Q7


SELECT * FROM professor
WHERE salario > 5000.00 AND idade > 35;

-- Q8


SELECT * FROM professor
WHERE disciplina = 'Banco de Dados' AND salario > 5000;

-- Q9


SELECT * FROM professor
WHERE idade > 40 AND salario > 5000;

-- Q10


SELECT * FROM professor
WHERE cidade = 'Teresina' AND salario > 5000;

-- Q11


SELECT * FROM professor
WHERE cidade = 'Teresina' OR cidade = 'Parnaíba';


--Q12


SELECT * FROM professor
WHERE disciplina = 'Programação' OR disciplina = 'Banco de Dados';

-- Q13


SELECT * FROM professor
WHERE idade > 30 OR idade < 40;

--Q14


SELECT * FROM professor
WHERE salario < 5000 OR salario > 7000;

-- Q15


SELECT * FROM professor
WHERE cidade = 'Teresina' OR cidade = 'Parnaíba' AND salario > 5000;

-- Q16


SELECT * FROM professor
WHERE (cidade = 'Teresina' AND salario > 6000) OR (cidade = 'Parnaíba' AND idade > 35)

-- EX

SELECT * FROM professor
WHERE cidade = 'Codó' AND salario < 1000; -- quem mora em codó em ganha menos de um salario minimo

SELECT * FROM professor 
WHERE id > 5 OR id < 2 -- quem tem id abaixo de 2 ou acima de 5
