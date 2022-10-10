%sezione 13
% Dati i vettori xs = ones(10,1) e y = 2*randn(10,1), descrivere 
% gli output dei seguenti comandi senza eseguirli:
%Verificare i risultati al calcolatore. 

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

xs = ones(10,1); %crea una matrice di 10 righe e 1 colonna di uni
y = 2*randn(10,1);

abs(xs-y); %valore assoluto
norm(xs-y)/norm(xs); %norma di un vettore
abs(xs-y)./abs(xs) %ritorna solo il valore assoluto di xs-y 



