%sezione 3 esercizi -> Generare i vettori colonna v,w ∈ R25 da una 
% distribuzione uniforme nell intervallo [0, 1] 


     clear all % cancella tutte le variabili nel workspace
     close all % chiude tutte le finestre aperte
     clc % cancella comandi sulla shell
     
v = rand(25, 1);
w = rand(25, 1);

%a-> t = ⟨v,w⟩v + ⟨v,w⟩w - prodotto scalare -> dot(a,b)
t = dot(v,w).*v + dot(v,w).*w 

%b-> dato s = (1, . . . , 25)⊤, memorizzare in p la divisione elemento 
% per elemento di t per s;

s = [1:25]';
p = t./s;

%c-> data la matrice A ∈ M3×25(R), generata da una distribuzione 
% uniforme in [0, 1], salvare in q il prodotto Ap; 

A = rand(3,25);
q = A*p;

%d-> creare la matrice identit`a I di ordine 3, salvare in e1 la prima 
% colonna di I, in e2 la seconda colonna e in e3 la terza colonna. 
% Salvare nella variabile a1 il prodotto scalare ⟨q,e1⟩, in a2 il 
% prodotto scalare ⟨q,e2⟩ e in a3 il prodotto scalare ⟨q,e3⟩;

I = eye(3); 
e1 = I(:,1);
e2 = I(:,2);
e3 = I(:,3);

a1 = dot(q, e1);
a2 = dot(q,e2);
a3 = dot(q, e3);

%e-> creare il vettore a = (a1,a2,a3)⊤ e verificare che sia identico 
% al vettore q;

a = [a1, a2, a3]'


%f-> memorizzare in un vettore b gli elementi di posto pari di t, 
% moltiplicarli per 10 e arrotondarli utilizzando il comando fix;

b = t([2:2:end]);
b = fix(b.*10)

%g-> creare il vettore c = (1,2,3)⊤, memorizzare in D il prodotto c*b⊤: 
% descrivere l’output ottenuto;

c = [1; 2; 3]; 
D = c*b'; 

%il risultato è una matrice 3x12, le cui colonne vanno a riempirsi seguendo
%il prodotto degli elementi di t per 1, 2, 3 corrispettivamente

%h-> data la matrice B le cui colonne sono costituite da 3 copie del 
% vettore q, effettuare le operazioni BA e AB: sono consentite? 
% Dare una motivazione in entrambi i casi, negativo e affermativo.

B = [q q q];
B*A; %consentito perchè il numero di colonne di B è uguale al numero di 
%righe di A
%A*B non è consentito perchè non vale la proprietà appena elencata
 