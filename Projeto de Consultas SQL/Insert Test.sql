CREATE TABLE profissional(
	id SERIAL PRIMARY KEY,
	nome VARCHAR(200),
	email VARCHAR(300),
	salario DECIMAL,
	departamento VARCHAR(20) 
)

-- alterar tabela
ALTER TABLE profissional 
ADD COLUMN telefone INT;
ALTER TABLE profissional
ALTER COLUMN email TYPE VARCHAR(350);
ALTER TABLE profissional
RENAME COLUMN salario TO salario_mensal;
ALTER TABLE profissional 
DROP COLUMN salario_mensal;
DROP TABLE profissional

-- inserir dados
INSERT INTO profissional
(
nome, email, salario, departamento
)
VALUES(
'heloisa guilmarães',
'guilmarães@fsa.com',
40000.00,
'I.A'
);

INSERT INTO profissional
(
nome, email, salario
)
VALUES(
'fabio akita',
'akitando@fsa.com',
18000.00
);

INSERT INTO profissional
(
nome, salario
)
VALUES(
'anderson soares',
40000.00
);

INSERT INTO profissional
(
nome, salario
)
VALUES(
'jessica',
40000.00
)

-- selecionar e mostrar colunas
SELECT * FROM profissional
SELECT  nome, salario FROM  profissional;
SELECT id, nome, salario, departamento FROM profissional;
SELECT nome,departamento FROM profissional

-- filtragem de dados
SELECT * FROM profissional
WHERE salario > 5000 and salario < 100000;

SELECT * FROM profissional 
WHERE nome = 'jessica'

SE