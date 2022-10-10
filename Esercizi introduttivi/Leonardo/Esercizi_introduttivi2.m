% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 27/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

%n = input("Inserisci la dimensione N della matrice quadrata: ")
n = 4; % per debugging
A = rand(n) % matrice quadrata N con elementi casuali tra 0 e 1

somma_elementi_per_colonna = sum(A) %(a)
somma_elementi_per_riga = sum(A, 2) %(b)
somma_elementi_alquadrato_per_riga = sum(A^2, 2) %(c)
massimo_elemento = max(A, [], 'all') %(d)
somma_tutti_elementi = sum(A,'all') %(e)


