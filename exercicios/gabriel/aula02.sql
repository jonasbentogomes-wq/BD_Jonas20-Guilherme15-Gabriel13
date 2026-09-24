-- Aula 02 - Criando as tabelas
-- Enunciado: exercicios/enunciados/aula02-ddl.md
--
-- Escreva a resposta de cada exercicio embaixo do marcador dele.
-- Nao apague os marcadores, nao troque a ordem.
-- Cada bloco roda num banco em branco: crie o que voce for usar.

-- ex1

CREATE TABLE Livro(

ID INT AUTO_INCREMENT PRIMARY KEY,
Titulo TEXT NOT NULL,
Autor TEXT NOT NULL,
Ano INT,
Exemplares INT NOT NULL DEFAULT 1

);

INSERT INTO Livro (Titulo, Autor, Ano, Exemplares)
VALUES ('O arqueiro', 'Bernard Cornwell', 2011, 1),
       ('O herege', 'Bernard Cornwell', 2010, 1);

-- ex2 

CREATE TABLE Leitor(

ID INT AUTO_INCREMENT PRIMARY KEY,
Nome TEXT NOT NULL

);

INSERT INTO Leitor (Nome)
VALUES ('Gabriel'),
       ('Conrado'),
       ('João');

       ALTER TABLE Leitor
       ADD Telefone VARCHAR(20);

       SELECT * FROM Leitor;


-- ex3

CREATE TABLE Emprestimo(

    ID INT AUTO_INCREMENT PRIMARY KEY,
    Id_livro INT NOT NULL

);

INSERT INTO Emprestimo (Id_livro)
VALUES (1),
       (2);

       ALTER TABLE Emprestimo
       ADD Situacao TEXT NOT NULL DEFAULT 'Ativo'


-- ex4


-- ex5


-- ex6
