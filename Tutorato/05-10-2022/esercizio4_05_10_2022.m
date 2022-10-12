close all
clear all
clc

int=input('Inserisci un valore in base dieci da convertire, la parte intera\n');
fraz=input('Inserisci un valore in base dieci da convertire, la parte frazionaria (tipologia 0.)\n');
base=input('Inserisci la base in cui vuoi convertire\n');
[vint]=conv10toBETA_int(int,base);
[vfraz]=conv10toBETA_fraz(fraz,base,4);
fprintf('Il valore convertito è: %s%s',vint,vfraz);