CREATE TABLE departamentos(
	cod_depto INTEGER PRIMARY KEY,
	descricao CHAR (30)
);

CREATE TABLE funcionarios(
	matricula INTEGER PRIMARY KEY,
	nome CHAR (50),
	celular CHAR (12),
	email CHAR (30),
	cod_depto INTEGER,
	FOREIGN KEY (cod_depto) REFERENCES departamentos(cod_depto)
);

CREATE TABLE alocacao(
	matricula INTEGER,
	valor_hora INTEGER,
	horas INTEGER,
	cod_projeto INTEGER,
	PRIMARY KEY(matricula,cod_projeto),
	FOREIGN KEY (matricula) REFERENCES funcionarios(matricula),
	FOREIGN KEY (cod_projeto) REFERENCES projetos(cod_projeto)
);

CREATE TABLE projetos(
	cod_projeto INTEGER PRIMARY KEY,
	descricao CHAR (50),
	inicio DATE,
	termino DATE
);

INSERT INTO departamentos (cod_depto,descricao)
VALUES 
	(1,"Financeiro"),
	(2,"RH"),
	(3,"Vendas");

INSERT INTO funcionarios (matricula, nome, celular, email, cod_depto)
VALUES
	(100, 'Maria Flor', '99999-1111', 'maria.flor@nossaempresa.com.br', 1),
	(101, 'Osvaldo Silva', '99999-2222', 'osvaldo.silva@nossaempresa.com.br', 1),
	(102, 'Ana Rosa', '99999-3333', 'ana.rosa@nossaempresa.com.br', 1),
	(103, 'João Oliveira', '99999-4444', 'joao.oliveira@nossaempresa.com.br', 1),
	(200, 'Beatriz Moura', '99988-5555', 'beatriz.moura@nossaempresa.com.br', 2),
	(201, 'Hélio Miranda', '99988-6666', 'helio.miranda@nossaempresa.com.br', 2),
	(202, 'Solange Costa', '99988-7777', 'solange.costa@nossaempresa.com.br', 2),
	(203, 'Igor Tavares', '99988-8888', 'igor.tavares@nossaempresa.com.br', 2),
	(301, 'Renata Aguiar', '99977-9999', 'renata.aguiar@nossaempresa.com.br', 3),
	(302, 'Rômulo Garcia', '99977-0101', 'romulo.garcia@nossaempresa.com.br', 3),
	(303, 'Poliana Rocha', '99977-5566', 'poliana.rocha@nossaempresa.com.br', 3),
	(304, 'Sérgio Pereira', '99977-7788', 'sergio.pereira@nossaempresa.com.br', 3);

INSERT INTO projetos (cod_projeto, descricao, inicio, termino)
VALUES
	(1, 'Cálculos Financeiros Matriz', '2019-10-10', '2020-04-10'),
	(2, 'Cálculos Financeiros Filial', '2020-02-05', '2020-09-14'),
	(3, 'Benefícios Funcionários', '2020-06-01', '2020-12-15'),
	(4, 'Projeção de Carreira Funcionários', '2020-10-19', '2021-01-25'),
	(5, 'Estratégia de fidelização Clientes', '2021-05-23', '2021-11-11');
	
INSERT INTO alocacao (matricula, valor_hora, horas, cod_projeto)
VALUES
	(100, 40, 40, 1), 
	(101, 40, 60, 1), 
	(102, 40, 80, 2), 
	(103, 40, 100, 2),
	(200, 50, 50, 3), 
	(201, 50, 40, 4), 
	(202, 50, 30, 4), 
	(203, 50, 70, 4), 
	(301, 45, 120, 5), 
	(302, 45, 100, 5), 
	(303, 45, 110, 5), 
	(304, 45, 130, 5);


ALTER TABLE departamentos ADD COLUMN descricao_bkp CHAR (30);

UPDATE departamentos
SET descricao_bkp = descricao;

ALTER TABLE departamentos DROP COLUMN descricao_bkp;

SELECT * FROM departamentos;