USE editoranova;

-- 1) Adicionar coluna email para Funcionarios
ALTER TABLE Funcionarios ADD COLUMN email_func VARCHAR(255) UNIQUE;

-- 2) Adicionar coluna salario (DECIMAL) para Funcionarios
ALTER TABLE Funcionarios ADD COLUMN salario DECIMAL(10,2) DEFAULT 0.00;

-- 3) Alterar tamanho do nome do autor para 150
ALTER TABLE Autores MODIFY COLUMN nome VARCHAR(150);

-- 4) Adicionar coluna estoque_minimo em Livro
ALTER TABLE Livro ADD COLUMN estoque_minimo INT DEFAULT 0;

-- 5) Adicionar coluna data_cadastro em Cliente com valor default
ALTER TABLE Cliente ADD COLUMN data_cadastro DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- 6) Criar índice em Livro (titulo) para acelerar buscas
CREATE INDEX idx_livro_titulo ON Livro(titulo(50));

-- 7) Adicionar coluna telefone_secundario em Cliente
ALTER TABLE Cliente ADD COLUMN telefone_secundario VARCHAR(20);

-- 8) Adicionar coluna motivo_danificado em Exemplares (pode ser null)
ALTER TABLE Exemplares ADD COLUMN motivo_danificado VARCHAR(255) NULL;

-- 9) Adicionar coluna desconto_percentual em Pedidos_Vendas
ALTER TABLE Pedidos_Vendas ADD COLUMN desconto_percentual DECIMAL(5,2) DEFAULT 0.00;

-- 10) Adicionar CHECK em Livro para num_pag > 0 (MySQL 8 suporta CHECK)
ALTER TABLE Livro ADD CONSTRAINT chk_num_pag CHECK (num_pag >= 1);
