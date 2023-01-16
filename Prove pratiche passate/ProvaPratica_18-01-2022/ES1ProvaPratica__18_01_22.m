% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 18/01/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

coeff = [-abs(sin(8*pi^2-(1/3))), 0, -cos(2*tan(3/4)+1/2), ceil(sqrt(min(4.1*pi, 5.2*exp(1)))), exp(log10(17*pi + 10^-2)), 0, max([0.04*pi^3, 3/(7.1+asin(0.8)), 6.92*10^-3]), -log2(0.34*exp(-4))];
x0 = 0.4 %input("Inserisci il punto in cui valutare la funzione: ");

[fx, coeff] = ruffiniHorner(coeff, x0);
[d1, coeff] = ruffiniHorner(coeff, x0);
[d2, coeff] = ruffiniHorner(coeff, x0);

fprintf("\nIl valore del polinomio, calcolato in %g, è %g\n", x0, fx)
fprintf("La derivata prima è %g\nLa derivata seconda è %g\n\n", d1, 2*d2)

X = linspace(-2,1,1001);
Y = -abs(sin(8*pi.^2-(1/3))).*X.^7 -cos(2*tan(3/4)+1/2).*X.^5 + ceil(sqrt(min(4.1*pi, 5.2*exp(1)))).*X.^4 + exp(log10(17*pi + 10.^-2)).*X.^3 + max([0.04*pi.^3, 3/(7.1+asin(0.8)), 6.92*10.^-3]).*X -log2(0.34*exp(-4));

plot(X,Y)