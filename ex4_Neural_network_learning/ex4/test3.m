%% Initialization
clear ; close all; clc


fprintf("++++++++++++++++\n")


m1=[1; 4]
m2=[0 1 1; 2 2 0]

cost=m1.*m2
sum(cost)
sum(cost(:))