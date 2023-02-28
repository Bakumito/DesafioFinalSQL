-----------------------------------------------------------------Valida Cupom----------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Valida_Cupom]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Valida_Cupom]

GO

CREATE PROCEDURE [SP.Valida_Cupom]

	@idCupomEvento INT
	
	AS
/*Documentação
Arquivo Fonte ......: AdventureWorks2017.sql
Objetivo ...........: Retorna todos os endereços, nome do vendedor, valor total da venda, nome dos produtos, data da venda, nome da categoria do produto, e o valor total da comissao do funcionario
Autor ..............: Lucas Alves
Data ...............: 25/01/2023
Ex .................: EXEC [SP.AllProducts] @STATE = 'Alberta'
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

--Cria a Trigger que executa a procedure
CREATE OR ALTER TRIGGER TesteValidadeCupom 
ON CupomEvento
INSTEAD OF INSERT
AS
EXEC [SP.Valida_Cupom] @idCupomEvento = 1;


--Dispara o Trigger
--UPDATE CupomEvento SET idEventoClienteFavorito = 3 where id = 3;
INSERT INTO CupomEvento VALUES
	(2, '2023-03-01 23:59:59.000', 'o15p16q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12m13n14', 1, 1.0, 10, 'Cupom de desconto de 100%', 'Válido apenas para a primeira compra', GETDATE(), NULL)

select * from CupomEvento;
select * from EventoClienteFavorito;


---------------------------------------------------------------Atualiza Avaliação---------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Media_Avaliacao]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Media_Avaliacao]

GO

CREATE PROCEDURE [SP.Media_Avaliacao]

	@idEventoEstabelecimento INT

	AS
/*Documentação
Arquivo Fonte ......: AdventureWorks2017.sql
Objetivo ...........: Retorna todos os endereços, nome do vendedor, valor total da venda, nome dos produtos, data da venda, nome da categoria do produto, e o valor total da comissao do funcionario
Autor ..............: Lucas Alves
Data ...............: 25/01/2023
Ex .................: EXEC [SP.AllProducts] @STATE = 'Alberta'
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

--Cria a Trigger que executa a procedure
CREATE OR ALTER TRIGGER Media_Avaliacao
ON Avaliacao
AFTER INSERT
AS
EXEC [SP.Media_Avaliacao] @idEventoEstabelecimento = 1;

--Dispara o Trigger
INSERT INTO Avaliacao VALUES 
	(1, 3.1, 'Experiência moderada, tem coisas a melhorar mas em geral eu achei ok', '20230116 12:45:34', null);


select * from Avaliacao;
select * from EventoEstabelecimento;
select * from Evento;
select * from Estabelecimento;



----------------------------------------------------------------Valida Assinatura---------------------------------------------------------

IF EXISTS(SELECT TOP 1 1 FROM sysobjects WHERE ID = object_id(N'[SP.Valida_Assinatura]') AND objectproperty(ID,N'isProcedure') = 1)
	DROP PROCEDURE [SP.Valida_Assinatura]

GO

Create Procedure [SP.Valida_Assinatura]
	
	@idAssinatura INT

	AS

/*Documentação
Arquivo Fonte ......: AdventureWorks2017.sql
Objetivo ...........: Retorna todos os endereços, nome do vendedor, valor total da venda, nome dos produtos, data da venda, nome da categoria do produto, e o valor total da comissao do funcionario
Autor ..............: Lucas Alves
Data ...............: 25/01/2023
Ex .................: EXEC [SP.Valida_Assinatura] @STATE = 'Alberta'
*/

	BEGIN
		
		 IF (select TOP 1 dataPagamento
			from PagamentoAssinatura 
			where idAssinatura = @idAssinatura ) <> NULL
			update PagamentoAssinatura
				set comprovante = 1
			WHERE idAssinatura = @idAssinatura
			update Assinatura 
			set status = 1
			where id = @idAssinatura
			
	END
GO

--Cria a Trigger que executa a procedure
Create or Alter Trigger TesteAssinatura 
ON PagamentoAssinatura
--INSTEAD OF INSERT
AFTER INSERT
AS
EXEC [SP.Valida_Assinatura] @idAssinatura = 1;

--Dispara o Trigger
INSERT INTO PagamentoAssinatura VALUES
	(1, 1, '2023-03-21', '2023-03-20', 0, 900.00, NULL, GETDATE(), NULL)

select * from Assinatura;
select * from PagamentoAssinatura;

select id,idAssinatura,dataPagamento, comprovante 
			from PagamentoAssinatura
			where idAssinatura = 2


IF	(select PA.comprovante, MAX(PA.dataPagamento) AS DataPagamento
	from PagamentoAssinatura PA
	INNER JOIN Assinatura A
	ON A.id = PA.idAssinatura
	where idAssinatura = 1
	group by PA.dataPagamento, PA.comprovante) = 0

			update Assinatura 
			set status = 0
			where id = 1	


	select dataInicio