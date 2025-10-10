% script m-file: solve the quadratic equation with user input k

k = input('Enter the value of k: ');

r1 = (1 + sqrt(1 + (4 * k))) / 2;
r2 = (1 - sqrt(1 + (4 * k))) / 2;

disp(['For k = ', num2str(k),',']);
if r1 >= r2
    disp(['the solution is r = ', num2str(r1),'.']);
else
    disp(['the solution is r = ', num2str(r2),'.']);
end
