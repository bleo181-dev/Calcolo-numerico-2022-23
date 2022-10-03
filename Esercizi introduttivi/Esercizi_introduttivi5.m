% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 29/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A = [1:5; 6:10; 11:15; 16:20; 21:25] % matrice a piacere 5x5

v = A(2,:); %(a)
w = A(:,3); %(b)
B = A([2:4],[2:4]); %(c)
C = [ones(1,7); [zeros(5,1), A, zeros(5,1)]; ones(1,7)]; %(d)
D = [1:3]'.*[1:3]; %(e)

%(f) sono diversi
BD = B*D;
DB = D*B;

BD_componentepercomponente = B.*D; %(g) è diverso

E = B*D^2-3*B*D-7*D^2; %(h)

%(i) sono uguali
D'*B';
(B*D)';

%(j)
w1 = w([1:3]);
Dw1 = D*w1;

%(k)
v1 = v([1:3]);
v1D = v1*D;

%(i)
BigBoy = [eye(size(B)), B, zeros(size(B)); B, D, B.*-1; zeros(size(B)), B.*-1, eye(size(B)).*-1] 


