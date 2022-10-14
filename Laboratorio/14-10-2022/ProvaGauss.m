% dimostrazione del metodo di Gauss per la soluzione di un sistema lineare

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

A = magic(6);
xs = [2, -1, 5, 3, -7, 4]';
b = A*xs;
Ab1 = [A, b];

[m,n] = size(A);
Im = eye(m);

m1 = [0; A(2:m , 1) / A(1,1)];
L1 = Im - m1 * Im(1, :);
Ab2 = L1 * Ab1;

m2 = [0; 0; Ab2(3:m, 2) / Ab2(2,2)];
L2 = Im - m2*Im(2, :);
Ab3 = L2 * Ab2;

m3 = [zeros(3,1); Ab3(4:m, 3) / Ab3(3,3)];
L3 = Im - m3*Im(3, :);
Ab4 = L3 * Ab3;

Abi = [A, b];
for i=1:m-1
    mi = [zeros(i,1); Abi(i+1:m, i) / Abi(i,i)];
    Li = Im - mi*Im(i, :);
    Abi = Li * Abi;
end

Abi


