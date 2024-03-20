CREATE TABLE Funcionarios (
	id_func SERIAL PRIMARY KEY,
	nome_func VARCHAR(100),
	data_admissao DATE 
);

INSERT INTO Funcionarios (nome_func, data_admissao) VALUES
('Ana', '2018-02-10'),
('João', '2019-07-05'),
('Maria', '2020-03-20'),
('Pedro', '2017-09-03'),
('Sofia', '2021-01-15'),
('Carlos', '2016-10-08'),
('Laura', '2018-11-12'),
('Miguel', '2019-04-25'),
('Beatriz', '2022-08-30'),
('Guilherme', '2023-05-07');

SELECT * FROM Funcionarios;

CREATE TABLE Projetos(
	id_projeto SERIAL PRIMARY KEY,
	nome_projeto VARCHAR(250),
	descricao TEXT
);

INSERT INTO Projetos (nome_projeto, descricao) VALUES
('Projeto Renovação', 'Reestruturação de processos para aumentar a eficiência operacional após desafios recentes.'),
('TechBoost', 'Pesquisa e desenvolvimento de novas tecnologias para impulsionar a inovação da empresa.'),
('Expansão Regional', 'Iniciativa para abrir novos mercados e diversificar a base de clientes.'),
('Agilidade Corporativa', 'Implementação de metodologias ágeis para melhorar a colaboração e a entrega de projetos.'),
('Sustentabilidade Verde', 'Projeto focado em reduzir a pegada de carbono e promover práticas eco-friendly.'),
('Modernização de TI', 'Atualização da infraestrutura de TI para fortalecer a segurança e a capacidade de processamento.'),
('Desenvolvimento de Talentos', 'Programa para capacitar e engajar os funcionários, promovendo um ambiente de trabalho de alto desempenho.'),
('Análise de Mercado', 'Identificação de tendências emergentes e oportunidades de negócios.'),
('Melhoria da Comunicação Interna', 'Aperfeiçoamento dos processos de comunicação para uma cultura organizacional mais harmoniosa.'),
('Experiência do Cliente', 'Aprimoramento do atendimento ao cliente para fortalecer os relacionamentos e a fidelidade.')

SELECT * FROM Projetos;

CREATE TABLE Funcionarios_Projetos(
	id_func INT,
	CONSTRAINT fk_func FOREIGN KEY(id_func) REFERENCES Funcionarios(id_func),
	id_projeto INT,
	CONSTRAINT fk_proj FOREIGN KEY(id_projeto) REFERENCES Projetos(id_projeto)
);

SELECT * FROM Funcionarios_Projetos;