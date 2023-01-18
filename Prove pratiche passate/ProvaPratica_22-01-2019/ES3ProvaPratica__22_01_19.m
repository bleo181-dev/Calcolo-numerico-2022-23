% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 22/01/2019

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

disp("Esercizio 3")

A = [4 2 1 1; 3 2 4 6; 18 9 3 2; 2 4 6 10];
b = [8 15 32 22]';

[L, R, p, deter] = gauss2(A);
x = solupper(R,sollower(L,b(p)));

disp("Matrice R:")
disp(R)
disp("Matrice L:")
disp(L)
disp("Soluzione sistema:")
disp(x)
disp("Residuo normalizzato:")
disp((b-A*x)/norm(b, inf))


% parte 2
[Q, R] = qr(A);

disp("Matrice Q:")
disp(Q)
disp("Matrice R:")
disp(R)
disp("Soluzione sistema:")
xQR = solupper(R, Q'*b);
disp(xQR)
disp("Residuo normalizzato:")
disp((b-A*xQR)/norm(b, inf))

disp("Soluzione sistema con mldivide:")
xML=A\b;
disp(xML)
disp("Residuo normalizzato:")
disp((b-A*xML)/norm(b, inf))

disp("Differenza relativa:")
disp(norm(xQR-xML,inf)/norm(xML,inf));





