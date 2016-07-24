
%% Initialization
clear ; close all; clc
fprintf("+++++++++++++++++++++++")

num_catogory=4;
y=[ 2 4 2 3 2 1 1 4 ];
y=y';

Y=zeros(num_catogory,size(y,1));
E=eye(num_catogory);

Y=[];
for n=1:num_catogory
    
    Y_index=find(y==n);
    Y(:,Y_index)=repmat(E(n,:),size(Y_index,1),1)';
    #for i=1:size(Y_index,1)
    #    Y(:,Y_index(i))=E(n,:);
    #end

end

Y
size(Y)
XX=[1 2 3 4 5;6 7 8 9 10;1 1 1 1 1;6 9 7 1 5; 1 2 3 4 5;6 7 8 9 10;1 1 1 1 1;6 9 7 1 5 ]
m=size(XX,1);
size(XX)

XTheta=[5 5 5 5 5;6 6 6 6 6;3 3 3 3 3;1 3 2 7 3]
size(XTheta)

z=XX*XTheta'
size(z)

a2 = sigmoid(z)
size(a2)

a3=a2;
#XTheta2=[2 2 2]
#size(XTheta2)
#z2=a2*XTheta2'
#size(z2)

#a3 = sigmoid(z2)
#size(a3)
fprintf("log(a3)+++++++++++++++++++++++")
log(a3)
size(log(a3))
fprintf("+Y'++++++++++++++++++++++")
Y'
size(Y')
fprintf("Y' .* log(a3)++++++++++++++++++++++")

cost=Y' .* log(a3)
size(Y' .* log(a3))

##sum ( cost(:) ) sigma from k=1~4 
#for sigma i=1 to m
sum(cost(:))


