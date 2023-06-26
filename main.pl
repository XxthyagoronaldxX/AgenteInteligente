% ADICIONAR SKILL DO RAMON DATA E HORA
% LISTAR OBJETOS ATIVOS JAIME
% FIX: ARRUMAR SKILL GAMER

% ANDARID - ANDAR - DISPLAY
andar(1, "Andar 1").

% COMODOID - COMODO - ANDARID
comodo(1, "Quarto 1", 1).
comodo(2, "Quarto 2", 1).
comodo(3, "Quarto 3", 1).
comodo(4, "Banheiro", 1).
comodo(5, "Cozinha", 1).
comodo(6, "Varanda", 1).
comodo(7, "Corredor", 1).
comodo(8, "Sala", 1).

% OBJETOID - OBJETO
objeto(1, "Lampada").
objeto(2, "Tv").
objeto(3, "Arcodicionado").
objeto(4, "Cortina Inteligente").
objeto(5, "Computador").
objeto(6, "Aparelho de som").
objeto(7, "Fechadura de porta").
objeto(8, "Janela").
objeto(9, "Videogame").

% OBJETO - ESTADO - COMODOID
:- dynamic estado/3.	
estado(1, ligado, 1).
estado(1, ligado, 2).
estado(1, ligado, 3).
estado(1, ligado, 4).
estado(1, ligado, 5).
estado(1, ligado, 8).
estado(1, ligado, 7).
estado(1, ligado, 6).
estado(2, ligado, 8).
estado(2, ligado, 2).
estado(3, ligado, 1).
estado(3, ligado, 2).
estado(3, ligado, 3).
estado(4, aberto, 1).
estado(4, aberto, 2).
estado(4, aberto, 3).
estado(5, ligado, 1).
estado(5, ligado, 2).
estado(5, ligado, 3).
estado(6, ligado, 1).
estado(6, ligado, 8).
estado(7, trancado, 8).
estado(8, trancado, 1).
estado(8, trancado, 2).
estado(8, trancado, 3).
estado(8, trancado, 8).
estado(8, trancado, 5).
estado(9, ligado, 1).

% MODOID - DISPLAY
:- dynamic skill_mode_type/2.
skill_mode_type(1, "Fora de casa").
skill_mode_type(2, "Dormir").
skill_mode_type(3, "Gamer").

% MODOID - OBJETO - NOVOESTADO - COMODOID
:- dynamic skill_mode/4.
skill_mode(1, 1, desligado, 1).
skill_mode(1, 1, desligado, 2).
skill_mode(1, 1, desligado, 3).
skill_mode(1, 1, desligado, 4).
skill_mode(1, 1, desligado, 5).
skill_mode(1, 1, desligado, 8).
skill_mode(1, 1, desligado, 7).
skill_mode(1, 1, desligado, 6).
skill_mode(1, 2, desligado, 8).
skill_mode(1, 2, desligado, 2).
skill_mode(1, 3, desligado, 1).
skill_mode(1, 3, desligado, 2).
skill_mode(1, 3, desligado, 3).
skill_mode(1, 4, fechado, 1).
skill_mode(1, 4, fechado, 2).
skill_mode(1, 4, fechado, 3).
skill_mode(1, 5, desligado, 1).
skill_mode(1, 5, desligado, 2).
skill_mode(1, 5, desligado, 3).
skill_mode(1, 6, desligado, 1).
skill_mode(1, 6, desligado, 8).
skill_mode(1, 7, trancado, 8).
skill_mode(1, 8, trancado, 1).
skill_mode(1, 8, trancado, 2).
skill_mode(1, 8, trancado, 3).
skill_mode(1, 8, trancado, 8).
skill_mode(1, 8, trancado, 5).
skill_mode(1, 9, desligado, 1). 

skill_mode(2, 1, desligado, 1).
skill_mode(2, 1, desligado, 2).
skill_mode(2, 1, desligado, 3).
skill_mode(2, 1, desligado, 4).
skill_mode(2, 1, desligado, 5).
skill_mode(2, 1, desligado, 8).
skill_mode(2, 1, desligado, 7).
skill_mode(2, 1, desligado, 6).
skill_mode(2, 2, desligado, 8).
skill_mode(2, 2, desligado, 2).
skill_mode(2, 3, ligado, 1).
skill_mode(2, 3, ligado, 2).
skill_mode(2, 3, ligado, 3).
skill_mode(2, 4, fechado, 1).
skill_mode(2, 4, fechado, 2).
skill_mode(2, 4, fechado, 3).
skill_mode(2, 5, desligado, 1).
skill_mode(2, 5, desligado, 2).
skill_mode(2, 5, desligado, 3).
skill_mode(2, 6, desligado, 1).
skill_mode(2, 6, desligado, 8).
skill_mode(2, 7, trancado, 8).
skill_mode(2, 8, trancado, 1).
skill_mode(2, 8, trancado, 2).
skill_mode(2, 8, trancado, 3).
skill_mode(2, 8, trancado, 8).
skill_mode(2, 8, trancado, 5).
skill_mode(2, 9, desligado, 1). 

skill_mode(3, 1, desligado, 1).
skill_mode(3, 2, ligado, 1).
skill_mode(3, 3, ligado, 1).
skill_mode(3, 4, fechado, 1).
skill_mode(3, 5, ligado, 1).
skill_mode(3, 9, ligado, 1).

% MAIN
main :- writeln("=== AGENTE INTELIGENTE ==="),
	writeln("1 - Lista Objetos."),
	writeln("2 - Selecionar modo."),
	writeln("3 - Lista eletronicos ligados."),
    writeln("4 - Usar o Robo Limpador."),
	read(EVENT),
	evento(EVENT),
	main. 

% EVENTO
evento(1) :- acao_lista_objetos().
evento(2) :- acao_usar_skill().
evento(3) :- acao_lista_eletronicos_ligados().
evento(4) :- acao_robo_limpador().

% ACAO - ROBO LIMPADOR
acao_robo_limpador() :- findall([ANDARID, ANDAR], andar(ANDARID, ANDAR), LISTA_ANDARES),
    acao_mostra_andares(LISTA_ANDARES, 1),
    read(OPC),
    acao_seleciona_andar(LISTA_ANDARES, OPC, 1).

acao_mostra_andares([], _) :- !.
acao_mostra_andares([[_, ANDAR] | ANDARES], CONT) :- AUXCONT is CONT + 1, 
    format("~w - ~w\n", [CONT, ANDAR]),
    acao_mostra_andares(ANDARES, AUXCONT).

acao_seleciona_andar([], _, _) :- !.
acao_seleciona_andar(_, OPC, _) :- OPC < 1, !.
acao_seleciona_andar([[ANDARID, _] | _], OPC, OPC) :- acao_limpar_andar(ANDARID), !.
acao_seleciona_andar([_ | ANDARES], OPC, CONT) :- AUXCONT is CONT + 1, acao_seleciona_andar(ANDARES, OPC, AUXCONT).

acao_limpar_andar(ANDARID) :- findall([LOCAL], comodo(_, LOCAL, ANDARID), LISTA_COMODOS),
    acao_limpar_comodos(LISTA_COMODOS).
    
acao_limpar_comodos([]) :- !.
acao_limpar_comodos([COMODO | COMODOS]) :- format("Limpando - ~w.\n", [COMODO]), acao_limpar_comodos(COMODOS).

% ACAO - LISTA OBJETOS (ELETRONICOS) LIGADOS
acao_lista_eletronicos_ligados() :- findall([NOME, LOCAL, ANDAR], objeto_comodo(NOME, ligado, LOCAL, ANDAR), LISTA_ELETRONICOS_LIGADOS),
	mostra_lista(LISTA_ELETRONICOS_LIGADOS).

% ACAO - LISTA OBJETOS
acao_lista_objetos() :- findall([NOME, ESTADO, LOCAL, ANDAR], objeto_comodo(NOME, ESTADO, LOCAL, ANDAR), LISTA_OBJETOS), 
	mostra_lista(LISTA_OBJETOS).

% ACAO - SELECIONAR MODO
acao_usar_skill() :- writeln("=== Selecionar Modo ==="),
    findall([MODOID, MODO], skill_mode_type(MODOID, MODO), MODOS),
    acao_mostra_modos(MODOS, 1),
	read(OPC), 
	acao_seleciona_modo(OPC, MODOS, 1).

acao_mostra_modos([], _) :- !.
acao_mostra_modos([[_, MODO] | MODOS], INDEX) :- format("~w - ~w.\n", [INDEX, MODO]),
    AUXINDEX is INDEX + 1,
    acao_mostra_modos(MODOS, AUXINDEX).

acao_seleciona_modo(OPC, _, _) :- OPC < 1, !.
acao_seleciona_modo(_, [], _) :- !.
acao_seleciona_modo(OPC, [[MODOID, _] | _], OPC) :- acao_executar_modo(MODOID), !.
acao_seleciona_modo(OPC, [_ | MODOS], CONT) :- AUXCONT is CONT + 1, acao_seleciona_modo(OPC, MODOS, AUXCONT).

acao_executar_modo(MODOID) :- findall([OBJETOID, NOVOESTADO, COMODOID], skill_mode(MODOID, OBJETOID, NOVOESTADO, COMODOID), RESULT), 
	remove_estados(RESULT), 
    adiciona_estados(RESULT).

% UTILITARIOS
estadoinvertido(ligado, desligado).
estadoinvertido(desligado, ligado).
estadoinvertido(trancado, destrancado).
estadoinvertido(destrancado, trancado).
estadoinvertido(fechado, aberto).
estadoinvertido(aberto, fechado).

objeto_comodo(OBJETO, ESTADO, LOCAL, ANDAR) :- objeto(OBJETOID, OBJETO), 
    estado(OBJETOID, ESTADO, COMODOID), 
	comodo(COMODOID, LOCAL, ANDARID), 
	andar(ANDARID, ANDAR).

mostra_lista([]) :- !.
mostra_lista([HEAD | TAIL]) :- writeln(HEAD), mostra_lista(TAIL).

adiciona_estados([]) :- !.
adiciona_estados([ESTADO | ESTADOS]) :- adiciona_estado(ESTADO), adiciona_estados(ESTADOS).

adiciona_estado([OBJETOID, ESTADO, COMODOID]) :- assertz(estado(OBJETOID, ESTADO, COMODOID)).
    
remove_estados([]) :- !.
remove_estados([ESTADO | ESTADOS]) :- remove_estado(ESTADO), remove_estados(ESTADOS).
    
remove_estado([OBJETOID, ESTADO, COMODOID]) :- estadoinvertido(ESTADO, ESTADOINV),
	retract(estado(OBJETOID, ESTADOINV, COMODOID)); 
    retract(estado(OBJETOID, ESTADO, COMODOID)).