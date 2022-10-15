% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 26/01/2018

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

x = input("Inserire il punto x0 (numero reale) nel quale valutare il polinomio:"); % x0
coeff = [3*(x-2)^2*(x+1), -1*(x+pi), 0, -2]; % p(x) = 3(x−2)^2*(x+1)*x^3 − (x + π)*x^2 − 2

[valore_polinomio, coeff] = ruffini(coeff, x); % Valore del polinomio in x0
[derivata_prima, coeff] = ruffini(coeff, x); % Valore della derivata prima in x0
[derivata_seconda, coeff] = ruffini(coeff, x); % Valore della derivata seconda in x0

fprintf("Valore del polinomio in x0: %f \n", valore_polinomio)
fprintf("Valore della derivata prima in x0: %f \n", derivata_prima)
fprintf("Valore della derivata seconda in x0: %f \n", 2*derivata_seconda)



