%sezione 10 -> Data la matrice A ∈ Mn(R), n scelto da tastiera, salvare in
% v la sua vettorizzazione tramite l'uso del comando jolly :. Calcolare 
% V=v.^2, eseguire il comando B = reshape(V,n,n) e controllare che 
% B == A.^2.

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

n = input('inserisci la dimensione della matrice:\n');
A = randi(10, n,n); %(valore max, dim righe e dim colonne)

v = A(:);

V = v.^2;

B = reshape(V,n,n) 

B == A.^2 %risposta -> true


