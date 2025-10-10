% script m-file: calculate the exact value of each distinct solution

format long

disp('There are five distict roots for x^5 = -1.');
disp('The solutions are:');

n = 0;
while n <= 4
    x = -exp(2*pi*1i*n/5);
    disp(['x', num2str(n+1),' = ', num2str(x)]);
    n = n + 1;
end
