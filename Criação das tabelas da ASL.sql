CREATE TABLE Endereco (
    id_endereco INT PRIMARY KEY,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,    
    bairro VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estado VARCHAR(2) NOT NULL,
    cep VARCHAR(9) NOT NULL
);

CREATE TABLE Cliente (
    id_cliente int PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(15),
    id_endereco INT,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_endereco) REFERENCES Endereco(id_endereco)
);



CREATE TABLE HistoricoInteracao (
    id_interacao INT PRIMARY KEY,
    id_cliente INT,
    data_interacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tipo_interacao VARCHAR(50),
    descricao TEXT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);