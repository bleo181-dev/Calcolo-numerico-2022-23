% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 30/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

n = 5;
A = randi([-10,10],n,n)

d = diag(A) %(a)

B = triu(A) %(b)

B = triu(A,1) %(c)

C = B+B' %(d)

%(e)
v=rand(n,1)
risultato_punto_e = v'*C*v

if(risultato_punto_e > 0)
    fprintf("Il risultato è positivo\n")
elseif(risultato_punto_e < 0)
    fprintf("Il risultato è negativo\n")
else
    fprintf("Il risultato è uguale a zero (sus)\n")
end

%(f)
D = A(:,[1:3])
D = [D, A([end-1:end],:)']
E = D'*D

%(g)
v=rand(n,1)
risultato_punto_g = v'*E*v

if(risultato_punto_g > 0)
    fprintf("Il risultato è positivo\n")
elseif(risultato_punto_g < 0)
    fprintf("Il risultato è negativo\n")
else
    fprintf("Il risultato è uguale a zero (sus)\n")
end

%(h)
E % è simmetrica





