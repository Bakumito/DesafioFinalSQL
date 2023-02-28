----------------------------------------------------------------- VERIFICA CUPOM EVENTO ----------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Valida_Cupom]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Valida_Cupom]

GO

CREATE PROCEDURE [SP.Valida_Cupom]

	@idCupomEvento INT
	
	AS

	/*Documentacao
	Arquivo Fonte ......: Valida_Cupom.sql
	Objetivo ...........: Verificar se a data de vencimento do cupom ja passou, se passou, desativa o cupom colocando seu status = 0
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



