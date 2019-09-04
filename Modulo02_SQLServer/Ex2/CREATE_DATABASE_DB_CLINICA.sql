USE master;
GO

CREATE DATABASE DB_CLINICA ON
(
	NAME = DB_CLINICA_DAT,
	FILENAME = N'C:\Users\sinqia\Documents\Sinqia_AspNet\Modulo02_SQLServer\Ex2\DB_CLINICA.mdf',
	SIZE = 5000KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1000KB
)


LOG ON 
(
	NAME = DB_CLINICA_LOG,
	FILENAME = N'C:\Users\sinqia\Documents\Sinqia_AspNet\Modulo02_SQLServer\Ex2\DB_CLINICA_log.ldf',
	SIZE = 2000KB,
	MAXSIZE = UNLIMITED,
	FILEGROWTH = 1000KB
);
GO		