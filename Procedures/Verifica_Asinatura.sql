---------------------------------------------------------------- PAGAMENTO ASSINATURA ---------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Verifica_Assinatura]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Verifica_Assinatura]

GO

Create Procedure [SP.Verifica_Assinatura]
	
	@idAssinatura INT

	AS

    /*Documentacao
    Arquivo Fonte ......: Verifica_Assinatura.sql
    Objetivo ...........: Verificar o pagamento da assinatura utilizando as datas e comprovante de pagamento
    Autor ..............: Lucas Alves
    Data ...............: 24/02/2023
    Ex .................: EXEC [SP.Verifica_Assinatura] @idAssinatura = 1;
    */

	DECLARE 
	@data DATETIME = GETDATE();

	BEGIN
		
		 IF  (@data < (select TOP 1 dataVencimento
					  from PagamentoAssinatura 
					  where idAssinatura = @idAssinatura
					  order BY dataVencimento desc) 
			  AND	  (select TOP 1 comprovante 
					  from PagamentoAssinatura 
					  where idAssinatura = @idAssinatura
					  order BY dataVencimento desc) = 0)
					
			BEGIN
					update PagamentoAssinatura
					set comprovante = 1
					WHERE idAssinatura = @idAssinatura;

					update Assinatura 
					set status = 1, 
					dataFim = (SELECT DATEADD(MONTH, 1, dataFim))
					where id = @idAssinatura;
			END
		 
		 ELSE
			BEGIN
					update Assinatura 
					set status = 0 
					where id = @idAssinatura;

			END		  			
			
	END

GO



--Executa a procedure
EXEC [SP.Verifica_Assinatura] @idAssinatura = 1;


--Verificar altera��es
select * from Assinatura;
select * from PagamentoAssinatura;
