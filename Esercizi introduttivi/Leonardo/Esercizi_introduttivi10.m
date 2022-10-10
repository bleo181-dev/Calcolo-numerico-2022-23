% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

%n = input("Inserisci la dimensione della matrice A: ")
n = 4
% per debugging

A = rand(n);
v = A(:); % vettorizzazione A

V = v.^2;
B = reshape(V, n, n);

% sono uguali
B
A.^2

