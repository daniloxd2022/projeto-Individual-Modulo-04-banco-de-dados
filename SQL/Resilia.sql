CREATE DATABASE resilia
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;
USE resilia;


CREATE TABLE alunos (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
cpf VARCHAR(14),
sexo CHAR(1),
contato VARCHAR(22),
cep VARCHAR(8),
email VARCHAR(100),
nascimento DATE,
PRIMARY KEY(id)
);

CREATE TABLE professores (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
cpf VARCHAR(14),
sexo CHAR(1),
contato VARCHAR(22),
cep VARCHAR(8),
email VARCHAR(100),
nascimento DATE,
PRIMARY KEY(id)
);

CREATE TABLE turmas (
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
turno VARCHAR(6),
numero_de_alunos INT,
aluno_id BIGINT,
professor_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(aluno_id) REFERENCES alunos(id),
FOREIGN KEY(professor_id) REFERENCES professores(id)
);

CREATE TABLE cursos(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
descricao TEXT,
data_comeco DATE,
data_termino DATE,
turmas_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(turmas_id) REFERENCES turmas(id)
);

CREATE TABLE unidades(
id BIGINT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100),
cep VARCHAR(8),
cursos_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY(cursos_id) REFERENCES cursos(id)
);

INSERT INTO alunos (nome, cpf, sexo, contato, cep, email, nascimento)
VALUES
('Peter Parker', '111.222.333-45', 'M', '11 11111-2222', '11122233', 'peterparker@email.com', '2000-05-05'),
('Mary Jane', '2223334444555', 'F', '22 22222-3333', '22233344', 'maryjane@email.com', '1999-07-07');

INSERT INTO professores (nome, cpf, sexo, contato, cep, email, nascimento)
VALUES
('Dr. Strange', '333.444.555-66', 'M', '33 33333-4444', '33344455', 'drstrange@email.com', '1969-12-13'),
('Prof. X', '4445556666777', 'M', '44 44444-5555', '44455566', 'profx@email.com', '1960-07-14');

INSERT INTO turmas (nome, turno, numero_de_alunos, aluno_id, professor_id)
VALUES
('Class A', 'evening', 15, 1, 2),
('Class B', 'morning', 25, 2, 1);

INSERT INTO cursos (nome, descricao, data_comeco, data_termino, turmas_id)
VALUES
('History 101', 'Intro to History', '2022-03-01', '2022-11-30', 1),
('English 102', 'Intro to English', '2022-04-01', '2022-08-31', 2);

INSERT INTO unidades (nome, cep, cursos_id)
VALUES
('Campus C', '22233344', 1),
('Campus D', '44455566', 2);


