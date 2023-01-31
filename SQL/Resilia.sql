CREATE DATABASE resilia;

USE resilia;

-- Criando tabela de cursos
CREATE TABLE cursos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  descricao TEXT NOT NULL,
  carga_horaria INT NOT NULL
);

-- Criando tabela de turmas
CREATE TABLE turmas (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  id_curso INT NOT NULL,
  inicio DATE NOT NULL,
  termino DATE NOT NULL,
  FOREIGN KEY (id_curso) REFERENCES cursos(id)
);

-- Criando tabela de alunos
CREATE TABLE alunos (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  id_turma INT NOT NULL,
  FOREIGN KEY (id_turma) REFERENCES turmas(id)
);

-- Adicionando dados de exemplo à tabela de cursos
INSERT INTO cursos (nome, descricao, carga_horaria) 
VALUES 
("Curso de Desenvolvimento Web", "Aprenda a desenvolver aplicações web", 40),
("Curso de Banco de Dados", "Aprenda a modelar e gerenciar bancos de dados", 30);

-- Adicionando dados de exemplo à tabela de turmas
INSERT INTO turmas (nome, id_curso, inicio, termino) 
VALUES 
("Turma 1 - Desenvolvimento Web", 1, "2023-02-01", "2023-03-01"),
("Turma 2 - Banco de Dados", 2, "2023-03-01", "2023-04-01");

-- Adicionando dados de exemplo à tabela de alunos
INSERT INTO alunos (nome, email, id_turma) 
VALUES 
("João da Silva", "joao@email.com", 1),
("Maria da Silva", "maria@email.com", 2);
