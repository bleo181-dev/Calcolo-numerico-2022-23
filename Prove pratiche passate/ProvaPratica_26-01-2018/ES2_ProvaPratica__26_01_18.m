% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 26/01/2018

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

alpha = 0.15;
n = 5000;

[tempo_for,tempo_sintassivettoriale] = funzioneES2(alpha, n);
fprintf("Il ciclo for ha impiegato: %e\n", tempo_for)
fprintf("La sintassi vettoriale ha impiegato: %e\n", tempo_sintassivettoriale)