% script m-file: asks the user to enter an integer n 
% and then output all n roots of x^n + 1 = 0.

format short

n = input('Enter the integer n: ');

A = (exp([1:n] * (2 * pi * 1i / n)) / (-1))';

disp(A(1:end, 1));
