CREATE VIEW AS MelhorEstabelecimentoCidade 

SELECT e.*, c.nome AS cidade, AVG(a.pontos) AS mediaAvaliacao
    FROM Estabelecimento e
    INNER JOIN EventoEstabelecimento ee
        ON e.id = ee.idEstabelecimento
    INNER JOIN Avaliacao a
        ON ee.id = a.idEventoEstabalecimento
    INNER JOIN Endereco en
        ON e.idEndereco = en.id
    INNER JOIN Cidade c
        ON en.idCidade = c.id
GROUP BY e.id, e.idContatoEstabelecimento, e.idTipoEstabelecimento, e.idEndereco, e.idAssinatura, e.idProprietario, e.nomeFantasia, e.razaoSocial, e.email, e.cnpj, e.dataCadastro, e.dataUltimaAlteracao, c.nome
ORDER BY mediaAvaliacao DESC;
