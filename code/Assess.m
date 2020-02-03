function [Sensitivity,Specificity,ACC,MCC,F1_score] = Assess(true_labels,predict_labels)
%% This function is used to calculate the evaluation index of the binary sample system. 
% For example,Sensitivity,Specificity,ACC,MCC and F1_score.
% Input:
%   true_labels: true label matrix of size N*1.N is the total number of samples
%   predict_labels: predict_label matrix of size N*1.N is the total number of samples
% Output:
%   Five classifier evaluation indicators:
%   For example,Sensitivity,Specificity,ACC,MCC and F1_score.

%% Initial parameters
     tp = 0;
     fn = 0;
     tn = 0;
     fp = 0;
%% Loop
for run = 1:numel(true_labels)
         if true_labels(run) == 1  
             if predict_labels(run) == 1
                 tp = tp + 1;
             else
                 fn = fn + 1;
             end
         else
             if predict_labels(run) == -1
                 tn = tn + 1;
             else
                 fp = fp + 1;
             end
         end
     end
     Sensitivity = tp / (tp + fn)
     Specificity = tn / (tn + fp)
     MCC =(tp*tn-fp*fn)/sqrt((tp+fp)*(tn+fn)*(tp+fn)*(tn+fp))
     FPR =fp/(fp+tn);
     FNR =fn/(tp+fn);
     PPV =tp/(tp+fp)
     NPV =tn/(tn+fn)
     precision =tp/(tp+fp);
     recall =tp/(tp+fn);
     F1_score =2*precision*recall/(precision+recall)
     ACC =(tp+tn)/(tp+fn+tn+fp)
end