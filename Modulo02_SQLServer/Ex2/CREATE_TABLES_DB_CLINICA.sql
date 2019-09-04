--Guilherme Reis Barbosa de Oliveira
use DB_CLINICA;
GO

CREATE TABLE TBConvenio
(
	CNPJ VARCHAR(14) not null,
	Nome varchar(50) not null,
	Descricao varchar(500) not null,
	PRIMARY KEY(CNPJ)
);
GO

CREATE TABLE TBCliente
(
	CPF VARCHAR(11) not null,
	Nome VARCHAR(50) not null,
	Idade VARCHAR(4) not null,
	Logradouro VARCHAR(50) not null,
	IdConvenio VARCHAR(14),
	PRIMARY KEY(CPF),
	FOREIGN KEY(IdConvenio) REFERENCES TBConvenio(CNPJ)
);
GO

CREATE TABLE TBItem
(
	ID INT not null IDENTITY(1,1),
	PRECO FLOAT not null,
	DESCRICAO VARCHAR(250) not null,
	PRIMARY KEY(ID)
);
GO

CREATE TABLE TBEquipamento
(
	ID INT not null IDENTITY(1,1),
	UNIDADE INT not null,
	QUANTIDADE INT not null,
	IDMATERIAL INT not null,
	PRIMARY KEY(ID),
	FOREIGN KEY(IDMATERIAL) REFERENCES TBItem(ID)
);
GO

CREATE TABLE TBProcedimento
(
	ID INT not null IDENTITY(1,1),
	DURACAO INT not null,
	DESCRICAO VARCHAR(250) not null,
	PRECO FLOAT not null,
	IDEQUIPAMENTO INT not null,
	PRIMARY KEY(ID),
	FOREIGN KEY (IDEQUIPAMENTO) REFERENCES TBEquipamento(ID)
);
GO