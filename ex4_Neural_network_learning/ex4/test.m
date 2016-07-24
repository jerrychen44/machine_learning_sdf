
%% Initialization
clear ; close all; clc


fprintf("++++++++++++++++")

num_catogory=4;
y=[ 2 4 2 3 2 1 1 2 2 4 1 2 3 3 1 2 1 1 3 3 4 3 3 4 4 4 4 ];
y=y';

Y=zeros(num_catogory,size(y,1));
E=eye(num_catogory);

Y=[];
for n=1:num_catogory
    n
    Y_index=find(y==n);
    Y(:,Y_index)=repmat(E(n,:),size(Y_index,1),1)'
    #for i=1:size(Y_index,1)
    #    Y(:,Y_index(i))=E(n,:);
    #end

end


%{
num_labels=4;
y=[ 2 4 2 3 2 1 1 2 2 4 1 2 3 3 1 2 1 1 3 3 4 3 3 4 4 4 4 ];
y=y';
y
Y=[];
E = eye(num_labels);    % 要满足K可以是任意，则不能写eye(10)！！
for i=1:num_labels
    Y0 = find(y==i);    % 找到等于y=i的序列号,替换向量
    repmat(E(i,:),size(Y0,1),1)
    Y(Y0,:) = repmat(E(i,:),size(Y0,1),1);
end
Y'
%}












