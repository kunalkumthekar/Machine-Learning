function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
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

for i = 1 : K %looping through clusters
    cluster_idx = 0; %initiating cluster index as 0
    sum = zeros(1,n); %initiating a summation of training examples m assosciated with same clusters K
      
    for j = 1 : m  %looping through training examples
        if(idx(j) == i) %making sure that a particlar cluster is assosciated to some training examples
            sum = sum + X(j,:); %incrementing summation by cluster assosciated training examples
            cluster_idx = cluster_idx+1; %incrementing next cluster K and then again looping through training examples
        end
    end
    centroids(i,:) = sum/cluster_idx; 
end
        
        






% =============================================================


end

