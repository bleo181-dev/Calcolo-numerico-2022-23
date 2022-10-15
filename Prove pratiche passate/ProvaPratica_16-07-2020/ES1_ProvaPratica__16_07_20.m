% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 16/07/2020

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

x0 = 1.21; %input("Inserire il punto x0 (numero reale) nel quale valutare il polinomio:");

coeff = [tan(1.37*pi^2 - exp(-0.6)), -log10(4.2 + sin(0.77*exp(1.3))), 0, abs(sqrt(5.7*10^-2) + cos(-3*pi/5)), 0, 5*cos(sin(12.3 - pi^2.1)), 0, log(3.1*10^-4)];
X = linspace(-1.7, 2.0);
Y = tan(1.37*pi^2 - exp(-0.6))*X.^7 - log10(4.2 + sin(0.77*exp(1.3)))*X.^6 + abs(sqrt(5.7*10^-2) + cos(-3*pi/5))*X.^4 + 5*cos(sin(12.3 - pi^2.1))+X.^2 + log(3.1*10^-4);
plot(X,Y)

[valore_polinomio, coeff] = ruffini(coeff, x0); % Valore del polinomio in x0

[derivata_prima, coeff] = ruffini(coeff, x0); % Valore della derivata prima in x0

[derivata_seconda, coeff] = ruffini(coeff, x0); % Valore della derivata seconda in x0

fprintf("Valore del polinomio in x0: %f \n", valore_polinomio)
fprintf("Valore della derivata prima in x0: %f \n", derivata_prima)
fprintf("Valore della derivata seconda in x0: %f \n", derivata_seconda)









