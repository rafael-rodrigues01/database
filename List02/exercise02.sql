CREATE TABLE alunos (
    matricula SERIAL PRIMARY KEY,
    nome_aluno VARCHAR(100),
    data_nascimento DATE
);

INSERT INTO alunos (nome_aluno, data_nascimento) VALUES
('João da Silva', '1998-05-15'),
('Maria Oliveira', '2000-10-22'),
('Pedro Santos', '1999-03-07'),
('Ana Costa', '2001-07-18'),
('Carlos Pereira', '1997-11-30'),
('Mariana Fernandes', '2002-02-14'),
('José Almeida', '1996-09-25'),
('Sara Martins', '2003-04-09'),
('Luiza Silva', '1998-12-12'),
('Paulo Rodrigues', '2000-06-28');

CREATE TABLE cursos (
    id_curso SERIAL PRIMARY KEY,
    nome_curso VARCHAR(100)
);

INSERT INTO cursos (nome_curso) VALUES
('Engenharia Civil'),
('Ciência da Computação'),
('Administração de Empresas'),
('Medicina'),
('Direito'),
('Arquitetura e Urbanismo'),
('Psicologia'),
('Economia'),
('Design Gráfico'),
('Nutrição');

CREATE TABLE turmas (
    cod_turma SERIAL PRIMARY KEY,
    id_curso INTEGER REFERENCES cursos(id_curso),
    prof_resp VARCHAR(100)
);

INSERT INTO turmas (id_curso, prof_resp) VALUES
(1, 'João da Silva'),
(2, 'Maria Oliveira'),
(3, 'Pedro Santos'),
(4, 'Ana Costa'),
(5, 'Carlos Pereira'),
(1, 'Mariana Fernandes'),
(2, 'José Almeida'),
(3, 'Sara Martins'),
(4, 'Luiza Silva'),
(5, 'Paulo Rodrigues');