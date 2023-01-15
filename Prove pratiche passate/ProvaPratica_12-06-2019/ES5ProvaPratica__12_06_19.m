% BOMBONATI LEONARDO
% Esercizi dalla prova scritta e pratica del 12/06/2019

clear all % cancella tutte le variabili nel workspace
close all % chiude tutte le finestre aperte
clc % cancella tutti i comandi sulla shell
syms d x xi

xi = [0.1 0.4 1.1 1.5];
yi = -log(2..*xi);
d = tabDiff(xi,yi);
p3 = d(1) + d(2)*(x-xi(1)) + d(3)*(x-xi(1))*(x-xi(2)) + d(4)*(x-xi(1))*(x-xi(2))*(x-xi(3));
p3 = collect(p3);
p3 = @(x) (- (8257566059825853.*x.^3)/4503599627370496 + (34393505280668931.*x.^2)/5629499534213120 - (3283436246692200327.*x)/450359962737049600 + 2566202438305209433/1125899906842624000);
p3Lagrange = [ -1.8335 6.1095 -7.2907 2.2792]; % già calcolati nella parte teorica
diffNewtLag = abs(p3(xi)-p3Lagrange)'

xi = [0.1 0.4 0.9 1.1 1.5];
yi = -log(2..*xi);
d = tabDiff(xi,yi);
p4 = d(1) + d(2)*(x-xi(1)) + d(3)*(x-xi(1))*(x-xi(2)) + d(4)*(x-xi(1))*(x-xi(2))*(x-xi(3)) + d(5)*(x-xi(1))*(x-xi(2))*(x-xi(3))*(x-xi(4));
p4 = collect(p4);
p4 = @(x) ((7744477035875333.*x.^4)/4503599627370496 - (64530889742078769.*x.^3)/9007199254740992 + (5067079056180238879.*x.^2)/450359962737049600 - (8005796326650037391.*x)/900719925474099200 + 26939863093971524147/11258999068426240000);

xi = [0.1 0.4 0.9 1.1 1.5 2.7];
yi = -log(2..*xi);
d = tabDiff(xi,yi);
p5 = d(1) + d(2)*(x-xi(1)) + d(3)*(x-xi(1))*(x-xi(2)) + d(4)*(x-xi(1))*(x-xi(2))*(x-xi(3)) + d(5)*(x-xi(1))*(x-xi(2))*(x-xi(3))*(x-xi(4)) + d(6)*(x-xi(1))*(x-xi(2))*(x-xi(3))*(x-xi(4))*(x-xi(5));
p5 = collect(p5);
p5 = @(x) (- (2718123604910053.*x.^5)/4503599627370496 + (18616971455515545.*x.^4)/4503599627370496 - (1199404982685487271.*x.^3)/112589990684262400 + (1210207960231535613.*x.^2)/90071992547409920 - (424810009372395457663.*x)/45035996273704960000 + 10937401779720266807/4503599627370496000);

xx = linspace(0,3, 1001)';
yy(:,1) = p3(xx);
yy(:,2) = p4(xx);
yy(:,3) = p5(xx);
plot(xx,yy,'LineWidth',2);
hold on; plot(xi, yi, 'ob'); hold off
