CREATE VIEW AS TipoPagamentoUtilzadoAssinatura

/* A Seguinte view tem como objetivo
demonstrar a forma de pagamento mais 
utilizada para assinatura*/

SELECT tpa.descricao AS Forma_Pagamento, COUNT(tpa.id) AS Quantidade
    FROM TipoPagamentoAssinatura tpa 
	GROUP BY tpa.descricao
    ORDER BY Quantidade DESC
    