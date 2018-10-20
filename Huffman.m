load('texte/Huffman_Test.mat');

i = 1;

while MessageHuffman_Test(i) == 0
    i = i+1;
end

i = i+8;
result = [];
j = 0;
message = char(' ');

while i <= 5000
    j = j+1;
    if MessageHuffman_Test(i) == 0 || j == 256
        code = dictionnary(j, 2);
        [row, col] = find([CodeAscii{:}] == code, 1);
        message = [message, CodeAscii{col, 2}];
        result = [result j];
        j = 0;
    end
    i = i+1;
end

message