

L1 = [4,0,0; 5,6,0; 7,8,9]; % L1 given


n = length(L1); % number of columns(/rows)

I = zeros(n,n); % preallocate right-hand side identity matrix, n-by-n

for i = (1:n)
    for j = (1:n)
        if j == i
            I(i,j) = 1; % assigns 1 to every i,i entry of the matirx
        end
    end
end

[n,p] = size(I); % gets the dimension of B
X = zeros(n,p); % preallocates the solution matirx

for j = (1:p)
    for i = (1:n)
        X(i,j) = (I(i,j) - L1(i,1:i) * X(1:i,j)) / I(i,j);
    end
end