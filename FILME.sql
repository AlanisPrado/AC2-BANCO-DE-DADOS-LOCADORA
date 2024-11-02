SELECT * FROM videolocadora.filme;

-- SELECT cod_filme, COUNT(*) AS quantidade_alugado
-- from locacao
-- GROUP BY cod_filme;


-- SELECT filme.filme, locacao.data_devolucao
-- FROM locacao  
-- JOIN filme ON locacao.cod_filme = filme.cod_filme  
-- JOIN cliente ON locacao.cod_cliente = cliente.cod_cliente  
-- JOIN categoria ON filme.cod_categoria = categoria.cod_categoria 
-- WHERE categoria.nome_categoria = 'Ação'  
 -- AND filme.diretor = 'Richard Donner'  
 -- AND cliente.nome = 'Abimael Silva'; 
 
 -- SELECT filme, valor_locacao, (valor_locacao * 0.10) AS desconto,
   --  (valor_locacao - (valor_locacao * 0.10)) AS valor_final
-- FROM filme;


-- SELECT DISTINCT filme.filme  
-- FROM locacao  
-- JOIN cliente ON locacao.cod_cliente = cliente.cod_cliente 
-- JOIN filme ON locacao.cod_filme = filme.cod_filme  
-- WHERE cliente.cidade = 'Votorantim';


-- SELECT filme.filme  
-- FROM locacao  
-- JOIN filme ON locacao.cod_filme = filme.cod_filme 
-- ORDER BY locacao.data_retirada DESC  
-- LIMIT 1; 


-- SELECT SUM(filme.valor_locacao) AS lucro  
-- FROM locacao  
-- JOIN filme ON locacao.cod_filme = filme.cod_filme  
-- WHERE filme.filme = 'A vida é bela'; 


-- SELECT filme.diretor, COUNT(locacao.cod_filme) AS quantidade_locacoes 
-- FROM locacao  
-- JOIN filme ON locacao.cod_filme = filme.cod_filme 
-- GROUP BY filme.diretor;  

-- SELECT DISTINCT categoria.nome_categoria  
-- FROM locacao  
-- JOIN filme ON locacao.cod_filme = filme.cod_filme 
-- JOIN categoria ON filme.cod_categoria = categoria.cod_categoria  
-- JOIN cliente ON locacao.cod_cliente = cliente.cod_cliente  
-- WHERE cliente.nome = 'Maria Chiquinha'; 

-- SELECT DISTINCT cliente.nome, cliente.telefone 
-- FROM locacao  
-- JOIN cliente ON locacao.cod_cliente = cliente.cod_cliente  
-- JOIN filme ON locacao.cod_filme = filme.cod_filme  
-- WHERE filme.filme = 'Constantine';


-- SELECT categoria.nome_categoria  
-- FROM categoria  
-- LEFT JOIN filme ON categoria.cod_categoria = filme.cod_categoria  
-- WHERE filme.cod_filme IS NULL; 

SET SQL_SAFE_UPDATES = 0;
DELETE FROM categoria WHERE cod_categoria NOT IN (SELECT DISTINCT cod_categoria FROM filme);
SET SQL_SAFE_UPDATES = 1;






