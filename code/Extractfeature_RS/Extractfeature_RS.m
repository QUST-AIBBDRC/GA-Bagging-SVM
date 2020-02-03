clear all
clc
load P_protein.mat
load N_protein.mat

A1=P_protein;
A2=N_protein;

num1=numel(A1);
num2=numel(A2);

for i=1:num1
vP2{i,1}=reduced(A1{i});
vP3{i,1}=mine5(A1{i});
vP4{i,1}=charge(A1{i});
vP5{i,1}=sencondary_str(A1{i});
vP6{i,1}=DHP4(A1{i});
end
for i=1:num2

vN2{i,1}=reduced(A2{i});
vN3{i,1}=mine5(A2{i});
vN4{i,1}=charge(A2{i});
vN5{i,1}=sencondary_str(A2{i});
vN6{i,1}=DHP4(A2{i});
end

v2_P=[cell2mat(vP2)];
v2_N=[cell2mat(vN2)];
v3_P=[cell2mat(vP3)];
v3_N=[cell2mat(vN3)];
v4_P=[cell2mat(vP4)];
v4_N=[cell2mat(vN4)];
v5_P=[cell2mat(vP5)];
v5_N=[cell2mat(vN5)];
v6_P=[cell2mat(vP6)];
v6_N=[cell2mat(vN6)];
save R_seq.mat  v2_P v2_N v3_P v3_N v4_P v4_N v5_P v5_N v6_P v6_N 
