--CREATE DATABASE PlacesCompany;
--USE DATABASE PlacesCompany;

CREATE TABLE Estado ( 
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(40) NOT NULL,
    uf CHAR(2) NOT NULL
);

CREATE TABLE TipoEstabelecimento (
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(60) NOT NULL
);

CREATE TABLE TipoPagamentoAssinatura (
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(40) NOT NULL
);

CREATE TABLE TipoPagamentoIngresso ( 
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(40) NOT NULL
);

CREATE TABLE TipoEvento ( 
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE CategoriaEvento ( 
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(40) NOT NULL
);