function [tempo_for,tempo_sintassivettoriale] = funzioneES2(alpha,n)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

tic 
risultato_for = 0;
for k=[1:n]
    if rem(k,2) == 0 % pari
        risultato_for = risultato_for + sin(k*alpha);
    elseif rem(k,2) == 1 % dispari
        risultato_for = risultato_for + cos(k*alpha);
    end
end
tempo_for = toc;

tic
syms k
risultato_sintassivettoriale = symsum(sin(k*alpha),k,0,n) + symsum(cos(k*alpha),k,0,n);
tempo_sintassivettoriale = toc;

end