-- Criando o database ControleDeGastos
CREATE DATABASE ControleDeGastos;

-- Criando a tabela compras
CREATE TABLE compras(
    valor DECIMAL(18,2),
    data DATE,
    observacoes VARCHAR(255),
    recebida TINYINT);

-- Descrevendo a tabela compras
DESC compras;

-- Inserindo dados na tabela compras
INSERT INTO compras VALUES (20, '2016-01-05','Lanchonete', 1);
INSERT INTO compras VALUES(15.0, '2016-01-05', 'Lanchonete', 1);
INSERT INTO compras VALUES(915.50, '2016-01-06', 'Guarda-roupa', 0);

-- Declarando a ordem da insercao de dados
INSERT INTO compras (data, observacoes, valor, recebida)
VALUES('2016-01-10', 'Smartphone', 949.99, 0);

-- Inserindo a PRIMARY KEY NA tabela compras
ALTER TABLE compras ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY;

-- Deletando a tabela compras
DROP TABLE compras;

-- Recriando a tabela compras
CREATE TABLE compras(
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(18,2),
    data DATE,
    observacoes VARCHAR(255),
    recebida TINYINT);

-- Inserindo dados na tabela compras
INSERT INTO compras(valor, data, observacoes, recebida)
VALUES (20, '2016-01-05', 'Lanchonete', 1);
INSERT INTO compras (valor, data, observacoes, recebida)
VALUES (15, '2016-01-06', 'Lanchonete', 1);
INSERT INTO compras(valor, data, observacoes, recebida)
VALUES (915.50, '2016-01-06', 'Guarda-roupa', 0);
INSERT INTO compras (valor, data, observacoes, recebida)
VALUES (949.99, '2016-01-10', 'Smartphone', 0);

-- Filtrando com o WHERE
SELECT *
FROM compras
WHERE valor < 500;

-- Filtrando com WHERE e AND
SELECT*
FROM compras
WHERE valor > 500 AND recebida = 0;

-- Compras mais caras e mais baratas
SELECT*
FROM compras
WHERE valor < 200 OR  valor > 400 ;

-- Pesquisando compras no valor de 20.0
SELECT*
FROM compras
WHERE valor = 20;

-- Filtrando as compras que são Lanchonete
SELECT*
FROM compras
WHERE observacoes = 'Lanchonete';


-- Filtrando as observacoes iguais a Parcelas
INSERT INTO compras(valor, data, observacoes, recebida)
VALUES(300, '2016-02-03', 'Parcela do carro', 1);
SELECT*
FROM compras
WHERE observacoes LIKE 'Parcela%';

-- Filtrando uma silaba
SELECT*
FROM compras
WHERE observacoes LIKE '%Lan%';
