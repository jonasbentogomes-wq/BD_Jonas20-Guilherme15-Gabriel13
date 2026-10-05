-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1
CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL,
    autor TEXT NOT NULL,
    ano INTEGER,
    exemplares INTEGER NOT NULL DEFAULT 1
);

INSERT INTO LIVRO (id, titulo, autor, ano, exemplares) 
VALUES (1, 'O Hobbit', 'J.R.R. Tolkien', 1937, 5);

INSERT INTO LIVRO (titulo, autor, ano) 
VALUES ('Dom Casmurro', 'Machado de Assis', 1899);

-- ex2
CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

INSERT INTO LEITOR (nome) VALUES ('Ana Silva');
INSERT INTO LEITOR (nome) VALUES ('Bruno Costa');
INSERT INTO LEITOR (nome) VALUES ('Carla Souza');

ALTER TABLE LEITOR ADD COLUMN telefone TEXT;

SELECT * FROM LEITOR;

-- ex3
CREATE TABLE EMPRESTIMO (
    id INTEGER PRIMARY KEY,
    id_livro INTEGER NOT NULL
);

INSERT INTO EMPRESTIMO (id_livro) VALUES (101);
INSERT INTO EMPRESTIMO (id_livro) VALUES (102);


ALTER TABLE EMPRESTIMO ADD COLUMN situacao TEXT NOT NULL DEFAULT 'Ativo';

-- ex4
CREATE TABLE EDITORA (
    id INTEGER PRIMARY KEY,
    nm TEXT
);

INSERT INTO EDITORA (nm) VALUES ('Companhia das Letras');

ALTER TABLE EDITORA RENAME COLUMN nm TO nome;


-- ex5
CREATE TABLE RASCUNHO (
    id INTEGER PRIMARY KEY,
    texto TEXT
);

INSERT INTO RASCUNHO (texto) VALUES ('Rascunho 1'), ('Rascunho 2'), ('Rascunho 3');


DELETE FROM RASCUNHO;


SELECT * FROM RASCUNHO;


DROP TABLE RASCUNHO;

-- ex6
CREATE TABLE LIVRO (
    id INTEGER PRIMARY KEY,
    titulo TEXT NOT NULL
);

CREATE TABLE LEITOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE EMPRESTIMO (
    id_leitor INTEGER NOT NULL,
    id_livro INTEGER NOT NULL,
    data_saida TEXT NOT NULL, 
    data_volta TEXT,
    FOREIGN KEY (id_leitor) REFERENCES LEITOR(id),
    FOREIGN KEY (id_livro) REFERENCES LIVRO(id),
    PRIMARY KEY (id_leitor, id_livro, data_saida) 
);


INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida) VALUES (1, 10, '2026-10-01');
INSERT INTO EMPRESTIMO (id_leitor, id_livro, data_saida) VALUES (1, 10, '2026-10-05'); 