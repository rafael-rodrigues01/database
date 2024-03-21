CREATE TABLE pacientes (
    id_paciente SERIAL PRIMARY KEY,
    nome_paciente VARCHAR(100),
    data_nascimento DATE
);

INSERT INTO pacientes (nome_paciente, data_nascimento) VALUES
('João da Silva', '1990-05-15'),
('Maria Oliveira', '1985-10-22'),
('Pedro Santos', '1978-03-07'),
('Ana Costa', '2000-07-18'),
('Carlos Pereira', '1965-11-30'),
('Mariana Fernandes', '1972-02-14'),
('José Almeida', '1988-09-25'),
('Sara Martins', '1995-04-09'),
('Luiza Silva', '1982-12-12'),
('Paulo Rodrigues', '1998-06-28');

CREATE TABLE medicos (
    id_medico SERIAL PRIMARY KEY,
    nome_medico VARCHAR(100),
    especialidade VARCHAR(100)
);

INSERT INTO medicos (nome_medico, especialidade) VALUES
('Dr. João Silva', 'Cardiologia'),
('Dra. Maria Oliveira', 'Ortopedia'),
('Dr. Pedro Santos', 'Pediatria'),
('Dra. Ana Costa', 'Ginecologia'),
('Dr. Carlos Pereira', 'Dermatologia'),
('Dra. Mariana Fernandes', 'Neurologia'),
('Dr. José Almeida', 'Oftalmologia'),
('Dra. Sara Martins', 'Psiquiatria'),
('Dr. Luiz Silva', 'Endocrinologia'),
('Dra. Paula Rodrigues', 'Clínica Geral');

CREATE TABLE registros (
    id_registro SERIAL PRIMARY KEY,
    id_paciente INTEGER REFERENCES pacientes(id_paciente),
    id_medico INTEGER REFERENCES medicos(id_medico),
    data DATE
);

INSERT INTO registros (id_paciente, id_medico, data) VALUES
(1, 1, '2023-05-15'),
(2, 2, '2023-10-22'),
(7, 1, '2023-03-07'),
(1, 4, '2023-07-18'),
(5, 5, '2023-11-30'),
(6, 3, '2023-02-14'),
(8, 7, '2023-09-25'),
(8, 8, '2023-04-09'),
(9, 9, '2023-12-12'),
(10, 10, '2023-06-28');