clc
echo off

% GF(2^3)���ɾ���
GenerMatix = [1 0 0;
                        0 1 0;
                        0 0 1;
                        6 4 3; 
                        1 1 1;
                        6 5 2;
                        7 5 3];
                    
 Remain_GenerateMatrix = GenerMatix;

% GF(2^3)��У�����
 HMatix =  [ 6 4 3 1 0 0 0;
                    1 1 1 0 1 0 0;
                    6 5 2 0 0 1 0;
                    7 5 3 0 0 0 1];

 disp('ԭʼ����Ϣλ��')               
 M = [6;  5;  4] % M����Ϣλ
 
 M = gf(M, 3);
 add_v = gf(add_v, 3);
 multi_v = gf(multi_v, 3);
 GenerMatix = gf(GenerMatix, 3);
 HMatix = gf(HMatix, 3);
 

 after_M =  GenerMatix * M ;
 disp('������������ϢΪ')
 after_M
 
error_Loc = randperm(7);  %����1��7��������� ģ�ⷢ�������
disp('������ɼ������')
error_Loc = error_Loc(1:4) %ȡǰ4��

disp('���ɴ���� ʣ������ɾ���Ϊ')
Remain_GenerateMatrix(error_Loc,:)=[]

after_M=double(after_M.x); %��٤�޻����е�Ԫ�� ת������������
disp('���ɴ���� ʣ�����Ϣ����Ϊ')
after_M(error_Loc,:)=[]

Remain_GenerateMatrix = gf(Remain_GenerateMatrix, 3);
after_M = gf(after_M, 3);
disp('���������ϢΪ��')
inv(Remain_GenerateMatrix) * after_M
 
 
 
 
 
 
 
 
 
 
 
 
 
 
        