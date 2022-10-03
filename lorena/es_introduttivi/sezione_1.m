%sezione 1 -> Generare i vettori v = (1, 2, . . . , 6)⊤ e 
% w = (1, 2, . . . , 6)⊤ (vettori colonna) ed effettuare le seguenti operazioni:

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella comandi sulla shell

v = [1:6]';
w = [1:6]';

%(a) a = v + w;
a = v+w;
%(b) b = 4v;
b = 4*v;
%(c) calcolare il prodotto di v per w elemento per elemento e salvare il 
% risultato nella variabile c; 
 c = w.*v;
%(d) dividere ogni elemento di w per due e salvare il risultato 
% nella variabile d; 
d = w./2;
%(e) dividere ogni elemento di v per il corrispondente elemento di w e 
% salvare il risultato nella variabile e;
e = w./v;
%(f) calcolare il prodotto scalare di v e di w, salvare il risultato in f;
f = dot(v, w);
%(g) calcolare g = 2v - 6w;
g = 2 * v - 6 * w;
%(h) memorizzare negli elementi di posto pari del vettore g1 gli elementi 
% di posto pari di d e negli elementi di posto dispari di g1 gli elementi 
% di posto dispari di c;
g1(1:6)=c(1:6);
g1(2:2:end)=d(2:2:end);
%(i) creare il vettore h con 5 copie del vettore v;
h = [v; v; v; v; v];
%(j) osservare il comportamento del comando h([6:6:end]); 
%ritorna 6 6 6 6 6
%(k) sostituire 0 negli elementi con indice multiplo di 5 in h e 1 negli 
% elementi con indice multiplo di 6;
h(5:5:end)=0;
h(6:6:end)=1;
%(l) dato u = (1, 2, . . . , 6) (vettore riga) calcolare u * w e w * u: 
% osservare i risultati e capire cosa succede.
u=[1:6];

u.*w == w.*u;

%risultato matrice 6x6 di 1 --> sono uguali
