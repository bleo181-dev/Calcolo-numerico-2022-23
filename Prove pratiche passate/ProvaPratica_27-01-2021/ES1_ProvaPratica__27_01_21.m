% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 27/01/2021

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

x = 0.7; %input("Inserire il punto x0 (numero reale) nel quale valutare il polinomio:");

coeff = [log10(pi^(7/4)*max(exp(2) - 5, tan(1/2))), cos(nthroot(abs(-0.7*exp(1)^-0.2),3)), 0, -sin(0.2 + exp(1)^-1.6), 0 , acos(3.7*10^-1) + 1/4, log(sqrt(pi^3)+2/3)];
X = linspace(-1.5, 1.3);
Y = (log10(pi^7/4*max(exp(2) - 5, tan(1/2))))*X.^6 + (cos(nthroot(abs(-0.7*exp(1)^-0.2),3)))*X.^5 + (-sin(0.2 + exp(1)^-1.6))*X.^3 + (acos(3.7*10^-1) + 1/4)*X.^1 + log(sqrt(pi^3)+2/3);
plot(X,Y)

[valore_polinomio, coeff] = ruffini(coeff, x); % Valore del polinomio in x0
[derivata_prima, coeff] = ruffini(coeff, x); % Valore della derivata prima in x0
[derivata_seconda, coeff] = ruffini(coeff, x); % Valore della derivata seconda in x0

fprintf("Valore del polinomio in x0: %g \n", valore_polinomio)
fprintf("Valore della derivata prima in x0: %g \n", derivata_prima)
fprintf("Valore della derivata seconda in x0: %g \n", 2*derivata_seconda)