%Sezione 4 esercizi: Date le matrici A = [1 2 3; 4 5 6; 7 8 9], 
% B = [2 -1 0; -1 2 -1; 0 -1 2], descrivere gli output delle seguenti 
% istruzioni:

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

A = [1 2 3; 4 5 6; 7 8 9];
B = [2 -1 0; -1 2 -1; 0 -1 2];

%a-> 
A(:,[1,3]) = B(:, 1:2); %la prima e la terza colonna di A hanno preso il
%valore della prima e della seconda colonna di B

%b-> 
C = A ./ B; %divisione elemento per elemento, 0/0 = Nan -1/0 -Inf

%c -> 
C = A.^B; %ogni elemento di A viene elevato alla potenza del corrispettivo
% elemento di B

%d -> 
C = triu(A) + tril(B,-1); %triu = Upper triangular part of matrix, il 
%secondo parametro k (-1 es) sta ad indicare le diagonali da includere

%e-> 
A([1:2],:) = []; %cancella la prima e la seconda riga

%f-> 
D = B([3,2],1:2:3); % ha preso prima la terza e poi la seconda riga, e poi
%ha selezionato il primo e il terzo elemento (?) chiedere conferma

