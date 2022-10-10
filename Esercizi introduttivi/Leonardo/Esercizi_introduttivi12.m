% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A = [1 2 3; 4 5 6]; 
B = [2 2 1;1 0 3]; 
x = [1 2 3]; 
y = [4 5 6];

%(a) 
% moltiplica elemento per elemento A e B
C = A.*B;

%(b) 
% prima riga di A per y
z = A(1,:).*y;

%(c) 
% divide elemento per elemento il vettore x con un nuovo 
% vettore colonna formato dalla seconda colonna di B e un 3
z = x ./ [B(:,2);3];

%(d) 
% gli elementi di y sono divisi elemento per elemento da quelli di x
z = x .\ y;

%(e) 
% eleva la seconda riga di A per gli elementi presi
% al contrario della prima riga di B
z = A(2,:).^B(1,3:-1:1)