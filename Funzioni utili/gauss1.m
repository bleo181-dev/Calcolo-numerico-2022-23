function [L, R, deter] = gauss1(A)
% GAUSS1 - Fattorizzazione di Gauss, versione 1
n = max(size(A));
for k = 1 : n-1
if ( abs( A(k,k) ) < eps * norm(A,inf) )
    error('fattorizzazione non effettuabile.');
else
    % for i = (k+1) : n
    % A(i,k) = A(i,k)/A(k,k);
    % for j = (k+1) : n
    %   A(i,j) = A(i,j)-A(i,k)*A(k,j);
    A((k+1):n, k) = A((k+1):n, k) / A(k,k);
    % operazione di base a livello 2: aggiornamento mediante diade
    A((k+1):n, (k+1):n) = A((k+1):n, (k+1):n) - A((k+1):n, k)*A(k, (k+1):n);
    end
end
deter = prod(diag(A));
R = triu(A);
L = eye(n) + tril(A, -1); % si puo’ migliorare...
end