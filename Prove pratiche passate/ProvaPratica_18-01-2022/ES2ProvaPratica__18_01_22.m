% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 18/01/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell
rng(3)

abcd(1) = 1.7;
abcd(2) = 0.6;
abcd(3) = -2.1;
abcd(4) = 3.4;
N = 200001;
a = 0.2;
b = 3;
c = -2;
d = 5;
x = linspace(a,b,N);
y = (c + (d-c).*rand(N,1))';

fx = zeros(1,N);
tic;
for i=1:N
    fx(i) = funzioneES2(abcd, x(i), y(i));
end
tempoCiclo = toc;

tic;
[z,W]= funzioneES2(abcd, x, y);
tempoVett = toc;

fprintf("\nTempo ciclo %G\nTempo vettoriale %G\n", tempoCiclo, tempoVett)
fprintf("Differenza relativa rispetto al ciclo %G\n", abs(tempoCiclo - tempoVett)/abs(tempoCiclo))
fprintf("In percentuale %G%%\n\n",abs(tempoVett)*100/abs(tempoCiclo))