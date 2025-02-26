CREATE DATABASE sistema_escolar;

CREATE TABLE Professores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(100)
);

CREATE TABLE Disciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    carga_horaria INT,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);

CREATE TABLE Alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Matriculas (
    id SERIAL PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id)
);

INSERT INTO Professores (nome, departamento) VALUES
('Maria Silva', 'Matemática'),
('João Souza', 'História');

INSERT INTO Disciplinas (nome, carga_horaria, professor_id) VALUES
('Álgebra', 60, 1),
('História do Brasil', 45, 2);

INSERT INTO Alunos (nome, data_nascimento) VALUES
('Ana Paula', '2005-06-15'),
('Carlos Eduardo', '2004-10-22');

INSERT INTO Matriculas (aluno_id, disciplina_id, data_matricula) VALUES
(1, 1, '2025-01-10'),
(2, 2, '2025-01-10');
