     %sezione 6
    
     clear all % cancella tutte le variabili nel workspace
     close all % chiude tutte le finestre aperte
     clc % cancella comandi sulla shell
    %Dato un vettore x = (x1, x2, . . . , xn)⊤ e un naturale m > 0, 
    % costruire la seguente matrice: 
    
    n = 10;
    m = 8;
    v = [1:n]'; 
    

    tic
    A = v.^[0:n];
    toc
    
    tic
    for i = 1:size(v)
        for j = 1:m
            B(i,j)=v(i)^j;
        end
    end
    toc
    disp(B')