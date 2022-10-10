%sezione 12

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

%Dati A = [1 2 3; 4 5 6]; B = [2 2 1;1 0 3]; x = [1 2 3]; y = [4 5 6]; 
% descrivere gli output delle seguenti istruzioni:

A = [1 2 3; 4 5 6]; 
B = [2 2 1;1 0 3]; 
x = [1 2 3]; 
y = [4 5 6];


%(a) 
C = A .* B;;
%prodotto elemento per elemento di A con B, risultato 
% C =

    % 2     4     3
    % 4     0    18

%(b) 
z = A(1,:) .* y;
%prodotto elemento per elemento di A con y, risultato z = 4 10 18


%(c) 
z = x ./ [B(:,2);3]; %divide 

%(d) 
z = x .\ y; 
%elementi di y divisi per elementi di x

%(e) 
z = A(2,:).^B(1,3:-1:1); 
%elementi della seconda riga di A elevati per gli elementi della prima riga
%di B dall'ultimo al primo elemento