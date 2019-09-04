--criar uma stored procedure capaz de incluir ou alterar um 
--convidado. A alteração ocorrerá se o CPF informado já estiver cadastrado
USE DB_EVENTOS;
GO
ALTER PROC pr_incluir_convidado
(
	@cpf varchar(11),
	@idevento int,
	@nome varchar(50),
	@telefone varchar(20),
	@email varchar(60),
	@status int output
)
AS
BEGIN
	IF EXISTS (SELECT Cpf FROM TBConvidados WHERE Cpf = @cpf)
		BEGIN
			UPDATE TBConvidados SET  IdEvento=@idevento, Nome=@nome, Email=@email,
			Telefone=@telefone WHERE Cpf = @cpf

			SET @status = 1
		END
	ELSE
		BEGIN
			INSERT INTO TBConvidados (Cpf, IdEvento, Nome, Email, Telefone)
			VALUES (@cpf, @idevento, @nome, @email, @telefone)

			SET @status = 0
		END
END