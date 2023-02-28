---------------------------------------------------------------MEDIA DE AVALIACAO---------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Media_Avaliacao]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Media_Avaliacao]

GO

CREATE PROCEDURE [SP.Media_Avaliacao]

	@idEventoEstabelecimento INT

	AS

    /*Documentacao
    Arquivo Fonte ......: Media_Avaliacao.sql
    Objetivo ...........: Calcular a media de Avaliacao de determinado Evento/Estabelecimento
    Autor ..............: Lucas Alves
    Data ...............: 24/02/2023
    Ex .................: EXEC [SP.Media_Avaliacao] @idEventoEstabelecimento = 1;
    */

	BEGIN

		SELECT AVG(A.pontos) AS MediaAvaliacao, E.nome AS NomeEvento, EB.nomeFantasia AS NomeEstabelecimento
		FROM Avaliacao A
		INNER JOIN EventoEstabelecimento EV
		ON EV.id = A.idEventoEstabalecimento
		INNER JOIN Evento E
		ON E.id = EV.idEvento
		INNER JOIN Estabelecimento EB
		ON EB.id = EV.idEstabelecimento
		WHERE idEventoEstabalecimento = @idEventoEstabelecimento
		GROUP BY E.nome, EB.nomeFantasia

	END

GO


--Cria ou altera a Trigger que vai executar a Procedure
CREATE OR ALTER TRIGGER Media_Avaliacao
ON Avaliacao
AFTER INSERT
AS
EXEC [SP.Media_Avaliacao] @idEventoEstabelecimento = 1;


--Dispara o Trigger com evento INSERT em Avaliacao
INSERT INTO Avaliacao VALUES 
	(1, 3.1, 'Experiencia moderada, tem coisas a melhorar mas em geral achei ok o servico', '20230116 12:45:34', null);