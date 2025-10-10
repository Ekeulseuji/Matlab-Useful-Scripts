function invL = ltinverse(L)
% LTINVERSE X = ltinverse(L)
% Computes the inverse matrix of the lower triangular matrix.
% Input: L (lower triangular square matrix, n-by-n)
% Output: X (solution of AX = I, n-by-n)

n = length(L); % number of columns(/rows)

I = zeros(n,n); % preallocate right-hand side identity matrix, n-by-n

for i = (1:n)
    for j = (1:n)
        if j == i
            I(i,j) = 1; % assigns 1 to every i,i entry of the matirx
        end
    end
end

invL = forelim(L,I);
end