% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 22/01/2019

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

disp("Esercizio 1")

coeff = [ log10(pi), 0, 0, -4.7, 0, 0, 2/pi, -exp(-3), -sin(2.1) ];
x0 = -6.27*10^-1; %input("Inserisci il punto in cui valutare la funzione: ")

[fx, coeff] = ruffiniHorner(coeff, x0);
[d1, coeff] = ruffiniHorner(coeff, x0);
[d2, coeff] = ruffiniHorner(coeff, x0);

fprintf("\nLa funzione fx in %g ha valore: %g\n", x0, fx);
fprintf("\nLa funzione fx in %g ha derivata prima: %g\n", x0, d1);
fprintf("\nLa funzione fx in %g ha derivata seconda: %g\n\n", x0, 2*d2);

Y = @(X) (log10(pi).*X.^8 -4.7.*X.^5 + 2/pi.*X.^2 - exp(-3).*X - sin(2.1));
X = linspace(-1.4, 2.3, 1001);
plot(X,Y(X))