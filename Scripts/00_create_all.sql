-- Cria banco e usa
CREATE DATABASE IF NOT EXISTS editoranova;
USE editoranova;

-- =========================
-- Tabela de Departamentos
-- =========================
CREATE TABLE IF NOT EXISTS Departamento (
    id_dep INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_dep VARCHAR(100) NOT NULL UNIQUE,
    desc_atv TEXT
);

-- =========================
-- Tabela de Funcionários
-- =========================
CREATE TABLE IF NOT EXISTS Funcionarios (
    cpf_func VARCHAR(11) NOT NULL PRIMARY KEY,
    nome_func VARCHAR(255) NOT NULL,
    cargo VARCHAR(100),
    telefone VARCHAR(20),
    endereco_func VARCHAR(255),
    id_dep INT NOT NULL,
    responsavel_dp VARCHAR(11),
    CONSTRAINT fk_func_dep FOREIGN KEY (id_dep) REFERENCES Departamento(id_dep),
    CONSTRAINT fk_func_resp FOREIGN KEY (responsavel_dp) REFERENCES Funcionarios(cpf_func)
);

-- =========================
-- Tabela de Clientes
-- =========================
CREATE TABLE IF NOT EXISTS Cliente (
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_cli VARCHAR(255) NOT NULL,
    endereco_cli VARCHAR(255),
    telefone_cli VARCHAR(20),
    email_cli VARCHAR(255) UNIQUE
);

-- =========================
-- Tabela de Autores
-- =========================
CREATE TABLE IF NOT EXISTS Autores (
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    biografia TEXT, 
    nacionalidade VARCHAR(45),
    data_nasc DATE,
    obras_escritas VARCHAR(255)
);

-- =========================
-- Tabela de Livros
-- =========================
CREATE TABLE IF NOT EXISTS Livro (
    ISBN VARCHAR(13) PRIMARY KEY, 
    titulo VARCHAR(255) NOT NULL,
    editora VARCHAR(100),
    data_pub DATE, 
    genero VARCHAR(45),
    num_pag INT,
    descricao TEXT,
    id_autor INT,
    CONSTRAINT fk_livro_autor FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- Tabela Livro_Autor (N:N)
CREATE TABLE IF NOT EXISTS Livro_Autor (
    ISBN VARCHAR(13) NOT NULL,
    id_autor INT NOT NULL,
    PRIMARY KEY (ISBN, id_autor),
    CONSTRAINT fk_la_isbn FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    CONSTRAINT fk_la_autor FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- =========================
-- Tabela de Exemplares
-- =========================
CREATE TABLE IF NOT EXISTS Exemplares (
    n_serie INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    status ENUM('disponivel', 'indisponivel', 'reservado', 'danificado') NOT NULL DEFAULT 'disponivel', 
    localizacao_exemplar VARCHAR(45),
    ISBN VARCHAR(13) NOT NULL,
    CONSTRAINT fk_exemplar_isbn FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);

-- =========================
-- Tabela de Palavras-chave
-- =========================
CREATE TABLE IF NOT EXISTS Palavra_Chave (
    codigo_palavra INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    desc_palavra VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Livro_PalavraChave (
    ISBN VARCHAR(13) NOT NULL,
    codigo_palavra INT NOT NULL,
    PRIMARY KEY (ISBN, codigo_palavra),
    CONSTRAINT fk_lpc_isbn FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    CONSTRAINT fk_lpc_palavra FOREIGN KEY (codigo_palavra) REFERENCES Palavra_Chave(codigo_palavra)
);

-- =========================
-- Tabela de Áreas de Conhecimento
-- =========================
CREATE TABLE IF NOT EXISTS Areas_Conhecimento (
    codigo_area INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    desc_area VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS Livro_AreaConhecimento (
    ISBN VARCHAR(13) NOT NULL,
    codigo_area INT NOT NULL,
    PRIMARY KEY (ISBN, codigo_area),
    CONSTRAINT fk_lac_isbn FOREIGN KEY (ISBN) REFERENCES Livro(ISBN),
    CONSTRAINT fk_lac_area FOREIGN KEY (codigo_area) REFERENCES Areas_Conhecimento(codigo_area)
);

-- =========================
-- Tabela de Pedidos de Vendas
-- =========================
CREATE TABLE IF NOT EXISTS Pedidos_Vendas (
    id_pedido INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_transacao DATETIME NOT NULL,
    status_pedido VARCHAR(50) NOT NULL,
    forma_pag VARCHAR(50) NOT NULL,
    id_cliente INT NOT NULL,
    cpf_func VARCHAR(11) NOT NULL,
    CONSTRAINT fk_ped_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    CONSTRAINT fk_ped_func FOREIGN KEY (cpf_func) REFERENCES Funcionarios(cpf_func)
);

-- =========================
-- Tabela de Itens dos Pedidos
-- =========================
CREATE TABLE IF NOT EXISTS Livros_Pedidos (
    id_pedido INT NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_pedido, ISBN),
    CONSTRAINT fk_lp_pedido FOREIGN KEY (id_pedido) REFERENCES Pedidos_Vendas(id_pedido),
    CONSTRAINT fk_lp_isbn FOREIGN KEY (ISBN) REFERENCES Livro(ISBN)
);
