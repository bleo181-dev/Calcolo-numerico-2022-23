% BOMBONATI LEONARDO
% ESERCIZI DI BASE MATLAB - 27/09/2022

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

v = [1:6]'
w = [1:6]'

a = v + w %(a)
b = 4*v %(b)
c = v.*w %(c)
d = w./2 %(d)
e = v./w %(e)
f = dot(v,w) %(f)
g = 2*v - 6*w %(g)

%(h) cringe con sto for
% g1 = 1:size(d)
% for ii = 1:size(d)
%     if(rem(ii,2) == 0) % pari
%         g1(ii) = d(ii)
%     else % dispari
%         g1(ii) = c(ii)
%     end
% end

%(h)
g1 = [1:6]
g1([1:2:end]) = c([1:2:end])
g1([2:2:end]) = d([2:2:end])

h = repmat(v, 5, 1) %(i)
h([6:6:end]); %(j) ho osservato ma non compreso

%(k) cringe con sto for
% for ii = 1:size(h)
%     if(rem(ii,5) == 0) % multiplo di 5
%         h(ii) = 0
%     elseif(rem(ii,6) == 0) % multiplo di 6
%         h(ii) = 1
%     end
% end

%(k)
h([5:5:end]) = 0
h([6:6:end]) = 1

%(l)
u = 1:6 
uw = u*w % riga-colonna = risultato scalare
wu = w*u % colonna-riga = risultato matriciale





