load('texte/TexteEntrainement.mat');
load('texte/CodeAscii.mat');

arr = zeros(1, 256);
i = 1;

while i < length(TexteEntrainement)
    [row, col] = find([CodeAscii{:}] == TexteEntrainement(i), 1);
    code = CodeAscii{col, 1};
    arr(1, code) = arr(1, code) + 1;
    i = i+1;
end

[freq, indices] = sort(arr, 'descend');
dictionnary = [freq ; indices]';