clc;
close all;
clear all;

load('texte/TexteEntrainement.mat');
load('texte/TableAscii.mat');
load('texte/Huffman_Test.mat')

dict = genhuffmandict(TexteEntrainement, TableAscii);
huff = [zeros(1, 100) string2huffman(Texte_Test, dict)];
output = huffman2string(huff, dict)