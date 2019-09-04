-- Guilherme Reis Barbosa de Oliveira
use DB_VENDAS;
GO

CREATE TABLE TBClientes
(
	Documento varchar(14) not null,
	Nome varchar(60) not null,
	Telefone varchar(20) not null,
	Email varchar(60) not null,
	PRIMARY KEY (Documento)
);
GO 

CREATE TABLE TBCategorias
(
	Id INT not null,
	Descricao varchar(20) not null,
	PRIMARY KEY(Id)
);
GO

CREATE TABLE TBPedidos
(
	Id INT not null IDENTITY(1,1),
	DocCliente varchar(14) not null,
	Data datetime not null,
	NumeroPedido varchar(20),
	PRIMARY KEY (Id),
	FOREIGN KEY (DocCliente) REFERENCES TBClientes(Documento)
);
GO

CREATE TABLE TBProdutos
(
	Id INT not null IDENTITY(1,1),
	IdCategoria INT not null,
	Descricao varchar(50) not null,
	Unidade varchar(10) not null,
	Foto varbinary(MAX) not null,
	MimeType varchar(20) not null,
	PRIMARY KEY (Id),
	FOREIGN KEY (IdCategoria) REFERENCES TBCategorias(Id)
);
GO

CREATE TABLE TBItens
(
	Id INT not null IDENTITY(1,1),
	IdPedido INT not null,
	IdProduto INT not null,
	Quantidade float not null,
	PRIMARY KEY (Id),
	FOREIGN KEY (IdPedido) REFERENCES TBPedidos(Id),
	FOREIGN KEY (IdProduto) REFERENCES TBProdutos(Id)
);
GO



