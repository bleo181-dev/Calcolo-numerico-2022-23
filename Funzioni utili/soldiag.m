function [x] = soldiag(A, b)
% SOLDIAG - soluzione di un sistema diagonale
    if ( isempty(find(~diag(A))) )
        x = b ./ diag(A);
    else
        error("la matrice e' singolare!");
    end
end    