function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.
X_poly = zeros(numel(X), p);

% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th
%               column of X contains the values of X to the p-th power.
%
%

%X =[1 2 3 4 5 6 7 8 9 10 11 12]'

%{
X =
  -15.9368
  -29.1530
   36.1895
   37.4922
  -48.0588
   -8.9415
   15.3078
  -34.7063
    1.3892
  -44.3838
    7.0135
   22.7627
%}

for i = 1:p
    %X_poly_my(:,i)=X(i,:).^i


    X_poly(:,i) = X.^i;
end


% =========================================================================

end
