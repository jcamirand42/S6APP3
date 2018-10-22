clc;
close all;
clear all;

load('texte/TexteEntrainement.mat');
load('texte/TableAscii.mat');
load('texte/Huffman_Test.mat')

dict = genhuffmandict(TexteEntrainement, TableAscii);
output = string2huffman(MessageHuffman_Test, dict)