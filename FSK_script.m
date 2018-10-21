clc;
clear;
close all;

load('texte/Huffman_Test.mat')

fsk_input = [0.001:.001:5; MessageHuffman_Test]';

sim('FSK');