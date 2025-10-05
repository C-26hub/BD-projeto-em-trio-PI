CREATE DATABASE editoranova;
USE editoranova;
-- =========================
-- Tabela de Departamentos
-- =========================
CREATE TABLE Departamento (
    id_dep INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_dep VARCHAR(100) NOT NULL UNIQUE,
    desc_atv TEXT
);

-- =========================
-- Tabela de Funcionários
-- =========================
CREATE TABLE Funcionarios (
    cpf_func VARCHAR(11) NOT NULL PRIMARY KEY,
    nome_func VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    telefone VARCHAR(20),
    endereco_func VARCHAR(255),
    id_dep INT NOT NULL,
    responsavel_dp VARCHAR(11),
    FOREIGN KEY (id_dep) REFERENCES Departamento(id_dep),
    FOREIGN KEY (responsavel_dp) REFERENCES Funcionarios(cpf_func)
);

-- =========================
-- Tabela de Clientes
-- =========================
CREATE TABLE Cliente (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_cli VARCHAR(255) NOT NULL,
    endereco_cli VARCHAR(255),
    telefone_cli VARCHAR(20),
    email_cli VARCHAR(255) UNIQUE
);

-- =========================
-- Tabela de Autores
-- =========================
CREATE TABLE Autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    biografia TEXT, 
    nacionalidade VARCHAR(45),
    data_nasc DATE,
    obras_escritas VARCHAR(255)
);

-- =========================
-- Tabela de Livros
-- =========================
CREATE TABLE Livro (
    ISBN VARCHAR(13) PRIMARY KEY, 
    titulo VARCHAR(255) NOT NULL,
    editora VARCHAR(100),
    data_pub DATE, 
    genero VARCHAR(45),
    num_pag INT,
    descricao TEXT,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

CREATE TABLE Livro_Autor (
    ISBN VARCHAR(13) NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (ISBN, id_autor),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- =========================
-- Tabela de Exemplares
-- =========================
CREATE TABLE Exemplares (
    n_serie INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    status ENUM('disponivel', 'indisponivel', 'reservado', 'danificado') NOT NULL, 
    localizacao_exemplar VARCHAR(45),
    ISBN VARCHAR(13) NOT NULL,
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

-- =========================
-- Tabela de Palavras-chave
-- =========================
CREATE TABLE Palavra_Chave (
    codigo_palavra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    desc_palavra VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Livro_PalavraChave (
    ISBN VARCHAR(13) NOT NULL,
    codigo_palavra INT NOT NULL,
    PRIMARY KEY (ISBN, codigo_palavra),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (codigo_palavra) REFERENCES Palavra_Chave(codigo_palavra)
);

-- =========================
-- Tabela de Áreas de Conhecimento
-- =========================
CREATE TABLE Areas_Conhecimento (
    codigo_area INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    desc_area VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Livro_AreaConhecimento (
    ISBN VARCHAR(13) NOT NULL,
    codigo_area INT NOT NULL,
    PRIMARY KEY (ISBN, codigo_area),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    FOREIGN KEY (codigo_area) REFERENCES Areas_Conhecimento(codigo_area)
);

-- =========================
-- Tabela de Pedidos de Vendas
-- =========================
CREATE TABLE Pedidos_Vendas (
    id_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_transacao DATETIME NOT NULL,
    status_pedido VARCHAR(50) NOT NULL,
    forma_pag VARCHAR(50) NOT NULL,
    id_cliente INT NOT NULL,
    cpf_func VARCHAR(11) NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY (cpf_func) REFERENCES Funcionarios(cpf_func)
);

-- =========================
-- Tabela de Itens dos Pedidos
-- =========================
CREATE TABLE Livros_Pedidos (
    id_pedido INT NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_pedido, ISBN),
    FOREIGN KEY (id_pedido) REFERENCES Pedidos_Vendas(id_pedido),
    FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);
