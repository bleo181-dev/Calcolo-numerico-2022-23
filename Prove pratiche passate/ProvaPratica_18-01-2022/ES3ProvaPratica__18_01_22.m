% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 18/01/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

disp("Utilizzando gauss2")
A = [4 -1 0 1; 0 -1 2 1; -5 2 -1 0; 1 1 0 2];
b = [1 -2 -1 2]';
[L, R, p, deter] = gauss2(A)
disp("Soluzione:")
x = solupper(R,sollower(L,b(p)))
disp ('Residuo : ') ;
rStar = b - A*x
disp("Residuo normalizzato:")
disp((b - A*x)/norm(b, inf))

disp("Utilizzando le funzioni di matlab")
[ L1 , R1 , p1 ] = lu(A, 'vector') 
disp("Soluzione:")
x1 = A\b

disp('Stime del numero di condizionamento in norma infinito : ')
eStar = solupper ( R , sollower (L , rStar ( p ) ) ) ;
stima1condA = norm (A, 'inf') * norm(eStar, 'inf')/norm(rStar, 'inf')
stima2condA = 1.0e16*norm(eStar, 'inf')/norm(x , 'inf')
stima3condA = cond (A, 'inf')

B = R*R'
[Rchol, definita_positiva] = chol(B);
if definita_positiva == 0
    disp("la matrice B è definita positiva")
    c = [-3 2/3 8/5 -1/2]';
    disp("Soluzione Bx = c:")
    disp(solupper(Rchol,sollower(Rchol', c)))
else
    disp("la matrice B non è definita positiva")
end