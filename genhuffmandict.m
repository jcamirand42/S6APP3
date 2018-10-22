function [ dictionnary ] = genhuffmandict( input_text, ascii_table )
    arr = zeros(length(ascii_table), 1);
    dictionnary = '';

    for i = 1:length(input_text)
        asciiCode = find(ascii_table == input_text(i));
        arr(asciiCode, 1) = arr(asciiCode, 1) + 1;
    end

    [~, indices] = sort(arr, 'descend');

    for i = 1:length(ascii_table)
        dictionnary = [dictionnary; ascii_table(indices(i))];
    end
end

