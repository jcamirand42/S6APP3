load('texte/Huffman_Test.mat');

result = [];
message = char(' ');

nbUn = 0;
nbZero = 0;
i = 1;

% Détection de 8 uns consécutifs
while nbUn < 8
    if MessageHuffman_Test(i) == 1
       nbUn = nbUn + 1;
    else
        nbUn = 0;
    end
    
    i = i+1;
end

nbUn = 0;
nbZero = 0;

% Décodage du message
while i <= length(MessageHuffman_Test)
    if MessageHuffman_Test(i) == 0
        nbZero = nbZero + 1;
    else
        nbUn = nbUn+1;
        nbZero = 0;
    end
    
    % Fin du message
    if nbZero >= 1 && nbUn == 8
        break;
    end
    
    % Nouveau code recu
    if nbZero >= 1 || nbUn == 256
        code = dictionnary(nbUn + 1, 2);
        [row, col] = find([CodeAscii{:}] == code, 1);
        message = [message, CodeAscii{col, 2}];
        result = [result nbUn];
        nbUn = 0;
    end
    i = i+1;
end

message