function X = backsub(A,B)
% BACKSUB X = backsub(A,B)
% Solves and upper triangular linear system.
% Input: A (upper triangular square matrix, n by n)
%        B (right-hand side martix, n by p)
% Output: X (solution of AX = B, n by p)

n = length(A);
X = zeros(n,p); % preallocate
for i = (n:-1:1)
    for j = (p:-1:1)
        X(i,j) = (B(i,j) - A(i,i+1:n) * X(i+1:n,j)) / (A(i,i));
    end
end
