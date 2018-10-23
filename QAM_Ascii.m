clear all
close all
clc


load(strcat(pwd,'/texte/CodeAscii.mat'));
%load(strcat(pwd,'/texte/Ascii_Test.mat'));
load(strcat(pwd,'/texte/Ascii_Test_New.mat')); % contient les donn�es binaires d�j� format�s
%% TEST BINAIRE
nbUn = 0;
nbZero = 0;
debut = 0;
fin = length(Data_Test_Bin);

i = 1;

% D�tection de 8 uns cons�cutifs
while nbUn < 8
    if Data_Test_Bin(i) == 1
       nbUn = nbUn + 1;
    else
        nbUn = 0;
    end
    
    i = i+1;
end
debut = i;
nbUn = 0;
% D�tection des 8 un cons�cutif de la fin
while i <= length(Data_Test_Bin)
    if Data_Test_Bin(i) == 0
        nbZero = nbZero + 1;
        nbUn = 0;
    else
        nbUn = nbUn+1;
        nbZero = 0;
    end
    
    % Fin du message
    if nbZero <= 1 && nbUn == 8
        break;
    end
    
    i=i+1;
end
fin = i-1;


j=1;
i=debut;

dataTransfer = [];

while i <= fin-8
     bit8data = Data_Test_Bin(i:(i+8));
    for n = 1:4
        switch n
            case 1
                dataTransfer(j,1) = bit8data(1);
                dataTransfer(j,2) = bit8data(2);
            case 2
                dataTransfer(j,1) = bit8data(3);
                dataTransfer(j,2) = bit8data(4);
            case 3
                dataTransfer(j,1) = bit8data(5);
                dataTransfer(j,2) = bit8data(6);
            case 4
                dataTransfer(j,1) = bit8data(7);
                dataTransfer(j,2) = bit8data(8);
            otherwise
                break
        end
        j = j+2;
    end
    i=i+8;
end
time = (1:length(dataTransfer))/1000;
table1 = [time',dataTransfer(:,1)];
table2 = [time',dataTransfer(:,2)];

sim('QAM');
data1= simout_element1.signals.values(4:end); % delay for the data
data2= simout_element2.signals.values(4:end); 
tableaureconstitue = [data1,data2];
%=========================================
% subplot(2,1,1);
% plot(simout_element1);
% ylim([-0.1 1.1]);
% xlim([0 0.35]);
% subplot(2,1,2);
% plot(table1(:,2));
% ylim([-0.1 1.1])
% xlim([0 375]);
%==========================================
%% TEST CODE ASCII
i = 1;
code = [];
j = 0;
while i <= length(Data_Test_Ascii)
    [row, col] = find([CodeAscii{:}] == Data_Test_Ascii(i), 1);
    while j < 8 
        
        j = j+1;
    end
    code(i) = CodeAscii{col, 2};
    i = i+1;
end

binCode = cellstr(dec2bin(code,8))';