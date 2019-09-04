use DB_EVENTOS;
GO

--Criando a tabela TB_Eventos, com uma chave primária auto incremento

CREATE TABLE TBEventos
(
	Id int not null IDENTITY(1,1),
	Descricao varchar(100) not null,
	Responsavel varchar(50) not null,
	Data datetime not null,
	Preco float not null,
	PRIMARY KEY(Id)
);
GO

CREATE TABLE TBConvidados
(
	CPF varchar(11) not null,
	IdEvento int not null,
	Nome varchar(50) not null,
	Telefone varchar(20) not null,
	Email varchar(60) not null
	PRIMARY KEY(CPF),
	FOREIGN KEY (IdEvento) REFERENCES TBEventos(Id)
);
GO