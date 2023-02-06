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

-- Apagando o banco de dados ControleDeGastos
DROP DATABASE ControleDeGastos;

-- Criando o banco de dados Controle de gastos
CREATE DATABASE ControleDeGastos;

--Criando a tabela compras
CREATE TABLE compras(
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(18,2),
    data DATE,
    observacoes VARCHAR(255),
    recebida TINYINT

);

-- Selecione Selecione valor e observacoes de todas as compras cuja data seja maior-ou-igual que 15/12/2012.
SELECT valor, observacoes
FROM compras
WHERE data >= 15/12/2012 ;

-- Qual o comando SQL para juntar duas condições diferentes? Por exemplo, SELECT * FROM TABELA WHERE campo > 1000 campo < 5000. Faça o teste e veja o resultado.
SELECT * 
FROM compras 
WHERE valor > 1000 OR  valor < 5000;

-- Vimos que todo texto é passado através de aspas simples ('). Posso passar aspas duplas (") no lugar?
SELECT *
FROM compras
WHERE observacoes = "Televisao";

-- Selecione todas as compras cuja data seja maior-ou-igual que 15/12/2012 e menor do que 15/12/2014.
SELECT *
FROM compras
WHERE data >= 2012/12/15  AND data < 2014/12/15; 

-- Selecione todas as compras cujo valor esteja entre R$15,00 e R$35,00 e a observação comece com a palavra 'Lanchonete'.
SELECT *
FROM compras
WHERE valor >= 15 AND valor <= 35 AND observacoes LIKE 'Lanchonete%';

-- Selecione todas as compras que já foram recebidas.
SELECT*
FROM compras
WHERE recebida = 1;

-- Selecione todas as compras que ainda não foram recebidas.
SELECT *
FROM compras
WHERE recebida = 0 ;

-- Vimos que para guardar o valor VERDADEIRO para a coluna recebida , devemos passar o valor 1. Para FALSO, devemos passar o valor 0. E quanto as palavras já conhecidas para verdadeiro e falso: TRUE e FALSE . Elas funcionam? 
INSERT INTO compras (valor, data, observacoes, recebida) VALUES (100.0, '2015-09-08', 'COMIDA', TRUE)
;

-- Selecione todas as compras com valor maior que 5.000,00 ou que já foram recebidas.
SELECT *
FROM compras
WHERE valor > 5000 OR recebida = 1 ;

-- Selecione todas as compras que o valor esteja entre 1.000,00 e 3.000,00 ou seja maior que 5.000,00.
SELECT*
FROM compras
WHERE valor >= 1000 AND valor <=3000;

-- Selecionando valores de 1000 - 2000
SELECT*
FROM compras
WHERE valor >= 1000 AND valor <= 2000;

-- Definindo intervalo com o comando BETWEEN
SELECT valor, observacoes
FROM compras
WHERE valor BETWEEN 1000 AND 2000;

-- Filtro duplo com BETWEEN
SELECT valor, observacoes
FROM compras
WHERE valor BETWEEN 1000 AND 2000 
AND data BETWEEN '2013-01-01' AND '2013-12-31';

-- Atualizando dados como o comando UPDATE
UPDATE compras SET valor = 1500 WHERE id = 11;

-- Verificando se o valor foi alterado
SELECT valor, observacoes
FROM compras
WHERE valor BETWEEN 1000 AND 2000
AND data BETWEEN '2013-01-01' AND '2013-12-31';

-- Editando o campo obervacoes do id = 11
UPDATE compras SET observacoes = 'Reforma de quartos' WHERE id = 11;

SELECT*
FROM compras;









