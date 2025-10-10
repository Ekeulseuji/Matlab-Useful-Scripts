% script m-file: asks the user to enter a year 
% and then determines whether the year is a leap year or not

year = input('Enter the year: ');

if ~ (mod(year, 4) == 0)
    disp(['Year ', num2str(year), ' is a common year.']);
elseif ~ (mod(year, 100) == 0)
    disp(['Year ', num2str(year), ' is a leap year.']);
elseif ~ (mod(year, 400) == 0)
    disp(['Year ', num2str(year), ' is a common year.']);
else
    disp(['Year ', num2str(year), ' is a leap year.']);
end
    