# O caso do trio

**Integrantes:** Jonas, Guilherme e Gabriel

**Turma:** —

## Em uma frase

> "Preciso de um diário pessoal para registrar meus jogos, conquistas, feitos,
> metas e planos."

## As entidades

Cada entidade abaixo tem vida própria no diário e será representada por uma
tabela no modelo lógico:

- **JOGADOR:** nome, data de criação.
- **DIARIO:** título, data de criação, jogador responsável.
- **JOGO:** nome, plataforma, gênero.
- **CONQUISTA:** título, descrição, data da conquista, jogo.
- **FEITO:** descrição, data de realização, jogador e jogo relacionado.
- **META:** descrição, data de definição, prazo, status, jogador.
- **PLANO:** descrição, data de criação, prazo, status, jogador.

Um jogador pode ter um diário, e o diário pode registrar vários jogos. O mesmo
jogo pode aparecer em mais de um diário.

## O N:N com atributo próprio

O par muitos-para-muitos é **DIARIO e JOGO**, representado pela tabela
associativa **DIARIO_JOGO**. Os dados que nascem do encontro são
`data_registro`, `horas_jogadas` e `status_no_diario`; eles descrevem o registro
daquele jogo naquele diário, e não o diário ou o jogo isoladamente.

## Tabelas associativas

- **DIARIO_JOGO:** liga `DIARIO` a `JOGO` e guarda os atributos próprios do
  registro.
- Não há uma associativa para CONQUISTA, FEITO, META ou PLANO: cada registro
  pertence diretamente ao jogador e, quando aplicável, ao jogo por meio de uma
  chave estrangeira.
