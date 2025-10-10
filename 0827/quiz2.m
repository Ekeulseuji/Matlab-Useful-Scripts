% n = input(' n = ');
% phi = 1;
% for j = -1:n-2
%     phi = 1 + 1/phi;
% end
% fprintf(' phi_n = %20.16f\n', phi);
% 



% n = input(' n = ');
% j = 0;
% while j < n
%     j = j+1;
%     if mod(j,3) == 1
%         disp(j)
%     end
% end
% 
% k = ceil(n/3);
% l = floor(n/3);
% f = round(n/3);
% disp([num2str(k),' ' ,num2str(l),' ',num2str(f)]);

k = atan(3/2);
l = atan2(-3,-2);
disp([num2str(k),' ' ,num2str(l)]);
    

