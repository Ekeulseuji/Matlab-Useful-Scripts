% script m-file: uses x = 2 ^ (-k) for k = 1, 2, ... , 50; 
% and generates a table for x, f(x), and f2(x)

format long g

A = exp(2.^[-1:-1:-50])';
B = ones(50,1);
X = (2.^[-1:-1:-50])';
C = log(exp(2.^[-1:-1:-50]))';

F = (A - B) ./ X;
F2 = (A - B) ./ C;


T = [X F F2];
disp(T);