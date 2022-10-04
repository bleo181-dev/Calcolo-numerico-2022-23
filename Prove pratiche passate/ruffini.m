function [palpha,q] = ruffini(coeff,alpha)
%ruffini - Metodo di Ruffini-Horner per la val di un pol in un pto.

n = numel(coeff) - 1; % grado del polinomio p(x)
q = zeros(size(coeff)); % pre-allocazione del vettore quoziente

q(1) = coeff(1);
    for i = 2:(n+1)
        q(i) = q(i-1)*alpha + coeff(i);
    end
palpha = q(end); 
q = q(1:(end-1)); % alternativa: q(end) = []
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
end