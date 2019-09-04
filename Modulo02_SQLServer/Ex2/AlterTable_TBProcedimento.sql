use DB_CLINICA;
GO
ALTER TABLE TBProcedimento
	ADD IDCliente int not null,
	FOREIGN KEY (IDCliente) REFERENCES TBCliente(CPF)