clear all
clc
%lambda=0;
%%%%%找出数据集的序列
%求str=
%%%%%
fid=fopen('negative');
string=fscanf(fid,'%s'); %文件输入
%匹配的字符串
firstmatches=findstr(string,'SV=')+4;%开始位置
endmatches=findstr(string,'>')-1;
firstnum=length(firstmatches); %firstnum=endnum序列的条数
endnum=length(endmatches);
  for k=1:firstnum
    j=1;
    lensec(k)=endmatches(k+1)-firstmatches(k)+1;%每条序列的长度
   for mm=firstmatches(k):endmatches(k+1)
        sequence(k,j)=string(mm); %字符序列
        j=j+1;
   end
   
  end
  [m,n]=size(sequence);
  N_protein={};
  for i=1:m
      N_protein{i}=sequence(i,:);
  end
  save N_protein.mat N_protein
% for i=1055:firstnum-1
% paac(i,:)= PAAC(sequence(i,1:lensec(i)),49);
% end
% save  xinne-pseaac49.mat  paac