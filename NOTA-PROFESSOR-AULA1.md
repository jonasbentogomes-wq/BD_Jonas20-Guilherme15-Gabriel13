Pessoal, atualizando essa nota porque o Gabriel fechou o frase.md e o logico.md.

Agora as seis entidades têm atributo (DIARIO, JOGOS, CONQUISTAS, FEITOS, METAS, PLANOS), e o logico.md já nomeia as tabelas associativas: DIARIO_JOGOS e JOGOS_FEITOS. Isso é o jeito certo de representar um N:N, dando nome próprio pro cruzamento em vez de deixar ele solto.

Ainda vale a pena vocês revisarem uma coisa no caderno: JOGOS aparece cruzando com DIARIO, com FEITOS e com CONQUISTAS ao mesmo tempo. Confiram se JOGOS de fato precisa de três cruzamentos N:N diferentes, ou se CONQUISTAS e FEITOS são só registros que pertencem a um jogo (1:N), não um N:N de verdade. Isso muda se precisa de tabela associativa ali ou só de uma chave estrangeira direto.

O logico.md.png virou logico.md, arquivo de texto, do jeito certo. E o conceitual.png e o conceitual.drawio já estão no repositório.

Uma coisa separada da nota, mas importante: eu vi que o Guilherme mexeu no repositório e fez merge logo antes do Gabriel reclamar que tinha "alguém mexendo" no código dele. Não é ninguém estragando o trabalho de ninguém, é o jeito errado de dois usarem o mesmo repositório ao mesmo tempo sem avisar um pro outro. Da próxima vez, deem um git pull antes de começar a editar, assim ninguém sobrescreve o que o outro acabou de subir.

Falta pouco: revisar os cruzamentos N:N no caderno e o Jonas ainda não apareceu com conteúdo de verdade, só com commits de incentivo.
