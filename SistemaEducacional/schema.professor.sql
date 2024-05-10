--DDL
--Criando a tabela alunos

CREATE TABLE alunos (
	cpf int primary key,
	nome varchar(50) not null,
	idade int,
	rua text,
	numero varchar(10),
	bairro varchar(20),
	cidade varchar(20),
	estado varchar(20),
	cep int,
	pais varchar(20)
);

ALTER TABLE alunos ALTER COLUMN cpf TYPE varchar(15)

CREATE TABLE telefones (
	cpf varchar(15) REFERENCES alunos,
	ddd int,
	numero int,
	cod_pais int
);

CREATE TABLE emails (
	cpf varchar(15) REFERENCES alunos,
	email varchar(50),
	dominio varchar(20)
);

ALTER TABLE emails ALTER COLUMN email TYPE varchar(64)

CREATE TABLE departamentos (
 	id_dpto serial PRIMARY KEY,
	sigla_dpto varchar(4),
	nome_dpto varchar(10)
);

CREATE TABLE cursos (
 	id_curso serial PRIMARY KEY,
	nome_curso varchar(10),
	id_dpto serial REFERENCES departamentos
);


CREATE TABLE matriculas (
	ra serial PRIMARY KEY,
	cpf varchar(15) REFERENCES alunos,
	status varchar(10),
	id_curso int REFERENCES cursos
);

CREATE TABLE disciplinas (
 	id_disciplina serial PRIMARY KEY,
	nome_disciplina varchar(10),
	optativa boolean
);

CREATE TABLE cursos_disciplinas (
 	id_curso serial REFERENCES cursos,
	id_disciplina serial REFERENCES disciplinas
);

CREATE TABLE matriculas_disciplinas (
	ra serial REFERENCES matriculas,
	id_disciplina serial REFERENCES disciplinas
);

--DML

-- Inserir 10 registros aleatórios na tabela de alunos
INSERT INTO alunos (cpf, nome, idade, rua, numero, bairro, cidade, estado, cep, pais)
VALUES
    (12345678901, 'João Silva', 25, 'Rua A', '123', 'Centro', 'São Paulo', 'SP', 12345678, 'Brasil'),
    (98765432109, 'Maria Santos', 22, 'Rua B', '456', 'Jardim', 'Rio de Janeiro', 'RJ', 87654321, 'Brasil'),
    (23456789012, 'Pedro Oliveira', 30, 'Rua C', '789', 'Centro', 'Belo Horizonte', 'MG', 34567890, 'Brasil'),
    (87654321098, 'Ana Pereira', 28, 'Rua D', '1011', 'Barra', 'Salvador', 'BA', 90123456, 'Brasil'),
    (34567890123, 'Lucas Santos', 21, 'Rua E', '1213', 'Centro', 'Curitiba', 'PR', 23456789, 'Brasil'),
    (12345678902, 'Marcos Silva', 29, 'Rua F', '1415', 'Liberdade', 'São Paulo', 'SP', 54321678, 'Brasil'),
    (98765432108, 'Juliana Oliveira', 27, 'Rua G', '1617', 'Copacabana', 'Rio de Janeiro', 'RJ', 87654321, 'Brasil'),
    (23456789013, 'Fernanda Costa', 24, 'Rua H', '1819', 'Centro', 'Porto Alegre', 'RS', 98765432, 'Brasil'),
    (87654321097, 'Rafael Souza', 26, 'Rua I', '2021', 'Barra', 'Salvador', 'BA', 12345678, 'Brasil'),
    (34567890124, 'Amanda Ferreira', 23, 'Rua J', '2223', 'Centro', 'Brasília', 'DF', 34567890, 'Brasil');


INSERT INTO departamentos(sigla_dpto, nome_dpto) VALUES 
    ('SAUD', 'SAUDE'),
    ('TECN', 'TECNOLOGIA'),
    ('ENGE', 'ENGENHARIA'),
    ('HUMA', 'HUMANAS');
	
ALTER TABLE cursos ALTER COLUMN nome_curso TYPE varchar(50)

INSERT INTO cursos (nome_curso, id_dpto) VALUES
('Medicina', 1),
('Enfermagem', 1),
('Nutrição', 1),
('Ciência da Computação', 2),
('Engenharia de Software', 2),
('Inteligência Artificial', 2),
('Engenharia Civil', 3),
('Engenharia Elétrica', 3),
('Engenharia Mecânica', 3),
('Psicologia', 4),
('História', 4),
('Sociologia', 4);

INSERT INTO matriculas (cpf,status,id_curso) VALUES
('12345678901', 'ativo', 1),
('98765432109', 'inativo', 1),
('23456789012', 'formado',3),
('87654321098', 'ativo',5),
('34567890123', 'inativo',5),
('12345678902', 'formado',7),
('98765432108', 'ativo',12),
('23456789013', 'formado',7),
('87654321097', 'inativo',10),
('34567890124', 'formado',10),
('34567890124', 'ativo',11),
('98765432108', 'formado',2);

INSERT INTO matriculas (cpf,status,id_curso) VALUES
('12345678901', 'ativo', 1),
('98765432109', 'inativo', 1),
('23456789012', 'formado',3),
('87654321098', 'ativo',5),
('34567890123', 'inativo',5),
('12345678902', 'formado',7),
('98765432108', 'ativo',12),
('23456789013', 'formado',7),
('87654321097', 'inativo',10),
('34567890124', 'formado',10),
('34567890124', 'ativo',11),
('98765432108', 'formado',2);

select * from matriculas

ALTER TABLE disciplinas ALTER COLUMN nome_disciplina TYPE varchar(50)

INSERT INTO disciplinas (nome_disciplina, optativa) VALUES
('Banco de Dados', false),
('Linguagem de programação', false),
('Bioquimica', false),
('Citologia', false),
('Etica e cidadania', false),
('Calculo IV', false),
('Leis Trabalhistas', false),
('Libras', false),
('Estrutura de dados', false),
('Linguagens', false),
('Literatura', false),
('Quimica organica', false),
('Hematologia', false),
('Arquitetura de Computadores', false),
('Ensaios Mecanicos', false),
('Metrologia', false)

// falta enserir os dados na tabela emails

INSERT INTO emails VALUES
('12345678901', 'aaaa', '@gmail.com'),
('98765432109', 'dddd', '@hotmail.com'),
('23456789012', 'ffff', '@yahoo.com'),
('87654321098', 'eeee', '@gmail.com'),
('34567890123', 'hhhh', '@hotmail.com'),
('12345678902', 'iiii', '@gmail.com'),
('98765432108', 'llll', '@yahoo.com'),
('23456789013', 'bbbb', '@gmail.com'),
('87654321097', 'mmmm', '@gmail.com'),
('34567890124', 'nnnn', '@gmail.com'),
('34567890124', 'oooo', '@gmail.com'),
('98765432108', 'zzzz', '@gmail.com')

INSERT INTO telefones VALUES (
  
)











