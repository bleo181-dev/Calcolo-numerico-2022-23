% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 11/07/2018

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

%%%% Prima parte %%%
A = [2 0 -1/2 -1/2; 0 2 -1 -1; -1/2 -1 2 0; -1/2 -1 0 2];

D = diag(diag(A));
U = triu(A,1);
L = tril(A,-1);

% Jacobi
J = -D^-1*(L+U);
rhoJ = max(abs(eig(J)));
RinfJ = -log(rhoJ);
fprintf("\nJacobi ha raggio spettrale %G e velocità asintotica %G \n", rhoJ, RinfJ)

% Gauss-Seidel
G = -(D+L)^-1 * U;
rhoG = max(abs(eig(G)));
RinfG = -log(rhoG);
fprintf("\nGauss-Seidel ha raggio spettrale %G e velocità asintotica %G\n\n", rhoG, RinfG)

%%%% Seconda parte %%%
