% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 16/07/2020

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

b = 0.7;
p = [-2 1 3 -1]';
q = [5 4 3 2]';
x = (1.7.*10.^[-7:2])';

fx = funzioneES2(b,p,q,x);

fprintf ("\n x(i)\t\t fx v1\t\tfx v2");
fprintf ("\n %11.4e %11.4e %11.4e" ,[x fx]') ;
fprintf ("\n\n") ;


