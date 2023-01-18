function [ d ] = tabDiff (x , y )
% TABDIFF - Tabella delle differenze divise sui nodi x e i valori y
% INPUT
% x ( double array ) - vettore dei nodi o punti di osservazione
% y ( double array ) - vettore delle osservazioni
% OUTPUT
% d ( double array ) - coefficienti del polinomio di Newton ( ordinati
% per grado crescente del termine corrispondente )
%
    x = x (:) ; y = y (:) ;
    n = length ( x ) ;
    d = y;
    for k = 2 : n
        d ( k : n ) = ( d ( k : n ) - d (k -1: n -1) ) ./ ( x ( k : n ) - x (1: n - k +1) ) ;
    end
end % fine della function tabDiff