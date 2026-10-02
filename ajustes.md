# Ajustes da primeira entrega

Pessoal, aqui é o professor Diego. Revisei a Aula 01 do trio Jonas, Guilherme
e Gabriel mantendo a intenção do caso: um diário pessoal para registrar jogos,
conquistas, feitos, metas e planos.

## O que estava errado

1. `frase.md` usava `DIARIO`, `JOGOS`, `CONQUISTAS`, `FEITOS`, `METAS` e
   `PLANOS`, enquanto o diagrama misturava `DIÁRIO`, `JOGO` e atributos
   repetidos. A descrição, o diagrama e o lógico não eram o mesmo modelo.
2. `logico.md` não marcava PKs e FKs de modo verificável e deixava relações
   soltas, como `DIARIO_JOGOS` e `JOGOS_FEITOS`, sem tabelas e atributos
   definidos.
3. O caso precisava de no mínimo quatro tabelas e de um N:N com atributo
   próprio. O cruzamento entre diário e jogo não tinha a associativa completa,
   nem deixava claro onde ficavam data, horas e status do registro.
4. Os nomes no plural (`JOGOS`, `CONQUISTAS`, `FEITOS`, `METAS`, `PLANOS`) e
   `DIARIO/JOGADOR` estavam inconsistentes com as FKs e dificultavam a defesa.

## O que foi decidido

- A nomenclatura única passou a ser singular: `JOGADOR`, `DIARIO`, `JOGO`,
  `CONQUISTA`, `FEITO`, `META` e `PLANO`.
- `DIARIO_JOGO` é a única tabela associativa do N:N. Ela tem chave composta
  (`id_diario`, `id_jogo`) e os atributos próprios `data_registro`,
  `horas_jogadas` e `status_no_diario`.
- `DIARIO` aponta para `JOGADOR`; conquistas, feitos, metas e planos apontam
  para o jogador. Conquista aponta obrigatoriamente para jogo, e feito pode
  apontar opcionalmente para jogo.
- O diagrama conceitual foi refeito para mostrar exatamente as mesmas tabelas,
  campos e relacionamentos descritos em `logico.md`.

## Como o check valida

O `python conferir.py` continua conferindo somente os SQL individuais de
`exercicios/jonas`, `exercicios/guilherme` e `exercicios/gabriel`; essas três
pastas e seus exercícios não foram alterados nesta tarefa. A validação desta
Aula 01 também deve confirmar que `modelo/conceitual.drawio` é XML bem formado,
que `modelo/conceitual.png` é um PNG válido e que `git diff --check` não acusa
espaços ou finais de linha inválidos. A leitura conjunta de `frase.md`,
`logico.md` e do diagrama confirma os nomes, as oito tabelas e as PKs/FKs.
