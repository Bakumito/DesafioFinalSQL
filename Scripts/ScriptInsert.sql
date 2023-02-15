INSERT INTO Estado VALUES
    ('Acre', 'AC'),
    ('Alagoas', 'AL'),
    ('Amapá', 'AP'),
    ('Amazonas', 'AM'),
    ('Bahia', 'BA'),
    ('Ceará', 'CE'),
    ('Distrito Federal', 'DF'),
    ('Espírito Santo', 'ES'),
    ('Goiás', 'GO'),
    ('Maranhão', 'MA'),
    ('Mato Grosso', 'MT'),
    ('Mato Grosso do Sul', 'MS'),
    ('Minas Gerais', 'MG'),
    ('Pará', 'PA'),
    ('Paraíba', 'PB'),
    ('Paraná', 'PR'),
    ('Pernambuco', 'PE'),
    ('Piauí', 'PI'),
    ('Rio de Janeiro', 'RJ'),
    ('Rio Grande do Norte', 'RN'),
    ('Rio Grande do Sul', 'RS'),
    ('Rondônia', 'RO'),
    ('Roraima', 'RR'),
    ('Santa Catarina', 'SC'),
    ('São Paulo', 'SP'),
    ('Sergipe', 'SE'),
    ('Tocantins', 'TO');

INSERT INTO TipoEstabelecimento VALUES
    ('Supermercado'),
    ('Farmácia'),
    ('Loja de Roupas'),
    ('Padaria'),
    ('Livraria'),
    ('Academia'),
    ('Restaurante'),
    ('Cinema'),
    ('Banco'),
    ('Casa de Shows'),
    ('Bar'),
    ('Museu'),
    ('Salão de Beleza'),
    ('Posto de Gasolina'),
    ('Pet Shop'),
    ('Hospital'),
    ('Pizzaria'),
    ('Cafeteria'),
    ('Teatro'),
    ('Parque');

INSERT INTO TipoPagamentoAssinatura VALUES
    ('Cartão de Crédito'),
    ('Cartão de Débito'),
    ('Boleto Bancário'),
    ('Cheque'),
    ('Pix');

INSERT INTO TipoPagamentoIngresso VALUES
    ('Cartão de Crédito'),
    ('Cartão de Débito'),
    ('Boleto Bancário'),
    ('Cheque'),
    ('Dinheiro'),
    ('Pix');

INSERT INTO TipoEvento VALUES 
    ('Treinamento'),
    ('Palestra'),
    ('Exposição'),
    ('Concerto'),
    ('Feira'),
    ('Congresso'),
    ('Encontro de Negócios'),
    ('Festival'),
    ('Seminário'),
    ('Convenção'),
    ('Fórum'),
    ('Lançamento de Produto'),
    ('Leilão'),
    ('Workshop'),
    ('Apresentação Teatral'),
    ('Mostra de Cinema'),
    ('Feijoada');

INSERT INTO Assinatura (dataInicio, dataFim, status, valor, dataCadastro, dataUltimaAlteracao)
VALUES 
('2022-03-21', '2022-04-20', 1, 900.00, '2022-03-20', NULL),
('2022-04-01', '2022-06-30', 1, 900.00, '2022-04-01', '2022-04-01'),
('2022-05-11', '2022-05-30', 0, 900.00, '2022-05-10', NULL),
('2022-06-01', '2022-08-31', 1, 900.00, '2022-05-31', NULL),
('2022-07-12', '2022-08-11', 1, 900.00, '2022-07-11', '2022-07-12'),
('2022-08-01', '2022-09-30', 1, 900.00, '2022-07-31', NULL),
('2022-09-21', '2022-11-20', 1, 900.00, '2022-09-20', '2022-09-21'),
('2022-10-01', '2022-12-31', 1, 900.00, '2022-09-30', NULL),
('2022-11-11', '2022-11-30', 0, 900.00, '2022-11-10', NULL);

INSERT INTO ContatoEstabelecimento
VALUES 
    ('11987654321', 1, '2022-03-01', GETDATE()),
    ('11911112222', 1, GETDATE(), '2022-03-02'),
    ('11933334444', 0, '2022-02-14', GETDATE()),
    ('11955556666', 0, GETDATE(), '2022-03-01'),
    ('11977778888', 1, '2022-02-28', '2022-03-02'),
    ('11999990000', 1, '2022-02-15', '2022-03-01'),
    ('11944445555', 0, GETDATE(), '2022-03-02'),
    ('11966667777', 1, '2022-02-28', '2022-03-02'),
    ('11988889999', 0, GETDATE(), '2022-03-01'),
    ('11900001111', 1, '2022-02-14', '2022-03-02'),
    ('11922223333', 0, '2022-02-15', '2022-03-01'),
    ('11944447777', 1, GETDATE(), '2022-03-02'),
    ('11966669999', 1, '2022-02-28', '2022-03-02'),
    ('11988881111', 0, GETDATE(), '2022-03-01'),
    ('11900002222', 1, '2022-02-14', '2022-03-02'),
    ('11922224444', 0, '2022-02-15', '2022-03-01'),
    ('11944443333', 1, GETDATE(), '2022-03-02'),
    ('11966665555', 1, '2022-02-28', '2022-03-02'),
    ('11988883333', 0, GETDATE(), '2022-03-01'),
    ('11900003333', 1, '2022-02-14', '2022-03-02');

























INSERT INTO Cidade (idEstado, nome) VALUES
    (1, 'Rio Branco'),
    (1, 'Cruzeiro do Sul'),
    (2, 'Maceió'),
    (2, 'Arapiraca'),
    (3, 'Macapá'),
    (3, 'Santana'),
    (4, 'Manaus'),
    (4, 'Parintins'),
    (5, 'Salvador'),
    (5, 'Feira de Santana'),
    (6, 'Fortaleza'),
    (6, 'Juazeiro do Norte'),
    (7, 'Brasília'),
    (7, 'Ceilândia'),
    (8, 'Vitória'),
    (8, 'Cariacica'),
    (9, 'Goiânia'),
    (9, 'Aparecida de Goiânia'),
    (10, 'São Luís'),
    (10, 'Imperatriz'),
    (11, 'Cuiabá'),
    (11, 'Várzea Grande'),
    (12, 'Campo Grande'),
    (12, 'Dourados'),
    (13, 'Belo Horizonte'),
    (13, 'Uberlândia'),
    (14, 'Belém'),
    (14, 'Ananindeua'),
    (15, 'João Pessoa'),
    (15, 'Campina Grande'),
    (16, 'Curitiba'),
    (16, 'Londrina'),
    (17, 'Recife'),
    (17, 'Jaboatão dos Guararapes'),
    (18, 'Teresina'),
    (18, 'Parnaíba'),
    (19, 'Rio de Janeiro'),
    (19, 'São Gonçalo'),
    (20, 'Natal'),
    (20, 'Mossoró'),
    (21, 'Porto Alegre'),
    (21, 'Caxias do Sul'),
    (22, 'Porto Velho'),
    (22, 'Ji-Paraná'),
    (23, 'Boa Vista'),
    (23, 'Rorainópolis'),
    (24, 'Florianópolis'),
    (24, 'Joinville'),
    (25, 'São Paulo'),
    (25, 'Guarulhos'),
    (26, 'Aracaju'),
    (26, 'Nossa Senhora do Socorro'),
    (27, 'Palmas'),
    (27, 'Gurupi');