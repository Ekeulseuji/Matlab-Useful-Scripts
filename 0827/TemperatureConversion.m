% script m-file: ask the user for an input temperature in Fahrenheit and
% then give an output in degrees Celsius, kelvins, and degrees Rankine.

format long
f = input('Enter the temperature in Fahrenheit: ');

c = (f - 32) * (5/9); 
k = c + 273.15; 
r = f + 459.67; 

disp(['The temperature ', num2str(f), '°F in degrees Celsius is ', num2str(c),'°C.']);
disp(['The temperature ', num2str(f), '°F in kelvins is ', num2str(k),'K.']);
disp(['The temperature ', num2str(f), '°F in degrees Rankine is ', num2str(r),'°R.']);
