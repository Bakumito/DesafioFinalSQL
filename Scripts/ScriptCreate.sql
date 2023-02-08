--CREATE DATABASE PlacesCompany;
--USE DATABASE PlacesCompany; 

CREATE TABLE TipoPagamento (
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    descricao VARCHAR(40) NOT NULL
);

CREATE TABLE TipoEstabelecimento ( 
    id TINYINT PRIMARY KEY IDENTITY (1,1)
    descricao VARCHAR(60) NOT NULL
);

CREATE TABLE Assinatura( 
    id INT PRIMARY KEY IDENTITY(1,1),
    dataInicio DATE NOT NULL, 
    dataFim DATE NOT NULL, 
    status BOOLEAN NOT NULL,
    valor DECIMAL(7,2) NOT NULL,
    idUsuarioCadastro INT NOT NULL, 
    dataCadastrous DATE NOT NULL, 
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);

CREATE TABLE TipoEvento (
    id TINYINT PRIMARY KEY IDENTITY (1,1),
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE CategoriaEvento ( 
    id TINYINT PRIMARY KEY IDENTITY (1,1),
    descricao VARCHAR(50) NOT NULL,
    classificacaoEtaria VARCHAR(30) NOT NULL,
);

CREATE TABLE Estado (
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL
);

CREATE TABLE Cidade (
    id INT PRIMARY KEY IDENTITY(1,1),
    idEstado TINYINT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    CONSTRAINT fk_idEstado FOREIGN KEY (idEstado) 
        REFERENCES Estado (id)
);

CREATE TABLE Endereco (
    id INT PRIMARY KEY IDENTITY(1,1), 
    idCidade SMALLINT NOT NULL,
    logradouro VARCHAR(100) NOT NULL, 
    numero VARCHAR(5) NOT NULL, 
    bairro VARCHAR(60) NOT NULL,
    cep CHAR(8) NOT NULL, 
    complemento VARCHAR(100),
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL, 
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idCidade FOREIGN KEY (idCidade) 
        REFERENCES Cidade (id)
);

CREATE TABLE Usuario (
    id INT PRIMARY KEY IDENTITY(1,1), 
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(100),
    cpf CHAR(11) NOT NULL,
    proprietario BOOLEAN NOT NULL,
    dataNascimento DATE NOT NULL,
    fotoPerfil BLOB,
    email VARCHAR(200) NOT NULL, 
    senha VARCHAR(100) NOT NULL,
    tipoUsuario BOOLEAN NOT NULL, 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);

CREATE TABLE Cupom (
    id INT PRIMARY KEY IDENTITY(1,1),
    dataValidade DATETIME NOT NULL,
    hash VARCHAR(64) NOT NULL,
    status BOOLEAN NOT NULL DEFAULT 0,
    quantidade SMALLINT NOT NULL, 
    valor DECIMAL(2,1) NOT NULL,
    limite DECIMAL(4,2),
    descricao VARCHAR(40) NOT NULL, 
    regras VARCHAR(60) NOT NULL, 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT, 
    dataUltimaAlteracao DATE
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
    telefone VARCHAR(11) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT, 
    dataUltimaAlteracao DATE,
    CONSTRAINT fK_idEndereco FOREIGN KEY (idEndereco)
        REFERENCES Endereco (id),
    CONSTRAINT fk_idUsuario FOREIGN KEY (idUsuario) 
        REFERENCES Usuario (id)
);

CREATE TABLE Evento (
    id INT PRIMARY KEY IDENTITY(1,1),
    idCategoriaEvento INT NOT NULL,
    idTipoEvento TINYINT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT, 
    dataInicio DATETIME NOT NULL,
    dataFinal DATETIME NOT NULL,
    capacidade INT NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idCategoriaEvento FOREIGN KEY (idCategoriaEvento)
        REFERENCES CategoriaEvento (id),
    CONSTRAINT fk_idTipoEvento FOREIGN KEY (idTipoEvento)
        REFERENCES TipoEvento (id)
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

CREATE TABLE MidiaEvento (
    id INT PRIMARY KEY IDENTITY(1,1),
    idEvento INT NOT NULL,
    foto BLOB NOT NULL,
    video BLOB NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEvento FOREIGN KEY (idEvento)
        REFERENCES Evento (id)
);

CREATE TABLE AvalicaoEvento (
    id INT PRIMARY KEY IDENTITY(1,1),
    idUsuario INT NOT NULL,
    idEvento INT NOT NULL,
    ponto DECIMAL(2,1) NOT NULL,
    comentario VARCHAR(300), 
    foto BLOB,
    video BLOB, 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL, 
    idUsuarioUltimaAlteracao INT, 
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idUsuario2 FOREIGN KEY (idUsuario)
        REFERENCES Usuario (id),
    CONSTRAINT fk_idEvento2 FOREIGN KEY (idEvento)
        REFERENCES Evento (id)
); 

CREATE TABLE AvalicaoEstabelecimento (
    id INT PRIMARY KEY IDENTITY(1,1), 
    idEstabelecimento INT NOT NULL,
    idUsuario INT NOT NULL, 
    ponto DECIMAL(2,1) NOT NULL, 
    comentario VARCHAR(300), 
    foto BLOB,
    video BLOB, 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEstabelecimento2 FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id),
    CONSTRAINT fk_idUsuario3 FOREIGN KEY (idUsuario)
        REFERENCES Usuario (id)
);

CREATE TABLE CupomEstabelcimento ( 
     id INT PRIMARY KEY IDENTITY(1,1),
     idCupom INT NOT NULL, 
     idEstabelecimento NOT NULL,
    CONSTRAINT fk_idCupom FOREIGN KEY (idCupom)
         FOREIGN KEY Cupom (id),
    CONSTRAINT fk_idEstabelecimento3 FOREIGN KEY (idEstabelecimento)
         FOREIGN KEY Estabelecimento (id)
    );

CREATE TABLE Pagamento( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idAssinatura INT NOT NULL,
    idTipoPagamento INT NOT NULL,
    dataVencimento DATETIME, 
    dataPagamento DATETIME NOT NULL,
    comprovante BLOB NOT NULL, 
    valorPago DECIMAL(7,2) NOT NULL, 
    desconto DECIMAL(7,2), 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL, 
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idAssinatura FOREIGN KEY (idAssinatura)
        REFERENCES Assinatura (id),
    CONSTRAINT fk_idTipoPagamento FOREIGN KEY (idTipoPagamento)
        REFERENCES TipoPagamento (id)
);

CREATE TABLE Contato (
    id TINYINT PRIMARY KEY IDENTITY(1,1), 
    idEstabelecimento INT NOT NULL,
    descricao VARCHAR(40) NOT NULL, 
    numero CHAR(11) NOT NULL, 
    whatsapp BOOLEAN NOT NULL, 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEstabelecimento4 FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id)
);

CREATE TABLE MidiaEstabelecimento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idEstabelecimento INT NOT NULL,
    foto BLOB NOT NULL,
    video BLOB NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEstabelecimento5 FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id)
);