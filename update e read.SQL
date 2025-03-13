CREATE DATABASE serasa;


--Criando tabela empregado
CREATE TABLE empregado(
    codigo INT (5) PRIMARY KEY,
    nome VARCHAR (20) NOT NULL,
    depto INT (4) NOT NULL,
    salario FLOAT (6,2)
);

--Inserindo dados na tabela empregado

INSERT INTO empregado (codigo,nome,depto,salario)
VALUES (43500, "Ana da Silva", 9411, 5200.00),
(43501,"Vitória Beatriz", 9411,3400.00),
(43502,"Pedro José", 9412, 2600.00),
(43503, "Amary Manoel", 9412,8400.00),
(43504, "Carlos Silva", 9412,5600.00),
(43505,"Vitório Cardoso", 9413,2300.00),
(43506,"Carlos Ives Souza", 9413,3380.00),
(43507,"Victor Silva", 9413, 4500.00),
(43508, "Saulo Monteiro", 9413,6800.00);

--Altere o departamento de todos para 9414
UPDATE empregado 
SET depto = "9414"
WHERE depto IN ("9411", "9412", "9413");

--Altere o departamento dos três primeiros para 9415
UPDATE empregado 
SET depto = "9415"
WHERE codigo IN ("43500","43501","43502");

--Altere o departamento de cada um para o valor original novamente
UPDATE empregado 
SET depto = "9411"
WHERE codigo IN ("43500","43501");

UPDATE empregado 
SET depto = "9412"
WHERE codigo IN ("43502","43503","43504");

UPDATE empregado 
SET depto = "9413"
WHERE codigo IN ("43505","43506","43507","43508");

--Realize um Select para todos os dados do Banco de Dados
