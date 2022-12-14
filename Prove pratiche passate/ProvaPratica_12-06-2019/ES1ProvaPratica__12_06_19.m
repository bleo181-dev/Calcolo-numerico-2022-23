% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 12/06/2019

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

x = 0.2; %input("Inserire il punto x0 (numero reale) nel quale valutare il polinomio:");

coeff = [-exp(1)^-pi, -1.4, 1, 0, -log(207.13), 0, 3*pi]; % p(x) = −e^−π*x^6 − 1.4x^5 + x^4 − ln(207.13)x^2 + 3π

[valore_polinomio, coeff] = ruffini(coeff, x); % Valore del polinomio in x0

[derivata_prima, coeff] = ruffini(coeff, x); % Valore della derivata prima in x0

[derivata_seconda, coeff] = ruffini(coeff, x); % Valore della derivata seconda in x0

fprintf("Valore del polinomio in x0: %f \n", valore_polinomio)
fprintf("Valore della derivata prima in x0: %f \n", derivata_prima)
fprintf("Valore della derivata seconda in x0: %f \n", 2*derivata_seconda)

X = linspace(0.8, 1.7);
Y = -exp(1)^-pi*X.^6 -1.4*X.^5 + X.^4 - log(207.13)*X.^2 + 3*pi;
plot(X,Y)