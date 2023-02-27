CREATE VIEW TipoPagamentoUtilzadoIngresso AS

/* A Seguinte view tem como objetivo
demonstrar a forma de pagamento mais 
utilizada para Ingresso*/

SELECT TOP 10 tpi.descricao AS Forma_Pagamento, COUNT(tpi.id) AS Quantidade
    FROM TipoPagamentoIngresso tpi 
    GROUP BY tpi.descricao
    ORDER BY Quantidade DESC
    