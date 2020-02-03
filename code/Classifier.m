clear all
clc
tic;% start the timer
%% Data preprocessing
shuju=xlsread('G1_G2_G3.xlsx','Sheet1');
shuju=shuju(1:(end-1),:);
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
%%SVM
% model=svmtrain(train_label,train_shu,'-t 1');
% [predict_label,accuracy,dec]=svmpredict(test_label,test_shu,model);
%%KNN      
% predict_label=knnclassify(test_shu,train_shu,train_label,3,'euclidean');
%%DT 
% tree=fitctree(train_shu,train_label);
% predict_label=predict(tree,test_shu);
%%RF
% Factor = TreeBagger( 200,train_shu,train_label);
% [predict_label,dec] = predict(Factor, test_shu);
% for i=1:numel(test_label)
%     result(i)=str2num(predict_label{i});
% end
% predict_label=result';
%%NB
% Factor = NaiveBayes.fit(train_shu,train_label);
% [dec,predict_label] = posterior(Factor, test_shu);

yucelabel=[yucelabel;predict_label];
testlabel=[testlabel;test_label];
yuzhi=[yuzhi;dec];
 end
toc;