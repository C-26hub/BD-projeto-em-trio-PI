USE editoranova;

-- =========================
-- Inserts: Departamento (5)
-- =========================
INSERT INTO Departamento (nome_dep, desc_atv) VALUES
('Vendas','Responsável por vendas e promoções'),
('Compras','Compra de estoque e negociação com editoras'),
('Logística','Recebimento e expedição de livros'),
('Atendimento','Atendimento ao cliente e suporte'),
('Marketing','Campanhas e redes sociais');

-- =========================
-- Inserts: Autores (25)
-- =========================
INSERT INTO Autores (nome, biografia, nacionalidade, data_nasc, obras_escritas) VALUES
('Mariana Silva','Biografia de Mariana','BR','1979-03-12','O Sol, Noite'),
('Carlos Almeida','Escritor de ficção científica','BR','1965-07-01','Estrelas Distantes'),
('Ana Pereira','Poetisa contemporânea','PT','1988-11-22','Versos Urbanos'),
('John Doe','Autor internacional','US','1970-05-15','Mystery One'),
('Luiza Costa','Literatura infanto-juvenil','BR','1982-02-03','Aventuras na Floresta'),
('Paulo Meirelles','Ensaios','BR','1958-09-09','Ensaios Modernos'),
('Sofia Ramos','Romance histórico','BR','1975-12-30','Cidades Antigas'),
('Igor Santos','Tecnologia e códigos','BR','1990-06-18','Programando Hoje'),
('Beatriz Lopes','Autoajuda','BR','1984-04-04','Viva Melhor Agora'),
('Renato Nunes','Crônicas','BR','1969-10-10','Pequenas Histórias'),
('Helena Duarte','Infantil','BR','1992-01-25','Brincadeiras'),
('Miguel Oliveira','Ficção','BR','1980-08-08','Sombras'),
('Rita Moreira','Poesia','BR','1977-02-14','Tempo e Outros'),
('Eduardo Freitas','Biografia','BR','1960-03-21','Vida & Tempo'),
('Clara Pinto','Fantasia','BR','1995-09-09','Reinos Perdidos'),
('Fernando Reis','História','BR','1955-05-05','Guerras e Pazes'),
('Isabela Neri','Suspense','BR','1986-07-07','No Escuro'),
('Gustavo Lima','Quadrinhos','BR','1983-11-11','Riso & Ação'),
('Patricia Gomes','Romance','BR','1978-06-06','Amores'),
('Roberto Alves','Ciência','BR','1949-12-12','Física Para Todos'),
('Marcela Santos','Economia','BR','1972-04-04','Mercado Hoje'),
('Thiago Ribeiro','Fotografia','BR','1989-07-17','Olhares'),
('Daniela Rocha','Gastronomia','BR','1981-10-02','Cozinha Criativa'),
('André Barros','Aventura','BR','1993-02-20','Rumo ao Norte'),
('Sérgio Lima','Técnico','BR','1974-08-28','Manual Prático');

-- =========================
-- Inserts: Cliente (30)
-- =========================
INSERT INTO Cliente (nome_cli, endereco_cli, telefone_cli, email_cli, data_cadastro) VALUES
('João Silva','Rua A, 100','81999990001','joao.silva@example.com','2024-01-05 10:00:00'),
('Maria Souza','Rua B, 200','81999990002','maria.souza@example.com','2024-02-01 11:00:00'),
('Pedro Gomes','Av. Central, 50','81999990003','pedro.gomes@example.com','2024-02-15 12:00:00'),
('Ana Lima','Rua C, 30','81999990004','ana.lima@example.com','2024-03-10 09:20:00'),
('Ricardo Dias','Rua D, 12','81999990005','ricardo.dias@example.com','2024-03-15 14:10:00'),
('Sonia Martins','Rua E, 8','81999990006','sonia.martins@example.com','2024-04-08 16:00:00'),
('Lucas Pinto','Av. Leste, 99','81999990007','lucas.pinto@example.com','2024-04-12 10:40:00'),
('Fernanda Alves','Rua F, 44','81999990008','fernanda.alves@example.com','2024-05-01 09:00:00'),
('Marcos Rocha','Rua G, 78','81999990009','marcos.rocha@example.com','2024-05-09 15:30:00'),
('Patricia Nascimento','Rua H, 21','81999990010','patricia.nasc@example.com','2024-06-02 08:15:00'),
('Roberta Campos','Rua I, 5','81999990011','roberta.campos@example.com','2024-06-10 12:45:00'),
('Guilherme Costa','Av. Norte, 11','81999990012','guilherme.costa@example.com','2024-06-20 13:50:00'),
('Carla Pereira','Rua J, 2','81999990013','carla.pereira@example.com','2024-07-01 11:15:00'),
('Diego Fernandes','Rua K, 77','81999990014','diego.fernandes@example.com','2024-07-05 17:20:00'),
('Vanessa Rocha','Rua L, 33','81999990015','vanessa.rocha@example.com','2024-07-15 10:00:00'),
('Mateus Barbosa','Rua M, 42','81999990016','mateus.barbosa@example.com','2024-07-20 09:00:00'),
('Priscila Farias','Av. Sul, 3','81999990017','priscila.farias@example.com','2024-08-02 14:00:00'),
('Robson Teixeira','Rua N, 88','81999990018','robson.teixeira@example.com','2024-08-10 16:30:00'),
('Elisa Monteiro','Rua O, 6','81999990019','elisa.monteiro@example.com','2024-08-18 12:00:00'),
('Hugo Santana','Rua P, 9','81999990020','hugo.santana@example.com','2024-09-01 15:00:00'),
('Lara Mendonça','Rua Q, 17','81999990021','lara.mendonca@example.com','2024-09-10 10:30:00'),
('Otavio Serra','Rua R, 29','81999990022','otavio.serra@example.com','2024-09-18 09:05:00'),
('Simone Oliveira','Rua S, 7','81999990023','simone.oliveira@example.com','2024-09-25 11:45:00'),
('Nelson Braga','Av. Oeste, 14','81999990024','nelson.braga@example.com','2024-10-01 13:10:00'),
('Marta Leal','Rua T, 19','81999990025','marta.leal@example.com','2024-10-08 09:40:00'),
('Fábio Castro','Rua U, 20','81999990026','fabio.castro@example.com','2024-10-15 18:20:00'),
('Gabriela Rocha','Av. Litoral, 2','81999990027','gabriela.rocha@example.com','2024-10-20 08:50:00'),
('Igor Menezes','Rua V, 28','81999990028','igor.menezes@example.com','2024-11-02 10:10:00'),
('Aline Batista','Rua W, 4','81999990029','aline.batista@example.com','2024-11-10 12:30:00'),
('Vitor Ramos','Rua X, 90','81999990030','vitor.ramos@example.com','2024-11-18 14:40:00');

-- =========================
-- Inserts: Funcionarios (30)
-- =========================
INSERT INTO Funcionarios (cpf_func, nome_func, cargo, telefone, endereco_func, id_dep, responsavel_dp, email_func, salario)
VALUES
('00000000001','Carlos Viana','Gerente de Vendas','81911110001','Rua A, 1',1,NULL,'carlos.viana@editora.com',8000.00),
('00000000002','Mariana Rocha','Vendedora','81911110002','Rua B, 2',1,'00000000001','mariana.rocha@editora.com',3200.00),
('00000000003','Felipe Duarte','Comprador','81911110003','Rua C, 3',2,NULL,'felipe.duarte@editora.com',4200.00),
('00000000004','Rosa Almeida','Assistente de Compras','81911110004','Rua D, 4',2,'00000000003','rosa.almeida@editora.com',2800.00),
('00000000005','Joana Martins','Logística','81911110005','Rua E, 5',3,NULL,'joana.martins@editora.com',3500.00),
('00000000006','Paulo Santos','Motorista','81911110006','Rua F, 6',3,'00000000005','paulo.santos@editora.com',2300.00),
('00000000007','Lucia Ferreira','Atendimento','81911110007','Rua G, 7',4,NULL,'lucia.ferreira@editora.com',3000.00),
('00000000008','Bruno Lima','Suporte','81911110008','Rua H, 8',4,'00000000007','bruno.lima@editora.com',2900.00),
('00000000009','Renata Gomes','Marketing','81911110009','Rua I, 9',5,NULL,'renata.gomes@editora.com',3800.00),
('00000000010','Diego Carvalho','Analista de Marketing','81911110010','Rua J, 10',5,'00000000009','diego.carvalho@editora.com',2700.00),
('00000000011','Carolina Nunes','Estoque','81911110011','Rua K, 11',3,'00000000005','carolina.nunes@editora.com',2600.00),
('00000000012','Mateus Silva','Vendedor','81911110012','Rua L, 12',1,'00000000001','mateus.silva@editora.com',3100.00),
('00000000013','Patricia Rocha','Atendimento','81911110013','Rua M, 13',4,'00000000007','patricia.rocha@editora.com',2950.00),
('00000000014','Rafael Mendes','Compras','81911110014','Rua N, 14',2,'00000000003','rafael.mendes@editora.com',4300.00),
('00000000015','Aline Castro','Financeiro','81911110015','Rua O, 15',2,NULL,'aline.castro@editora.com',4500.00),
('00000000016','Sergio Lima','TI','81911110016','Rua P, 16',5,NULL,'sergio.lima@editora.com',4800.00),
('00000000017','Vanessa Soares','Atendimento','81911110017','Rua Q, 17',4,'00000000007','vanessa.soares@editora.com',2850.00),
('00000000018','Ricardo Silva','Vendedor','81911110018','Rua R, 18',1,'00000000001','ricardo.silva@editora.com',3000.00),
('00000000019','Tatiana Porto','Estoque','81911110019','Rua S, 19',3,'00000000005','tatiana.porto@editora.com',2550.00),
('00000000020','Anderson Reis','Logística','81911110020','Rua T, 20',3,'00000000005','anderson.reis@editora.com',2700.00),
('00000000021','Monica Freitas','Marketing','81911110021','Rua U, 21',5,'00000000009','monica.freitas@editora.com',3200.00),
('00000000022','Igor Santos','TI','81911110022','Rua V, 22',5,'00000000016','igor.santos@editora.com',3500.00),
('00000000023','Raquel Pinto','Financeiro','81911110023','Rua W, 23',2,'00000000015','raquel.pinto@editora.com',3700.00),
('00000000024','Bruna Vieira','Vendedora','81911110024','Rua X, 24',1,'00000000001','bruna.vieira@editora.com',2900.00),
('00000000025','Caio Almeida','Atendimento','81911110025','Rua Y, 25',4,'00000000007','caio.almeida@editora.com',2600.00),
('00000000026','Denise Rocha','Compras','81911110026','Rua Z, 26',2,'00000000003','denise.rocha@editora.com',4100.00),
('00000000027','Wagner Costa','Estoque','81911110027','Rua AA, 27',3,'00000000005','wagner.costa@editora.com',2500.00),
('00000000028','Lilian Sousa','Marketing','81911110028','Rua BB, 28',5,'00000000009','lilian.sousa@editora.com',3000.00),
('00000000029','Nina Lopes','Atendimento','81911110029','Rua CC, 29',4,'00000000007','nina.lopes@editora.com',2750.00),
('00000000030','Victor Martins','Vendedor','81911110030','Rua DD, 30',1,'00000000001','victor.martins@editora.com',3050.00);

-- =========================
-- Inserts: Livro (40)
-- =========================
-- Cria 40 livros com ISBNs fictícios (13 dígitos)
INSERT INTO Livro (ISBN, titulo, editora, data_pub, genero, num_pag, descricao, id_autor, estoque_minimo)
VALUES
('9780000000001','O Sol na Janela','Editora A','2019-03-01','Romance',320,'Romance contemporâneo',1,5),
('9780000000002','Estrelas ao Longe','Editora B','2018-06-12','Ficção Científica',280,'Viagem interstelar',2,3),
('9780000000003','Versos Urbanos','Editora C','2020-01-20','Poesia',120,'Poemas modernos',3,4),
('9780000000004','Mistério na Rua','Editora D','2017-09-05','Suspense',360,'Thriller policial',4,6),
('9780000000005','Aventuras na Floresta','Editora E','2021-02-14','Infanto-juvenil',150,'Aventura para crianças',5,2),
('9780000000006','Ensaios Modernos','Editora F','2015-05-21','Ensaios',200,'Reflexões',6,1),
('9780000000007','Cidades Antigas','Editora G','2010-11-11','Histórico',410,'Romance histórico',7,2),
('9780000000008','Programando Hoje','Editora H','2022-08-20','Tecnologia',500,'Guia prático de programação',8,10),
('9780000000009','Viva Melhor Agora','Editora I','2016-03-03','Autoajuda',210,'Dicas para bem-estar',9,4),
('9780000000010','Pequenas Histórias','Editora J','2014-12-12','Crônicas',180,'Crônicas do cotidiano',10,3),
('9780000000011','Brincadeiras','Editora K','2019-07-07','Infantil',90,'Atividades para crianças',11,2),
('9780000000012','Sombras','Editora L','2013-09-09','Ficção',330,'Drama contemporâneo',12,5),
('9780000000013','Tempo e Outros','Editora M','2011-02-02','Poesia',140,'Coletânea',13,3),
('9780000000014','Vida & Tempo','Editora N','2009-10-10','Biografia',420,'Biografia notável',14,1),
('9780000000015','Reinos Perdidos','Editora O','2020-12-12','Fantasia',450,'Série de fantasia',15,7),
('9780000000016','Guerras e Pazes','Editora P','2000-01-01','História',600,'Estudo histórico',16,2),
('9780000000017','No Escuro','Editora Q','2018-10-31','Suspense',310,'Livro de suspense',17,3),
('9780000000018','Riso & Ação','Editora R','2012-04-04','Quadrinhos',120,'HQ divertida',18,6),
('9780000000019','Amores','Editora S','2016-06-06','Romance',290,'Histórias de amor',19,4),
('9780000000020','Física Para Todos','Editora T','1995-05-05','Ciência',700,'Livro didático',20,2),
('9780000000021','Mercado Hoje','Editora U','2017-07-07','Economia',350,'Análise econômica',21,3),
('9780000000022','Olhares','Editora V','2019-09-09','Fotografia',200,'Livro de fotos',22,4),
('9780000000023','Cozinha Criativa','Editora W','2014-11-11','Gastronomia',220,'Receitas',23,3),
('9780000000024','Rumo ao Norte','Editora X','2021-01-15','Aventura',330,'Aventura juvenil',24,2),
('9780000000025','Manual Prático','Editora Y','2010-03-03','Técnico',400,'Manual profissional',25,5),
('9780000000026','Histórias do Norte','Editora A','2013-05-05','Romance',280,'Contos regionais',1,3),
('9780000000027','Futuro Próximo','Editora B','2020-08-08','Ficção Científica',310,'Tecnologia e sociedade',2,4),
('9780000000028','Pequenas Poemas','Editora C','2022-02-02','Poesia',100,'Novíssima coletânea',3,2),
('9780000000029','Investigação Urbana','Editora D','2019-04-04','Suspense',360,'Novo suspense',4,6),
('9780000000030','Contos e Lendas','Editora E','2011-06-06','Infantil',130,'Lendas para crianças',5,2),
('9780000000031','Reflexões Modernas','Editora F','2018-09-09','Ensaios',190,'Ensaios contemporâneos',6,1),
('9780000000032','Antigas Memórias','Editora G','2016-03-12','Histórico',430,'Narrativa histórica',7,2),
('9780000000033','Codificando','Editora H','2023-01-01','Tecnologia',560,'Programação avançada',8,10),
('9780000000034','Bem-Estar Hoje','Editora I','2015-05-05','Autoajuda',210,'Guia de saúde mental',9,4),
('9780000000035','Relatos Urbanos','Editora J','2012-12-12','Crônicas',175,'Crônicas urbanas',10,3),
('9780000000036','Brincadeiras 2','Editora K','2020-05-05','Infantil',95,'Atividades',11,2),
('9780000000037','Sombras 2','Editora L','2021-08-08','Ficção',345,'Continuação',12,5),
('9780000000038','Novos Versos','Editora M','2019-11-11','Poesia',150,'Poesia contemporânea',13,3),
('9780000000039','Biografia X','Editora N','2001-01-01','Biografia',410,'Biografia famosa',14,1),
('9780000000040','Fantasia Nova','Editora O','2024-03-03','Fantasia',480,'Ficção fantástica',15,7);

-- =========================
-- Inserts: Livro_Autor (link livro com autor principal) - cerca de 40 links
-- =========================
INSERT INTO Livro_Autor (ISBN, id_autor) VALUES
('9780000000001',1),
('9780000000002',2),
('9780000000003',3),
('9780000000004',4),
('9780000000005',5),
('9780000000006',6),
('9780000000007',7),
('9780000000008',8),
('9780000000009',9),
('9780000000010',10),
('9780000000011',11),
('9780000000012',12),
('9780000000013',13),
('9780000000014',14),
('9780000000015',15),
('9780000000016',16),
('9780000000017',17),
('9780000000018',18),
('9780000000019',19),
('9780000000020',20),
('9780000000021',21),
('9780000000022',22),
('9780000000023',23),
('9780000000024',24),
('9780000000025',25),
('9780000000026',1),
('9780000000027',2),
('9780000000028',3),
('9780000000029',4),
('9780000000030',5),
('9780000000031',6),
('9780000000032',7),
('9780000000033',8),
('9780000000034',9),
('9780000000035',10),
('9780000000036',11),
('9780000000037',12),
('9780000000038',13),
('9780000000039',14),
('9780000000040',15);

-- =========================
-- Inserts: Palavra_Chave (30)
-- =========================
INSERT INTO Palavra_Chave (desc_palavra) VALUES
('ficcao'),('romance'),('infantil'),('poesia'),('tecnologia'),('autoajuda'),('suspense'),('historico'),('aventura'),('fotografia'),
('gastronomia'),('economia'),('culinaria'),('quadrinhos'),('ensaios'),('criatividade'),('educacao'),('didatico'),('manual'),('biografia'),
('sociedade'),('programacao'),('codigo'),('saude_mental'),('desenvolvimento'),('negocios'),('jovem_adulto'),('fantasia'),('misterio'),('registros');

-- =========================
-- Inserts: Livro_PalavraChave (associações) (≈60)
-- =========================
INSERT INTO Livro_PalavraChave (ISBN, codigo_palavra) VALUES
('9780000000001',2),('9780000000001',1),
('9780000000002',1),('9780000000002',5),
('9780000000003',4),
('9780000000004',7),('9780000000004',29),
('9780000000005',3),('9780000000005',9),
('9780000000006',15),
('9780000000007',8),
('9780000000008',5),('9780000000008',22),
('9780000000009',6),
('9780000000010',10),('9780000000010',15),
('9780000000011',3),('9780000000011',9),
('9780000000012',1),
('9780000000013',4),
('9780000000014',20),
('9780000000015',28),('9780000000015',9),
('9780000000016',8),
('9780000000017',7),
('9780000000018',14),
('9780000000019',2),
('9780000000020',19),('9780000000020',20),
('9780000000021',26),
('9780000000022',22),
('9780000000023',11),
('9780000000024',9),
('9780000000025',25),
('9780000000026',2),
('9780000000027',1),('9780000000027',5),
('9780000000028',4),
('9780000000029',7),
('9780000000030',3),
('9780000000031',15),
('9780000000032',8),
('9780000000033',5),('9780000000033',22),
('9780000000034',6),
('9780000000035',10),
('9780000000036',3),
('9780000000037',1),
('9780000000038',4),
('9780000000039',20),
('9780000000040',28);

-- =========================
-- Inserts: Areas_Conhecimento (10)
-- =========================
INSERT INTO Areas_Conhecimento (desc_area) VALUES
('Literatura'),('Tecnologia'),('Ciencias Sociais'),('Historia'),('Saude'),('Economia'),('Fotografia'),('Gastronomia'),('Educacao'),('Infantil');

-- =========================
-- Inserts: Livro_AreaConhecimento (≈40)
-- =========================
INSERT INTO Livro_AreaConhecimento (ISBN, codigo_area) VALUES
('9780000000001',1),('9780000000002',2),('9780000000003',1),
('9780000000004',1),('9780000000005',10),('9780000000006',3),
('9780000000007',4),('9780000000008',2),('9780000000009',5),
('9780000000010',1),('9780000000011',10),('9780000000012',1),
('9780000000013',1),('9780000000014',3),('9780000000015',1),
('9780000000016',4),('9780000000017',1),('9780000000018',7),
('9780000000019',1),('9780000000020',5),('9780000000021',6),
('9780000000022',7),('9780000000023',8),('9780000000024',1),
('9780000000025',3),('9780000000026',1),('9780000000027',2),
('9780000000028',1),('9780000000029',1),('9780000000030',10),
('9780000000031',3),('9780000000032',4),('9780000000033',2),
('9780000000034',5),('9780000000035',1),('9780000000036',10),
('9780000000037',1),('9780000000038',1),('9780000000039',3);

-- =========================
-- Inserts: Exemplares (60) - vários exemplares por ISBN
-- =========================
INSERT INTO Exemplares (status, localizacao_exemplar, ISBN, motivo_danificado) VALUES
('disponivel','Prateleira A1','9780000000001',NULL),
('disponivel','Prateleira A1','9780000000001',NULL),
('reservado','Prateleira A1','9780000000001',NULL),
('disponivel','Prateleira B2','9780000000002',NULL),
('danificado','Depósito','9780000000002','Capa rasgada'),
('disponivel','Prateleira C3','9780000000003',NULL),
('disponivel','Prateleira D4','9780000000004',NULL),
('indisponivel','Reparo','9780000000004','Páginas soltas'),
('disponivel','Prateleira E5','9780000000005',NULL),
('disponivel','Prateleira F6','9780000000006',NULL),
('disponivel','Prateleira G7','9780000000007',NULL),
('disponivel','Prateleira H8','9780000000008',NULL),
('disponivel','Prateleira I9','9780000000009',NULL),
('disponivel','Prateleira J10','9780000000010',NULL),
('disponivel','Prateleira K11','9780000000011',NULL),
('disponivel','Prateleira L12','9780000000012',NULL),
('disponivel','Prateleira M13','9780000000013',NULL),
('disponivel','Prateleira N14','9780000000014',NULL),
('disponivel','Prateleira O15','9780000000015',NULL),
('disponivel','Prateleira P16','9780000000016',NULL),
('disponivel','Prateleira Q17','9780000000017',NULL),
('disponivel','Prateleira R18','9780000000018',NULL),
('disponivel','Prateleira S19','9780000000019',NULL),
('disponivel','Prateleira T20','9780000000020',NULL),
('disponivel','Prateleira U21','9780000000021',NULL),
('disponivel','Prateleira V22','9780000000022',NULL),
('disponivel','Prateleira W23','9780000000023',NULL),
('disponivel','Prateleira X24','9780000000024',NULL),
('disponivel','Prateleira Y25','9780000000025',NULL),
('disponivel','Prateleira Z26','9780000000026',NULL),
('disponivel','Prateleira A27','9780000000027',NULL),
('disponivel','Prateleira B28','9780000000028',NULL),
('disponivel','Prateleira C29','9780000000029',NULL),
('disponivel','Prateleira D30','9780000000030',NULL),
('disponivel','Prateleira E31','9780000000031',NULL),
('disponivel','Prateleira F32','9780000000032',NULL),
('disponivel','Prateleira G33','9780000000033',NULL),
('disponivel','Prateleira H34','9780000000034',NULL),
('disponivel','Prateleira I35','9780000000035',NULL),
('disponivel','Prateleira J36','9780000000036',NULL),
('disponivel','Prateleira K37','9780000000037',NULL),
('disponivel','Prateleira L38','9780000000038',NULL),
('disponivel','Prateleira M39','9780000000039',NULL),
('disponivel','Prateleira N40','9780000000040',NULL),
('disponivel','Depósito','9780000000008',NULL),
('reservado','Depósito','9780000000015',NULL),
('indisponivel','Em Reparação','9780000000020','encadernação'),
('disponivel','Prateleira B1','9780000000016',NULL),
('disponivel','Prateleira B2','9780000000016',NULL),
('disponivel','Prateleira B3','9780000000016',NULL),
('disponivel','Prateleira B4','9780000000016',NULL),
('disponivel','Prateleira C1','9780000000033',NULL),
('disponivel','Prateleira C2','9780000000033',NULL),
('disponivel','Prateleira C3','9780000000033',NULL),
('disponivel','Prateleira C4','9780000000033',NULL);

-- =========================
-- Inserts: Pedidos_Vendas (40)
-- =========================
-- Distribuí clientes e funcionários já existentes
INSERT INTO Pedidos_Vendas (data_transacao, status_pedido, forma_pag, id_cliente, cpf_func, desconto_percentual)
VALUES
('2024-05-01 10:00:00','concluido','cartao',1,'00000000002',0.00),
('2024-05-02 11:15:00','concluido','boleto',2,'00000000012',5.00),
('2024-05-03 12:20:00','concluido','cartao',3,'00000000024',0.00),
('2024-05-04 13:00:00','cancelado','cartao',4,'00000000002',0.00),
('2024-05-05 14:00:00','concluido','pix',5,'00000000018',10.00),
('2024-05-06 09:30:00','concluido','cartao',6,'00000000012',0.00),
('2024-05-07 15:45:00','concluido','pix',7,'00000000024',0.00),
('2024-05-08 16:30:00','concluido','boleto',8,'00000000002',0.00),
('2024-05-09 17:00:00','concluido','cartao',9,'00000000012',0.00),
('2024-05-10 18:00:00','concluido','pix',10,'00000000024',0.00),
('2024-06-01 10:10:00','concluido','cartao',11,'00000000002',0.00),
('2024-06-02 11:20:00','concluido','boleto',12,'00000000012',0.00),
('2024-06-03 12:30:00','concluido','pix',13,'00000000024',0.00),
('2024-06-04 13:40:00','concluido','cartao',14,'00000000018',0.00),
('2024-06-05 14:50:00','concluido','boleto',15,'00000000012',0.00),
('2024-06-06 15:00:00','concluido','pix',16,'00000000024',0.00),
('2024-06-07 16:10:00','concluido','cartao',17,'00000000002',0.00),
('2024-06-08 17:20:00','concluido','pix',18,'00000000012',5.00),
('2024-06-09 18:30:00','concluido','cartao',19,'00000000024',0.00),
('2024-06-10 19:40:00','concluido','cartao',20,'00000000018',0.00),
('2024-06-11 10:50:00','concluido','pix',21,'00000000002',0.00),
('2024-06-12 11:00:00','concluido','boleto',22,'00000000012',0.00),
('2024-06-13 12:10:00','concluido','cartao',23,'00000000024',0.00),
('2024-06-14 13:20:00','concluido','pix',24,'00000000018',0.00),
('2024-06-15 14:30:00','concluido','cartao',25,'00000000012',0.00),
('2024-06-16 15:40:00','concluido','boleto',26,'00000000024',0.00),
('2024-06-17 16:50:00','concluido','pix',27,'00000000002',0.00),
('2024-06-18 17:00:00','concluido','cartao',28,'00000000012',0.00),
('2024-06-19 18:10:00','concluido','pix',29,'00000000024',0.00),
('2024-06-20 19:20:00','concluido','cartao',30,'00000000018',0.00),
('2024-07-01 10:00:00','concluido','cartao',1,'00000000002',0.00),
('2024-07-02 11:00:00','concluido','pix',2,'00000000012',0.00),
('2024-07-03 12:00:00','concluido','boleto',3,'00000000024',0.00),
('2024-07-04 13:00:00','concluido','cartao',4,'00000000018',0.00),
('2024-07-05 14:00:00','concluido','pix',5,'00000000012',0.00),
('2024-07-06 15:00:00','concluido','cartao',6,'00000000024',0.00),
('2024-07-07 16:00:00','concluido','boleto',7,'00000000002',0.00),
('2024-07-08 17:00:00','concluido','pix',8,'00000000012',0.00),
('2024-07-09 18:00:00','concluido','cartao',9,'00000000024',0.00);

-- =========================
-- Inserts: Livros_Pedidos (≈100) - itens dos pedidos
-- =========================
-- Associei múltiplos livros a vários pedidos
INSERT INTO Livros_Pedidos (id_pedido, ISBN, quantidade) VALUES
(1,'9780000000001',1),(1,'9780000000008',2),
(2,'9780000000002',1),(2,'9780000000012',1),
(3,'9780000000003',2),
(4,'9780000000004',1),
(5,'9780000000005',3),
(6,'9780000000006',1),
(7,'9780000000007',1),
(8,'9780000000008',1),
(9,'9780000000009',2),
(10,'9780000000010',1),
(11,'9780000000011',1),(11,'9780000000015',1),
(12,'9780000000012',2),
(13,'9780000000013',1),
(14,'9780000000014',1),
(15,'9780000000015',2),
(16,'9780000000016',1),
(17,'9780000000017',1),
(18,'9780000000018',1),(18,'9780000000019',2),
(19,'9780000000020',1),
(20,'9780000000021',1),
(21,'9780000000022',1),
(22,'9780000000023',2),
(23,'9780000000024',1),
(24,'9780000000025',1),
(25,'9780000000026',1),
(26,'9780000000027',1),
(27,'9780000000028',1),
(28,'9780000000029',2),
(29,'9780000000030',1),
(30,'9780000000031',1),
(31,'9780000000032',1),
(32,'9780000000033',1),
(33,'9780000000034',1),
(34,'9780000000035',1),
(35,'9780000000036',2),
(36,'9780000000037',1),
(37,'9780000000038',1),
(38,'9780000000039',1),
(39,'9780000000040',1),
(2,'9780000000008',1),
(5,'9780000000015',1),
(7,'9780000000001',1),
(10,'9780000000016',2),
(15,'9780000000015',1),
(20,'9780000000025',2),
(25,'9780000000026',1),
(30,'9780000000031',1),
(35,'9780000000035',1),
(36,'9780000000036',1),
(37,'9780000000037',2),
(38,'9780000000038',1),
(39,'9780000000039',1),
(1,'9780000000010',1),
(3,'9780000000013',1),
(4,'9780000000029',1),
(6,'9780000000033',1),
(8,'9780000000022',1),
(9,'9780000000021',1),
(11,'9780000000009',1),
(12,'9780000000014',1) 
AS new_vals
ON DUPLICATE KEY UPDATE
Livros_Pedidos.quantidade = Livros_Pedidos.quantidade + new_vals.quantidade;

-- Fim dos INSERTs 


SELECT * from Livros_Pedidos; 
