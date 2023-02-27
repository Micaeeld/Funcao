call p_inserir_venda('20220906', 13, 100);

select A.NUMERO, count(*)as NUMERO_ITENS, sum(B.QUANTIDADE * B.PRECO) as faturado
from notas_fiscais A inner join itens_notas_fiscais B
on a.NUMERO = b.NUMERO where a.DATA_VENDA = '20220906'
group by A.NUMERO;

desc tabela_de_vendedores;
desc notas_fiscais;
desc itens_notas_fiscais;
