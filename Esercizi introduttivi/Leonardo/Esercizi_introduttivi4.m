% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 28/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A = [1 2 3; 4 5 6; 7 8 9]
B = [2 -1 0; -1 2 -1; 0 -1 2]

%(a) 
% la prima e terza colonna di A diventano uguali alla prima e seconda di B
%A(:,[1,3]) = B(:, 1:2)

%(b) 
% ogni valore di A viene diviso per il corrispettivo in B
%C = A ./ B

%(c) 
% ogni valore di A viene elevato a potenza per il corrispettivo in B
%C = A.^B

%(d) 
% crea C unendo il triangolo superiore (mediana compresa) di A
% con il trangolo inferiore (mediana non compresa) di B
%C = triu(A) + tril(B,-1)

%(e) 
% cancella la prima e seconda riga di A
%A([1:2],:) = []

%(f) 
% prendi la terza e seconda riga e tieni solo la prima e terza colonna
%D = B([3,2],1:2:3)
