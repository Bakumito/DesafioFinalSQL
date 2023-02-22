CREATE VIEW AS TipoPagamentoUtilzadoIngresso

/* A Seguinte view tem como objetivo
demonstrar a forma de pagamento mais 
utilizada para Ingresso*/

SELECT tpi.descricao AS Forma_Pagamento, COUNT(tpi.id) AS Quantidade
    FROM TipoPagamentoIngresso tpi 
    GROUP BY tpi.descricao
    ORDER BY Quantidade DESC
    