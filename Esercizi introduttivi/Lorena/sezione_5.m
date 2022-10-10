%sezione 5-> Creare una matrice A ∈ M5(R) a piacere ed effettuare 
% le seguenti operazioni:

A = [1, 2, 3, 4, 5; 
    6, 7, 8, 9, 10; 
    1, 2, 3, 4, 5;
    6, 7, 8, 9, 10; 
    1, 2, 3, 4, 5];
%a -> memorizzare in v la sua seconda riga;

v = A(2, :);

%b -> memorizzare in w la sua terza colonna;

w = A(:, 3);

%c -> estrarre la sottomatrice B ∈ M3(R) a parte dall’elemento A(2,2);

 B = A([3:5],[3:5]);

 %d -> creare una matrice C ∈ M7(R) con la prima e l’ultima colonna di 
 % zeri e la prima e ultima riga di 1, e al "centro” porre la matrice A;

 C = [zeros(7)]; 
 C([7,1],[1:7]) = 1;
 C([2:6], [2:6]) = A; %da migliorare

 %e -> creare la matrice D ∈ M3(R) in cui ogni elemento `e il prodotto 
 % degli indici di riga e colonna: verificare se `e simmetrica;

 D = [1, 2, 3; 2, 4, 6; 3, 6, 9];
 D == D'

 %f -> eseguire BD e DB: sono diversi? 
B*D == D*B

%g -> eseguire il prodotto componente per componente di B e D e vedere se 
% questo corrisponde a B*D o D*B;
B.*D == D*B | B.*D == B*D

ans =

  3×3 logical array

   0   0   0
   0   0   0
   0   0   0


%h -> memorizzare in E la combinazione B*D^2-3*B*D-7*D^2 ;

 E =  B*D^2-3*B*D-7*D^2;

 E =

         188         376         564
         420         840        1260
          -8         -16         -24

%i -> verificare che D'*B'=(B*D) ;
 D'*B' == (B*D)



   %j calcolare Dw1, dove w1 `e il vettore contenente i primi tre 
   % elementi di w;

   w1=w([1:3]);
   Dw1=D.*w1;

    %k -> calcolare v1D, dove v1 `e il vettore contenente i primi tre 
    % elementi di v;
    
    v1 = v([1:3]);
    v1D= v1.*D

   
    
    %sezione 7
    %Quali elementi contiene il vettore z dopo i ciascuno dei seguenti 
    % comandi di Matlab?
    

    %a
    z = [10 40 20 80 30 70 60 90];
    z(1:2:7) = zeros(1,4); 
    %z da posizione 1 fino a 7, con granularità 2 mette una matrice a una
    %riga e 4 colonne di 0 (mettendo 8 al posto di 7 non cambia)

    %risultato: 0    40     0    80     0    70     0    90 
    
    %b
    z = [10 40 20 80 30 70 60 90];
    z(7:-2:1) = zeros(1,4);

    %stesso risultato di prima solo che si parte dalla settima posizione
    %fino alla prima
     
    z = [10 40 20 80 30 70 60 90];
    z([3 4 8 1]) = zeros(1,4);

    %il terzo, quarto, ottavo, e il primo elemento prendono il valore 0
    %risultato  0    40     0     0    30    70    60     0




