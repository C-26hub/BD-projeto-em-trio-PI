USE editoranova;

-- Drop views (if they exist)
DROP VIEW IF EXISTS vw_livro_info;
DROP VIEW IF EXISTS vw_pedidos_cliente;
DROP VIEW IF EXISTS vw_exemplares_status;
DROP VIEW IF EXISTS vw_clientes_ativos;
DROP VIEW IF EXISTS vw_autor_obras;
DROP VIEW IF EXISTS vw_top_clientes;
DROP VIEW IF EXISTS vw_livros_area;
DROP VIEW IF EXISTS vw_estoque_baixo;
DROP VIEW IF EXISTS vw_vendas_por_mes;
DROP VIEW IF EXISTS vw_livro_resumo;

-- Drop tables (order: dependentes → independentes)
DROP TABLE IF EXISTS Livros_Pedidos;
DROP TABLE IF EXISTS Pedidos_Vendas;
DROP TABLE IF EXISTS Livro_AreaConhecimento;
DROP TABLE IF EXISTS Livro_PalavraChave;
DROP TABLE IF EXISTS Livro_Autor;
DROP TABLE IF EXISTS Exemplares;
DROP TABLE IF EXISTS Livro;
DROP TABLE IF EXISTS Palavra_Chave;
DROP TABLE IF EXISTS Areas_Conhecimento;
DROP TABLE IF EXISTS Autores;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Funcionarios;
DROP TABLE IF EXISTS Departamento;

-- Optionally drop database
-- DROP DATABASE IF EXISTS editoranova;
