function [ output ] = string2huffman( input, dictionnary  )
    output = ones(1, 8);
    for i = 1:length(input)
        code = find(dictionnary == input(i));
        output = [output ones(1, code -1) 0];
    end
end

