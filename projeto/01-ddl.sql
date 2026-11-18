-- Projeto - 01 - DDL
-- Dono:
--
-- Cria as tabelas do caso do trio, vazias.
-- Roda num banco em branco: nada pode depender de tabela criada fora daqui.
-- Minimo 4 tabelas, e uma associativa com atributo proprio.

CREATE TABLE JOGADOR (
id_jogador INTEGER PRIMARY KEY,
nome TEXT NOT NULL,
data_criacao DATE NOT NULL
);

CREATE TABLE DIARIO (
id_diario INTEGER PRIMARY KEY,
titulo TEXT NOT NULL,
data_criacao DATE NOT NULL,
id_jogador INTEGER UNIQUE NOT NULL,
FOREIGN KEY (id_jogador) REFERENCES JOGADOR(id_jogador)
);

CREATE TABLE JOGO (
id_jogo INTEGER PRIMARY KEY,
nome TEXT NOT NULL,
plataforma TEXT NOT NULL,
genero TEXT
);

CREATE TABLE DIARIO_JOGO (
id_diario INTEGER,
id_jogo INTEGER,
data_registro DATE NOT NULL,
horas_jogadas REAL NOT NULL,
status_no_diario TEXT NOT NULL,
PRIMARY KEY (id_diario, id_jogo),
FOREIGN KEY (id_diario) REFERENCES DIARIO(id_diario),
FOREIGN KEY (id_jogo) REFERENCES JOGO(id_jogo)
);

CREATE TABLE CONQUISTA (
id_conquista INTEGER PRIMARY KEY,
titulo TEXT NOT NULL,
descricao TEXT,
data_conquista DATE,
id_jogo INTEGER NOT NULL,
id_jogador INTEGER NOT NULL,
FOREIGN KEY (id_jogo) REFERENCES JOGO(id_jogo),
FOREIGN KEY (id_jogador) REFERENCES JOGADOR(id_jogador)
);

CREATE TABLE FEITO (
id_feito INTEGER PRIMARY KEY,
descricao TEXT NOT NULL,
data_realizacao DATE NOT NULL,
id_jogador INTEGER NOT NULL,
id_jogo INTEGER,
FOREIGN KEY (id_jogador) REFERENCES JOGADOR(id_jogador),
FOREIGN KEY (id_jogo) REFERENCES JOGO(id_jogo)
);

CREATE TABLE META (
id_meta INTEGER PRIMARY KEY,
descricao TEXT NOT NULL,
data_definicao DATE NOT NULL,
prazo DATE,
status TEXT NOT NULL,
id_jogador INTEGER NOT NULL,
FOREIGN KEY (id_jogador) REFERENCES JOGADOR(id_jogador)
);

CREATE TABLE PLANO (
id_plano INTEGER PRIMARY KEY,
descricao TEXT NOT NULL,
data_criacao DATE NOT NULL,
prazo DATE,
status TEXT NOT NULL,
id_jogador INTEGER NOT NULL,
FOREIGN KEY (id_jogador) REFERENCES JOGADOR(id_jogador)
);