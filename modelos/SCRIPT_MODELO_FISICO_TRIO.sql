-- ================================
-- Criação do Banco de Dados
-- ================================
CREATE DATABASE editora;
USE editora;

-- ================================
-- Tabela: Autores
-- ================================
CREATE TABLE Autores (
    id_autor INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    biografia TEXT,
    nacionalidade VARCHAR(100),
    data_nasc DATE,
    obras_escritas TEXT
);

-- ================================
-- Tabela: Palavra_Chave
-- ================================
CREATE TABLE Palavra_Chave (
    codigo_palavra INT NOT NULL PRIMARY KEY,
    desc_palavra VARCHAR(255) NOT NULL
);

-- ================================
-- Tabela: Áreas_de_Conhecimento
-- ================================
CREATE TABLE Areas_Conhecimento (
    codigo_area INT NOT NULL PRIMARY KEY,
    desc_area VARCHAR(255) NOT NULL
);

-- ================================
-- Tabela: Livro
-- ================================
CREATE TABLE Livro (
    ISBN VARCHAR(13) NOT NULL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    editora VARCHAR(100),
    data_pub DATE,
    genero VARCHAR(50),
    num_pag INT,
    descricao TEXT
);

-- ================================
-- Tabela: Exemplares
-- ================================
CREATE TABLE Exemplares (
    n_serie INT NOT NULL PRIMARY KEY,
    estado VARCHAR(50),
    localizacao_fisica VARCHAR(255),
    rua VARCHAR(100),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    ISBN VARCHAR(13) NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

-- ================================
-- Tabela: Cliente
-- ================================
CREATE TABLE Cliente (
    id_cliente INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco_cli VARCHAR(255),
    telefone_cli VARCHAR(20),
    email_cli VARCHAR(255)
);

-- ================================
-- Tabela: Departamento
-- ================================
CREATE TABLE Departamento (
    id_dep INT NOT NULL PRIMARY KEY,
    nome_dep VARCHAR(100) NOT NULL,
    desc_atv TEXT
);

-- ================================
-- Tabela: Funcionarios
-- ================================
CREATE TABLE Funcionarios (
    cpf_func VARCHAR(11) NOT NULL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    telefone VARCHAR(20),
    endereco_func VARCHAR(255),
    id_dep INT NOT NULL,
    supervisor_cpf VARCHAR(11),
    FOREIGN KEY (id_dep) REFERENCES Departamento(id_dep),
    FOREIGN KEY (supervisor_cpf) REFERENCES Funcionarios(cpf_func)
);

-- ================================
-- Tabela: Pedidos_Vendas
-- ================================
CREATE TABLE Pedidos_Vendas (
    id_pedido INT NOT NULL PRIMARY KEY,
    data_transacao DATETIME NOT NULL,
    status VARCHAR(50) NOT NULL,
    forma_pag VARCHAR(50) NOT NULL,
    id_cliente INT NOT NULL,
    cpf_func VARCHAR(11) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (cpf_func) REFERENCES Funcionarios(cpf_func)
);

-- ================================
-- Tabela de Junção: Livros_Pedidos
-- ================================
CREATE TABLE Livros_Pedidos (
    id_pedido INT NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_pedido, ISBN),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos_Vendas(id_pedido),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

-- ================================
-- Tabela de Junção: Livro_Autor
-- ================================
CREATE TABLE Livro_Autor (
    ISBN VARCHAR(13) NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (ISBN, id_autor),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- ================================
-- Tabela de Junção: Livro_PalavraChave
-- ================================
CREATE TABLE Livro_PalavraChave (
    ISBN VARCHAR(13) NOT NULL,
    codigo_palavra INT NOT NULL,
    PRIMARY KEY (ISBN, codigo_palavra),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (codigo_palavra) REFERENCES Palavra_Chave(codigo_palavra)
);

-- ================================
-- Tabela de Junção: Livro_AreaConhecimento
-- ================================
CREATE TABLE Livro_AreaConhecimento (
    ISBN VARCHAR(13) NOT NULL,
    codigo_area INT NOT NULL,
    PRIMARY KEY (ISBN, codigo_area),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (codigo_area) REFERENCES Areas_Conhecimento(codigo_area)
);
