-- CREATE SCHEMA CLUBE_DO_LIVRO;

-- create table livros(
-- id_livro int not null,
-- nome_livro varchar(100) not null,
-- autoria varchar(100) not null,
-- editora varchar(100) not null,
-- categoria varchar(100) not null,
-- preco decimal(5,2) not null,

-- primary key (id_livro)
-- );

-- CREATE TABLE estoque (
--     id_livro INT NOT NULL,
--     qnt_estoque INT NOT NULL,
--  PRIMARY KEY (id_livro)
-- );

-- create table vendas (
--     id_pedido int not null,
--     id_vendedor int not null,
--     id_livro int not null,
--     qtd_vendida int not null,
--     data_venda date not null,
--  primary key (id_vendedor,id_pedido)
-- );

-- create table vendedores (
--     id_vendedor int not null,
--     nome_vendedor varchar(255) not null,
--  primary key (id_vendedor)
-- );

-- # alterando a tabelas 
-- # ce = chave estrangeira
-- alter table estoque add constraint ce_estoque_livros
-- foreign key(id_livro)
-- references livros (id_livro)
-- on delete no action
-- on update no action; 

-- alter table vendedores add constraint ce_vendedores_vendas
-- foreign key(id_vendedor)
-- references vendas (id_vendedor)
-- on delete no action
-- on update no action;

-- alter table vendas add constraint ce_vendas_livros
-- foreign key(id_livro)
-- references livros (id_livro)
-- on delete no action
-- on update no action;

-- set foreign_key_checks = 0;


-- Inserir livro 1
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (1, 'Aventuras Fantásticas', 'John Autor', 'Editora A', 'Ficção', 29.99);

-- Inserir livro 2
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (2, 'Segredos do Universo', 'Jane Autora', 'Editora B', 'Ciência', 39.99);

-- Inserir livro 3
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (3, 'Histórias Infantis', 'Carlos Autor', 'Editora C', 'Infantil', 19.99);

-- Inserir livro 4
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (4, 'Romance na Primavera', 'Maria Autora', 'Editora D', 'Romance', 34.99);

-- Inserir livro 5
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (5, 'Aventuras no Espaço', 'Pedro Autor', 'Editora E', 'Ficção', 27.99);

-- Inserir livro 6
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (6, 'Mistérios do Passado', 'Laura Autora', 'Editora A', 'Suspense', 45.99);

-- Inserir livro 7
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (7, 'O Código Secreto', 'Alex Autor', 'Editora B', 'Mistério', 32.99);

-- Inserir livro 8
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (8, 'Aventuras Submarinas', 'Isabel Autora', 'Editora C', 'Aventura', 28.99);

-- Inserir livro 9
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (9, 'Viagem no Tempo', 'Lucas Autor', 'Editora A', 'Ficção', 39.99);

-- Inserir livro 10
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (10, 'Poesias da Natureza', 'Fernanda Autora', 'Editora D', 'Poesia', 24.99);

-- Inserir livro 11
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (11, 'O Enigma do Deserto', 'Rafael Autor', 'Editora B', 'Aventura', 36.99);

-- Inserir livro 12
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (12, 'Amor Proibido', 'Juliana Autora', 'Editora E', 'Romance', 31.99);

-- Inserir livro 13
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (13, 'A Magia da Imaginação', 'Daniel Autor', 'Editora F', 'Infantil', 19.99);

-- Inserir livro 14
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (14, 'Os Segredos da Floresta', 'Carolina Autora', 'Editora D', 'Aventura', 29.99);

-- Inserir livro 15
INSERT INTO livros (id_livro, nome_livro, autoria, editora, categoria, preco)
VALUES (15, 'O Poder da Mente', 'Gustavo Autor', 'Editora A', 'Autoajuda', 26.99);



SELECT * FROM vendas;


INSERT INTO vendedores 
VALUES
(1,'Paula Rabelo'),
(2,'Juliana Macedo'),
(3,'Roberto Barros'),
(4,'Barbara Jales');

INSERT INTO vendas 
VALUES 
(1, 3, 7, 1, '2020-11-02'),
(2, 4, 8, 2, '2020-11-02'),
(3, 4, 4, 3, '2020-11-02'),
(4, 1, 7, 1, '2020-11-03'),
(5, 1, 6, 3, '2020-11-03'),
(6, 1, 9, 2, '2020-11-04'),
(7, 4, 1, 3, '2020-11-04'),
(8, 1, 5, 2, '2020-11-05'),
(9, 1, 2, 1, '2020-11-05'),
(10, 3, 8, 2, '2020-11-11'),
(11, 1, 1, 4, '2020-11-11'),
(12, 2, 10, 10, '2020-11-11'),
(13, 1, 12, 5, '2020-11-18'),
(14, 2, 4, 1, '2020-11-25'),
(15, 3, 13, 2,'2021-01-05'),
(16, 4, 13, 1, '2021-01-05'),
(17, 4, 4, 3, '2021-01-06'),
(18, 2, 12, 2, '2021-01-06');

INSERT INTO estoque 
VALUES
(1,  7),
(2,  10),
(3,  2),
(8,  4),
(10, 5),
(11, 3),
(12, 3);


