-- Se você não está realizando alterações estruturais nas tabelas, como criar ou excluir tabelas,
-- e está apenas inserindo dados, é aconselhável manter FOREIGN_KEY_CHECKS ativado, ou seja, 
-- com o valor 1
set foreign_key_checks = 1;

select nome_livro as 'Nome do livro' from livros;
select id_livro as 'Código do livro' from livros;

-- Livros de aventura que custam menos de R$30 
select * from livros
where categoria = 'Aventura' and
preco < 30;

select * from livros;

select * from livros 
where not autoria = 'Lucas Autor';

-- Livro com começam com a leta A:
select nome_livro as 'Nome do livro' from livros
where nome_livro like 'A%';

select * from vendas;

-- alterar os preços dos livros
update livros set preco = 0.9 * preco;


select distinct * from vendas
where id_vendedor = 1 
order by id_livro;








