CREATE TABLE departamentos (
    id_depto SERIAL PRIMARY KEY,
    nome_depto VARCHAR(100)
);

INSERT INTO departamentos (nome_depto) VALUES
    ('Vendas'),
    ('RH'),
    ('Marketing'),
    ('TI'),
    ('Financeiro'),
    ('Produção'),
    ('Logística'),
    ('Jurídico'),
    ('Compras'),
    ('Administração');
	
	CREATE TABLE funcionarios (
    id_func SERIAL PRIMARY KEY,
    id_depto INT,
    nome_func VARCHAR(100),
    data_adm DATE,
    cargo VARCHAR(100),
    FOREIGN KEY (id_depto) REFERENCES departamentos(id_depto)
);

INSERT INTO funcionarios (id_depto, nome_func, data_adm, cargo)
VALUES
    (1, 'João Silva', '2020-01-15', 'Analista de Vendas'),
    (2, 'Maria Santos', '2019-03-20', 'Analista de RH'),
    (3, 'Carlos Oliveira', '2021-07-10', 'Especialista em Marketing'),
    (4, 'Ana Rodrigues', '2020-05-12', 'Analista de TI'),
    (5, 'Pedro Souza', '2018-11-25', 'Analista Financeiro'),
    (6, 'Mariana Pereira', '2019-09-05', 'Supervisor de Produção'),
    (7, 'Lucas Costa', '2022-02-18', 'Coordenador de Logística'),
    (8, 'Fernanda Almeida', '2021-01-30', 'Advogado'),
    (9, 'Gustavo Ferreira', '2019-12-08', 'Analista de Compras'),
    (10, 'Camila Gonçalves', '2020-10-03', 'Gerente Administrativo');

