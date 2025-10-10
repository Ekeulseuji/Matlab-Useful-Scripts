% script m-file: uses x = 2 ^ (-k) for k = 1, 2, ... , 50; 
% and generates a table for f2(x)

format long g

A = exp(2.^[-1:-1:-50])';
B = ones(50,1);
C = log(exp(2.^[-1:-1:-50]))';

F2 = (A - B) ./ C;
disp(F2);
