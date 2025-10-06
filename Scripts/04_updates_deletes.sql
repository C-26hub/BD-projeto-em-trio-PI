USE editoranova;

-- UPDATES (10)
-- 1) Atualizar telefone de um cliente
UPDATE Cliente SET telefone_cli='81988887777' WHERE id_cliente=1;

-- 2) Aplicar desconto em um pedido
UPDATE Pedidos_Vendas SET desconto_percentual=15.00 WHERE id_pedido=5;

-- 3) Marcar exemplar como danificado
UPDATE Exemplares SET status='danificado', motivo_danificado='Molhado' WHERE n_serie=5;

-- 4) Atualizar salario de um funcionário
UPDATE Funcionarios SET salario=8500.00 WHERE cpf_func='00000000001';

-- 5) Atualizar email de cliente
UPDATE Cliente SET email_cli='joao.silva2@example.com' WHERE id_cliente=1;

-- 6) Mudar status de pedido para 'enviado'
UPDATE Pedidos_Vendas SET status_pedido='enviado' WHERE id_pedido=6;

-- 7) Aumentar estoque_minimo de um livro
UPDATE Livro SET estoque_minimo=10 WHERE ISBN='9780000000008';

-- 8) Corrigir nome de autor
UPDATE Autores SET nome='Mariana S. Silva' WHERE id_autor=1;

-- 9) Atualizar localização de exemplar
UPDATE Exemplares SET localizacao_exemplar='Prateleira Z1' WHERE n_serie=10;

-- 10) Alterar forma de pagamento de um pedido
UPDATE Pedidos_Vendas SET forma_pag='cartao' WHERE id_pedido=2;

-- DELETES (10)
-- 11) Deletar um pedido cancelado e seus itens
DELETE FROM Livros_Pedidos WHERE id_pedido=4;
DELETE FROM Pedidos_Vendas WHERE id_pedido=4;

-- 12) Deletar exemplar danificado irrecuperável
DELETE FROM Exemplares WHERE n_serie=5;

-- 13) Deletar palavra-chave pouco usada
DELETE FROM Livro_PalavraChave WHERE codigo_palavra=30;
DELETE FROM Palavra_Chave WHERE codigo_palavra=30;

-- 14) Remover cliente inativo
DELETE FROM Cliente WHERE id_cliente=30;

-- 15) Remover vendedor que saiu
DELETE FROM Funcionarios WHERE cpf_func='00000000030';

-- 16) Remover associação livro-area antiga
DELETE FROM Livro_AreaConhecimento WHERE ISBN='9780000000026' AND codigo_area=1;

-- 17) Excluir autor sem obras (após checar)
DELETE FROM Autores WHERE id_autor=99; -- não removerá ninguém real; placeholder

-- 18) Remover item duplicado em pedido
DELETE FROM Livros_Pedidos WHERE id_pedido=2 AND ISBN='9780000000008' LIMIT 1;

-- 19) Deletar todos os exemplares de um ISBN obsoleto
DELETE FROM Exemplares WHERE ISBN='9780000000006';

-- 20) Excluir livro não mais publicado (após checar FK)
DELETE FROM Livros_Pedidos WHERE ISBN='9780000000006';
DELETE FROM Livro_Autor WHERE ISBN='9780000000006';
DELETE FROM Livro WHERE ISBN='9780000000006';
