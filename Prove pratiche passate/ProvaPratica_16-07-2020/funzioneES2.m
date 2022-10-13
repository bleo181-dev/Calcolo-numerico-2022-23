function [fx] = funzioneES2(b,p,q,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

for i = 1:length(x)
    fx(i,1) = - sin(p(1)*b^(q(1)*x(i))) + cos(p(2)*b^(q(2)*x(i))) - sin(p(3)*b^(q(3)*x(i))) + cos(p(4)*b^(q(4)*x(i))); 
end    

y = b.^x;
fx(:,2) = - sin(p(1)*y.^q(1)) + cos(p(2)*y.^q(2)) - sin(p(3)*y.^q(3)) + cos(p(4)*y.^q(4));

end