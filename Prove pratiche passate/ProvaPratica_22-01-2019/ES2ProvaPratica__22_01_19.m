% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 22/01/2019

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

disp("Esercizio 2")

b = 0.7;
p = [5 4 3 2]';
x = -0.12*[10^-6 10^-5 10^-4 10^-3 10^-2 10^-1 10^0 10^1 10^2]';

[fx_ciclo, fx_vett]  = funzioneES2(b, p, x);

fprintf("X\tValori ciclo\tValori vettoriali\n")
fprintf("%4.11e\t%4.11e\t%4.11e\n",[x fx_ciclo fx_vett]')







