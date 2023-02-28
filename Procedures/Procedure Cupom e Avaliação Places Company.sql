
-----------------------------------------------------------------VERIFICA CUPOM----------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Valida_Cupom]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Valida_Cupom]

GO

CREATE PROCEDURE [SP.Valida_Cupom]

	@idCupomEvento INT
	
	AS

/*Documenta��o
Arquivo Fonte ......: Procedure Cupom e Avalia��o Places Company.sql
Objetivo ...........: Verificar se a data de vencimento do cupom j� passou, se passou, desativa o cupom colocando seu status = 0
Autor ..............: Lucas Alves
Data ...............: 24/02/2023
Ex .................: EXEC [SP.Valida_Cupom] @idCupomEvento = 1
*/

	DECLARE 
	@data DATETIME = GETDATE();
	
	BEGIN
		
		IF @data > (SELECT dataValidade 
					FROM CupomEvento
					WHERE id = @idCupomEvento) 

					UPDATE CupomEvento 
					SET STATUS = 0
					WHERE id = @idCupomEvento
				
	END

GO


--Executa a procedure para verificar o cupom que ser� utilizado
EXEC [SP.Valida_Cupom] @idCupomEvento = 1


--Verificar que o status mudou
select * from CupomEvento;



---------------------------------------------------------------M�DIA DE AVALIA��O---------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Media_Avaliacao]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Media_Avaliacao]

GO

CREATE PROCEDURE [SP.Media_Avaliacao]

	@idEventoEstabelecimento INT

	AS

/*Documenta��o
Arquivo Fonte ......: Procedure Cupom e Avalia��o Places Company.sql
Objetivo ...........: Calcular a m�dia de Avalia��o de determinado Evento/Estabelecimento
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


--Dispara o Trigger com evento INSERT em Avalia��o
INSERT INTO Avaliacao VALUES 
	(1, 3.1, 'Experi�ncia moderada, tem coisas a melhorar mas em geral achei ok o servi�o', '20230116 12:45:34', null);