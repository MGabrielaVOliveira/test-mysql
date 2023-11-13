SELECT 
    c.nome AS 'Nome do Cliente', -- Seleciona o nome do cliente
    c.sobrenome AS 'Sobrenome do Cliente', -- Seleciona o sobrenome do cliente
    casa.cor AS 'Cor da Casa', -- Seleciona a cor da casa do cliente
    bairro.nome AS 'Nome do Bairro', -- Seleciona o nome do bairro do cliente
    carro.modelo AS 'Modelo do Carro' -- Seleciona o modelo do carro do cliente
FROM cliente c -- Tabela principal: cliente
LEFT JOIN casa ON c.id_cliente = casa.fk_cliente -- Junta a tabela casa usando a chave estrangeira fk_cliente
LEFT JOIN bairro ON casa.fk_bairro = bairro.id_bairro -- Junta a tabela bairro usando a chave estrangeira fk_bairro
LEFT JOIN carro ON c.id_cliente = carro.fk_cliente; -- Junta a tabela carro usando a chave estrangeira fk_cliente
