CREATE VIEW TipoEventoMaiorQtde AS

/*Esta View tem como objetvio descobrir os tipos de 
eventos com maior quantidade de Clientes
*/

SELECT TOP 10 t.id, t.descricao, COUNT(c.id) AS QtdClientes
    FROM TipoEvento t
    INNER JOIN Evento e 
        ON t.id = e.idTipoEvento
	INNER JOIN ClienteEstabelecimentoInteresse cei
		ON e.id = cei.idEstabelecimento
    INNER JOIN Cliente c 
        ON cei.idCliente = c.id
    GROUP BY t.id, t.descricao
    ORDER BY QtdClientes DESC