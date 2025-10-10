
function [Q,R] = GramSchmidt(A)
% GRAMSCHMIDT [Q,R] = GramSchmidt(A)
% computes thin QR factorization for matirx A
% Input:
%    A  coefficient matrix (m-by-n and m >= n)
% Output:
%    Q  orthogonal matrix (m-by-n)
%    R  upper triangular matrix (n-by-n, QR = A)

[m,n] = size(A); % returns [m n]
Q = zeros(m,n); % preallocates m-by-n matrix Q
R = zeros(n,n); % preallocates n-by-n matrix R

for j = 1:n  % a_j and q_j represents the columns
    for i = 1:m
        % makes q_j = a_j first
        Q(1:m,j) = A(1:m,j);
        
        if i ~= j
            % r(i,j) = q_i'* a_j
            R(i,j) = Q(1:m,i)'* A(1:m,j);
            % q_j = a_j - R(j-1,j)*q_j-1 - R(j-2,j)*q_j-2...
            Q(1:m,j) = A(1:m,j) - R(1:j-1,j) * Q(1:m,1:j-1);
        end
        
        if i == j
            R(i,j) = norm(A(1:m,j)-R(1:j-1,j) * Q(1:m,1:j-1));
        end
        
        % Q; q_j = a_j - r(j-1,j)*q_j-1 - r(j-2,j)*q_j-2.../r(j,j)
        Q(1:m,j) = Q(1:m,j)/R(j,j);
         
    end
    
end

end
