function [predict_label,dec]=Bagging(T,num1,num2,train_shu,train_label,test_shu,test_label)
%% This function enhances classifier performance by integrating weak classifiers
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

%% 
shuju_label=[];
for t=1:T
    [mx]= randi([1,num1],1,num2);
    train_data=train_shu(mx,1:end);
    train_data=zscore(train_data);
    test_shu=zscore(test_shu);
    train_target=train_label(mx);

%%SVM
   model=svmtrain(train_target,train_data);
   [Predict_label,accuracy,dec]=svmpredict(test_label,test_shu,model);
%%KNN 
%  Predict_label=knnclassify(test_shu,train_data,train_target,3,'euclidean');
%%DT 
%  tree=fitctree(train_data,train_target);
%  Predict_label=predict(tree,test_shu);
%%RF
% Factor = TreeBagger( 200,train_data,train_target);
% [Predict_label,Scores] = predict(Factor, test_shu);
% for i=1:509 
%     result(i)=str2num(Predict_label{i});
% end
% Predict_label=result';
%%NB
% Factor = NaiveBayes.fit(train_data,train_target);
% [dec,Predict_label] = posterior(Factor, test_shu);


shuju_label=[shuju_label,Predict_label];
end
% Vote for the test set to get the forecast set.
[num3,~]=size(test_shu);
for i=1:num3
[hh1,~]=find(shuju_label(i,:)==1);
hh1=sum(hh1);
[hh3,~]=find(shuju_label(i,:)==-1);
hh3=sum(hh3);
if hh1>hh3
    predict_label(i)=1;
else
    predict_label(i)=-1;
end
end
end