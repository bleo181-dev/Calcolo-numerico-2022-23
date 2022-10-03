% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

xs = ones(10,1);
y = 2*randn(10,1);

%(a) 
abs(xs-y);

%(b) 
norm(xs-y)/norm(xs);

%(c) 
abs(xs-y)./abs(xs)


