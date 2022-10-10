function [xs, detL] = soltrilo(L, b)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

b = b(:);
if ( abs(diag(L)) < 100*eps*norm(L,'inf') )
    error('Elementi diagonali potenzialmente troppo piccoli');
end
n = numel(b);
xs = b;
xs(1) = b(1) / L(1,1);
for k = 2 : n
    xs(k) = ( b(k) - L(k, 1:(k-1))*xs(1:(k-1)) ) / L(k,k);
end
detL = prod( diag(L) );

end

