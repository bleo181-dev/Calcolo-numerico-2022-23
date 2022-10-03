%sezione 8:
% Data la matrice A=[2 2 1; 1 -1 4; 2 1 -3], descrivere l'output dei 
% seguenti comandi Matlab:
clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A=[2 2 1; 1 -1 4; 2 1 -3]

%(a) 
[p,q] = size( A(1:2,1:2) );
[p,q];

%conttiene la dimensione del della martice 2x2 che si viene a formare

%(b) 
A ./ A%; divisione elemento per elemento di A con ste stessa

%(c) 
A(1,:) = A(2,:) .* A(3,:);

%è stata cambiata la prima riga della matrice, mettendo che la 1a riga è
%uguale alla seconda riga per la terza riga

%(d) 
A(2,:) = A(:,1)%; seconda riga = alla prima colonna


%(e) 
A(:,2) = A(:,2).^3; 
%la seconda colonna diventa sè stessa elevata alla ^3 (elemento per
%elemento) 