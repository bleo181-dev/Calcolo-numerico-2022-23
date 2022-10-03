%sezione 11 -> Creare un vettore x di 20 elementi i cui elementi siano 
% equispaziati fra 0 e 2π. Salvare in y i valori della funzione seno 
% calcolata in x, salvare in z i valori della funzione coseno calcolata in
% x. Utilizzando il comando fprintf, stampare a video una tabella di tre 
% colonne in cui sulla prima colonna devono essere presenti i valori
%di x, sulla seconda i valori di Y e infine sulla terza i valori di z.

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

x = linspace(1, 2*pi, 20);

y = sin(x);

z = cos(x);

%data=[x;y;z];

fprintf('%s\t\t%s\t\t%s\n', 'x', 'y', 'z');
fprintf('%1.3f\t%1.3f\t%1.3f\n', x, y, z);