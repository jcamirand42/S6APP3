clear all
close all
clc


load(strcat(pwd,'/texte/CodeAscii.mat'));
load(strcat(pwd,'/donnees/Data_Binaire_new.mat'));
%% TEST BINAIRE
j=1;
i=1;
dataTransfer = [];
% Data_Test_Bin
while i <= length(Data_1_Bin)-8
     bit8data = Data_1_Bin(i:(i+8));
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
        j = j+1;
    end
    i=i+8;
end
time = (1:length(dataTransfer))/1000;
table1 = [time',dataTransfer(:,1)];
table2 = [time',dataTransfer(:,2)];
message_test_ascii = char(fct_send_mess(CodeAscii));

%==========================================
%==========================================
% load(strcat(pwd,'/texte/Ascii_Test_New.mat')); % contient les données binaires déjà formatés
%% TEST CODE ASCII
% i = 1;
% code = [];
% j = 0;
% while i <= length(Data_Test_Ascii)
%     [row, col] = find([CodeAscii{:}] == Data_Test_Ascii(i), 1);
%     while j < 8 
%         
%         j = j+1;
%     end
%     code(i) = CodeAscii{col, 2};
%     i = i+1;
% end
% 
% binCode = cellstr(dec2bin(code,8))';
% i=1;
% binary=[];
% while i <= length(binCode)
%     res=cell2mat(binCode(i))-'0';
%     binary = [binary; fct_convert8to2(res)];
%     i=i+1;
% end
% binary = [ones(4,2);binary];
% binary = [zeros(2,2);binary];
% time = (1:length(binary))/1000;
% table1 = [time',binary(:,1)];
% table2 = [time',binary(:,2)];
% 
% message_test_ascii = char(fct_send_mess(CodeAscii));

%==========================================
%==========================================
%TEST DATA
% i = 1;
% code = [];
% j = 0;
% while i <= length(Data_Test)
%     [row, col] = find([CodeAscii{:}] == Data_Test(i), 1);
%     while j < 8 
%         
%         j = j+1;
%     end
%     code(i) = CodeAscii{col, 2};
%     i = i+1;
% end
% 
% binCode = cellstr(dec2bin(code,8))';
% i=1;
% binary=[];
% while i <= length(binCode)
%     res=cell2mat(binCode(i))-'0';
%     binary = [binary; fct_convert8to2(res)]; % conversion des séries de 8bit à 4*2
%     i=i+1;
% end
% binary = [ones(4,2);binary];
% binary = [zeros(2,2);binary];
% time = (1:length(binary))/1000;
% table1 = [time',binary(:,1)];
% table2 = [time',binary(:,2)];
% 
% message_test_data = char(fct_send_mess(CodeAscii));
% disp('Ça fonctionne! : ');
% disp(strcat('message_test_data: ',message_test_data))