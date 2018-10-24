function returnedArray = fct_send_mess(codeAscii)
sim('QAM2016');
data1= simout_element1.signals.values;
data2= simout_element2.signals.values; 
tableReturned= [];
for n= 1:length(data1)
    tableReturned(2*n-1)=data1(n);
    tableReturned(2*n)=data2(n);
end

tableReturned = tableReturned(fct_findStartOfArray(tableReturned):end);
i=1;
counter = 1;
index_ascii = 1;
array_ascii = [];
doubleVal =[];
while i<=length(tableReturned)-8
    doubleVal(index_ascii) = bi2de(tableReturned(i:i+7),'left-msb');
    i = i+8;
    index_ascii = index_ascii+1;
end
returnedArray = doubleVal;
end