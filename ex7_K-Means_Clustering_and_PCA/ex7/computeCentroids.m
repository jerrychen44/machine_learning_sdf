function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%


%idx is a vector with the cluse number 1 2 3 inside
%idx==1, with return the idx element value is 1 , and will show 1 , others are 0
%find(idx==1) means return all index place of above value is 1.
%idx =

%   1   2   1   1   1   3   2   1   2   3   3   3   2   1   3   1   3   1   2   1

%>> idx==2
%ans =

%   0   1   0   0   0   0   1   0   1   0   0   0   1   0   0   0   0   0   1   0

%>> find(idx==2)
%ans =

%    2    7    9   13   19

%>>
for k = 1 : K,
	id = find(idx == k);
    %get those below gropk item x,y and sums up to / total number
	centroids(k,:) = sum(X(id , :)) / size(id , 1);
end




% =============================================================


end

