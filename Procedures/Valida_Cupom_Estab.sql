----------------------------------------------------------------- VERIFICA CUPOM ESTABELECIMENTO ----------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Valida_Cupom_Estab]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Valida_Cupom_Estab]

GO

CREATE PROCEDURE [SP.Valida_Cupom_Estab]

	@idCupomEstabelecimento INT
	
	AS

    /*Documentacao
    Arquivo Fonte ......: Valida_Cupom_Estab.sql
    Objetivo ...........: Verificar se a data de vencimento do cupom ja passou, se passou, desativa o cupom colocando seu status = 0
    Autor ..............: Lucas Alves
    Data ...............: 24/02/2023
    Ex .................: EXEC [SP.Valida_Cupom_Estab] @idCupomEstabelecimento = 1
    */

	DECLARE 
	@data DATETIME = GETDATE();
	
	BEGIN
		
		IF @data > (SELECT dataValidade 
					FROM CupomEstabelecimento
					WHERE id = @idCupomEstabelecimento) 

					UPDATE CupomEstabelecimento 
					SET STATUS = 0
					WHERE id = @idCupomEstabelecimento
				
	END

GO


--Executa a procedure para verificar o cupom que sera utilizado
EXEC [SP.Valida_Cupom_Estab] @idCupomEstabelecimento = 1;


--Verificar que o status mudou
select * from CupomEstabelecimento;
