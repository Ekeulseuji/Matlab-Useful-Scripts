
% phi = (1 + sqrt(5)) / 2;      % exact value of the golden ratio
% phi_j = sqrt(1);              % initialize the value of phi_j to phi_0
% j = 0;                        % initialize the value of j to 0
% 
% disp('j            phi_j    abs. err.');  % the first line of table
% 
% 
% while abs(phi - phi_j) > 10^(-12) % keep running until error <= 10^(-12)
% 
%     phi_j = sqrt(1 + phi_j);
%     j = j + 1;      % j which corresponds to the phi_j calculated above
%     
%     if j < 10
%         fprintf('%d %16.12f %12.4e    \n', j, phi_j, abs(phi - phi_j));
%     end
%     
%     if j >= 10
%         fprintf('%d %15.12f %12.4e    \n', j, phi_j, abs(phi - phi_j));
%     end
%     
% end

% 
% K = linspace(0, 30, 31);
% 
% i = (-1) .^ K;
% j = (3 .^ K) .* (2 * K + 1);
% k = (6 / sqrt(3)) * (i ./ j);
% 
% a = cumsum(k);
% 
% 
% l = (5 .^ (2 * K + 1)) .* (2 * K + 1);
% m = (239 .^ (2 * K + 1)) .* (2 * K + 1);
% n = 16 * (i ./ l) - 4 * (i ./ m);
% 
% b = cumsum(n);

% plot([0:30], a, 'b-o');
% hold on
% plot([0:30], b, 'r-o');
% 
% xlabel('n');
% ylabel('a_n and b_n');
% 
% title('Sequences converging π');
% legend('a', 'b');
% 
% print -dpdf 'wiggly';
% shg;
% 
% 
% 
% clf;
% 
% 
% error_a = abs(a - pi);
% error_b = abs(b - pi);
% 
% semilogy([0:30], error_a, 'b-o');
% hold on;
% semilogy([0:30], error_b, 'r-o');
% 
% xlabel('n');
% ylabel('|a_n - π| and |b_n - π|');
% title('Sequences of errors');
% 
% legend('|a_n - π|', '|b_n - π|');
% axis tight;
% grid on;
% 
% shg;
% 
% 
% T = load('stocks.dat');
% 
% adjclose = T(linspace(4620, 1, 4620), 5);   
% 
% abs_gain = abs(adjclose(end,1) - adjclose(1,1));
% 
% relative_gain = abs_gain / adjclose(1,1) * 100;
% 
% monthlyAvg = (sum(reshape(adjclose, 30, 154)) / 30)';
% 
% 
% 
% j = 1;
% b_j = 0;
% monthlyMovingAvg = ones(4620,1);
% 
% while j <= 30
%     
%     b_j = b_j + (1/j) * adjclose(j,1);
%     monthlyMovingAvg(j,1) = b_j;
%     
%     j = j + 1;
% end
% 
% 
% while j > 30 && j <= 4620
%     
%     b_j = 0;
%     
%     for x = j-29:j
%         b_j = b_j + (1/30) * adjclose(x,1);
%     end
%     
%     monthlyMovingAvg(j,1) = b_j;
%     
%     j = j + 1;
% end
% 
% 
% clf;
% 
% 
% plot([1:4620], adjclose, 'b-');
% hold on;
% plot([1:4620], monthlyMovingAvg, 'r-');
% 
% xlabel('Open days since 2000-01-03');
% ylabel('stock price (USD)');
% title('Stock prices of Company A, 2016-2018');
% 
% legend('adjust close price', '30-day moving average');
% axis tight;
% grid on;
% 
% xlim([length(adjclose)-729, length(adjclose)]);
% 
% shg;
% 
% m = 21; d_angle = 4.5; d_rot = 90;n=3;
% th = linspace(0, 360, n+1) + d_rot;
%     V = [cosd(th);
%     sind(th)];
%     C = colormap(hsv(m));
%     s = sind(90+(180/n) - abs(d_angle))/sind(90-(180/n));
%     R = [cosd(d_angle) -sind(d_angle);
%     sind(d_angle) cosd(d_angle)];
%     hold off
%     for i = 1:m
%         if i > 1
%            V = s*R*V;
%         end
%         plot(V(1,:), V(2,:), 'Color', C(i,:))
%         hold on
%     end
%     set(gcf, 'Color', 'w')
%     axis equal, axis off


% 
% th = linspace(0,2*pi,360);
% f = @(th) ((-7+2) + (2)*(2-2*7)*(cos(th).^2));
% polar(th,f(th));



% format short
% 
% k = [1:20];
% x = (10.^(-k));
% f = (exp(x)-ones(1,20))./x;
% 
% f1 = (exp(x)-ones(1,20))./(log(exp(x)));
% 
% f2 = (exp(x)-ones(1,20))./(expm1(x));
% 
% x = x'; f = f'; f1 = f1'; f2 = f2';
% disp('      x       f      f1      f2');
% disp([x f f1 f2]);

% format long
% 
% b = [0.1; 0; 0; 0; 1];
% 
% for i = 10.^[1:12] % i = beta value
%     a = [1,-1,0,(0.1-i),i; 0,1,-1,0,0; 0,0,1,-1,0; 0,0,0,1,-1; 0,0,0,0,1];
%     x = a \ b; % compute x = a^-1 b
%     
%     j = abs(x(1)-1);
%     fprintf(' %3.2e  %5.4f \n', i, j);
% end
% 
% 
% 

% 
% 
% 
% A = [1,0,2; 2,3,1; 4,5,6];
% 
% 
%     n = length(A);
%     L = eye(n);   % ones on diagonal
%      % Gaussian elimination
%      for j = 1:n-1
%        for i = j+1:n
%          L(i,j) = A(i,j) / A(j,j);   % row multiplier
%          A(i,j:n) = A(i,j:n) - L(i,j)*A(j,j:n);
%        end
%      end
%      U = triu(A);
% 
% 
     
     
%      
%      
% A = [1,2,3,4,5;1,2,3,4,5;1,2,3,4,5;1,2,3,4,5;1,2,3,4,5];
% 
% 
%     n = length(A);
%     L = eye(n);   % ones on diagonal
%      % Gaussian elimination
%      for j = 3
%          i = j+1:n;
%          L(i,j) = A(i,j) / A(j,j);   % row multiplier
%          A(i,j:n) = A(i,j:n) - L(i,j)*A(j,j:n); 
%      end
%      U = triu(A);
% 
% 
% 
% A = [5,2;6,4];
% B = [3,6;7,1];
% L = [1,0;6/5,1];
% U = [5,2;0,8/5];
% LI = [1,0;-6/5,1]
% 
% j = U\(L\B);
% k = U\L\B;
% l = LI * U * B;

% 
% function [Q,R] = GramSchmidt(A)
% % GRAMSCHMIDT [Q,R] = GramSchmidt(A)
% % computes thin QR factorization for matirx A
% % Input:
% %    A  coefficient matrix (m-by-n and m >= n)
% % Output:
% %    Q  orthogonal matrix (m-by-n)
% %    R  upper triangular matrix (n-by-n, QR = A)
% 
% [m,n] = size(A); % returns [m n]
% Q = zeros(m,n); % preallocates m-by-n matrix Q
% R = zeros(n,n); % preallocates n-by-n matrix R
% 
% for j = 1:n  % a_j and q_j represents the columns
%     for i = 1:m
%         % makes q_j = a_j first
%         Q(1:m,j) = A(1:m,j);
%         
%         if i ~= j
%             % r(i,j) = q_i'* a_j
%             R(i,j) = Q(1:m,i)'* A(1:m,j);
%             % q_j = a_j - R(j-1,j)*q_j-1 - R(j-2,j)*q_j-2...
%             Q(1:m,j) = A(1:m,j) - R(1:j-1,j) * Q(1:m,1:j-1);
%         end
%         
%         if i == j
%             R(i,j) = norm(A(1:m,j)-R(1:j-1,j) * Q(1:m,1:j-1));
%         end
%         
%         % Q; q_j = a_j - r(j-1,j)*q_j-1 - r(j-2,j)*q_j-2.../r(j,j)
%         Q(1:m,j) = Q(1:m,j)/R(j,j);
%          
%     end
%     
% end
% 
% end

x = linspace(-1,1,6)'; % stores 600 equally spaced points between [-1,1]
V = x.^[0:5-1]; % vandermonde-type matrix with m=600,n=5

