# Modelo lógico

As chaves primárias estão entre `_`; toda coluna marcada como `FK` aponta para
a tabela indicada. Os nomes estão no singular e usam `id_<entidade>`.

## Tabelas

```text
JOGADOR
_id_jogador_ INTEGER PK
nome VARCHAR(120) NOT NULL
data_criacao DATE NOT NULL

DIARIO
_id_diario_ INTEGER PK
titulo VARCHAR(120) NOT NULL
data_criacao DATE NOT NULL
id_jogador INTEGER FK -> JOGADOR.id_jogador NOT NULL UNIQUE

JOGO
_id_jogo_ INTEGER PK
nome VARCHAR(120) NOT NULL
plataforma VARCHAR(60) NOT NULL
genero VARCHAR(60)

DIARIO_JOGO
_id_diario_ INTEGER PK, FK -> DIARIO.id_diario
_id_jogo_ INTEGER PK, FK -> JOGO.id_jogo
data_registro DATE NOT NULL
horas_jogadas DECIMAL(6,2) NOT NULL
status_no_diario VARCHAR(30) NOT NULL

CONQUISTA
_id_conquista_ INTEGER PK
titulo VARCHAR(120) NOT NULL
descricao VARCHAR(255)
data_conquista DATE
id_jogo INTEGER FK -> JOGO.id_jogo NOT NULL
id_jogador INTEGER FK -> JOGADOR.id_jogador NOT NULL

FEITO
_id_feito_ INTEGER PK
descricao VARCHAR(255) NOT NULL
data_realizacao DATE NOT NULL
id_jogador INTEGER FK -> JOGADOR.id_jogador NOT NULL
id_jogo INTEGER FK -> JOGO.id_jogo

META
_id_meta_ INTEGER PK
descricao VARCHAR(255) NOT NULL
data_definicao DATE NOT NULL
prazo DATE
status VARCHAR(30) NOT NULL
id_jogador INTEGER FK -> JOGADOR.id_jogador NOT NULL

PLANO
_id_plano_ INTEGER PK
descricao VARCHAR(255) NOT NULL
data_criacao DATE NOT NULL
prazo DATE
status VARCHAR(30) NOT NULL
id_jogador INTEGER FK -> JOGADOR.id_jogador NOT NULL
```

`DIARIO_JOGO` tem chave primária composta por `id_diario` e `id_jogo`. Ela é a
associativa do N:N e seus três últimos campos são atributos próprios do
registro do jogo no diário.

## Relacionamentos

- `JOGADOR 1:1 DIARIO` (a restrição `UNIQUE` em `DIARIO.id_jogador` registra
  que, neste caso, cada jogador mantém um único diário).
- `DIARIO N:N JOGO` por `DIARIO_JOGO`.
- `JOGO 1:N CONQUISTA`.
- `JOGADOR 1:N CONQUISTA`, `FEITO`, `META` e `PLANO`.
- `JOGO 1:N FEITO` quando o feito estiver relacionado a um jogo; a FK pode ser
  nula para feitos pessoais.
