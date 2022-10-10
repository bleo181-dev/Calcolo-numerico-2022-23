%sezione 9 -> Creare due matrici quadrate A,B di dimensione 50 < n < 1000 
% e un vettore v di dimensioni opportune. Utilizzando i comandi tic e toc, 
% verificare la differenza di tempo di calcolo tra A*B*v e A*(B*v).

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

n = 100;
v = [1:n]';
A = randi(100,n,n);
B = randi(100,n,n);


tic
A*B.*v
toc

tic
A*(B.*v);
toc

%n = 50 è + veloce A*(B.*v);
%idem n = 4, 1000, 100
