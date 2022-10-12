function [y] = funzioneES2(x, alpha, beta)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

if numel(x) == 1
    y = cos(x)/(alpha-exp(1)^(beta*x));
else
    for i = 1:length(x)
        y(i) = cos(x(i))/(alpha-exp(1)^(beta*x(i)));
    end
end