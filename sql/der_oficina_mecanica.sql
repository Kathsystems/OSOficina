
-- Tabela: clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco TEXT
);

-- Tabela: veiculos
CREATE TABLE veiculos (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(50),
    marca VARCHAR(50),
    ano INT,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

-- Tabela: equipes
CREATE TABLE equipes (
    id_equipe INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

-- Tabela: mecanicos
CREATE TABLE mecanicos (
    id_mecanico INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    endereco TEXT,
    especialidade VARCHAR(100),
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_equipe) REFERENCES equipes(id_equipe)
);

-- Tabela: ordens_servico
CREATE TABLE ordens_servico (
    id_os INT PRIMARY KEY AUTO_INCREMENT,
    data_emissao DATE NOT NULL,
    data_conclusao DATE,
    valor_total DECIMAL(10,2) DEFAULT 0.00,
    status VARCHAR(50),
    autorizada BOOLEAN DEFAULT FALSE,
    id_veiculo INT NOT NULL,
    id_equipe INT NOT NULL,
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id_veiculo),
    FOREIGN KEY (id_equipe) REFERENCES equipes(id_equipe)
);

-- Tabela: servicos
CREATE TABLE servicos (
    id_servico INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    valor_mao_obra DECIMAL(10,2) NOT NULL
);

-- Tabela: os_servicos
CREATE TABLE os_servicos (
    id_os INT,
    id_servico INT,
    quantidade INT DEFAULT 1,
    PRIMARY KEY (id_os, id_servico),
    FOREIGN KEY (id_os) REFERENCES ordens_servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES servicos(id_servico)
);

-- Tabela: pecas
CREATE TABLE pecas (
    id_peca INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

-- Tabela: os_pecas
CREATE TABLE os_pecas (
    id_os INT,
    id_peca INT,
    quantidade INT DEFAULT 1,
    PRIMARY KEY (id_os, id_peca),
    FOREIGN KEY (id_os) REFERENCES ordens_servico(id_os),
    FOREIGN KEY (id_peca) REFERENCES pecas(id_peca)
);
