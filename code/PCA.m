function [ FinalData,reconData ] = PCA( dataSet, k )  
%% This function is using the PCA algorithm Dimensionality reduction.
% Input:
%   dataSet:the matrix of size N*C.N is the total number of samples.
%           C is the number of attributes of the sample.
%   k:The dimension to be reduced to.
% Output:
%   FinalData:Data after dimension reduction.the matrix of size N*C.N is
%   the data dimension after dimension reduction.
%   reconData:Mapping of data after space reduction in space.

%%
    [m,n] = size(dataSet);  
    dataSetMean = mean(dataSet);  
    dataSetAdjust = zeros(m,n);  
    for i = 1 : m  
        dataSetAdjust(i , :) = dataSet(i , :) - dataSetMean;  
    end  
    dataCov = cov(dataSetAdjust);  
    [V,D] = eig(dataCov);  
    d = zeros(1, n);  
    for i = 1:n  
        d(1,i) = D(i,i);  
    end  
    [maxD, index] = sort(d);  
    index_k = index(1, (n-k+1):n);  
    V_k = zeros(n,k);  
    for i = 1:k  
        V_k(:,i) = V(:,index_k(1,i));  
    end  
    FinalData = dataSetAdjust*V_k;  
    reconData = FinalData * V_k';  
    for i = 1 : m  
        reconData(i , :) = reconData(i , :) + dataSetMean;  
    end  
end  