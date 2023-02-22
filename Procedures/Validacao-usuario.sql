CREATE TABLE Usuario (
	id TINYINT PRIMARY KEY IDENTITY(1,1),
	login VARCHAR(60) NOT NULL,
	senha VARCHAR(64) NOT NULL,
	dataCadastro DATETIME NOT NULL DEFAULT GETDATE(),
	dataUltimaAlteracao DATE
	);

INSERT INTO Usuario VALUES
    ('Gustavo', '123',GETDATE(),null);
INSERT INTO Usuario VALUES
    ('Betoneira', '1234',GETDATE(),null);
go

DROP TABLE Usuario;
SELECT * FROM Usuario;
DROP PROCEDURE VerificaCredenciais;

go

CREATE PROCEDURE VerificaCredenciais 
    @login VARCHAR(60),
    @senha VARCHAR(64)
AS
BEGIN
    SET NOCOUNT ON;
    IF EXISTS(SELECT * FROM Usuario WHERE login = @login AND senha = @senha)
        SELECT 'Credenciais válidas' AS Resultado
    ELSE
        SELECT 'Credenciais inválidas' AS Resultado
END

EXEC VerificaCredenciais 'Gustavo', '123';
EXEC VerificaCredenciais 'Gustavo', '12';
