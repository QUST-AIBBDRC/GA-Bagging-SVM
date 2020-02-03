clear all
clc
tic;% start the timer
%% Data preprocessing
shuju=xlsread('demo.xlsx','Sheet1');
shuju=shuju(1:end,:);
shu=zscore(shuju);%±ê×¼»¯
label=[ones(1224,1);ones(1319,1)*(-1)];
data=[shu,label];
[M,N]=size(data);
testlabel=[];yucelabel=[];yuzhi=[];
%% Setting parameters
num=5;
indices=crossvalind('Kfold',M,num);
%% main
 for k=1:num                     
        indice1 = (indices == k);
        indice2= ~indice1;       
        train_shu=data(indice2,1:(N-1));
        train_label=data(indice2,N);
        test_shu=data(indice1,1:(N-1));
        test_label=data(indice1,N);
%%Bagging_SVM
% Input:
%   T:Learning rounds
%   num1:the number of training sets.
%   num2:the number of random resamples of the algorithm.num2<=num1.
%   train_shu:the training set data matrix of size N*C.N is the number of
%   the training set.C is the number of sample attributes.
%   train_label:the training set data matrix of size N*1.N is the number of
%   the training set.
%   test_shu:the test set data matrix of size N*C.N is the number of
%   the test set.C is the number of sample attributes.
%   test_label:the test set data matrix of size N*1.N is the number of
%   the test set.
% Output:
%   predict_label:the prediction label obtained by the algorithm.
%   dec:the score matrix.
T=5;
[num1,NNN]=size(train_shu);
num2=fix(num1/2);
[predict_label,dec]=Bagging(T,num1,num2,train_shu,train_label,test_shu,test_label)
yucelabel=[yucelabel;predict_label'];
testlabel=[testlabel;test_label];
yuzhi=[yuzhi;dec];
 end
toc;