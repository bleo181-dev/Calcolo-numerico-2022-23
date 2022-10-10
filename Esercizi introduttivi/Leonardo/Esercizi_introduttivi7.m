% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

%(a)
z = [10 40 20 80 30 70 60 90];
z(1:2:7) = zeros(1,4);

%(b)
z = [10 40 20 80 30 70 60 90];
z(7:-2:1) = zeros(1,4);


%(c)
z = [10 40 20 80 30 70 60 90];
z([3 4 8 1]) = zeros(1,4);