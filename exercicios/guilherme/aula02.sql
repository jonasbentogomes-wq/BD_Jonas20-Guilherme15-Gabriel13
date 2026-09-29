-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1
CREATE TABLE LIVRO (
    id INT PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    ano INT,
    exemplares INT DEFAULT 1 NOT NULL
);

INSERT INTO LIVRO VALUES (1, 'Harry Potter', 'J.K. Rowling', 1997, 5);

INSERT INTO LIVRO (id, titulo, autor, ano) VALUES (2, 'O Hobbit', 'J.R.R. Tolkien', 1937);

SELECT * FROM LIVRO;
-- ex2
CREATE TABLE LEITOR (
    id INT PRIMARY KEY,
    nome TEXT NOT NULL
);

INSERT INTO LEITOR (id, nome) VALUES (1, 'Ana');
INSERT INTO LEITOR (id, nome) VALUES (2, 'Bruno');
INSERT INTO LEITOR (id, nome) VALUES (3, 'Carla');

ALTER TABLE LEITOR ADD telefone TEXT;

SELECT * FROM LEITOR;
-- ex3
CREATE TABLE EMPRESTIMO (
    id INT PRIMARY KEY,
    id_livro INT NOT NULL
);

INSERT INTO EMPRESTIMO (id, id_livro) VALUES (1, 101);
INSERT INTO EMPRESTIMO (id, id_livro) VALUES (2, 102);

ALTER TABLE EMPRESTIMO ADD situacao TEXT NOT NULL DEFAULT 'Ativo';

SELECT * FROM EMPRESTIMO;

-- ex4
CREATE TABLE EDITORA (
    id INT PRIMARY KEY,
    nm TEXT NOT NULL
);

INSERT INTO EDITORA (id, nm) VALUES (1, 'Companhia das Letras');

ALTER TABLE EDITORA RENAME COLUMN nm TO nome;

SELECT * FROM EDITORA;

-- ex5
CREATE TABLE RASCUNHO (
    id INT PRIMARY KEY,
    texto TEXT
);

INSERT INTO RASCUNHO (id, texto) VALUES (1, 'Primeira linha');
INSERT INTO RASCUNHO (id, texto) VALUES (2, 'Segunda linha');
INSERT INTO RASCUNHO (id, texto) VALUES (3, 'Terceira linha');

DELETE FROM RASCUNHO;

SELECT * FROM RASCUNHO;

DROP TABLE RASCUNHO;

-- ex6
CREATE TABLE LIVRO (
    id INT PRIMARY KEY,
    titulo TEXT NOT NULL
);

CREATE TABLE LEITOR (
    id INT PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE EMPRESTIMO (
    id_leitor INT,
    id_livro INT,
    data_saida TEXT,
    data_volta TEXT,
    PRIMARY KEY (id_leitor, id_livro, data_saida),
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id)
);

INSERT INTO LIVRO VALUES (1, 'Harry Potter');
INSERT INTO LEITOR VALUES (1, 'Ana');

INSERT INTO EMPRESTIMO VALUES (1, 1, '2026-10-01', '2026-10-08');

INSERT INTO EMPRESTIMO VALUES (1, 1, '2026-10-05', NULL);