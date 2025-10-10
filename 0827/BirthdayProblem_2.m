% script m-file: asks the user to enter an integer for the number of people
% and then determines whether 3 or more people's birth dates match

n = input('Enter the number of people n: ');

b = randi(365, 1, n);  % assign everyone with a random birthday
s_b = sort(b);         % stores the sorted birthdates small to large

d_b = diff(s_b);       % difference between successive birthdates
i = find(d_b == 0);    % stores the indice where difference = 0

d_i = diff(i);         % difference between indices where difference = 0
j = find(d_i == 1);    % finds whether there are successive 0s

bool_value = ceil(numel(j)/(numel(j) + 1));



