clc
clear
close all

sim('FM')

snr(simout, noise)

P_db_bruit = 10*log10(1/5)