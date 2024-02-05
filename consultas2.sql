select vendas.id_vendedor, vendedores.nome_vendedor, vendas.qnt_vendida
from vendas, vendedores
where vendas.id_vendedor = vendedores.id_vendedor;

select * from vendedores;

select * from vendas;

select vendas.id_vendedor, vendedores.nome_vendedor, sum(vendas.qtd_vendida)
from vendas, vendedores
where vendas.id_vendedor = vendedores.id_vendedor
group by vendas.id_vendedor;

select livros.nome_livro, sum(vendas.qtd_vendida)
from livros,  vendas
where vendas.id_livro = livros.id_livro;


select a.nome_livro, b.qtd_vendida
from livros as  a,  vendas as  b
where b.id_livro = a.id_livro;

select vendas.id_vendedor, vendedores.nome_vendedor, sum(vendas.qtd_vendida) as 'qtd de livros vendidos'
from vendas inner join vendedores
on vendas.id_vendedor = vendedores.id_vendedor
group by vendas.id_vendedor;

-- Maior quantidades de livros vendidos em uma única venda por vendedor
select vendedores.nome_vendedor, max(qtd_vendida) 
from vendas inner join vendedores
on vendas.id_vendedor = vendedores.id_vendedor
group by(vendas.id_vendedor);


select max(qtd_vendida) from vendas;


select livros.nome_livro, vendas.qtd_vendida
from livros left join vendas
on livros.id_livro = vendas.id_livro;

select livros.nome_livro, sum(vendas.qtd_vendida)
from livros left join vendas
on livros.id_livro = vendas.id_livro
group by livros.nome_livro;

select livros.nome_livro, vendas.qtd_vendida
from livros left join vendas
on livros.id_livro = vendas.id_livro
where vendas.qtd_vendida is null ;

select livros.nome_livro, vendas.qtd_vendida
from livros right join vendas
on livros.id_livro = vendas.id_livro;

