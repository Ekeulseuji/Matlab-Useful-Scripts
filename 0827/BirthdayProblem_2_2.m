% script m-file: asks the number of people and the number of simulations
% and then output the probability of 3 or more people's birth dates match

format long

n = input('Enter the numebr of people n: ');
s = input('Enter the number of simulations s: ');

B = randi(365, n, s);  % assign everyone with a random birthday for s groups
s_B = sort(B);         % stores the sorted birthdates small to large in column
d_B = diff(s_B);       % difference between successive birthdates in column

I = find(d_B == 0);    % indice where difference = 0
d_I = diff(I);         % differences between these 0-difference indice
J = find(d_I == 1);    % finds successive 0-difference indice


e_I = I(J(1:end),1);        % extracts successive 0-difference indice

Group_I = floor(e_I/n) + 1; % simulation groups which those indice belongs to
Group_I = [0;Group_I];      % in case that group 1 doesn't have any 3+ match


d_Group = diff(Group_I); % differences between simulations groups e_I belongs to
K = find(d_Group >= 2);  % finds the group indice for no 3+ match

e_Group = d_Group(K(1:end),1);  % extracts the group for no 3+ match
Group_without_match = sum(e_Group) - numel(K);  % number of groups without match
% minus the extra count 1 due to each subtraction

P = 1 - (Group_without_match / s);   % probability of simulation group matches


disp('The probability for a group to ');
disp(['have 3 or more people with the same birthday is ', num2str(P)]);
disp(['for ', num2str(s), ' simulations with groups of ', num2str(n), ' people.'])
