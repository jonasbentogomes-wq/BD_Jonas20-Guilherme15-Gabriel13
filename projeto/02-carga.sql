-- Projeto - 02 - Carga
-- Dono:
--
-- Enche as tabelas criadas pelo 01-ddl.sql.
-- Ordem importa: quem tem chave estrangeira entra depois de quem ela aponta.




insert into JOGADOR (id_jogador, nome_jogador, datacricao) values (1, 'nome', date); --nome e date dos valores é quando o usuario colocar seu nome e a data da criacao

insert into DIARIO (id_diario, titulo, idjogador, datacriacao) values (2, 'titulo', 1, date); --o titulo vai ser colocado pelo usuario e o date a data quando ele preencher

insert into JOGO (id_jogo, nome_jogo, plataforma, genero) values (3, 'nome_jogo', 'plataforma', 'genero'); -- mesmo procesor o usuario vai colocar 

insert into DIARIOJOGO (id_diario, id_jogo, data_rgistro, horas_jogadas, status_diario) values (2, 3, date, time, boolean);

insert into CONQUISTA (id_conquista, titulo, data_conquista, id_jogo, id_jogador) values (4, 'titulo', date, 3, 1); -- mesmo processo o titulo o usuario que vai colocar o valor então não vou inserir nada

insert into FEITO (id_feito, descricao, data_realizacao, id_jogador, id_jogo) values (5, 'descricao', date, 1, 3); --descricao o jogador que vai colocar

insert into META (id_meta, descricao, data_definicao, prazo, status_meta, id_jogador) values (6, 'descricao', date, time, boolean, 1); -- mesma coisa do que ja havia falado 

insert into PLANO (id_plano, descricao, data_criacao, prazo, status_plano, id_jogador) values (7, 'descricao', date, time, boolean, 1); --Aqui encerrou, mas vou arumar algumas coisa futuramente 
