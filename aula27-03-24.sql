SELECT * FROM products;
SELECT * FROM clients;

SELECT clients.firstname, products.productname
FROM clients FULL JOIN products USING (idclient)

-- Exercicios:

-- 1. Quais clientes compraram produtos da categoria eletrônicos?
SELECT clients.firstname, clients.lastname, products.productname, products.category
FROM clients INNER JOIN products USING (idclient) WHERE products.category = 'eletronicos'

-- 2. Quais clientes não compraram nenhum produto?
SELECT clients.firstname, clients.lastname, products.productname
FROM clients LEFT JOIN products USING (idclient) WHERE products.idproduct IS NULL

-- 3. Quais produtos não foram vendidos?
SELECT productname FROM products WHERE idclient IS NULL

SELECT products.productname
FROM clients RIGHT JOIN products USING (idclient)
WHERE clients.firstname IS NULL

-- 4. Quais produtos Rodrigo comprou?
SELECT clients.firstname, products.productname 
FROM clients INNER JOIN products USING (idclient)
WHERE clients.firstname = 'Rodrigo';

-- 5. Quais clientes compraram produtos da marca DELL?
SELECT clients.firstname, products.productname, products.brand
FROM clients INNER JOIN products USING (idclient) WHERE products.brand = 'dell'


-- exemplo feito pelo professor na aula:

SELECT * FROM projetos

INSERT INTO projetos (nome_projeto, descricao) VALUES ('godzilla', 'iguana gigante'),
('ping pong', 'david ruim, Kaun pior ainda' ),
('aapm', 'pague a aapm'),
('biblioteca', 'cadelao'),
('king kong', 'macaco gigante')

SELECT * FROM funcionarios 

INSERT INTO funcionarios (nome_func, data_admissao) VALUES 
('cadelao', '2000-01-01'),
('caina', '2017-10-02'),
('andre', '2013-10-01'),
('gabriel', '2018-10-01');

SELECT * FROM funcionarios_projetos

INSERT INTO funcionarios_projetos VALUES
(1,2),
(2, 1),
(3, 3),
(4, 1), 
(1, 3)

SELECT funcionarios.nome_func, projetos.nome_projeto
FROM (projetos NATURAL INNER JOIN funcionarios_projetos)
INNER JOIN funcionarios USING (id_func)
WHERE projetos.nome_projeto = 'aapm'
