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

dynamic estado/3.
estado(lampada, ligado, quarto_1).
estado(lampada, ligado, quarto_2).
estado(lampada, ligado, quarto_3).
estado(lampada, ligado, banheiro).
estado(lampada, ligado, cozinha).
estado(lampada, ligado, sala).
estado(lampada, ligado, corredor).
estado(lampada, ligado, varanda).
estado(tv, ligado, sala).
estado(tv, ligado, quarto_2).
estado(arcodicionado, ligado, quarto_1).
estado(arcodicionado, ligado, quarto_2).
estado(arcodicionado, ligado, quarto_3).
estado(cortinainteligente, ligado, quarto_1).
estado(cortinainteligente, ligado, quarto_2).
estado(cortinainteligente, ligado, quarto_3).
estado(computador, ligado, quarto_1).
estado(computador, ligado, quarto_2).
estado(computador, ligado, quarto_3).
estado(aparelhodesom, ligado, quarto_1).
estado(aparelhodesom, ligado, sala).
estado(fechaduraporta, trancado, sala).
estado(janela, trancado, quarto_1).
estado(janela, trancado, quarto_2).
estado(janela, trancado, quarto_3).
estado(janela, trancado, sala).
estado(janela, trancado, cozinha).

evento().

acao().

skill().