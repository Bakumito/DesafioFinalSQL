CREATE VIEW AS EstabelecimentoMaisEvento 

SELECT e.nome, COUNT(ee.*) AS Quantidade  
    FROM Estabelecimento e 
    INNER JOIN EventoEstabalecimento ee
        ON e.id = ee.idEvento 
GROUP BY e.nome
ORDER BY QUantidade DESC