CREATE VIEW AS TipoPagamentoUtilzadoIngresso

/* A Seguinte view tem como objetivo
demonstrar a forma de pagamento mais 
utilizada para Ingresso*/

SELECT tpi.descicao AS Forma_Pagamento, COUNT(tpi.*) AS Quantidade
    FROM TipoPagamentoIngresso tpi 
    ORDER BY Quantidade DESC
    