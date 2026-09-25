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
       ADD Situacao TEXT NOT NULL DEFAULT 'Ativo';


-- ex4

CREATE TABLE Editora(

    ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Nm VARCHAR(50) NOT NULL
);

INSERT INTO Editora(Nm)
VALUES ('Record');

ALTER TABLE Editora
RENAME COLUMN Nm to Nome;

-- ex5

CREATE TABLE Rascunho(

    ID INT AUTO_INCREMENT PRIMARY KEY,
    Texto TEXT
);

INSERT INTO Rascunho(Texto)
VALUES ('Oi eu sou o Gabriel e gosto muito de programar!'),
       ('Deus é a minha rocha!'),
       ('jesus me salvou e te salvou também! Ele te ama muito!');
       TRUNCATE TABLE Rascunho;
       SELECT * FROM Rascunho;
       DROP TABLE Rascunho;

-- ex6

CREATE TABLE Livro(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Titulo VARCHAR (50) NOT NULL
);

CREATE TABLE Leitor(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR (60) NOT NULL
);

CREATE TABLE Emprestimo(
    ID_Livro INT,
    ID_Leitor INT,
    Data_saida DATE NOT NULL,
    Data_volta DATE,
    PRIMARY KEY (ID_Livro, ID_Leitor, Data_saida),
    FOREIGN KEY (ID_Livro) REFERENCES Livro(ID),
    FOREIGN KEY (ID_Leitor) REFERENCES Leitor(ID)

);

INSERT INTO Livro (Titulo)
VALUES ('A iliáde em quadrinhos'),
       ('Harry Potter e a pedra filosofal');

INSERT INTO Leitor (Nome)
VALUES ('Gabriel'),
       ('Jonas');


INSERT INTO Emprestimo (ID_Livro, ID_Leitor, Data_saida)
VALUES (1, 1, '2026-09-22'),
       (1, 1, '2026-09-24');

       --Comentário: Um INSERT que minha chave primária deveria recusar seria se eu tentasse colocar ali no
       --INSERT INTO Emprestimo a mesma pessoa, o mesmo livro, e a mesma data, já que o banco vai bloquear porque ele acha que é o mesmo dado,
       --se eu colocasse horas e minutos, daí poderia colocar no mesmo dia, mas como está informando só o dia não pode.

