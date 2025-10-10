format short

A1 = [1,2,3; 4,5,6; 7,8,9];  % random test matrix A1

% part of the function (unchanged)
n1 = length(A1);
L1 = eye(n1);
for j1 = 1:n1-1
    for i1 = j1+1:n1
        L1(i1,j1) = A1(i1,j1) / A1(j1,j1);
        A1(i1,j1:n1) = A1(i1,j1:n1) - L1(i1,j1)*A1(j1,j1:n1);
    end
end



A2 = [1,2,3; 4,5,6; 7,8,9];  % same random test matrix A2

% part of the function (changed)
n2 = length(A2);
L2 = eye(n2);
for j2 = 1:n2-1
    i2 = j2+1:n2;
    L2(i2,j2) = A2(i2,j2) / A2(j2,j2);
    A2(i2,j2:n2) = A2(i2,j2:n2) - L2(i2,j2)*A2(j2,j2:n2);
    
end
U1 = triu(A1)
U2 = triu(A2)
L1
L2
