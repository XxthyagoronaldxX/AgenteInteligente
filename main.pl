% OBJETOS:
% 
% Luzes em cada cômodo. x
% SmartTV apenas na sala de estar. x 
% Ar-condicionado nos 3 quartos e na sala de estar. x
% Cortinas motorizadas em todos os cômodos. x
% Computador nos 3 quartos. x
% Aparelho de som na sala e no quarto 1. x
% Geladeira e fogão na cozinha. EXTRA
% Fechadura inteligente nas portas e janelas. x


% USECASES:
%
% LISTAR OBJETOS QUE ESTAO LIGADOS E DESLIGADOS. [Jaime]
% INFERIR QUE O USUARIO ESTA DORMINDO OU ACORDADO. (COM BASE NO ESTADO DOS OBJETOS) [Alexandre]
% SKILL DORMIR. [Ramon]
% SKILL FORA DE CASA. [Thyago] X
% SKILL GAMER. [Jaime]
% SKILL FAXINA. [Alexandre]

% POSSIVEL IDEAI:
%
% PERSONALIZAÇAO DE SKILL. [Jaime]
% PERSONALIZAÇAO DE COMODO DA CASA. (CRUD) [Thyago]
% INTERAGIR DIRETAMENTE COM O AGENTE INTELIGENTE. (Que dia e hoje? Que horas sao? Vai chover hoje?) [Ramon]
% PERSONALIZAÇAO DE SKILL ++. (EDITAR SKILLS) [Alexandre]
% SKILL DE HABILIDADES DO AGENTE INTELIGENTE. [Ramon]
% ESCUTAR EVENTO DE OBJETOS. (DEFINIR METRICAS)	[Thyago]	

:- dynamic objeto/4.	
objeto(lampada, ligado, quarto_1, andar1).
objeto(lampada, ligado, quarto_2, andar1).
objeto(lampada, ligado, quarto_3, andar1).
objeto(lampada, ligado, banheiro, andar1).
objeto(lampada, ligado, cozinha, andar1).
objeto(lampada, ligado, sala, andar1).
objeto(lampada, ligado, corredor, andar1).
objeto(lampada, ligado, varanda, andar1).
objeto(tv, ligado, sala, andar1).
objeto(tv, ligado, quarto_2, andar1).
objeto(arcodicionado, ligado, quarto_1, andar1).
objeto(arcodicionado, ligado, quarto_2, andar1).
objeto(arcodicionado, ligado, quarto_3, andar1).
objeto(cortinainteligente, aberto, quarto_1, andar1).
objeto(cortinainteligente, aberto, quarto_2, andar1).
objeto(cortinainteligente, aberto, quarto_3, andar1).
objeto(computador, ligado, quarto_1, andar1).
objeto(computador, ligado, quarto_2, andar1).
objeto(computador, ligado, quarto_3, andar1).
objeto(aparelhodesom, ligado, quarto_1, andar1).
objeto(aparelhodesom, ligado, sala, andar1).
objeto(fechaduraporta, trancado, sala, andar1).
objeto(janela, trancado, quarto_1, andar1).
objeto(janela, trancado, quarto_2, andar1).
objeto(janela, trancado, quarto_3, andar1).
objeto(janela, trancado, sala, andar1).
objeto(janela, trancado, cozinha, andar1).

:- dynamic skill/5.
skill(foradecasa, lampada, desligado, quarto_1, andar1).
skill(foradecasa, lampada, desligado, quarto_2, andar1).
skill(foradecasa, lampada, desligado, quarto_3, andar1).
skill(foradecasa, lampada, desligado, banheiro, andar1).
skill(foradecasa, lampada, desligado, cozinha, andar1).
skill(foradecasa, lampada, desligado, sala, andar1).
skill(foradecasa, lampada, desligado, corredor, andar1).
skill(foradecasa, lampada, desligado, varanda, andar1).
skill(foradecasa, tv, desligado, sala, andar1).
skill(foradecasa, tv, desligado, quarto_2, andar1).
skill(foradecasa, arcodicionado, desligado, quarto_1, andar1).
skill(foradecasa, arcodicionado, desligado, quarto_2, andar1).
skill(foradecasa, arcodicionado, desligado, quarto_3, andar1).
skill(foradecasa, cortinainteligente, fechado, quarto_1, andar1).
skill(foradecasa, cortinainteligente, fechado, quarto_2, andar1).
skill(foradecasa, cortinainteligente, fechado, quarto_3, andar1).
skill(foradecasa, computador, desligado, quarto_1, andar1).
skill(foradecasa, computador, desligado, quarto_2, andar1).
skill(foradecasa, computador, desligado, quarto_3, andar1).
skill(foradecasa, aparelhodesom, desligado, quarto_1, andar1).
skill(foradecasa, aparelhodesom, desligado, sala, andar1).
skill(foradecasa, fechaduraporta, trancado, sala, andar1).
skill(foradecasa, janela, trancado, quarto_1, andar1).
skill(foradecasa, janela, trancado, quarto_2, andar1).
skill(foradecasa, janela, trancado, quarto_3, andar1).
skill(foradecasa, janela, trancado, sala, andar1).
skill(foradecasa, janela, trancado, cozinha, andar1). 

skill(dormir, lampada, desligado, quarto_1, andar1).
skill(dormir, lampada, desligado, quarto_2, andar1).
skill(dormir, lampada, desligado, quarto_3, andar1).
skill(dormir, lampada, desligado, banheiro, andar1).
skill(dormir, lampada, desligado, cozinha, andar1).
skill(dormir, lampada, desligado, sala, andar1).
skill(dormir, lampada, desligado, corredor, andar1).
skill(dormir, lampada, desligado, varanda, andar1).
skill(dormir, tv, desligado, sala, andar1).
skill(dormir, tv, desligado, quarto_2, andar1).
skill(dormir, arcodicionado, ligado, quarto_1, andar1).
skill(dormir, arcodicionado, ligado, quarto_2, andar1).
skill(dormir, arcodicionado, ligado, quarto_3, andar1).
skill(dormir, cortinainteligente, fechado, quarto_1, andar1).
skill(dormir, cortinainteligente, fechado, quarto_2, andar1).
skill(dormir, cortinainteligente, fechado, quarto_3, andar1).
skill(dormir, computador, desligado, quarto_1, andar1).
skill(dormir, computador, desligado, quarto_2, andar1).
skill(dormir, computador, desligado, quarto_3, andar1).
skill(dormir, aparelhodesom, desligado, quarto_1, andar1).
skill(dormir, aparelhodesom, desligado, sala, andar1).
skill(dormir, fechaduraporta, trancado, sala, andar1).
skill(dormir, janela, trancado, quarto_1, andar1).
skill(dormir, janela, trancado, quarto_2, andar1).
skill(dormir, janela, trancado, quarto_3, andar1).
skill(dormir, janela, trancado, sala, andar1).
skill(dormir, janela, trancado, cozinha, andar1). 

:- dynamic skill/2.
skill(foradecasa, "Fora de casa").
skill(dormir, "Dormir").

% MAIN
main :- writeln("=== AGENTE INTELIGENTE ==="),
	writeln("1 - Lista Objetos."),
	writeln("2 - Ativar skill de modo."),
	writeln("3 - Lista eletronicos ligados."),
    writeln("4 - Usar o Robo Limpador."),
	read(EVENT),
	evento(EVENT),
	main. 

% EVENTO
evento(1) :- acao_lista_objetos().
evento(2) :- acao_usar_skill().
evento(3) :- acao_lista_eletronicos_ligados().

% ACAO - LISTA OBJETOS (ELETRONICOS) LIGADOS
acao_lista_eletronicos_ligados() :- findall([NOME, LOCAL, ANDAR], objeto(NOME, ligado, LOCAL, ANDAR), LISTA_ELETRONICOS_LIGADOS),
	writeln(LISTA_ELETRONICOS_LIGADOS).

% ACAO - LISTA OBJETOS
acao_lista_objetos() :- findall([NOME, ESTADO, LOCAL, ANDAR], objeto(NOME, ESTADO, LOCAL, ANDAR), LISTA_OBJETOS), 
	writeln(LISTA_OBJETOS).

% ACAO - EXECUTAR SKILL
acao_usar_skill() :- writeln("=== Selecionar Skill ==="),
    findall([SKILL, DISPLAY], skill(SKILL, DISPLAY), SKILLS),
    acao_mostra_skills(SKILLS, 1),
	read(OPC), 
	acao_seleciona_skill(OPC, SKILLS, 1).

acao_mostra_skills([], _) :- !.
acao_mostra_skills([[_, DISPLAY] | SKILLS], INDEX) :- write(INDEX), write(" - "), writeln(DISPLAY), 
    AUXINDEX is INDEX + 1,
    acao_mostra_skills(SKILLS, AUXINDEX).

acao_seleciona_skill(OPC, _, _) :- OPC < 1, !.
acao_seleciona_skill(_, [], _) :- !.
acao_seleciona_skill(OPC, [[SKILL, _] | _], OPC) :- acao_executar_skill(SKILL), !.
acao_seleciona_skill(OPC, [_ | SKILLS], CONT) :- OPC =\= CONT, AUXCONT is CONT + 1, acao_seleciona_skill(OPC, SKILLS, AUXCONT).

acao_executar_skill(SKILL) :- findall([OBJETO, ESTADO, LOCAL, ANDAR], skill(SKILL, OBJETO, ESTADO, LOCAL, ANDAR), RESULT), 
	remove_objetos(RESULT), adiciona_objetos(RESULT).

% UTILITARIOS
estadoinvertido(ligado, desligado).
estadoinvertido(desligado, ligado).
estadoinvertido(trancado, destrancado).
estadoinvertido(destrancado, trancado).
estadoinvertido(fechado, aberto).
estadoinvertido(aberto, fechado).

adiciona_objetos([]) :- !.
adiciona_objetos([OBJETO | OBJETOS]) :- adiciona_objeto(OBJETO), adiciona_objetos(OBJETOS).

adiciona_objeto([OBJETO, ESTADO, LOCAL, ANDAR]) :- assertz(objeto(OBJETO, ESTADO, LOCAL, ANDAR)).
    
remove_objetos([]) :- !.
remove_objetos([OBJETO | OBJETOS]) :- remove_objeto(OBJETO), remove_objetos(OBJETOS).

remove_objeto([OBJETO, ESTADO, LOCAL, ANDAR]) :- estadoinvertido(ESTADO, ESTADOINV),
	retract(objeto(OBJETO, ESTADOINV, LOCAL, ANDAR)); 
    retract(objeto(OBJETO, ESTADO, LOCAL, ANDAR)).