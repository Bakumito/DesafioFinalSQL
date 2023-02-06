--CREATE DATABASE PlacesCompany;
--USE DATABASE PlacesCompany; 

CREATE TABLE Estado (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL
);

CREATE TABLE Cidade (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    capital BOOLEAN NOT NULL,
    CONSTRAINT fk_idEstado FOREIGN KEY (idEstado) 
        REFERENCES Estado (id)
);

CREATE TABLE Login (
    id INT PRIMARY KEY IDENTITY(1,1),
    email VARCHAR(200) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE Endereco (
    id INT PRIMARY KEY IDENTITY(1,1), 
    logradouro VARCHAR(100) NOT NULL, 
    numero VARCHAR(10) NOT NULL, 
    bairro VARCHAR(100) NOT NULL,
    cep CHAR(8) NOT NULL, 
    complemento VARCHAR(100) NOT NULL
);

CREATE TABLE Usuario (
    id INT PRIMARY KEY IDENTITY(1,1),
    idLogin TINYINT NOT NULL, 
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50),
    cpf CHAR(11) NOT NULL,
    proprietario BOOLEAN NOT NULL,
    dataNascimento DATE NOT NULL,
    fotoPerfil BLOB,
    CONSTRAINT fk_idLogin FOREIGN KEY (idLogin) 
        REFERENCES Login (id),
);

CREATE TABLE Establecimento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idEndereco INT NOT NULL,
    idUsuario INT NOT NULL,
    nomeFantasia VARCHAR(100) NOT NULL,
    razaoSocial VARCHAR(100) NOT NULL,
    descricao VARCHAR(240) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    dataRegistro DATE NOT NULL, 
    status BOOLEAN NOT NULL, 
    email VARCHAR(100) NOT NULL,
    CONSTRAINT fK_idEndereco FOREIGN KEY (idEndereco)
        REFERENCES Endereco (id),
    CONSTRAINT fk_idUsuario FOREIGN KEY (idUsuario) 
        REFERENCES Usuario (id)
);


CREATE TABLE Evento (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(100) NOT NULL,
    descricao TEXT, 
    dataInicio DATETIME NOT NULL,
    dataFinal DATETIME NOT N
    \ULL,
    capacidade INT NOT NULL,
);

CREATE TABLE EstablecimentoEvento (
    id INT PRIMARY KEY IDENTITY(1,1),
    idEstabelecimento INT NOT NULL,
    idEvento INT NOT NULL, 
    CONSTRAINT fk_idEstabelecimento FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id),
    CONSTRAINT fk_idEvento FOREIGN KEY (idEvento)
        REFERENCES Evento (id)
);

CREATE TABLE Midia (
    id INT PRIMARY KEY IDENTITY(1,1),
    idEvento INT NOT NULL,
    foto BLOB, 
    video BLOB,
    CONSTRAINT fk_idEvento FOREIGN KEY (idEvento)
        REFERENCES Evento (id)
);

CREATE TABLE Avalicao (
    id INT PRIMARY KEY IDENTITY(1,1),
    valor DECIMAL(6,1) NOT NULL, 
)

