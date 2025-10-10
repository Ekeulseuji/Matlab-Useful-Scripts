% script m-file: asks the user to enter an integer for the number of people
% and then output how many of their birth dates matches

n = input('Enter the number of people n: ');

B = randi(365, 1, n);

b = sort(B);         % stores the sorted birthdates (small to large)
c = diff(b);         % difference between successive birthdates
    
i =  find(b == 0);   % stores the matched birthdates

disp(['There is/are ',num2str(numel(i)),' match(es) among ',num2str(n),' people.']);
    
