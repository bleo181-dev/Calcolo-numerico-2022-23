% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 11/07/2018

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

a = -3;
b = 3;
N = 50;

for k = 1:10^-1:10
    y = funzioneES2(k,a,b,N);
    x  =linspace(a,b,N+1)
    plot(x,y)
    set (gca,"YLim",[ -1 20]) ;
    xlabel(sprintf("Intervallo di campionamento ( a = %.3f , b = %.3f )", a, b)) ;
    ylabel("Valori della funzione f(x)") ;
    title(sprintf("Grafico della funzione f(x) per k = %.3f",k ) );
    pause(0.05)
end

