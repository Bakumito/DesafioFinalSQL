CREATE VIEW AS EventoMaiorFavorito

/* A seguinte view tem como objetivo 
selecionar o evento com maior numero
de favoritos por cidade
*/ 

SELECT ev.nome AS Nome_Evento, ci.nome AS Nome_Cidade, COUNT(ecf.id) AS Quantidade_Favorito
    FROM Evento ev 
    INNER JOIN EventoEstabelecimento ee
        ON ev.id = ee.idEvento
    INNER JOIN Estabelecimento es
        ON  ee.idEstabelecimento = es.id
    INNER JOIN Endereco en 
        ON es.idEndereco = en.id
    INNER JOIN Cidade ci 
        ON en.idCidade = ci.id
    INNER JOIN EventoClienteFavorito ecf 
        ON ev.id = ecf.idEvento
    GROUP BY ci.nome, ev.nome
    ORDER BY ci.nome DESC 

    