USE editoranova;

-- 1) vw_livro_info: livro com autor, genero e total de exemplares
CREATE OR REPLACE VIEW vw_livro_info AS
SELECT L.ISBN, L.titulo, A.nome AS autor, L.genero,
  (SELECT COUNT(*) FROM Exemplares E WHERE E.ISBN = L.ISBN) AS total_exemplares
FROM Livro L
LEFT JOIN Autores A ON L.id_autor = A.id_autor;

-- 2) vw_pedidos_cliente: pedidos com nome do cliente e funcionário
CREATE OR REPLACE VIEW vw_pedidos_cliente AS
SELECT P.id_pedido, P.data_transacao, P.status_pedido, C.nome_cli, F.nome_func, P.desconto_percentual
FROM Pedidos_Vendas P
JOIN Cliente C ON P.id_cliente = C.id_cliente
JOIN Funcionarios F ON P.cpf_func = F.cpf_func;

-- 3) vw_exemplares_status: exemplares por status
CREATE OR REPLACE VIEW vw_exemplares_status AS
SELECT status, COUNT(*) AS qtd
FROM Exemplares
GROUP BY status;

-- 4) vw_clientes_ativos: clientes com pelo menos 1 pedido
CREATE OR REPLACE VIEW vw_clientes_ativos AS
SELECT DISTINCT C.id_cliente, C.nome_cli, C.email_cli
FROM Cliente C
JOIN Pedidos_Vendas P ON C.id_cliente = P.id_cliente;

-- 5) vw_autor_obras: autores e número de livros cadastrados
CREATE OR REPLACE VIEW vw_autor_obras AS
SELECT A.id_autor, A.nome, COUNT(LA.ISBN) AS num_obras
FROM Autores A
LEFT JOIN Livro_Autor LA ON A.id_autor = LA.id_autor
GROUP BY A.id_autor;

-- 6) vw_top_clientes: top clientes por número de pedidos
CREATE OR REPLACE VIEW vw_top_clientes AS
SELECT C.id_cliente, C.nome_cli, COUNT(P.id_pedido) AS total_pedidos
FROM Cliente C
JOIN Pedidos_Vendas P ON C.id_cliente = P.id_cliente
GROUP BY C.id_cliente
ORDER BY total_pedidos DESC;

-- 7) vw_livros_area: livros com suas áreas
CREATE OR REPLACE VIEW vw_livros_area AS
SELECT L.ISBN, L.titulo, GROUP_CONCAT(A.desc_area SEPARATOR ', ') AS areas
FROM Livro L
LEFT JOIN Livro_AreaConhecimento LA ON L.ISBN = LA.ISBN
LEFT JOIN Areas_Conhecimento A ON LA.codigo_area = A.codigo_area
GROUP BY L.ISBN;

-- 8) vw_estoque_baixo: livros com menos exemplares disponíveis que estoque_minimo
CREATE OR REPLACE VIEW vw_estoque_baixo AS
SELECT L.ISBN, L.titulo, L.estoque_minimo,
  (SELECT COUNT(*) FROM Exemplares E WHERE E.ISBN = L.ISBN AND E.status='disponivel') AS disponiveis
FROM Livro L
WHERE (SELECT COUNT(*) FROM Exemplares E WHERE E.ISBN = L.ISBN AND E.status='disponivel') < L.estoque_minimo;

-- 9) vw_vendas_por_mes: número de pedidos por mês
CREATE OR REPLACE VIEW vw_vendas_por_mes AS
SELECT DATE_FORMAT(data_transacao,'%Y-%m') AS mes, COUNT(*) AS numero_pedidos
FROM Pedidos_Vendas
GROUP BY mes;

-- 10) vw_livro_resumo: resumo com palavras-chave (concat) e autor
CREATE OR REPLACE VIEW vw_livro_resumo AS
SELECT L.ISBN, L.titulo, A.nome AS autor,
  (SELECT GROUP_CONCAT(P.desc_palavra SEPARATOR ', ')
   FROM Livro_PalavraChave LP
   JOIN Palavra_Chave P ON LP.codigo_palavra = P.codigo_palavra
   WHERE LP.ISBN = L.ISBN) AS palavras_chave
FROM Livro L
LEFT JOIN Autores A ON L.id_autor = A.id_autor;
