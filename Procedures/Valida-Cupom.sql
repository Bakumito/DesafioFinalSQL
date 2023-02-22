IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Valida_Cupom]') AND objectproperty(ID,N'isProcedure') = 1)
    DROP PROCEDURE [SP.Valida_Cupom]

GO

CREATE PROCEDURE [SP.Valida_Cupom]

    @data DATETIME

    AS
    /*Documentação
    Arquivo Fonte ......: Procedure.sql
    Objetivo ...........: Valida o Cupom baseada na sua data de Validade
    Autor ..............: Lucas Alves
    Data ...............: 22/02/2023
    Ex .................: EXEC [SP.Valida_Cupom] @data = '2023031 23:59:59.000'
    */
    BEGIN

        IF @data > (SELECT dataValidade 
                    FROM CupomEvento) 

        UPDATE CupomEvento 
        SET status = 0 

    END

GO

--Cria a Trigger que executa a procedure
Create Trigger TesteValidadeCupom 
    ON CupomEvento
AFTER INSERT
    AS
EXEC [SP.Valida_Cupom] @data = GETDATE;

--Dispara o Trigger
INSERT INTO CupomEvento VALUES
(2, '2023031 23:59:59.000', 'o15p16q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12m13n14', 1, 1.0, 10, 'Cupom de desconto de 100%', 'Válido apenas para a primeira compra', GETDATE(), NULL)

