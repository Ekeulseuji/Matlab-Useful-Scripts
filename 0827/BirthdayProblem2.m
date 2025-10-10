% script m-file: asks the user to enter the number of simulations
% and then output the probability of birthday matches


m = input('Enter the number of simulations m: ');

S = randi(365, 30, m);  % stores the 30 birth dates for each simulation

sorted_S = sort(S);     % sorted birthdates
D = diff(sorted_S);     % difference between successive birthdates
i = find(D == 0);       % indices of zero differences

j = floor(i / 30);      % groups that these indices belong to
d = diff(j);            % difference between successive matched groups

% if a diff >1, then it means that there is a target group in between



k = numel(find(d~=0));  % number of groups with non-zero differences


% we want to find the number of groups with non-matching elements/dates

l = sum(d) - k;         % number of groups with non-matching birth dates

p = l / m;
disp(['The probability that 30 people have different birth dates is ',num2str(p),'.']);