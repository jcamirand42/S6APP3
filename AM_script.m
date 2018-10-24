clc
clear
close all

[y, Fs] = audioread('sons/son1.wav');
t = 0:5/100000:5-5/100000;
signal = [t', y];
sim('AM')
sound(simout, 100000)

P_db_bruit = 10*log10(1/5)