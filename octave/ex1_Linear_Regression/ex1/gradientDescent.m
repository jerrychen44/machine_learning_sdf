function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

%X

%y

%theta

%alpha

%num_iters

%m

%J_history

%A=(X*theta - y)

%size(X,2)

%repmat(A, 1, size(X,2))

%X.*repmat((X*theta - y), 1, size(X,2))

%(1/m)*sum(   X.*repmat((X*theta - y), 1, size(X,2))   )


    for iter = 1:num_iters

        % ====================== YOUR CODE HERE ======================
        % Instructions: Perform a single gradient step on the parameter vector
        %               theta.
        %
        % Hint: While debugging, it can be useful to print out the values
        %       of the cost function (computeCost) and gradient here.
        %

        %method1
        %delta = (1/m)*sum(   X.*repmat((X*theta - y), 1, size(X,2))   );
        %theta = (theta - (alpha * delta'));


        %method2 iteration method
        %H = X * theta;
        %T = [0 ; 0];
        %for i = 1 : m,
        %    T = T + (H(i) - y(i)) * X(i,:)';
        %end

        %theta = theta - (alpha * T) / m;



        %method3 better
        theta = theta - alpha / m * X' * (X * theta - y);

        % ============================================================

        % Save the cost J in every iteration
        J_history(iter) = computeCost(X, y, theta);

    end

end
