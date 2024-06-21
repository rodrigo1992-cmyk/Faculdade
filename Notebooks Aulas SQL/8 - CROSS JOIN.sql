-- Configurar
.headers on
.mode column

-- Criação das tabelas
CREATE TABLE Clientes_BA (
    Cod_Cliente integer CONSTRAINT PK_Clientes_BA PRIMARY KEY,
    Nome_Cliente text
);

CREATE TABLE Clientes_SC (
    Cod_Cliente integer CONSTRAINT PK_Clientes_SC PRIMARY KEY,
    Nome_Cliente text
);

-- Inseração nas tabelas
INSERT INTO Clientes_BA VALUES
    (11, 'Bruna Medeiros'),
    (13, 'Paulo Santos'),
    (16, 'Helena Gusmão'),
    (19, 'Ivo Soares');

INSERT INTO Clientes_SC VALUES
    (13, 'Paulo Santos'),
    (14, 'Luciana Guimarães'),
    (15, 'Osvaldo Prado'),
    (16, 'Helena Gusmão'),
    (17, 'Patrícia Duarte');

-- Executar uma consulta (com todas as colunas) usando o cross join entre as tabelas citadas. 
SELECT Clientes_BA.*, Clientes_SC.*
	FROM Clientes_BA CROSS JOIN Clientes_SC
