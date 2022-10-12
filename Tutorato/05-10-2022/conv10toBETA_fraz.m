function [STR]=conv10toBETA_fraz(ALPHA,BETA,N)

if(~isnumeric(ALPHA) || (ALPHA>=1) || (ALPHA<0))
    error('ALPHA deve essere un numero decimale positivo');
end

if(~isnumeric(BETA) || BETA~=fix(BETA) || (BETA<2) || (BETA>36))
    error('BETA deve essere un numero intero positivo fra 2 e 36');
end

d=char([double('0'):double('9'),double('A'):double('Z')]);

%algoritmo moltiplicazioni successive
p=ALPHA;
STR='0.';
i=0;
while ((p~=0) &&(i<N))
    r=fix(p*BETA);
    p=p*BETA-r;
    STR=strcat(STR,d(r+1));
    i=i+1;end
