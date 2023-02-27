CREATE VIEW MelhorEstabelecimentoCidade AS

/* A seguinte view serverá para selecionar o melhor 
estabelecimento baseado na sua média de pontos por cidade*/

SELECT e.nomeFantasia, c.nome AS cidade, AVG(a.pontos) AS mediaAvaliacao
    FROM Estabelecimento e
    INNER JOIN EventoEstabelecimento ee
        ON e.id = ee.idEstabelecimento
    INNER JOIN Avaliacao a
        ON ee.id = a.idEventoEstabalecimento
    INNER JOIN Endereco en
        ON e.idEndereco = en.id
    INNER JOIN Cidade c
        ON en.idCidade = c.id
GROUP BY e.nomeFantasia, c.nome
ORDER BY mediaAvaliacao DESC;