DIARIO (data_registro, titulo, conteudo, humor_dia, id_diario -> DIARIO_JOGOS -> JOGOS)
JOGOS (nome, plataforma, genero, horas_jogadas, status_zero -> DIARIO_JOGOS -> DIARIO)

DIARIO (data_registro, titulo, conteudo, humor_dia, id_diario -> PLANOS)
PLANOS (descricao, meta_data, status, prioridade -> DIARIO)

JOGOS (nome, plataforma, genero, horas_jogadas, status_zero -> JOGOS_FEITOS -> FEITOS)
FEITOS (titulo_feito, descricao, categoria, id_feito -> JOGOS_FEITOS -> JOGOS)

JOGOS (nome, plataforma, genero, horas_jogadas, status_zero -> CONQUISTAS)
CONQUISTAS (nome, descricao, raridade, desbloqueio, id_conquista, id_jogos -> JOGOS)