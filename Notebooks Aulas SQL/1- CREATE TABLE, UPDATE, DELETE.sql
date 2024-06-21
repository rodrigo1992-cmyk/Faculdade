
CREATE TABLE tb_produtos (
	Id_prod int primary key,
	Nome_prod varchar(15),
	Preco_prod numeric	
);

CREATE TABLE tb_vendas (
	Id_venda integer,
	Qtd_venda integer,
	Preco_venda numeric,
	Data_venda date,
	Id_cliente integer,
	Id_prod	integer,
	primary key (Id_venda,Id_prod),
	foreign key (Id_cliente) REFERENCES tb_clientes(Id_cliente),
	foreign key (Id_prod) REFERENCES tb_produtos(Id_prod)
);

CREATE TABLE tb_clientes(
	Id_cliente integer primary key,
	Nome_cliente varchar(50),
	Cel_cliente varchar(12)
);

INSERT INTO tb_produtos (Id_prod,Nome_prod,Preco_prod)
VALUES
	(100,'Chinelo',35),
	(101,'Calça',45),
	(102,'Bermuda',32)
;

INSERT INTO tb_vendas (Id_venda,Qtd_venda,Preco_venda,Data_venda,Id_cliente,Id_prod)
VALUES
	(10,	2,	35,	'2017-09-12',1,100),
	(10,	1,	40,	'2017-09-12',1,101),
	(11,	2,	32,	'2017-09-15',2,102),
	(12,	1,	45,	'2017-09-20',3,101),
	(13,	3,	30,	'2017-09-21',4,100),
	(13,	2,	45,	'2017-09-21',4,101),
	(13,	1,	32,	'2017-09-21',4,102),
	(14,	5,	34,	'2017-09-22',5,100),
	(14,	4,	30,	'2017-09-22',5,102),
	(15,	2,	30,	'2017-09-24',1,102),
	(16,	3,	32,	'2017-09-26',3,100),
	(16,	3,	29,	'2017-09-26',3,102)
;

INSERT INTO tb_clientes (Id_cliente,Nome_cliente,Cel_cliente)
VALUES
	(1,	'Maria',	'77777-7777'),
	(2,	'João',		'77777-8888'),
	(3,	'Ana',		'77777-6666'),
	(4,	'Ary',		'77777-5555'),
	(5,	'Sônia',	'77777-4444')
;

UPDATE tb_produtos
SET Preco_prod = 120
WHERE Nome_prod = 'Calça';

SELECT * FROM tb_produtos;

UPDATE tb_vendas
SET Qtd_venda = 7
WHERE Id_venda = 10 AND Id_prod = 100;


DELETE FROM tb_vendas
WHERE Id_venda = 10 AND Id_prod = 100;