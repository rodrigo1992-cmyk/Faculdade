-- Configurar
.headers on
.mode column

-- Criação das tabelas
CREATE TABLE Clientes_AM (
    Cod_Cliente integer CONSTRAINT PK_Clientes_AM PRIMARY KEY,
    Nome_Cliente text
);

CREATE TABLE Clientes_MT (
    Cod_Cliente integer CONSTRAINT PK_Clientes_MT PRIMARY KEY,
    Nome_Cliente text
);

-- Inseração nas tabelas
INSERT INTO Clientes_AM VALUES
    (21, 'Cintia Valdez'),
    (22, 'Humberto Salgado'),
    (25, 'Cristiane Vieira'),
    (36, 'Washington Rodrigues'),
    (37, 'Talita Garcia');

INSERT INTO Clientes_MT VALUES
    (20, 'Odir Miranda'),
    (22, 'Humberto Salgado'),
    (24, 'Valesca Caldas'),
    (37, 'Talita Garcia'),
    (38, 'Diego Apólito'); 

-- Executar uma consulta (com todas as colunas) usando o union com as tabelas citadas. 

SELECT * FROM Clientes_AM UNION SELECT * FROM Clientes_MT