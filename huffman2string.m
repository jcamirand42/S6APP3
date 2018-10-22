function [ output ] = huffman2string( input, dictionnary )
    output = '';

    nbUn = 0;
    i = 1;

    % Détection de 8 uns consécutifs
    while nbUn < 8
        if input(i) == 1
           nbUn = nbUn + 1;
        else
            nbUn = 0;
        end

        i = i+1;
    end

    nbUn = 0;
    nbZero = 0;

    % Décodage du message
    for i = i:length(input)
        if input(i) == 0
            nbZero = nbZero + 1;
        else
            nbUn = nbUn+1;
            nbZero = 0;
        end

        % Nouveau code recu
        if nbZero >= 1 || nbUn == 256
            %dictionnary(nbUn + 1)
            output = [output, dictionnary(nbUn + 1)];
            nbUn = 0;
        end
    end
end

