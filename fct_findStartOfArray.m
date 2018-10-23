function position = fct_findStartOfArray(array)
nbUn = 0;
nbZero = 0;
position = 0;
i = 1;
% Détection de 8 uns consécutifs
while nbUn < 8
    if array(i) == 1
       nbUn = nbUn + 1;
    else
        nbUn = 0;
    end
    
    i = i+1;
end

position = i;
end