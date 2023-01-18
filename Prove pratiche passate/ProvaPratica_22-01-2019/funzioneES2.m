function [fx_ciclo, fx_vett] = funzioneES2(b, p, x)
    
    %a
    for i=1:9
        fx_ciclo(i) = -cos(p(1)*b^(p(1)*x(i))) + sin(p(2)*b^(p(2)*x(i))) -cos(p(3)*b^(p(3)*x(i))) + sin(p(4)*b^(p(4)*x(i)));
    end
    fx_ciclo = fx_ciclo';
    
    % b
    y = b.^x;
    fx_vett = -cos(p(1)*(y.^p(1))) + sin(p(2)*(y.^p(2))) -cos(p(3)*(y.^p(3))) + sin(p(4)*(y.^p(4)));
end