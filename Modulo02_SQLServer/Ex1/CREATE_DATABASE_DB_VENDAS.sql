--Guilherme Reis Barbosa de Oliveira
use master;
go 

CREATE DATABASE DB_VENDAS
ON
(
	NAME = DB_VENDAS_DAT,
	FILENAME = N'C:\Users\sinqia\Documents\Sinqia_AspNet\Modulo02_SQLServer\Ex1\DB_VENDAS.mdf',
	SIZE = 5000KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1000KB
)

LOG ON
(
	NAME = DB_VENDAS_LOG,
	FILENAME = N'C:\Users\sinqia\Documents\Sinqia_AspNet\Modulo02_SQLServer\Ex1\DB_VENDAS_log.ldf',
	SIZE = 2000KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1000KB
);
GO