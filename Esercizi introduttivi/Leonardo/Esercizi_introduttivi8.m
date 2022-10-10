% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A=[2 2 1; 1 -1 4; 2 1 -3]

%(a) 
[p,q] = size( A(1:2,1:2) );

%(b) 
A./A';

%(c) 
A(1,:) = A(2,:) .* A(3,:);

%(d) 
A(2,:) = A(:,1)';

%(e) 
A(:,2) = A(:,2).^3;