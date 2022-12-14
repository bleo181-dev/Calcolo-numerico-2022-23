% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 11/07/2018

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

x = 1.7;%input("Inserire il punto x0 (numero reale positivo) nel quale valutare il polinomio:");
if x <= 0
    error("Hai inserito un numero non positivo")
end

coeff = [7, 0 , 0, -4, 0, 1, 1, -3, -5, -7]; % p(x) = 7x^9 − 4x^6 + (x − 2)*(x + 1)^3 − 5

polyval_valore_polinomio = polyval(coeff, x); % valore secondo polyval
[valore_polinomio, coeff] = ruffini(coeff, x); % Valore del polinomio in x0

polyval_derivata_prima = polyval(coeff, x); % valore secondo polyval
[derivata_prima, coeff] = ruffini(coeff, x); % Valore della derivata prima in x0

polyval_derivata_seconda = polyval(coeff, x); % valore secondo polyval
[derivata_seconda, coeff] = ruffini(coeff, x) % Valore della derivata seconda in x0

fprintf("Valore del polinomio in x0: %g \n", valore_polinomio)
fprintf("Secondo polyval: %g\n\n", polyval_valore_polinomio)
fprintf("Valore della derivata prima in x0: %g \n", derivata_prima)
fprintf("Secondo polyval: %g\n\n", polyval_derivata_prima)
fprintf("Valore della derivata seconda in x0: %g \n", 2*derivata_seconda)
fprintf("Secondo polyval: %g\n\n", 2*polyval_derivata_seconda)


