P = 1;

for k = 0:29
    P = P * (365-k)/365;
end

disp(['The probability is ', num2str(P), '.']);