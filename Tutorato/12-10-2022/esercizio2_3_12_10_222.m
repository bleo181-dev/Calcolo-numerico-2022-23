close all
clear all
clc

%controllo l'inversa dell'esercizio 2

A=[3,4,1;6,9,2;5,2,8];
Ainv=inv(A)

%controllo inversa esercizio 3

B=[10,0,0;0,7,0;0,0,15];
Binv=inv(B) %molto costosa
Binv=diag([1/B(1,1),1/B(2,2),1/B(3,3)])  %molto meno costoso

C=[20,1,7;0,2,17;0,0,3];
Cinv=inv(C) %molto costoso
Cinv=invupper(C) %modo meno costoso

D=C';
Dinv=inv(D) %molto costoso
Dinv=(invupper(D'))' %modo meno costoso