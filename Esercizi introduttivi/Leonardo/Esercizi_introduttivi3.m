% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 28/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

v = rand(25, 1)
w = rand(25, 1)

%(a)
t = (dot(v,w)*v) + (dot(v,w)*w)

%(b)
s = [1:25]'; 
p = t./s

%(c)
A = rand(3, 25) 
q = A*p

%(d)
I = eye(3);
e1 = I(:,1);
e2 = I(:,2);
e3 = I(:,3);
a1 = dot(q,e1)
a2 = dot(q,e2)
a3 = dot(q,e3)

%(e)
a = [a1,a2,a3]'
q

%(f)
b = fix(t(2:2:end).*10)

%(g)
c = [1:3]'
D = c*b' % D contiene ,per ogni riga, b trasposta e ogni valore moltiplicato per il numero di riga (1,2,3)

%(h)
B = [q,q,q];
BA = B*A % consentina perche B = 3x3 A = 3x25
AB = A*B % non consentina perche A = 3x25 B = 3x3
