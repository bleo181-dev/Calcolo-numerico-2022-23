function [z,indx,tempo] = funzioneES2(x,s,w)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if (isempty(x) || ~isnumeric(x) || ~isvector(x))
    error("il parametro x deve essere un array non vuoto di numeri reali ") ;
end

if (isempty(s) || ~isnumeric(s) || ~isscalar(s) || ~s)
    error("il parametro s deve essere un numero reale non nullo ") ;
end

if (isempty(w) || ~isnumeric(w) || ~isscalar(w) || ~w)
    error("il parametro w deve essere un numero reale non nullo ") ;
end

x = x(:) ;
N = 10000 ;
phi = @(x)(x.*(log(x+s)-w));
indx = find(x > -s) ;
indx = indx(phi(x(indx)) > 0);
% oppure : indx = find ( ( x + s > 0 ) & ( phi (x) > 0 ) );
z = zeros (size(indx)) ;
if (numel(indx) ~= numel(x))
    x = x(indx) ; 
end

tic
for k = 1 : N
    z = phi ( x ) .^(1/4) ;
end
tempo = toc/N;

end