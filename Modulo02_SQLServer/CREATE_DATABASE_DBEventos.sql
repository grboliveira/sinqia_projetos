use master;
go 

CREATE DATABASE DB_EVENTOS
ON
(
	NAME = DB_EVENTOS_DAT,
	FILENAME = "C:\Users\sinqia\Documents\Sinqia_AspNet\Data\DBEventos.mdf",
	SIZE = 5000KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1000KB
)
LOG ON
(
	NAME = DB_EVENTOS_LOG,
	FILENAME = "C:\Users\sinqia\Documents\Sinqia_AspNet\Data\DBEventos_log.ldf",
	SIZE = 2000KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1000KB
);
GO