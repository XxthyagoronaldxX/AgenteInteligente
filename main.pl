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
% SKILL FORA DE CASA. [Thyago] 
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

:- dynamic objeto/3.	
objeto(lampada, ligado, quarto_1).
objeto(lampada, ligado, quarto_2).
objeto(lampada, ligado, quarto_3).
objeto(lampada, ligado, banheiro).
objeto(lampada, ligado, cozinha).
objeto(lampada, ligado, sala).
objeto(lampada, ligado, corredor).
objeto(lampada, ligado, varanda).
objeto(tv, ligado, sala).
objeto(tv, ligado, quarto_2).
objeto(arcodicionado, ligado, quarto_1).
objeto(arcodicionado, ligado, quarto_2).
objeto(arcodicionado, ligado, quarto_3).
objeto(cortinainteligente, ligado, quarto_1).
objeto(cortinainteligente, ligado, quarto_2).
objeto(cortinainteligente, ligado, quarto_3).
objeto(computador, ligado, quarto_1).
objeto(computador, ligado, quarto_2).
objeto(computador, ligado, quarto_3).
objeto(aparelhodesom, ligado, quarto_1).
objeto(aparelhodesom, ligado, sala).
objeto(fechaduraporta, trancado, sala).
objeto(janela, trancado, quarto_1).
objeto(janela, trancado, quarto_2).
objeto(janela, trancado, quarto_3).
objeto(janela, trancado, sala).
objeto(janela, trancado, cozinha).

:- dynamic skill/4.
skill(foradecasa, lampada, desligado, quarto_1).
skill(foradecasa, lampada, desligado, quarto_2).
skill(foradecasa, lampada, desligado, quarto_3).
skill(foradecasa, lampada, desligado, banheiro).
skill(foradecasa, lampada, desligado, cozinha).
skill(foradecasa, lampada, desligado, sala).
skill(foradecasa, lampada, desligado, corredor).
skill(foradecasa, lampada, desligado, varanda).
skill(foradecasa, tv, desligado, sala).
skill(foradecasa, tv, desligado, quarto_2).
skill(foradecasa, arcodicionado, desligado, quarto_1).
skill(foradecasa, arcodicionado, desligado, quarto_2).
skill(foradecasa, arcodicionado, desligado, quarto_3).
skill(foradecasa, cortinainteligente, fechado, quarto_1).
skill(foradecasa, cortinainteligente, fechado, quarto_2).
skill(foradecasa, cortinainteligente, fechado, quarto_3).
skill(foradecasa, computador, desligado, quarto_1).
skill(foradecasa, computador, desligado, quarto_2).
skill(foradecasa, computador, desligado, quarto_3).
skill(foradecasa, aparelhodesom, desligado, quarto_1).
skill(foradecasa, aparelhodesom, desligado, sala).
skill(foradecasa, fechaduraporta, trancado, sala).
skill(foradecasa, janela, trancado, quarto_1).
skill(foradecasa, janela, trancado, quarto_2).
skill(foradecasa, janela, trancado, quarto_3).
skill(foradecasa, janela, trancado, sala).
skill(foradecasa, janela, trancado, cozinha). 

% MAIN
main :- write("=== AGENTE INTELIGENTE ==="),
    	write("1 - Lista Objetos."),
    	write("2 - Utilizar skill."),
    	read(EVENT),
    	evento(EVENT),
    	main. 

% EVENTO
evento(EVENT) :- EVENT == 1, acao_lista_objetos();
    	EVENT == 2, acao_usar_skill().

% ACAO - LISTA OBJETOS
acao_lista_objetos() :- findall([NOME, ESTADO, LOCAL], objeto(NOME, ESTADO, LOCAL), LISTA_OBJETOS), 
    	write(LISTA_OBJETOS).

% ACAO - EXECUTAR SKILL
acao_usar_skill() :- write("=== Selecionar Skill ==="),
    	write("1 - Fora de casa."),
    	read(_), %TODO
        acao_executar_skill(foradecasa).

acao_executar_skill(SKILL) :- skill(SKILL, OBJETO, ESTADO, LOCAL), 
    	remove_objeto(OBJETO, ESTADO, LOCAL),
        assertz(objeto(OBJETO, ESTADO, LOCAL)).
        
% UTILITARIOS
remove_objeto(OBJETO, ESTADO, LOCAL) :- estadoinvertido(ESTADO, ESTADOINV), 
        retract(objeto(OBJETO, ESTADOINV, LOCAL)); 
    	retract(objeto(OBJETO, ESTADO, LOCAL)).

estadoinvertido(ESTADO, ESTADOINV) :- ESTADO == ligado, ESTADOINV = desligado; 
        ESTADO == desligado, ESTADOINV = ligado;
    	ESTADO == trancado, ESTADOINV = destrancado;
    	ESTADO == destrancado, ESTADOINV = trancado;
        ESTADO == fechado, ESTADOINV = aberto;
    	ESTADO == aberto, ESTADOINV = fechado.