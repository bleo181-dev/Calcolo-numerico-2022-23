%Data una matrice A ∈ Mn(R), 2 < n < 10, contentente numeri random 
% compresi fra -10 e 10 (utilizzare le funzioni rand) effettuare i seguenti
% passaggi:

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell


%In general, you can generate N random numbers in the interval (a,b) with 
% the formula r = a + (b-a).*rand(N,1).
n = 5;
A = -10 + (20) .* rand(n);

%(a) estrarre in d la diagonale di A;

d = diag(A, n);

%(b) salvare in B la parte triangolare superiore di A;

B = triu(A);

%(c) sottrarre a B la diagonale di A (hint: controllare l%uso della 
% funzione triu per fare tutto in un passaggio);

B = triu(A, 1);

%(d) porre C = B + B';
 C = B + B';

%(e) dato v di dimensioni opportune, verificare che v'*C*v sia maggiore di 
% zero o meno, stampando un messaggio a video, mediante l%utilizzo 
% combinato della funzione fprintf e del ciclo di controllo if-then-else;
v = [1:n];
v'.*C.*v; %(?)

%(f) salvare in D la sottomatrice di A costituita dalle prime tre colonne e
% dalle ultime due righe di A ; scrivere in E il prodotto D'*D;
D = A([3:5], [1:3]);
E = D'*D;

%(g) dato v di dimensioni opportune, verificare che v'*E*v sia maggiore di 
% zero o meno, stampando un messaggio a video, mediante l utilizzo 
% combinato della funzione fprintf e del ciclo di controllo if-then-else;
v = [1:3]; 
v'.*E.*v;

%(h) verificare che E sia simmetrica.
E == E';
%si lo è 
