CREATE VIEW AS TipoEventoMaiorQtde 

/*Esta View tem como objetvio descobrir os tipos de 
eventos com maior qquantidade de Clientes
*/

SELECT t.id, t.descricao, COUNT(c.id) AS QtdClientes
    FROM TipoEvento t
    INNER JOIN Evento e 
        ON t.id = e.idTipoEvento
    INNER JOIN Cliente c 
        ON e.id = c.idContatoEvento
    GROUP BY t.id, t.descricao
    ORDER BY QtdClientes DESC
