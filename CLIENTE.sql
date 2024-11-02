SELECT * FROM videolocadora.cliente;

-- SELECT cod_cliente FROM cliente WHERE nome = 'Dino da Silva Sauro';




SET SQL_SAFE_UPDATES = 0;
UPDATE cliente SET endereco = 'Rua Guilherme Orlando, 333', bairro = 'Jardim Santa Rosália', telefone = '1532145543' WHERE nome = 'Rafael Nunes Sales';
SET SQL_SAFE_UPDATES = 1;


