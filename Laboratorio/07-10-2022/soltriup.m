function [xs, detR] = soltriup(R, b)
%SOLTRIUP - Soluzione di un sistema lineare triangolare superiorie
%   Detailed explanation goes here

n = numel(b); % ATTENZIONE!!!
xs = b;
xs(end) = b(n) / R(n,n);

for k = (n-1) : -1 : 1
    xs(k) = ( b(k) - R(k, (k+1):n) * xs((k+1):n) ) / R(k,k);
end

detR = prod( diag(R) );

end

