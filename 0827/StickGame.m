

format long
sum = 0;       % a variable which holds the total number of winnings

for k = 1:2

    x = rand();    % length generated for the first stick
    y = rand();    % length generated for the second stick
    z = rand();    % length generated for the third stick

    if (x+y<z||x+z<y||y+z<x) && (abs(x-y)>z||abs(x-z)>y||abs(y-z)>x)
        result = 1;
    else
        result = 0;
    end
    
    sum = sum + result;
end

disp([num2str(sum),',',num2str(x),',',num2str(y),',', num2str(z)]);