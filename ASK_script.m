clc
clear
close all

load(strcat(pwd, '\donnees\MessageHuffman.mat'));
plot(MessageHuffman_1);
%sim('ASK')