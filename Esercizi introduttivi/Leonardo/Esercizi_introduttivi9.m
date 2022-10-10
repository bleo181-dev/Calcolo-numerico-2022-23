% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A = rand(666);
B = rand(666);
v = [1:666]';

tic
A*B*v; % più lento
toc

tic
A*(B*v); % più veloce
toc