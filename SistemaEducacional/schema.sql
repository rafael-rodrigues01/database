-- criação da tabela alunos

CREATE TABLE alunos (
    ra INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    idade INT
);

INSERT INTO alunos (ra, nome, cpf, idade) VALUES
(123456, 'João Silva', '111.222.333-44', 20),
(234567, 'Maria Santos', '222.333.444-55', 22),
(345678, 'Pedro Oliveira', '333.444.555-66', 21),
(456789, 'Ana Souza', '444.555.666-77', 19),
(567890, 'Lucas Pereira', '555.666.777-88', 20),
(678901, 'Juliana Costa', '666.777.888-99', 23),
(789012, 'Marcos Santos', '777.888.999-00', 22),
(890123, 'Carla Oliveira', '888.999.000-11', 21),
(901234, 'Fernanda Lima', '999.000.111-22', 20),
(123789, 'Rafaela Almeida', '000.111.222-33', 24);


-- criação da tabela endereco
CREATE TABLE endereco (
    endereco_id INT PRIMARY KEY,
    ra_aluno INT,
    rua VARCHAR(100),
    numero INT,
    bairro VARCHAR(50),
    estado VARCHAR(50),
    FOREIGN KEY (ra_aluno) REFERENCES alunos(ra)
);

INSERT INTO endereco (endereco_id, ra_aluno, rua, numero, bairro, estado) VALUES
(1, 123456, 'Rua A', 100, 'Centro', 'SP'),
(2, 234567, 'Rua B', 200, 'Vila Nova', 'RJ'),
(3, 345678, 'Rua C', 300, 'Jardim', 'MG'),
(4, 456789, 'Rua D', 400, 'Centro', 'SP'),
(5, 567890, 'Rua E', 500, 'Vila Nova', 'RJ'),
(6, 678901, 'Rua F', 600, 'Jardim', 'MG'),
(7, 789012, 'Rua G', 700, 'Centro', 'SP'),
(8, 890123, 'Rua H', 800, 'Vila Nova', 'RJ'),
(9, 901234, 'Rua I', 900, 'Jardim', 'MG'),
(10, 123789, 'Rua J', 1000, 'Centro', 'SP');

-- criação da tabela contatos

CREATE TABLE contatos (
    telefone_id INT PRIMARY KEY,
    ra_aluno INT,
    numero VARCHAR(20),
    FOREIGN KEY (ra_aluno) REFERENCES alunos(ra)
);

INSERT INTO contatos (telefone_id, ra_aluno, numero) VALUES
(1, 123456, '(30) 9301-2940'),
(2, 234567, '(39) 3940-2940'),
(3, 345678, '(93) 2940-0953'),
(4, 456789, '(49) 1019-2049'),
(5, 567890, '(39) 1469-2092'),
(6, 678901, '(20) 9240-1039'),
(7, 789012, '(13) 2049-2941'),
(8, 890123, '(94) 9310-3932'),
(9, 901234, '(13) 1034-3952'),
(10, 123789, '(25) 3942-3049');

-- criação da tabela cursos

CREATE TABLE cursos (
    curso_id SERIAL PRIMARY KEY,
    ra_aluno INT,
    nome VARCHAR(100),
    FOREIGN KEY (ra_aluno) REFERENCES alunos(ra)
);

INSERT INTO cursos (ra_aluno, nome) VALUES
(123456, 'Engenharia Civil'),
(234567, 'Administração'),
(345678, 'Ciência da Computação'),
(456789, 'Medicina'),
(567890, 'Direito'),
(678901, 'Psicologia'),
(789012, 'Economia'),
(890123, 'Engenharia Elétrica'),
(901234, 'Arquitetura'),
(123789, 'Biologia');


