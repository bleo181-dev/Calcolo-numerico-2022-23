function [z, nullX] = funzioneES2(abcd, x, y)
    if isempty(abcd(1)) || isempty(abcd(2)) || isempty(abcd(3)) || isempty(abcd(4)) 
        error("Parametro in ingresso vuoti\n")
    end
    if ~isnumeric(abcd(1)) || ~isnumeric(abcd(2)) || ~isnumeric(abcd(3)) || ~isnumeric(abcd(4)) 
        error("Parametro in ingresso non numerico\n")
    end
    nullX = find(~x); % indici delle eventuali componenti nulle di x
    z = abcd(1)*exp(abcd(2)*y)*sin((abcd(3)*y)/(x+abcd(4)));    
end

