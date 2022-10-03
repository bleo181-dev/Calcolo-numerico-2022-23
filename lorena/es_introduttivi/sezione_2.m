%sezione 2 -> 2. Generare una matrice quadrata A ∈ Mn(R) (ove n `e un dato 
% introdotto dall esterno) con elementi generati a caso da una distribuzione
% uniforme nell’intervallo [0, 1] e calcolare (eventualmente usando le funzioni
%cumulative):

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

x = input('introduci la dim. della matrice:\n'); %chiedo input all'utente
%creo matrice random tra 0 e 1 di x elementi
A = rand(x);
%(a) un vettore che contiene la somma degli elementi di ciascuna colonna;
w = sum(A(:, [1:x])); %o dirett. sum(A);
%(b) un vettore che contiene la somma degli elementi di ciascuna riga;
z = sum(A.');
%(c) un vettore che contiene la somma degli elementi al quadrato di
% ciascuna riga;
sum(A.^2);
%(d) il massimo degli elementi della matrice;
max(A(:));
%(e) la somma di tutti gli elementi della matrice.
sum(sum(A(:)));