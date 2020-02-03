clear all 
clc
tic;
%% data
shuju=xlsread('ga2_168.xlsx','Sheet1');
shu=zscore(shuju);
label=[ones(1224,1);ones(1319,1)*(-1)];
Cancer=shu;
train_label=label;
[M N]=size(Cancer);
%% Algorithm parameters
gen=5;
G=50;
Pc=0.75;
Pm=0.01;
Parent=rand(G,N)<0.9;
species=Parent;
children=[];
%% Main loop
for llll=1:2
    for generation=1:gen   
        Parent=species;
        [n m]=size(Parent);
        for i=1:n
            for j=i:n
                if rand<Pc
                    L=floor(rand*N);
                    children=[children;
                        [Parent(i,1:L),Parent(j,L+1:end);
                        Parent(j,1:L),Parent(i,L+1:end)]];
                end
            end
        end
        % variation
        for i=1:n
            if rand<Pm
            parent=Parent(i,:);
            parent=~parent;
            children=[children;parent];
            end
        end
        % Calculate the generational fitness value
        [m n]=size(children);
        value=zeros(m,1);
        for i=1:m
              if children(i,:)==zeros(1,N);
                 children(i,:)=children(1,:);
              end
        end
        for i=1:m
        loc=find(children(i,:)==1);
        train_shu=Cancer(:,loc);
        train_shu=zscore(train_shu);
        value(i)=svmtrain(train_label,train_shu,'-v 5 ');
        end
        % Eliminating offspring
        [m n]=sort(value,'descend');
        children=children(n(1:G),:);
        value=value(n(1:G));
        if llll==1
            f1(generation)=value(1);
            f2(generation)=mean(value);
            generation
        else
            f1(generation+gen)=value(1);
            f2(generation+gen)=mean(value);
            generation+gen
        end
        species=children;                                                                                               
    end
 end
save data_001.mat species 
toc;