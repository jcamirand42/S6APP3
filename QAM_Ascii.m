clear all
close all
clc


load(strcat(pwd,'/texte/CodeAscii.mat'));
load(strcat(pwd,'/texte/Ascii_Test.mat'));

i = 1;
code = [];
j = 0;
while i <= length(Data_Test_Ascii)
    [row, col] = find([CodeAscii{:}] == Data_Test_Ascii(i), 1);
    code(i) = CodeAscii{col, 2};
    i = i+1;
end

binCode = cellstr(dec2bin(code,8))';
%i = 1;
%while i < length(binCode) 
%    celldisp(mat2cell(binCode(i),2,2)')
%i = i+1;
%end
%celldisp(binCode)
%C = mat2cell(binCode,[1 2],[1 2]);