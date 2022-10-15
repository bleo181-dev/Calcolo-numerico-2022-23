function [y] = funzioneES2(x, alpha, beta)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

y = cos(x) ./ (alpha - exp(beta*x));