IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.VerificaCredenciais] ') AND objectproperty(ID,N'isProcedure') = 1)
    DROP PROCEDURE [SP.VerificaCredenciais] 

GO

CREATE PROCEDURE [SP.VerificaCredenciais]  
    @login VARCHAR(60),
    @senha VARCHAR(64)
AS
    /* Documentação
    Arquivo Fonte..........: Procedures.sql
    Objetivo...............: Criará um procedimento para verificação de credenciais de um usuário
    Autor..................: Gustavo Barbosa
    Data...................: 22/02/2023
    Ex.....................: EXEC [SP.VerificaCredenciais] @login = 'betoneira', @senha = 'jooj'
    */
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * FROM Usuario WHERE login = @login AND senha = @senha)
        SELECT 'Credenciais válidas' AS Resultado
    ELSE
        SELECT 'Credenciais inválidas' AS Resultado
END
