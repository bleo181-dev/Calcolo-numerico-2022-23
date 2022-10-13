function [y] = funzioneES2(k,a,b,N)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

if a > b
    error("il numero a deve essere minore di b")
end

if N <= 0 || ~fix(N)
    error("N deve essere un numero positivo")
end   

if k < 1 || k > 10
    error("k deve essere un numero compreso tra 1 e 10")
end    

xx = linspace(a,b,N+1);
y = k*(1-xx).^2.*exp(-xx.^2) ;

end