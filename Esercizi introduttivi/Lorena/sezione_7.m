%sezione 7
    %Quali elementi contiene il vettore z dopo i ciascuno dei seguenti 
    % comandi di Matlab?
    

     clear all % cancella tutte le variabili nel workspace
     close all % chiude tutte le finestre aperte
     clc % cancella comandi sulla shell

    %a
    z = [10 40 20 80 30 70 60 90];
    z(1:2:7) = zeros(1,4); 
    %z da posizione 1 fino a 7, con granularità 2 mette una matrice a una
    %riga e 4 colonne di 0 (mettendo 8 al posto di 7 non cambia)

    %risultato: 0    40     0    80     0    70     0    90 
    
    %b
    z = [10 40 20 80 30 70 60 90];
    z(7:-2:1) = zeros(1,4);

    %stesso risultato di prima solo che si parte dalla settima posizione
    %fino alla prima
     
    z = [10 40 20 80 30 70 60 90];
    z([3 4 8 1]) = zeros(1,4);

    %il terzo, quarto, ottavo, e il primo elemento prendono il valore 0
    %risultato  0    40     0     0    30    70    60     0