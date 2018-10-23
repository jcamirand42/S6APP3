clear all
close all
clc


load(strcat(pwd,'/texte/CodeAscii.mat'));
%load(strcat(pwd,'/texte/Ascii_Test.mat'));
load(strcat(pwd,'/texte/Ascii_Test_New.mat')); % contient les données binaires déjà formatés
%% TEST BINAIRE
% j=1;
% i=1;
% dataTransfer = [];
% 
% while i <= length(Data_Test_Bin)-8
%      bit8data = Data_Test_Bin(i:(i+8));
%     for n = 1:4
%         switch n
%             case 1
%                 dataTransfer(j,1) = bit8data(1);
%                 dataTransfer(j,2) = bit8data(2);
%             case 2
%                 dataTransfer(j,1) = bit8data(3);
%                 dataTransfer(j,2) = bit8data(4);
%             case 3
%                 dataTransfer(j,1) = bit8data(5);
%                 dataTransfer(j,2) = bit8data(6);
%             case 4
%                 dataTransfer(j,1) = bit8data(7);
%                 dataTransfer(j,2) = bit8data(8);
%             otherwise
%                 break
%         end
%         j = j+1;
%     end
%     i=i+8;
% end
% time = (1:length(dataTransfer))/1000;
% table1 = [time',dataTransfer(:,1)];
% table2 = [time',dataTransfer(:,2)];
% 
% sim('QAM2016');
% %===================== reconstituer le message
% data1= simout_element1.signals.values;
% data2= simout_element2.signals.values; 
% tableaureconstitue = [];
% for n= 1:length(data1)
%     tableaureconstitue(2*n-1)=data1(n);
%     tableaureconstitue(2*n)=data2(n);
% end
% %===================== trouver les 8 bit du debut
% nbUn = 0;
% nbZero = 0;
% debut = 0;
% fin = length(tableaureconstitue);
% 
% i = 1;
% 
% % Détection de 8 uns consécutifs
% while nbUn < 8
%     if tableaureconstitue(i) == 1
%        nbUn = nbUn + 1;
%     else
%         nbUn = 0;
%     end
%     
%     i = i+1;
% end
% 
% debut = i;
% nbUn = 0;
% %Détection des 8 un consécutif de la fin
% while i <= length(tableaureconstitue)
%     if Data_Test_Bin(i) == 0
%         nbZero = nbZero + 1;
%         nbUn = 0;
%     else
%         nbUn = nbUn+1;
%         nbZero = 0;
%     end
%     
%     % Fin du message
%     if nbZero <= 1 && nbUn == 8
%         break;
%     end
%     
%     i=i+1;
% end
% fin = i-1;

%==========================================
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
i=1;
binary=[];
while i <= length(binCode)
    res=cell2mat(binCode(i))-'0';
    binary = [binary; fct_convert8to2(res)];
    i=i+1;
end
binary = [ones(4,2);binary];
binary = [zeros(2,2);binary];
time = (1:length(binary))/1000;
table1 = [time',binary(:,1)];
table2 = [time',binary(:,2)];

message_test_ascii = char(fct_send_mess(Data_Test_Ascii,CodeAscii));

%==========================================
%==========================================
%TEST DATA
i = 1;
code = [];
j = 0;
while i <= length(Data_Test)
    [row, col] = find([CodeAscii{:}] == Data_Test(i), 1);
    while j < 8 
        
        j = j+1;
    end
    code(i) = CodeAscii{col, 2};
    i = i+1;
end

binCode = cellstr(dec2bin(code,8))';
i=1;
binary=[];
while i <= length(binCode)
    res=cell2mat(binCode(i))-'0';
    binary = [binary; fct_convert8to2(res)]; % conversion des séries de 8bit à 4*2
    i=i+1;
end
binary = [ones(4,2);binary];
binary = [zeros(2,2);binary];
time = (1:length(binary))/1000;
table1 = [time',binary(:,1)];
table2 = [time',binary(:,2)];

message_test_data = char(fct_send_mess(Data_Test_Ascii,CodeAscii));
disp('Ça fonctionne! : ');
disp(strcat('message_test_data: ',message_test_data))
