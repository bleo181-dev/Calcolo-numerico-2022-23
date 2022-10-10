% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 29/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

% se n >> m è più veloce il metodo dei for
% se m > n è più veloce il metodo vettoriale
n = 10; % numero di numeri in x
m = 100; % numero di potenze da fare per ogni numero di x
x = [1:n]';

tic
V_vettoriale = x.^[0:n];
toc

tic
for i = 1:size(x)
    for j = 1:m
      V_2for(i, j) = x(i)^j ;
    end
end
toc
V_2for;
