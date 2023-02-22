CREATE VIEW AS TipoPagamentoUtilzadoAssinatura

/* A Seguinte view tem como objetivo
demonstrar a forma de pagamento mais 
utilizada para assinatura*/

SELECT tpa.descicao AS Forma_Pagamento, COUNT(tpa.*) AS Quantidade
    FROM TipoPagamentoAssinatura tpa 
    ORDER BY Quantidade DESC
    