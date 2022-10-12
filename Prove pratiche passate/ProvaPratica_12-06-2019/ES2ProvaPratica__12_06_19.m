% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 12/06/2019

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

a = -1.5;
b = 2.3;
alpha = 2;
beta = 1.2;
N = 2001;
x = linspace(a,b,N);

fx = zeros(N);
tic
for i = 1:N
    fx(i) = funzioneES2(x(i), alpha, beta);
end
tempoCiclo = toc;

z = zeros(N);
tic
    z = funzioneES2(x, alpha, beta);
tempoVett = toc;

fprintf("Il ciclo for ha impiegato: %f\n", tempoCiclo)
fprintf("la sintassi vettoriale ha impiegato: %f\n", tempoVett)
diffRel = tempoVett - tempoCiclo / tempoCiclo;
diffPerc = diffRel * 100;
fprintf("La differenza relativa rispetto al tempo del ciclo: %f\n", diffRel)
fprintf("La percentuale rispetto al tempo del ciclo: %f%%\n", diffPerc)
plot(x,z)
