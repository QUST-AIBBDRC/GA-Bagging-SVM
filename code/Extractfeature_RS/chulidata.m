clear all
clc
%lambda=0;
%%%%%�ҳ����ݼ�������
%��str=
%%%%%
fid=fopen('negative');
string=fscanf(fid,'%s'); %�ļ�����
%ƥ����ַ���
firstmatches=findstr(string,'SV=')+4;%��ʼλ��
endmatches=findstr(string,'>')-1;
firstnum=length(firstmatches); %firstnum=endnum���е�����
endnum=length(endmatches);
  for k=1:firstnum
    j=1;
    lensec(k)=endmatches(k+1)-firstmatches(k)+1;%ÿ�����еĳ���
   for mm=firstmatches(k):endmatches(k+1)
        sequence(k,j)=string(mm); %�ַ�����
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