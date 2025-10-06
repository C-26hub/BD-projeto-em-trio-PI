USE editoranova;

-- 1) Lista de livros com autor e número de páginas
SELECT L.ISBN, L.titulo, A.nome AS autor, L.num_pag
FROM Livro L
LEFT JOIN Autores A ON L.id_autor = A.id_autor;

-- 2) Relação de exemplares por livro (count) — JOIN + GROUP BY
SELECT L.ISBN, L.titulo, COUNT(E.n_serie) AS total_exemplares
FROM Livro L
LEFT JOIN Exemplares E ON L.ISBN = E.ISBN
GROUP BY L.ISBN, L.titulo;

-- 3) Pedidos de um cliente (subselect para total gasto hipotético)
SELECT P.id_pedido, P.data_transacao, P.status_pedido, C.nome_cli
FROM Pedidos_Vendas P
JOIN Cliente C ON P.id_cliente = C.id_cliente
WHERE C.id_cliente = 1;

-- 4) Itens de um pedido com título do livro (join)
SELECT LP.id_pedido, LP.ISBN, L.titulo, LP.quantidade
FROM Livros_Pedidos LP
JOIN Livro L ON LP.ISBN = L.ISBN
WHERE LP.id_pedido = 1;

-- 5) Top 10 livros mais vendidos (por quantidade somada)
SELECT LP.ISBN, L.titulo, SUM(LP.quantidade) AS total_vendido
FROM Livros_Pedidos LP
JOIN Livro L ON LP.ISBN = L.ISBN
GROUP BY LP.ISBN
ORDER BY total_vendido DESC
LIMIT 10;

-- 6) Clientes que mais compraram (por número de pedidos)
SELECT C.id_cliente, C.nome_cli, COUNT(P.id_pedido) AS total_pedidos
FROM Cliente C
JOIN Pedidos_Vendas P ON C.id_cliente = P.id_cliente
GROUP BY C.id_cliente
ORDER BY total_pedidos DESC
LIMIT 10;

-- 7) Livros por área de conhecimento (JOIN triplo)
SELECT A.desc_area, L.ISBN, L.titulo
FROM Livro_AreaConhecimento LA
JOIN Areas_Conhecimento A ON LA.codigo_area = A.codigo_area
JOIN Livro L ON LA.ISBN = L.ISBN
ORDER BY A.desc_area;

-- 8) Buscar livros com palavra-chave específica (subselect)
SELECT L.ISBN, L.titulo
FROM Livro L
WHERE L.ISBN IN (
  SELECT ISBN FROM Livro_PalavraChave WHERE codigo_palavra = (
    SELECT codigo_palavra FROM Palavra_Chave WHERE desc_palavra='tecnologia' LIMIT 1
  )
);

-- 9) Funcionarios por departamento (JOIN)
SELECT D.nome_dep, F.cpf_func, F.nome_func, F.cargo
FROM Funcionarios F
JOIN Departamento D ON F.id_dep = D.id_dep
ORDER BY D.nome_dep, F.nome_func;

-- 10) Pedidos num período com total de itens (subselect COUNT)
SELECT P.id_pedido, P.data_transacao,
  (SELECT SUM(quantidade) FROM Livros_Pedidos LP WHERE LP.id_pedido = P.id_pedido) AS total_itens
FROM Pedidos_Vendas P
WHERE P.data_transacao BETWEEN '2024-05-01' AND '2024-06-30';

-- 11) Buscar livros com estoque menor que estoque_minimo (subselect com count)
SELECT L.ISBN, L.titulo, L.estoque_minimo,
  (SELECT COUNT(*) FROM Exemplares E WHERE E.ISBN = L.ISBN AND E.status='disponivel') AS disponiveis
FROM Livro L
WHERE (SELECT COUNT(*) FROM Exemplares E WHERE E.ISBN = L.ISBN AND E.status='disponivel') < L.estoque_minimo;

-- 12) Vendas por mês (agrupando data_transacao)
SELECT DATE_FORMAT(data_transacao,'%Y-%m') AS mes, COUNT(*) AS numero_pedidos
FROM Pedidos_Vendas
GROUP BY mes
ORDER BY mes;

-- 13) Lista de autores com número de obras cadastradas (JOIN)
SELECT A.id_autor, A.nome, COUNT(L.ISBN) AS obras
FROM Autores A
LEFT JOIN Livro_Autor LA ON A.id_autor = LA.id_autor
LEFT JOIN Livro L ON LA.ISBN = L.ISBN
GROUP BY A.id_autor;

-- 14) Clientes sem pedidos (subselect NOT EXISTS)
SELECT C.id_cliente, C.nome_cli
FROM Cliente C
WHERE NOT EXISTS (SELECT 1 FROM Pedidos_Vendas P WHERE P.id_cliente = C.id_cliente);

-- 15) Livros com mais de uma palavra-chave (HAVING)
SELECT L.ISBN, L.titulo, COUNT(LP.codigo_palavra) AS num_palavras
FROM Livro L
JOIN Livro_PalavraChave LP ON L.ISBN = LP.ISBN
GROUP BY L.ISBN
HAVING num_palavras > 1;

-- 16) Funcionário responsável de cada funcionário (self-join)
SELECT f.cpf_func, f.nome_func, r.cpf_func AS resp_cpf, r.nome_func AS resp_nome
FROM Funcionarios f
LEFT JOIN Funcionarios r ON f.responsavel_dp = r.cpf_func;

-- 17) Valor médio de desconto por funcionário (AVG)
SELECT F.cpf_func, F.nome_func, AVG(P.desconto_percentual) AS desconto_medio
FROM Pedidos_Vendas P
JOIN Funcionarios F ON P.cpf_func = F.cpf_func
GROUP BY F.cpf_func
ORDER BY desconto_medio DESC;

-- 18) Livros que nunca foram pedidos (LEFT JOIN + WHERE NULL)
SELECT L.ISBN, L.titulo
FROM Livro L
LEFT JOIN Livros_Pedidos LP ON L.ISBN = LP.ISBN
WHERE LP.id_pedido IS NULL;

-- 19) Buscar pedidos com livros de um autor específico (JOINs)
SELECT DISTINCT P.id_pedido, P.data_transacao, A.nome
FROM Pedidos_Vendas P
JOIN Livros_Pedidos LP ON P.id_pedido = LP.id_pedido
JOIN Livro L ON LP.ISBN = L.ISBN
JOIN Autores A ON L.id_autor = A.id_autor
WHERE A.nome LIKE '%Mariana%';

-- 20) Quantidade média de itens por pedido
SELECT AVG(total_itens) AS media_itens_por_pedido FROM (
  SELECT id_pedido, SUM(quantidade) AS total_itens
  FROM Livros_Pedidos
  GROUP BY id_pedido
) t;
