% 
% a = 6/sqrt(3) * ((-1)^0) / ((3^0) * (2*0+1)); % stores the value of a0 first
% 
% 
% i = 0; % variable which holds the number of while-loop executions
% 
% while abs(a - pi) >= 10^-6
%  
%     n = 0;
% 
%     for k = 0:i
%         n = n + ((-1)^k) / ((3^k) * (2*k+1));
%     end
% 
%     a = (6/sqrt(3)) * n;
%     fprintf('a%d = %8.7f.\n', i, a);
% 
%     i = i + 1;
% 
% end



b = 16*((-1)^0) / ((5^(2*0+1))*(2*0+1)) - 4*((-1)^0) / ((239^(2*0+1))*(2*0+1)); 
% stores the value of b0 first

j = 0;

% while abs(b - pi) > 10^-6
%     
%     b = 0;
% 
%     for x = 0:j
%         b = b + 16*((-1)^k)/((5^(2*k+1))*(2*k+1)) - 4*((-1)^k)/((239^(2*k+1))*(2*k+1));
%     end
% 
%     fprintf('b%d = %8.7f.\n', j, b);
% 
%     j = j + 1;
% end

k = 0;
x = 16*((-1)^k)/((5^(2*k+1))*(2*k+1));
y = 4*((-1)^k)/((239^(2*k+1))*(2*k+1));
b = x-y;

disp([num2str(x), ' ', num2str(y), ' ', num2str(b)]);

