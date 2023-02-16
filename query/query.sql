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

-- Altere o VALOR das compras feitas antes de 01/06/2013. Some R$10,00 ao valor atual.
UPDATE compras 
SET valor = valor + 10 
WHERE data < '2013/06/01';


-- Atualize todas as compras feitas entre 01/07/2013 e 01/07/2014 para que elas tenham a observação
--' entregue antes de 2014' e a coluna recebida com o valor TRUE.
UPDATE compras
SET observacoes = 'entregue antes de 2014' , recebida = TRUE
WHERE data BETWEEN '2013/07/01' AND '2014/07/01';

-- Em um comando WHERE é possível especificar um intervalo de valores. Para tanto, é preciso dizer
-- qual o valor mínimo e o valor máximo que define o intervalo. Qual é o operador que é usado para
-- isso?
SELECT*
FROM compras
WHERE valor BETWEEN 100 AND 200;

-- Qual operador você usa para remover linhas de compras de sua tabela?
DELETE 
FROM compras
WHERE data = '2012/12/15';

-- Exclua as compras realizadas entre 05 e 20 março de 2013.
DELETE
FROM compras
WHERE data BETWEEN '2013/03/05' AND '2013/03/20';

-- Use o operador NOT e monte um SELECT que retorna todas as compras com valor diferente de R$108,00.
SELECT *
FROM compras
WHERE NOT valor = 108 ;

-- Selecionando observacoes nula
SELECT*
FROM compras
WHERE observacoes IS NULL;

-- Alterando a coluna observacoes para não aceitar valores nulos.
ALTER TABLE compras MODIFY COLUMN observacoes VARCHAR(255) NOT NULL;

-- Testando se a colunas observacoes aceita valores nulos
INSERT INTO compras (valor, data, recebida, observacoes)
VALUES ( 150, '2016-01-04', 1 , NULL )

-- Inserindo o valor default na coluna recebida
ALTER TABLE compras MODIFY COLUMN recebida TINYINT(1) DEFAULT 0;

INSERT INTO compras (valor, data, observacoes)
VALUES (150, '2016-01-05', 'Compra de teste');

-- Testando o valor default na coluna recebida
INSERT INTO compras (valor, data, observacoes)
VALUES (150, '2016-01-05', 'Compra de teste');
SELECT*
FROM compras;

-- Configure o valor padrão para a coluna recebida .
ALTER TABLE compras MODIFY COLUMN recebida TINYINT(1) DEFAULT 0;

-- Configure a coluna observacoes para não aceitar valores nulos.
ALTER TABLE compras MODIFY COLUMN observacoes VARCHAR(255) NOT NULL;

-- NOT NULL e DEFAULT podem ser usados também no CREATE TABLE ? Crie uma tabela nova e
--adicione Constraints e valores DAFAULT .
CREATE TABLE carro(
    id INT AUTO_INCREMENT PRIMARY KEY,
    carro VARCHAR(255) NOT NULL,
    rodas INT DEFAULT 4,
    arcondicionado TINYINT DEFAULT 0
);

-- Reescreva o CREATE TABLE do começo do curso, marcando observacoes como nulo e valor
-- padrão do recebida como 1.
CREATE TABLE compras2(
    id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(18,2) DEFAULT 1,
    data DATE,
    observacoes VARCHAR(255) NULL,
    recebida TINYINT    
);

-- Função soma
SELECT SUM(valor)
FROM compras;

-- Vamos verificar o total de todas as compras recebidas:
SELECT SUM(valor)
FROM compras
WHERE recebida = 1;

-- Agora todas as compras que não foram recebidas
SELECT SUM(valor)
FROM compras
WHERE recebida = 0;

-- Podemos também, contar quantas compras foram recebidas por meio da função COUNT()
SELECT COUNT(valor)
FROM compras
WHERE recebida = 1;

-- Atilizando o groupby
SELECT recebida, SUM(valor)
FROM compras
GROUP BY recebida;

-- Utilizando o comando AS
SELECT recebida, SUM(valor) AS soma
FROM compras
GROUP BY recebida

-- GROUP BY com filtro
SELECT recebida, SUM(valor) as soma 
FROM compras
WHERE VALOR < 1000
GROUP BY recebida;

-- Função de mes e ano
SELECT MONTH(data) as mes, YEAR(data) as ano, recebida, SUM(valor) as soma 
FROM compras
GROUP BY recebida, mes, ano;

-- Utilizando o ORDER BY
SELECT MONTH(data) as mes, YEAR(data) as ano, recebida, SUM(valor) as soma 
FROM compras
GROUP BY recebida, mes, ano
ORDER BY  ano, mes;

-- Função AVG
SELECT MONTH(data) as mes, YEAR(data) as ano, recebida, AVG(valor) as media
FROM compras
GROUP BY recebida, mes, ano
ORDER BY  ano, mes;

-- Calcule a média de todas as compras com datas inferiores a 12/05/2013.
SELECT AVG( valor)
FROM compras
WHERE DATA < '2013/05/12';

-- Calcule a quantidade de compras com datas inferiores a 12/05/2013 e que já foram recebidas.
SELECT COUNT(id) as QuantidadeDeCompras
FROM compras 
WHERE data < '2013/05/12' AND recebida = 1;

--Calcule a soma de todas as compras, agrupadas se a compra recebida ou não.
SELECT recebida,  SUM(valor) as soma
FROM compras
GROUP BY recebida;

-- Criando a tabela compradores
CREATE TABLE compradores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    endereco VARCHAR(200),
    telefone VARCHAR(30));

-- Inserindo informações na tabela compradores
INSERT INTO compradores(nome, endereco, telefone)
VALUES ('Alex Felipe', 'Rua Vergeuiro, 3185', '5571-2751');
INSERT INTO compradores(nome, endereco, telefone )
VALUES ('João da Silva', 'Av. Paulista, 6544', '2220-4156');

SELECT*
FROM compradores;

-- Excluindo a coluna comprador da tabela compras
ALTER TABLE compras DROP COLUMN comprador;

-- Excluindo a coluna telefone da tabela compras
ALTER TABLE compras DROP COLUMN telefone;

-- Criando a coluna id_compradores na tabela compras
ALTER TABLE compras ADD COLUMN id_compradores INT;

-- Definindo os compradores na tablea compras
UPDATE compras SET id_compradores = 1
WHERE ID < 22;
UPDATE compras SET id_compradores = 2 
WHERE id > 21;

-- Aplicando a primeira vez o JOIN
SELECT*
FROM compras
JOIN compradores ON compras.id_compradores = compradores.id;

-- Definindo a referencia de foreign key
ALTER TABLE compras ADD CONSTRAINT fk_compradores FOREIGN KEY (id_compradores)
REFERENCES compradores (id);

-- Inserindo uma nova compra 
INSERT compras (valor, data, observacoes, id_compradores)
VALUES (1500, '2016-01-05', 'Playstation 4', 1);

-- Adicionando a coluna forma_pagto informando os dados que podem ser inseridos
ALTER TABLE compras ADD COLUMN forma_pagto ENUM('BOLETO', 'CREDITO');

-- Inserindo dados incluindo o tipo de pagamento
INSERT INTO compras(valor, data, observacoes, id_compradores, forma_pagto)
VALUES (400, '2016-01-06', 'SSD 128GB', 1 , 'BOLETO');

-- Tentando inserir forma de pagamento em Dinheiro
INSERT INTO compras (valor, data, observacoes, id_compradores, forma_pagto)
VALUES (80, '2016-01-07', 'Bola de futebol', 2 , 'DINHEIRO');

-- Configurando o sql_mode
SET SESSION sql_mode = 'STRICT_ALL_TABLES';

-- Verificando o sql_mode
SELECT @@SESSION.sql_mode;

-- Testando a insercao de dados
INSERT INTO compras (valor, data, observacoes, id_compradores, forma_pagto)
VALUES (80, '2016-01-07', 'BOLA DE FUTEBOL', 2, 'DINHEIRO');

-- Configurando a seçao global
SET GLOBAL sql_mode = 'STRICT_ALL_TABLES';

-- Verificando a secao global
SELECT @@GLOBAL.sql_mode;

-- Crie a tabela compradores com id , nome , endereco e telefone .
CREATE TABLE compradores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255),
    endereco VARCHAR(255),
    telefone VARCHAR(255));

-- Insira os compradores, Guilherme e João da Silva.
INSERT INTO compradores(nome, endereco, telefone)
VALUES ('Guilherme', 'Brazil', '4343-9595');
INSERT INTO compradores(nome, endereco, telefone)
VALUE ('João', 'EUA', '7564-9485');

-- Adicione a coluna id_compradores na tabela compras e defina a chave estrangeira (FOREIGN
-- KEY) referenciando o id da tabela compradores .
ALTER TABLE compras ADD COLUMN id_compradores INT;
ALTER TABLE compras ADD CONSTRAINT fk_compradores FOREIGN KEY (id_compradores)
REFERENCES compradores (id);

-- Atualize a tabela compras e insira o id dos compradores na coluna id_compradores .
UPDATE compras SET id_compradores = 1
WHERE ID < 22;
UPDATE compras SET id_compradores = 2 
WHERE id > 21;

-- Exiba o NOME do comprador e o VALOR de todas as compras feitas antes de 09/08/2014.
SELECT nome, SUM(valor)
FROM compras
JOIN compradores ON compras.id_compradores = compradores.id
WHERE data < '2014/08/09'
GROUP BY nome;

-- Exiba todas as compras do comprador que possui ID igual a 2.
SELECT*
FROM compras
WHERE id_compradores = 2;

-- Exiba todas as compras (mas sem os dados do comprador), cujo comprador tenha nome que começa
-- com 'GUILHERME'.
SELECT valor, data, observacoes, recebida, nome
FROM compras
JOIN compradores ON compras.id_compradores = compradores.id
WHERE nome LIKE 'Guilherme%';

-- Exiba o nome do comprador e a soma de todas as suas compras.
SELECT nome , SUM(valor)
FROM compras
JOIN compradores ON compras.id_compradores = compradores.id
GROUP BY nome ;

-- Crie uma coluna chamada "forma_pagto" do tipoENUM
-- e defina os valores: 'BOLETO' e'CREDITO'.
ALTER TABLE compras ADD COLUMN forma_pagto ENUM('BOLETO','CREDITO');

--Ative o strict mode na sessão que está utilizando para impossibilitar valores inválidos. Utilize o
--modo "STRICT_ALL_TABLES". E verifique se o SQL mode foi alterado fazendo um SELECT na
-- sessão.
SET GLOBAL sql_mode = 'STRICT_ALL_TABLES';
SELECT @@GLOBAL.sql_mode;

-- Tente inserir uma compra com forma de pagamento diferente de 'BOLETO' ou 'CREDITO', por
-- exemplo, 'DINHEIRO' e verifique se o MySQL recusa a inserção.
INSERT INTO compras (valor, data, observacoes, recebida, id_compradores,forma_pagto)
VALUES (200, '2023/02/16', 'Parcela do carro', 1, 2, 'OTHERS');

-- Adicione as formas de pagamento para todas as compras por meio da instrução UPDATE .
UPDATE compras SET forma_pagto = 'BOLETO'
WHERE id < 20;
UPDATE compras SET forma_pagto = 'CREDITO'
WHERE id >= 20;

-- Criando o banco de dados escola
CREATE DATABASE escola;

-- Verificando a base de dados
SHOW TABLES;

-- Visualizando a descricao da tabela aluno 
DESC aluno;

-- JOIN enntre a tabela aluno e matriculas.
SELECT a.nome
FROM aluno a 
JOIN matricula m ON m.aluno_id = a.id

-- Join da tabela curso e aluno com a tabela matricula
SELECT a.nome , c.nome
FROM aluno a 
JOIN matricula m ON m.aluno_id = a.id 
JOIN curso c ON m.curso_id = c.id;


-- Vamos verificar quantos alunos nós temos na nossa base de dados
SELECT COUNT(*) 
FROM aluno;

-- Buscando alunos sem matriculas com EXISTS
SELECT a.nome
FROM aluno a 
WHERE NOT EXISTS (
    SELECT m.id 
    FROM matricula m 
    WHERE m.aluno_id = a.id
);

-- Vamos pegar todos os exercícios que não foram respondidos utilizando novamente o NOT EXISTS :
SELECT *
FROM exercicio e 
WHERE NOT EXISTS(
    SELECT r.id 
    FROM resposta r 
    WHERE r.exercicio_id = e.id
);

-- Se quisermos retornar da mesma forma que fizemos no exemplo da planilha, basta informar os
--campos desejados:
SELECT e.id , e.pergunta
FROM exercicio e 
WHERE NOT EXISTS (
    SELECT r.id 
    FROM resposta r 
    WHERE r.exercicio_id = e.id
);

-- Todos os cursos que não possuem matrícula
SELECT c.nome 
FROM curso c 
WHERE NOT EXISTS (
    SELECT m.id 
    FROM matricula m 
    WHERE m.curso_id = c.id
);

-- A instituição informou que tiveram vários exercícios que não foram respondidos pelos alunos nos
-- cursos que foram realizados recentemente. Vamos verificar quem foram esses alunos, para verificarmos
-- o motivo de não ter respondido, se foi um problema no sistema ou na base de dados.
SELECT a.nome , c.nome 
FROM aluno a 
JOIN matricula m ON m.aluno_id = a.id 
JOIN curso c ON m.curso_id = c.id
WHERE NOT EXISTS(
    SELECT r.aluno_id 
    FROM resposta r 
    WHERE r.aluno_id = a.id
);

-- Vamos primeiro verificar todos os alunos matriculados
-- que responderam os exercícios