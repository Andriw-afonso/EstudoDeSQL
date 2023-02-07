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

-- Inserindo dados de compras
insert into compras (valor, data, observacoes, recebida) values (200, '2012-02-19', 'Material escolar', 1);
insert into compras (valor, data, observacoes, recebida) values (3500, '2012-05-21', 'Televisao', 0);
insert into compras (valor, data, observacoes, recebida) values (1576.40, '2012-04-30', 'Material de construcao', 1);
insert into compras (valor, data, observacoes, recebida) values (163.45, '2012-12-15', 'Pizza pra familia', 1);
insert into compras (valor, data, observacoes, recebida) values (4780.0, '2013-01-23', 'Sala de estar', 1);
insert into compras (valor, data, observacoes, recebida) values (392.15, '2013-03-03', 'Quartos', 1);
insert into compras (valor, data, observacoes, recebida) values (1203., '2013-03-18', 'Quartos', 1);
insert into compras (valor, data, observacoes, recebida) values (402.90, '2013-03-21', 'Copa', 1);
insert into compras (valor, data, observacoes, recebida) values (54.98, '2013-04-12', 'Lanchonete', 0);
insert into compras (valor, data, observacoes, recebida) values (12.34, '2013-05-23', 'Lanchonete', 0);
insert into compras (valor, data, observacoes, recebida) values (78.65, '2013-12-04', 'Lanchonete', 0);
insert into compras (valor, data, observacoes, recebida) values (12.39, '2013-01-06', 'Sorvete no parque', 0);
insert into compras (valor, data, observacoes, recebida) values (98.12, '2013-07-09', 'Hopi Hari', 1);
insert into compras (valor, data, observacoes, recebida) values (2498.0, '2013-01-12', 'Compras de janeiro', 1);		
insert into compras (valor, data, observacoes, recebida) values (3212.4, '2013-11-13', 'Compras do mes', 1);
insert into compras (valor, data, observacoes, recebida) values (223.09, '2013-12-17', 'Compras de natal', 1);
insert into compras (valor, data, observacoes, recebida) values (768.90, '2013-01-16', 'Festa', 1);
insert into compras (valor, data, observacoes, recebida) values (827.5, '2014-01-09', 'Festa', 1);
insert into compras (valor, data, observacoes, recebida) values (12.0, '2014-02-19', 'Salgado no aeroporto', 1);
insert into compras (valor, data, observacoes, recebida) values (678.43, '2014-05-21', 'Passagem pra Bahia', 1);
insert into compras (valor, data, observacoes, recebida) values (10937.12, '2014-04-30', 'Carnaval em Cancun', 1);
insert into compras (valor, data, observacoes, recebida) values (1501.0, '2014-06-22', 'Presente da sogra', 0);
insert into compras (valor, data, observacoes, recebida) values (1709.0, '2014-08-25', 'Parcela da casa', 0);
insert into compras (valor, data, observacoes, recebida) values (567.09, '2014-09-25', 'Parcela do carro', 0);
insert into compras (valor, data, observacoes, recebida) values (631.53, '2014-10-12', 'IPTU', 1);
insert into compras (valor, data, observacoes, recebida) values (909.11, '2014-02-11', 'IPVA', 1);
insert into compras (valor, data, observacoes, recebida) values (768.18, '2014-04-10', 'Gasolina viagem Porto Alegre', 1);
insert into compras (valor, data, observacoes, recebida) values (434, '2014-04-01', 'Rodeio interior de Sao Paulo', 0);
insert into compras (valor, data, observacoes, recebida) values (115.90, '2014-06-12', 'Dia dos namorados', 0);
insert into compras (valor, data, observacoes, recebida) values (98, '2014-10-12', 'Dia das crianças', 0);
insert into compras (valor, data, observacoes, recebida) values (253.7, '2014-12-20', 'Natal - presentes', 0);
insert into compras (valor, data, observacoes, recebida) values (370.15, '2014-12-25', 'Compras de natal', 0);
insert into compras (valor, data, observacoes, recebida) values (32.09, '2015-07-02', 'Lanchonete', 1);
insert into compras (valor, data, observacoes, recebida) values (954.12, '2015-11-03', 'Show da Ivete Sangalo', 1);
insert into compras (valor, data, observacoes, recebida) values (98.7, '2015-02-07', 'Lanchonete', 1);
insert into compras (valor, data, observacoes, recebida) values (213.5, '2015-09-25', 'Roupas', 0);
insert into compras (valor, data, observacoes, recebida) values (1245.2, '2015-10-17', 'Roupas', 0);
insert into compras (valor, data, observacoes, recebida) values (23.78, '2015-12-18', 'Lanchonete do Zé', 1);
insert into compras (valor, data, observacoes, recebida) values (576.12, '2015-09-13', 'Sapatos', 1);
insert into compras (valor, data, observacoes, recebida) values (12.34, '2015-07-19', 'Canetas', 0);
insert into compras (valor, data, observacoes, recebida) values (87.43, '2015-05-10', 'Gravata', 0);
insert into compras (valor, data, observacoes, recebida) values (887.66, '2015-02-02', 'Presente para o filhao', 1);

-- Aplicando calculo na coluna valor
UPDATE compras SET valor = valor * 1.1
WHERE id >= 11 AND id <= 14;

-- Deletando um registro
DELETE 
FROM compras
WHERE id = 11 ;

-- Altere as compras, colocando a observação 'preparando o natal' para todas as que foram efetuadas no dia 20/12/2014.
UPDATE compras SET observacoes = 'preparandodo o natal' WHERE data =  '2014/12/20';

select*
FROM compras
where data = '2014/12/20';







