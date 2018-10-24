clc;
clear;
close all;

load('texte/Huffman_Test.mat')

fsk_input = [0.001:.001:5; MessageHuffman_Test]';

sim('ASK');

load('texte/TexteEntrainement.mat');
load('texte/TableAscii.mat');
load('texte/Huffman_Test.mat')

dict = genhuffmandict(TexteEntrainement, TableAscii);
output = huffman2string(fsk_output, dict)


%BER
[number, ratio] = biterr([0 ,0, 0 ,0, MessageHuffman_Test(1:1097)], fsk_output')

