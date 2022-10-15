% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 27/01/2021

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell

a = 0.5;
b = 5;
x = linspace(a,b,201);
s(1) = 5 ;
w(1) = 1 ;

[z1,indx1,tempo] = funzioneES2(x,s(1),w(1));
fprintf("Tempo medio per 10000 valutazioni con s = %.3f, w = %.3f : %g \n", s(1), w(1), tempo)

s(2) = -2; %input("Inserisci s: ");
w(2) = 0.5; %input("Inserisci w: ");

[z2,indx2,tempo] = funzioneES2(x,s(2),w(2));
fprintf("Tempo medio per 10000 valutazioni con s = %.3f, w = %.3f : %g \n", s(2), w(2), tempo)

ph = semilogy(x(indx1),z1,"b-",x(indx2),z2,"r-")
th = title ("Valori delle funzioni \phi_{s,w}(x)") ;
xh = xlabel ("Ascisse") ; 
yh = ylabel ("Valori di \phi_{s,w}(x)") ;
legendStrings = cell(numel(s),1) ;
for k = 1:numel(s)
    legendStrings{k} = sprintf("s = %g, w = %g", s(k), w(k)) ; 
end
sh = legend ( legendStrings , "Location","southwest" ) ;
set(ph, "LineWidth",2); 
set(th, "FontSize",16);
set([gca; sh; xh; yh], "FontSize",14);

