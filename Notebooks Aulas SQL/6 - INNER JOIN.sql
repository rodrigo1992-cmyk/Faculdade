-- Configurar
.headers on
.mode column

-- Criação das tabelas
CREATE TABLE Clientes (
    Cod_Cliente integer PRIMARY KEY,
    Nome_Cliente text, 
    Dt_Nasc_Cliente text, 
    Email_Cliente text, 
    Logradouro_Cliente text, 
   CEP_Cliente text, 
   UF_Cliente text
);

CREATE TABLE Pedidos (
    Cod_Pedido integer PRIMARY KEY,
    Dt_Pedido text, 
    Valor_Pedido numeric, 
    Status_Pedido text,
    Cod_Cliente_Pedido REFERENCES Clientes (Cod_Cliente)
);

-- Inserção nas tabelas
INSERT INTO Clientes VALUES
    (1, 'Aline Rigoni', '12/jan/1971','aline.rigoni@casa.com.br','Rua A, 10', '11111-111', 'MS'),
    (2, 'Henrique Vigo', '15/fev/1972','henrique.vigo@casa.com.br','Rua B, 20', '11100-222', 'MS'),
    (3, 'Celina Almeida', '03/mai/1980','celina.almeida@casa.com.br','Rua Q500, 300', '22222-333', 'PR'),
    (4, 'Cleiton Monteiro', '09/set/1995','cleiton.monteiro@casa.com.br','Rua R300, 9', '22211-444', 'PR'),
    (5, 'Vanessa Fonseca', '23/out/1986','vanessa.fonseca@casa.com.br','Rua 10JM, 523', '33333-666', 'SE'),
    (6, 'Airton Cruz', '25/dez/1999','airton.cruz@casa.com.br','Rua 20KG, 731', '33322-777', 'SE');

INSERT INTO Pedidos VALUES
    (100, '12/fev/2020', 1000,'1',1),
    (101, '14/jun/2020', 9000,'1',1),
    (102, '15/mar/2020', 500,'1',2),
    (103, '19/jul/2020', 800,'1',2),
    (104, '25/set/2020', 1200,'1',3),
    (105, '27/nov/2020', 2000,'1',3),
    (106, '21/abr/2020', 100,'1',4),
    (107, '28/out/2020', 200,'1',4),
    (108, '29/jul/2020', 700,'1',5),
    (109, '31/out/2020', 1400,'1',5),
    (110, '05/set/2020', 400,'1',6),
    (111, '03/dez/2020', 600,'1',6);

-- Executar uma consulta (com duas colunas das tabelas) usando o inner join entre as tabelas citadas.  

SELECT Nome_Cliente, Cod_Pedido 
	FROM Clientes INNER JOIN Pedidos 
	ON Clientes.Cod_Cliente = Pedidos.Cod_Cliente_Pedido;