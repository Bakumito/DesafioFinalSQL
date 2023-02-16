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

INSERT INTO Assinatura VALUES 
    ('2022-03-21', '2022-04-20', 1, 900.00, '2022-03-20', NULL),
    ('2022-04-01', '2022-06-30', 1, 900.00, '2022-04-01', '2022-04-01'),
    ('2022-05-11', '2022-05-30', 0, 900.00, '2022-05-10', NULL),
    ('2022-06-01', '2022-08-31', 1, 900.00, '2022-05-31', NULL),
    ('2022-07-12', '2022-08-11', 1, 900.00, '2022-07-11', '2022-07-12'),
    ('2022-08-01', '2022-09-30', 1, 900.00, '2022-07-31', NULL),
    ('2022-09-21', '2022-11-20', 1, 900.00, '2022-09-20', '2022-09-21'),
    ('2022-10-01', '2022-12-31', 1, 900.00, '2022-09-30', NULL),
    ('2022-11-11', '2022-11-30', 0, 900.00, '2022-11-10', NULL);

INSERT INTO ContatoEstabelecimento VALUES 
    ('11987654321', 1, '2022-03-01', NULL),
    ('11911112222', 1, GETDATE(), '2022-03-02'),
    ('11933334444', 0, '2022-02-14', NULL),
    ('11955556666', 0, GETDATE(), '2022-03-01'),
    ('11977778888', 1, '2022-02-28', '2022-03-02'),
    ('11999990000', 1, '2022-02-15', '2022-03-01'),
    ('11944445555', 0, GETDATE(), NULL),
    ('11966667777', 1, '2022-02-28', '2022-03-02'),
    ('11988889999', 0, GETDATE(), '2022-03-01'),
    ('11900001111', 1, '2022-02-14', '2022-03-02'),
    ('11922223333', 0, '2022-02-15', NULL),
    ('11944447777', 1, GETDATE(), '2022-03-02'),
    ('11966669999', 1, '2022-02-28', '2022-03-02'),
    ('11988881111', 0, GETDATE(), '2022-03-01'),
    ('11900002222', 1, '2022-02-14', NULL),
    ('11922224444', 0, '2022-02-15', '2022-03-01'),
    ('11944443333', 1, GETDATE(), '2022-03-02'),
    ('11966665555', 1, '2022-02-28', '2022-03-02'),
    ('11988883333', 0, GETDATE(), '2022-03-01'),
    ('11900003333', 1, '2022-02-14', NULL);

INSERT INTO ContatoEvento VALUES 
    ('12345678901', 1, '2022-01-01', NULL),
    ('23456789012', 0, '2022-01-02', NULL),
    ('34567890123', 1, GETDATE(), NULL),
    ('45678901234', 0, '2022-01-04', NULL),
    ('56789012345', 1, GETDATE(), NULL),
    ('67890123456', 0, '2022-01-06', '2022-01-10'),
    ('78901234567', 1, GETDATE(), NULL),
    ('89012345678', 0, '2022-01-08', NULL),
    ('90123456789', 1, GETDATE(), NULL),
    ('01234567890', 0, '2022-01-10', NULL),
    ('32165498732', 1, '2022-01-11', '2022-01-13'),
    ('14725836901', 0, '2022-01-12', NULL),
    ('25836914702', 1, '2022-01-13', '2022-01-16'),
    ('36914725803', 0, '2022-01-14', NULL),
    ('45612378904', 1, GETDATE(), NULL),
    ('45678912305', 0, '2022-01-16', NULL),
    ('78901245606', 1, GETDATE(), NULL),
    ('12378945607', 0, '2022-01-18', NULL),
    ('65498712308', 1, GETDATE(), NULL),
    ('95162387409', 0, '2022-01-20', NULL);

INSERT INTO ContatoCliente VALUES 
    ('12345678901', 1, '2022-01-01', NULL),
    ('23456789012', 0, '2022-01-02', NULL),
    ('34567890123', 1, GETDATE(), '2022-02-01'),
    ('45678901234', 0, '2022-01-04', NULL),
    ('56789012345', 1, GETDATE(), '2022-02-02'),
    ('67890123456', 0, '2022-01-06', NULL),
    ('78901234567', 1, GETDATE(), '2022-02-03'),
    ('89012345678', 0, '2022-01-08', NULL),
    ('90123456789', 1, GETDATE(), '2022-02-04'),
    ('01234567890', 0, '2022-01-10', NULL),
    ('32165498732', 1, '2022-01-11', '2022-01-11'),
    ('14725836901', 0, '2022-01-12', NULL),
    ('25836914702', 1, '2022-01-13', '2022-01-13'),
    ('36914725803', 0, '2022-01-14', NULL),
    ('45612378904', 1, GETDATE(), '2022-02-05'),
    ('45678912305', 0, '2022-01-16', NULL),
    ('78901245606', 1, GETDATE(), '2022-02-06'),
    ('12378945607', 0, '2022-01-18', NULL),
    ('65498712308', 1, GETDATE(), '2022-02-07'),
    ('95162387409', 0, '2022-01-20', NULL);

INSERT INTO Proprietario VALUES 
    ('João', 'Silva', '12345678901', '1980-01-01', NULL, 'joao.silva@gmail.com', '123456', GETDATE(), NULL),
    ('Maria', 'Souza', '23456789012', '1985-02-02', NULL, 'maria.souza@hotmail.com', '456789', '2022-01-01', NULL),
    ('Pedro', 'Costa', '34567890123', '1990-03-03', NULL, 'pedro.costa@yahoo.com', '789012', GETDATE(), '2022-02-01'),
    ('Ana', 'Lima', '45678901234', '1995-04-04', NULL, 'ana.lima@gmail.com', '012345', '2022-01-04', NULL),
    ('José', 'Ferreira', '56789012345', '2000-05-05', NULL, 'jose.ferreira@gmail.com', '678901', GETDATE(), '2022-02-02'),
    ('Carla', 'Oliveira', '67890123456', '2005-06-06', NULL, 'carla.oliveira@hotmail.com', '234567', '2022-01-06', NULL),
    ('Fernando', 'Santos', '78901234567', '2010-07-07', NULL, 'fernando.santos@gmail.com', '890123', GETDATE(), '2022-02-03'),
    ('Aline', 'Martins', '89012345678', '2015-08-08', NULL, 'aline.martins@yahoo.com', '456789', '2022-01-08', NULL),
    ('Rafael', 'Rodrigues', '90123456789', '2020-09-09', NULL, 'rafael.rodrigues@gmail.com', '123456', GETDATE(), '2022-02-04'),
    ('Sandra', 'Pereira', '01234567890', '1982-10-10', NULL, 'sandra.pereira@hotmail.com', '789012', '2022-01-10', NULL),
    ('Juliana', 'Nascimento', '32165498732', '1987-11-11', NULL, 'juliana.nascimento@gmail.com', '234567', '2022-01-11', '2022-01-11'),
    ('Vitor', 'Gomes', '14725836901', '1992-12-12', NULL, 'vitor.gomes@yahoo.com', '678901', '2022-01-12', NULL),
    ('Mariana', 'Barbosa', '25836914702', '1997-01-13', NULL, 'mariana.barbosa@gmail.com', '123456', '2022-01-13', '2022-01-13'),
    ('Lucas', 'Mendes', '36914725803', '2002-02-14', NULL, 'lucas.mendes@hotmail.com', '456789', '2022-01-14', NULL),
    ('Paulo', 'Araujo', '45612378904', '2002-02-15', NULL, 'paulo.araujo@gmail.com', '2837101', GETDATE(), NULL),
    ('Gabriela', 'Gonçalves', '98765432106', '2010-03-16', NULL, 'gabriela.goncalves@hotmail.com', '890123', '2022-01-16', '2022-01-16'),
    ('Roberto', 'Xavier', '87654321017', '2015-04-17', NULL, 'roberto.xavier@gmail.com', '234567', '2022-01-17', NULL),
    ('Luciana', 'Fernandes', '76543210928', '2020-05-18', NULL, 'luciana.fernandes@yahoo.com', '789012', '2022-01-18', '2022-01-18');

INSERT INTO Cidade VALUES
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

INSERT INTO Endereco  VALUES
    (1, '69900-000', 'Centro', 'Avenida Brasil', '123', 'Sala 101', '2023-02-15', NULL),
    (2, '69980-000', 'Floresta', 'Rua dos Ipês', '456', NULL, GETDATE(), NULL),
    (3, '68900-000', 'Zerão', 'Avenida FAB', '789', NULL, '2023-02-15', NULL),
    (4, '68980-000', 'Jardim América', 'Rua da Felicidade', '101', 'Casa 2', GETDATE(), NULL),
    (5, '40000-000', 'Barra', 'Avenida Oceânica', '1111', NULL, '2023-02-15', NULL),
    (6, '40300-000', 'Engenheiro Luciano Cavalcante', 'Rua Desembargador Lauro Nogueira', '222', NULL, '2023-02-15', NULL),
    (7, '72210-000', 'Guará II', 'QE 38', '10', NULL, '2023-02-15', NULL),
    (8, '29000-000', 'Centro', 'Rua Sete de Setembro', '200', 'Sala 301', '2023-02-15', NULL),
    (9, '74000-000', 'Setor Oeste', 'Rua 15', '500', NULL, '2023-02-15', NULL),
    (10, '65000-000', 'Cohama', 'Avenida Daniel de La Touche', '1000', 'Sala 502', GETDATE(), NULL),
    (11, '78000-000', 'Centro Sul', 'Rua Barão de Melgaço', '800', NULL, '2023-02-15', NULL),
    (12, '79000-000', 'Centro', 'Rua 14 de Julho', '123', NULL, '2023-02-15', NULL),
    (13, '30000-000', 'Serra', 'Rua Dona Sofia', '700', 'Casa 1', '2023-02-15', NULL),
    (14, '66000-000', 'Umarizal', 'Rua dos Mundurucus', '1000', NULL, '2023-02-15', NULL),
    (15, '58000-000', 'Brisamar', 'Avenida Senador Ruy Carneiro', '900', 'Sala 202', '2023-02-15', NULL),
    (16, '80000-000', 'Centro', 'Rua XV de Novembro', '1234', NULL, '2023-02-15', NULL),
    (17, '51000-000', 'Boa Viagem', 'Rua Setúbal', '500', NULL, '2023-02-15', NULL),
    (18, '64000-000', 'Centro', 'Avenida Frei Serafim', '1000', NULL, GETDATE(), NULL),
    (19, '20921-060', 'Engenho Novo', 'Rua Cândido Benício', '407', 'Bloco B, Apto 203', '2023-02-16', NULL),
    (20, '59072-710', 'Capim Macio', 'Rua Afonso Bezerra', '1', 'Sala 102', '2023-02-16', NULL),
    (21, '90520-000', 'Moinhos de Vento', 'Rua Quintino Bocaiúva', '558', 'Sala 2001', GETDATE(), NULL);

INSERT INTO PagamentoAssinatura VALUES

    (1, 1, '2022-03-21', '2022-03-20', 0, 900.00, NULL, GETDATE(), NULL),
    (2, 1, '2022-04-01', '2022-04-01', 1, 900.00, 0, GETDATE(), '2022-04-01'),
    (3, 4, '2022-05-11', '2022-05-10', 0, 900.00, NULL, GETDATE(), NULL),
    (4, 1, '2022-06-01', '2022-05-31', 0, 900.00, NULL, GETDATE(), NULL),
    (5, 1, '2022-07-12', '2022-07-11', 1, 900.00, 0, GETDATE(), '2022-07-12'),
    (6, 2, '2022-08-01', '2022-07-31', 0, 900.00, NULL, GETDATE(), NULL),
    (7, 1, '2022-09-21', '2022-09-20', 1, 900.00, 0, GETDATE(), '2022-09-21'),
    (8, 3, '2022-10-01', '2022-09-30', 0, 900.00, NULL, GETDATE(), NULL),
    (9, 4, '2022-11-11', '2022-11-10', 0, 900.00, NULL, GETDATE(), NULL);

INSERT INTO CLiente VALUES 
    (1, 'João', 'Silva', '12345678901', '1990-01-01', NULL, 'joao.silva@email.com', '123456', '2022-02-15', NULL),
    (2, 'Maria', 'Souza', '23456789012', '1995-02-01', NULL, 'maria.souza@email.com', 'abcdef', '2022-02-15', NULL),
    (3, 'Pedro', 'Oliveira', '34567890123', '1992-03-15', NULL, 'pedro.oliveira@email.com', 'ghijkl', '2022-02-15', '2022-02-15'),
    (4, 'Lucas', 'Santos', '45678901234', '1988-04-20', NULL, 'lucas.santos@email.com', 'mnopqr', '2022-02-15', NULL),
    (5, 'Ana', 'Lima', '56789012345', '1998-05-25', NULL, 'ana.lima@email.com', 'stuvwx', '2022-02-15', '2022-02-15');
    (6, 'Mary', 'Brown', '67890123456', '1988-11-10', NULL, 'marybrown@example.com', 'mypassword', NULL),
    (7, 'Mike', 'Davis', '78901234567', '1982-08-05', NULL, 'mikedavis@example.com', 'mypassword', '2022-02-03'),
    (8, 'Sarah', 'Lee', '89012345678', '1995-02-28', NULL, 'sarahlee@example.com', 'mypassword', NULL),
    (9, 'David', 'Nguyen', '90123456789', '1989-10-18', NULL, 'davidnguyen@example.com', 'mypassword', '2022-02-04'),
    (10, 'Lisa', 'Garcia', '01234567890', '1990-07-02', NULL, 'lisagarcia@example.com', 'mypassword', NULL),
    (11, 'Chris', 'Martinez', '32165498732', '1992-11-23', NULL, 'chrismartinez@example.com', 'mypassword', '2022-01-11'),
    (12, 'Karen', 'Chen', '14725836901', '1985-06-30', NULL, 'karenchen@example.com', 'mypassword', NULL),
    (13, 'Anthony', 'Lopez', '25836914702', '1978-09-03', NULL, 'anthonylopez@example.com', 'mypassword', '2022-01-13'),
    (14, 'Jessica', 'Taylor', '36914725803', '1997-01-20', NULL, 'jessicataylor@example.com', 'mypassword', NULL),
    (15, 'Mark', 'Anderson', '45612378904', '1984-04-07', NULL, 'markanderson@example.com', 'mypassword', '2022-02-05'),
    (16, 'Nicole', 'Brown', '45678912305', '1995-08-14', NULL, 'nicolebrown@example.com', 'mypassword', NULL),
    (17, 'Brian', 'Wilson', '78901245606', '1981-02-17', NULL, 'brianwilson@example.com', 'mypassword', '2022-02-06'),
    (18, 'Grace', 'Lee', '12378945607', '1993-12-08', NULL, 'gracelee@example.com', 'mypassword', NULL),
    (19, 'Eric', 'Wong', '65498712308', '1987-07-29', NULL, 'ericwong@example.com', 'mypassword', '2022-02-07'),
    (20, 'Amanda', 'Lin', '95162387409', '1998-11-12', NULL, 'amandalin@example.com', 'mypassword', NULL);

INSERT INTO MidiaCliente VALUES
    (1, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB),
    SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), 
    (2, 0x89504e470d0a1a0a, NULL)), 
    (5, NULL, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (7, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB),
     NULL),
    (9, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB),
    SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (13, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL),
    (16, NULL, 
    SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (18, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), 
    SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (20, SELECT *
    FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL);

INSERT INTO Evento VALUES
    (1, 1, 'Concerto de Rock', 'Concerto da banda de rock X', '2023-05-15 20:00:00', '2023-05-15 23:00:00', 1000, '18+', '2023-02-15', NULL),
    (2, 2, 'Festival de Cinema', 'Festival de cinema independente', '2023-06-20 10:00:00', '2023-06-25 22:00:00', 500, 'Livre', '2023-02-15', NULL),
    (3, 3, 'Maratona de Corrida', 'Maratona de 42 km', '2023-07-10 07:00:00', '2023-07-10 12:00:00', 100, '18+', '2023-02-15', '2023-02-16'),
    (1, 4, 'Festival de Jazz', 'Festival de Jazz no parque', '2023-08-15 18:00:00', '2023-08-15 22:00:00', 500, 'Livre', '2023-02-15', NULL),
    (2, 5, 'Mostra de Arte Contemporânea', 'Mostra de Arte Contemporânea no Museu de Arte', '2023-09-01 10:00:00', '2023-09-30 18:00:00', 50, 'Livre', '2023-02-15', '2023-02-16'),
    (3, 6, 'Meia Maratona da Cidade', 'Meia Maratona de 21 km pela cidade', '2023-10-08 07:00:00', '2023-10-08 11:00:00', 200, '18+', '2023-02-15', NULL),
    (1, 7, 'Show de Música Eletrônica', 'Show de música eletrônica na boate X', '2023-11-20 23:00:00', '2023-11-21 05:00:00', 500, '18+', '2023-02-15', '2023-02-16'),
    (2, 8, 'Festival de Teatro', 'Festival de teatro infantil no teatro X', '2023-12-10 14:00:00', '2023-12-10 18:00:00', 100, 'Livre', '2023-02-15', NULL),
    (3, 9, 'Corrida de Obstáculos', 'Corrida de obstáculos em sítio Y', '2024-01-15 09:00:00', '2024-01-15 12:00:00', 50, '18+', '2023-02-15', '2023-02-16'),
    (1, 1, 'Festa de Aniversário', 'Comemoração do aniversário de João', '2023-03-10 20:00:00', '2023-03-11 02:00:00', 50, 'Livre', '2022-02-15', NULL),
    (2, 2, 'Conferência de Tecnologia', 'Evento sobre tecnologia e inovação', '2023-05-20 09:00:00', '2023-05-21 18:00:00', 200, 'Livre', '2022-02-15', '2022-02-16'),
    (1, 3, 'Show de Rock', 'Apresentação da banda The Rolling Stones', '2023-07-07 21:00:00', '2023-07-08 00:00:00', 100, '18+', '2022-02-15', NULL),
    (3, 4, 'Exposição de Arte', 'Mostra de arte contemporânea', '2023-08-15 10:00:00', '2023-08-20 18:00:00', 500, 'Livre', '2022-02-15', '2022-02-17'),
    (2, 5, 'Simpósio de Medicina', 'Evento sobre novidades na área de saúde', '2023-09-01 09:00:00', '2023-09-03 18:00:00', 150, '18+', '2022-02-15', NULL);
    (1, 1, 'Concerto de Rock', 'Apresentação de bandas de rock', '2023-05-20 20:00:00', '2023-05-20 23:00:00', 500, '18+', '2023-02-16', NULL),
    (2, 2, 'Feira de Tecnologia', 'Exposição de tecnologias e novidades do mercado', '2023-09-10 10:00:00', '2023-09-12 18:00:00', 1000, 'Livre', '2023-02-16', '2023-02-17'),
    (3, 3, 'Festival de Cinema', 'Mostra de filmes nacionais e internacionais', '2023-07-07 16:00:00', '2023-07-14 22:00:00', 300, '16+', '2023-02-16', NULL),
    (4, 4, 'Desfile de Moda', 'Apresentação de novas coleções de moda', '2023-04-28 19:00:00', '2023-04-28 22:00:00', 200, 'Livre', '2023-02-16', NULL),
    (5, 5, 'Feira de Artesanato', 'Exposição de artesanatos regionais', '2023-06-05 10:00:00', '2023-06-05 18:00:00', 500, 'Livre', '2023-02-16', '2023-02-18');

INSERT INTO MidiaEvento VALUES 
    (1, SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL),
    (2, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video1.mp4', SINGLE_BLOB)),
    (3, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\image2.jpg', SINGLE_BLOB),
        SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (4, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\image2.jpg', SINGLE_BLOB), NULL),
    (5, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video3.mp4', SINGLE_BLOB)),
    (6, SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL),
    (7, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video3.mp4', SINGLE_BLOB)),
    (8, SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL),
    (9, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video3.mp4', SINGLE_BLOB)),
    (10, SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL),
    (11, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video3.mp4', SINGLE_BLOB)),
    (12, SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB), NULL),
    (13, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video1.mp4', SINGLE_BLOB)),
    (14, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\image2.jpg', SINGLE_BLOB),
        SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (15, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video1.mp4', SINGLE_BLOB)),
    (16, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\image2.jpg', SINGLE_BLOB),
        SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (17, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video1.mp4', SINGLE_BLOB)),
    (18, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\image2.jpg', SINGLE_BLOB),
        SELECT *
        FROM OPENROWSET(BULK 'C:\Users\SMN\Pictures\Captura de tela 2022-12-29 115624.png', SINGLE_BLOB)),
    (, NULL, SELECT *
        FROM OPENROWSET(BULK 'C:\path\to\video3.mp4', SINGLE_BLOB)),

INSERT INTO EventoClienteFavorito VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (4, 3),
    (5, 2), 
    (7, 2),
    (8, 3),
    (9, 3),
    (10, 2),
    (11, 4),
    (12, 4);

INSERT INTO CupomEvento VALUES
    (1, '2023-06-30 23:59:59', 'a1b2c3d4e5f6g7h8i9j10k11l12m13n14o15p16q17r18s19t20', 1, 1.5, 50, 'Cupom de desconto de 50%', 'Válido apenas para produtos selecionados', '2023-02-15', NULL),
    (2, '2023-05-31 23:59:59', 'o15p16q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12m13n14', 1, 2.5, 100, 'Cupom de desconto de 100%', 'Válido apenas para a primeira compra', '2023-02-15', NULL),
    (3, '2023-09-30 23:59:59', 'g7h8i9j10k11l12m13n14o15p16q17r18s19t20a1b2c3d4e5f6', 1, 3.0, 75, 'Cupom de desconto de 75%', 'Válido apenas para compras acima de R$100,00', '2023-02-15', NULL),
    (4, '2023-12-31 23:59:59', 'q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12m13n14o15p16', 1, 1.0, 20, 'Cupom de desconto de 20%', 'Válido apenas para a categoria de roupas', '2023-02-15', NULL),
    (5, '2024-02-28 23:59:59', 'm13n14o15p16q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12', 1, 4.5, 200, 'Cupom de desconto de 200%', 'Válido apenas para compras acima de R$300,00', '2023-02-15', NULL),
    (6, '2023-07-31 23:59:59', 'c3d4e5f6g7h8i9j10k11l12m13n14o15p16q17r18s19t20a1b2', 1, 2.0, 50, 'Cupom de desconto de 50%', 'Válido apenas para produtos em promoção', '2023-02-15', NULL),
    (7, '2023-08-31 23:59:59', 'p16q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12m13n14o15', 1, 2.5, 100, 'Cupom de desconto de 100%', 'Válido apenas para compras acima de R$200,00', '2023-02-15', NULL),
    (8, '2023-11-30 23:59:59', 'l12m13n14o15p16q17r18s19t20a1b2c3d4e5f6g7h8i9j10k11', 1, 3.5, 150, 'Cupom de desconto de 150%', 'Válido apenas para produtos em lançamento', '2023-02-15', NULL),
    (9, '2023-10-31 23:59:59', 'f6g7h8i9j10k11l12m13n14o15p16q17r18s19t20a1b2c3d4e5', 1, 1.0, 50, 'Cupom de desconto de 50%', 'Válido apenas para produtos em estoque limitado', '2023-02-15', NULL),
    (10, '2024-01-31 23:59:59', 't20a1b2c3d4e5f6g7h8i9j10k11l12m13n14o15p16q17r18s19', 1, 5.0, 250, 'Cupom de desconto de 250%', 'Válido apenas para compras acima de R$400,00', '2023-02-15', NULL),
    (11, '2023-09-15 23:59:59', 'e5f6g7h8i9j10k11l12m13n14o15p16q17r18s19t20a1b2c3d4', 1, 2.0, 75, 'Cupom de desconto de 75%', 'Válido apenas para compras acima de R$150,00', '2023-02-15', NULL),
    (12, '2023-11-15 23:59:59', 'r18s19t20a1b2c3d4e5f6g7h8i9j10k11l12m13n14o15p16q17', 1, 4.0, 200, 'Cupom de desconto de 200%', 'Válido apenas para compras acima de R$300,00', '2023-02-15', NULL);

INSERT INTO Estabelecimento VALUES 
    (1, 1, 1, 1, 1, 'Loja 1', 'Loja 1 LTDA', 'loja1@gmail.com', '12345678901234', '2023-02-15', NULL),
    (2, 2, 2, 2, 2, 'Loja 2', 'Loja 2 LTDA', 'loja2@gmail.com', '23456789012345', '2023-02-15', NULL),
    (3, 3, 3, 3, 3, 'Loja 3', 'Loja 3 LTDA', 'loja3@gmail.com', '34567890123456', '2023-02-15', NULL),
    (4, 4, 4, 4, 4, 'Loja 4', 'Loja 4 LTDA', 'loja4@gmail.com', '45678901234567', '2023-02-15', NULL),
    (5, 5, 5, 5, 5, 'Loja 5', 'Loja 5 LTDA', 'loja5@gmail.com', '56789012345678', '2023-02-15', NULL),
    (6, 1, 2, 3, 4, 'Loja 6', 'Loja 6 LTDA', 'loja6@gmail.com', '67890123456789', '2023-02-15', NULL),
    (7, 2, 3, 4, 5, 'Loja 7', 'Loja 7 LTDA', 'loja7@gmail.com', '78901234567890', '2023-02-15', NULL),
    (8, 3, 4, 5, 1, 'Loja 8', 'Loja 8 LTDA', 'loja8@gmail.com', '89012345678901', '2023-02-15', NULL),
    (9, 4, 5, 1, 2, 'Loja 9', 'Loja 9 LTDA', 'loja9@gmail.com', '90123456789012', '2023-02-15', NULL),
    (10, 5, 1, 2, 3, 'Loja 10', 'Loja 10 LTDA', 'loja10@gmail.com', '01234567890123', '2023-02-15', NULL),
    (11, 1, 2, 3, 4, 'Loja 11', 'Loja 11 LTDA', 'loja11@gmail.com', '12345678901234', '2023-02-15', NULL),
    (12, 2, 3, 4, 5, 'Loja 12', 'Loja 12 LTDA', 'loja12@gmail.com', '23456789012345', '2023-02-15', NULL),
    (13, 1, 1, 2, 3, 'Loja 13', 'Loja 13 LTDA', 'loja13@gmail.com', '34567890123456', '2023-02-15', NULL),
    (14, 2, 2, 3, 4, 'Loja 14', 'Loja 14 LTDA', 'loja14@gmail.com', '45678901234567', '2023-02-15', NULL),
    (15, 3, 3, 4, 5, 'Loja 15', 'Loja 15 LTDA', 'loja15@gmail.com', '56789012345678', '2023-02-15', NULL),
    (16, 4, 4, 5, 1, 'Loja 16', 'Loja 16 LTDA', 'loja16@gmail.com', '67890123456789', '2023-02-15', NULL),
    (17, 5, 5, 1, 2, 'Loja 17', 'Loja 17 LTDA', 'loja17@gmail.com', '78901234567890', '2023-02-15', NULL),
    (18, 1, 2, 4, 3, 'Loja 18', 'Loja 18 LTDA', 'loja18@gmail.com', '89012345678901', '2023-02-15', NULL),
    (19, 2, 3, 5, 4, 'Loja 19', 'Loja 19 LTDA', 'loja19@gmail.com', '90123456789012', '2023-02-15', NULL),
    (20, 3, 4, 1, 5, 'Loja 20', 'Loja 20 LTDA', 'loja20@gmail.com', '01234567890123', '2023-02-15', NULL);

INSERT INTO ClienteEstabelecimentoInteresse VALUES 
    (1, 1),
    (1, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 1),
    (5, 2),
    (4, 3),
    (3, 4),
    (2, 5),
    (1, 6),
    (1, 7),
    (2, 8),
    (3, 9),
    (4, 10),
    (5, 11),
    (5, 12);

INSERT INTO Entrada VALUES 
    (1, 25.99, '2023-02-15'),
    (2, 10.50, '2023-02-15'),
    (3, 17.75, '2023-02-15'),
    (4, 42.00, '2023-02-15'),
    (5, 5.99, '2023-02-15'),
    (1, 30.50, '2023-02-15'),
    (2, 12.25, '2023-02-15'),
    (3, 15.00, '2023-02-15'),
    (4, 39.99, '2023-02-15'),
    (5, 8.75, '2023-02-15'),
    (1, 22.99, '2023-02-15'),
    (2, 15.50, '2023-02-15'),
    (3, 20.75, '2023-02-15'),
    (4, 30.00, '2023-02-15'),
    (5, 3.99, '2023-02-15'),
    (1, 28.50, '2023-02-15'),
    (2, 9.25, '2023-02-15'),
    (3, 16.00, '2023-02-15'),
    (4, 35.99, '2023-02-15'),
    (5, 10.75, '2023-02-15');

INSERT INTO CupomEstabelecimento VALUES
  (1, '2023-03-01 00:00:00', '1a2b3c4d', 1, 10.0, NULL, 'Cupom de desconto', 'Desconto de 10% em qualquer compra', '2023-02-15', NULL),
  (2, '2023-03-15 00:00:00', '5e6f7g8h', 1, 5.0, 50.0, 'Cupom de aniversário', 'Desconto de R$5 em compras acima de R$50', '2023-02-15', NULL),
  (3, '2023-03-31 00:00:00', '9i0j1k2l', 0, 20.0, NULL, 'Cupom de fidelidade', 'Desconto de 20% para clientes frequentes', '2023-02-15', NULL),
  (4, '2023-04-01 00:00:00', '3m4n5o6p', 1, 15.0, NULL, 'Cupom de lançamento', 'Desconto de 15% em novos produtos', '2023-02-15', NULL),
  (5, '2023-04-15 00:00:00', '7q8r9s0t', 1, 7.5, 30.0, 'Cupom de Páscoa', 'Desconto de R$7,50 em compras acima de R$30', '2023-02-15', NULL),
  (1, '2023-05-01 00:00:00', 'a1b2c3d4', 1, 5.0, 50.0, 'Cupom de desconto', 'Desconto de R$5 em compras acima de R$50', '2023-02-15', NULL),
  (2, '2023-05-15 00:00:00', 'e5f6g7h8', 1, 20.0, NULL, 'Cupom de aniversário', 'Desconto de 20% em qualquer compra', '2023-02-15', NULL),
  (3, '2023-05-31 00:00:00', 'i9j0k1l2', 0, 25.0, NULL, 'Cupom de fidelidade', 'Desconto de 25% para clientes frequentes', '2023-02-15', NULL),
  (4, '2023-06-01 00:00:00', 'm3n4o5p6', 1, 10.0, 100.0, 'Cupom de lançamento', 'Desconto de R$10 em compras acima de R$100', '2023-02-15', NULL),
  (5, '2023-06-15 00:00:00', 'q7r8s9t0', 1, 5.0, NULL, 'Cupom de dia dos namorados', 'Desconto de R$5 em qualquer compra', '2023-02-15', NULL),
  (1, '2023-07-01 00:00:00', 'a2b3c4d5', 0, 15.0, NULL, 'Cupom de inverno', 'Desconto de 15% em produtos de inverno', '2023-02-15', NULL),
  (2, '2023-07-15 00:00:00', 'e6f7g8h9', 1, 7.0, 30.0, 'Cupom de aniversário', 'Desconto de R$7 em compras acima de R$30', '2023-02-15', NULL),
  (3, '2023-07-31 00:00:00', 'i0j1k2l3', 1, 10.0, NULL, 'Cupom de fidelidade', 'Desconto de R$10 em qualquer compra', '2023-02-15', NULL),
  (4, '2023-08-01 00:00:00', 'm4n5o6p7', 1, 8.0, NULL, 'Cupom de verão', 'Desconto de 8% em produtos de verão', '2023-02-15', NULL),