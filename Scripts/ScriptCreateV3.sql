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

CREATE TABLE Assinatura ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    status BOOLEAN NOT NULL,
    valor DECIMAL(7,2) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
    );

CREATE TABLE ContatoEstabelecimento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    numero CHAR(11) NOT NULL,
    whatsapp BOOLEAN NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);

CREATE TABLE ContatoEvento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    numero CHAR(11) NOT NULL,
    whatsapp BOOLEAN NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);

CREATE TABLE ContatoCliente ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    numero CHAR(11) NOT NULL,
    whatsapp BOOLEAN NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);

CREATE TABLE Proprietario ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(100),
    cpf CHAR(11) NOT NULL,
    dataNascimento DATE NOT NULL,
    fotoPerfil BLOB,
    email VARCHAR(200) NOT NULL,
    senha VARCHAR(64) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);

CREATE TABLE Cidade ( 
    id SMALLINT PRIMARY KEY IDENTITY(1,1),
    idEstado TINYINT NOT NULL,
    nome VARCHAR(40) NOT NULL,
    CONSTRAINT fk_idEstado FOREIGN KEY (idEstado)
        REFERENCES Estado (id)
);

CREATE TABLE Endereco ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idCidade SMALLINT NOT NULL,
    cep CHAR(8) NOT NULL,
    bairro VARCHAR(60) NOT NULL,
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(5) NOT NULL, 
    complemento VARCHAR(100),
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idCidade FOREIGN KEY (idCidade)
        REFERENCES Cidade (id)
);

CREATE TABLE PagamentoAssinatura ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idAssinatura INT NOT NULL,
    idTipoPagamentoAssinatura TINYINT NOT NULL,
    dataVencimento DATE,
    dataPagamento DATE NOT NULL,
    comprovante BLOB NOT NULL, 
    valorPago DECIMAL(7,2) NOT NULL,
    desconto DECIMAL(7,2),
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idAssinatura FOREIGN KEY (idAssinatura)
        REFERENCES Assinatura (id),
    CONSTRAINT fk_idTipoPagamentoAssinatura FOREIGN KEY (idTipoPagamentoAssinatura)
        REFERENCES TipoPagamentoAssinatura (id)
);

CREATE TABLE Cliente ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idContatoCliente INT NOT NULL, 
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(100),
    cpf CHAR(11) NOT NULL,
    dataNascimento DATE NOT NULL,
    fotoPerfil BLOB NOT NULL,
    email VARCHAR(200) NOT NULL,
    senha VARCHAR(64) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idContatoCliente FOREIGN KEY (idContatoCliente)
        REFERENCES ContatoCliente (id)
);

CREATE TABLE Evento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idCategoriaEvento TINYINT NOT NULL,
    idTipoEvento TINYINT NOT NULL,
    idContatoEvento INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(200) NOT NULL,
    dataInicio DATETIME NOT NULL,
    dataFim DATETIME NOT NULL,
    capacidade INT NOT NULL,
    classificacaoEtaria VARCHAR(30) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idCategoriaEvento FOREIGN KEY (idCategoriaEvento)
        REFERENCES CategoriaEvento (id),
    CONSTRAINT fk_idTipoEvento FOREIGN KEY (idTipoEvento)
        REFERENCES TipoEvento (id), 
    CONSTRAINT fk_idContatoEvento FOREIGN KEY (idContatoEvento)
        REFERENCES ContatoEvento (id)
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

 CREATE TABLE CupomEvento (
    id INT PRIMARY KEY IDENTITY(1,1),
    idEvento INT NOT NULL,
    dataValidade DATETIME NOT NULL, 
    hash VARCHAR(64) NOT NULL,
    status BOOLEAN NOT NULL,
    valor DECIMAL(2,1) NOT NULL,
    limite DECIMAL(4,2) NOT NULL,
    descricao VARCHAR(40) NOT NULL,
    regras VARCHAR(60) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEvento2 FOREIGN KEY (idEvento)
        REFERENCES Evento (id) 
 );

 CREATE TABLE EventoClienteFavorito ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idCliente INT NOT NULL,
    idEvento INT NOT NULL,
    CONSTRAINT fk_idCliente FOREIGN KEY (idCliente)
        REFERENCES Cliente (id),
    CONSTRAINT fk_idEvento3 FOREIGN KEY (idEvento)
        REFERENCES Evento (id)
 );

 CREATE TABLE Estabelecimento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idContatoEstabelecimento INT NOT NULL,
    idTipoEstabelecimento TINYINT NOT NULL,
    idEndereco INT NOT NULL,
    idAssinatura INT NOT NULL,
    idProprietario INT NOT NULL,
    nomeFantasia VARCHAR(100) NOT NULL,
    razaoSocial VARCHAR(100) NOT NULL,
    email VARCHAR(200) NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idcontatoEstabeleciento FOREIGN KEY (idContatoEstabelecimento)
        REFERENCES ContatoEstabelecimento (id),
    CONSTRAINT fk_idtipoEstabelecimento FOREIGN KEY (idTipoEstabelecimento)
        REFERENCES TipoEstabelecimento (id),
    CONSTRAINT fk_idEndereco FOREIGN KEY (idEndereco)
        REFERENCES Endereco (id),
    CONSTRAINT fk_idAssinatura FOREIGN KEY (idAssinatura)
        REFERENCES Assinatura (id),
    CONSTRAINT fk_idProprietario FOREIGN KEY (idProprietario)
        REFERENCES Proprietario (id)
 );

 CREATE TABLE ClienteEstabelecimentoInteresse ( 
    id INT PRIMARY KEY IDENTITY(1,1), 
    idCliente INT NOT NULL,
    idEstabelecimento INT NOT NULL,
    CONSTRAINT fk_idCliente2 FOREIGN KEY (idCliente)
        REFERENCES Cliente (id),
    CONSTRAINT fk_idEstabelecimento3 FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id)
 );

 CREATE TABLE Entrada (
    id INT PRIMARY KEY IDENTITY(1,1),
    idClienteEstabelecimentoInteresse INT PRIMARY KEY(1,1),
    preco DECIMAL(7,2) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    CONSTRAINT fk_idClienteEstabelecimentoInteresse FOREIGN KEY (idClienteEstabelecimentoInteresse)
        REFERENCES ClientesEstabelecimentoInteresse (id)
 );

 CREATE TABLE CupomEstabelecimento ( 
    id INT PRIMARY KEY IDENTITY(1,1), 
    idEventoClienteFavorito INT NOT NULL,
    dataValidade DATETIME NOT NULL,
    hash VARCHAR(64) NOT NULL,
    status BOOLEAN NOT NULL, 
    valor DECIMAL(2,1) NOT NULL,
    limite DECIMAL(4,2), 
    descricao VARCHAR(40) NOT NULL,
    regras VARCHAR(60) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idClienteEstabelecimentoInteresse FOREIGN KEY (idClienteEstabelecimentoInteresse)
        REFERENCES ClienteEstabelecimentoInteresse (id)
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
    CONSTRAINT fk_idEstabelecimento2 FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id)
); 

CREATE TABLE Ingresso ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idEventoClienteFavorito INT NOT NULL, 
    hash VARCHAR(64) NOT NULL,
    valor DECIMAL(7,2) NOT NULL,
    quantidade TINYINT NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEventoClienteFavorito FOREIGN KEY (idEventoClienteFavorito)
        REFERENCES EventoClienteFavorito (id)
);

CREATE TABLE PagamentoIngresso ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idTipoPagamentoIngresso TINYINT NOT NULL,
    idIngresso INT NOT NULL,
    dataCompra DATETIME NOT NULL,
    total DECIMAL(7,2) NOT NULL, 
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idTipoPagamentoIngresso FOREIGN KEY (idTipoPagamentoIngresso)
        REFERENCES TipoPagamentoIngresso (id),
    CONSTRAINT fk_idIngresso FOREIGN KEY (idIngresso)
        REFERENCES Ingresso (id)
);

CREATE TABLE EventoEstabelecimento ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idEvento INT NOT NULL,
    idEstabelecimento INT NOT NULL,
    CONSTRAINT fk_idEvento4 FOREIGN KEY (idEvento)
        REFERENCES Evento (id),
    CONSTRAINT fk_idEstabelecimento3 FOREIGN KEY (idEstabelecimento)
        REFERENCES Estabelecimento (id)
);

CREATE TABLE Avaliacao ( 
    id INT PRIMARY KEY IDENTITY(1,1),
    idEventoEstabalecimento INT NOT NULL, 
    pontos DECIMAL(2,1) NOT NULL,
    comentario VARCHAR(300),
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE,
    CONSTRAINT fk_idEventoEstabelecimento FOREIGN KEY (idEventoEstabalecimento)
        REFERENCES EventoEstabelecimento (id)
);

CREATE TABLE Usuario ( 
    id TINYINT PRIMARY KEY IDENTITY(1,1),
    login VARCHAR(60) NOT NULL,
    senha VARCHAR(64) NOT NULL,
    idUsuarioCadastro INT NOT NULL,
    dataCadastro DATE NOT NULL,
    idUsuarioUltimaAlteracao INT,
    dataUltimaAlteracao DATE
);