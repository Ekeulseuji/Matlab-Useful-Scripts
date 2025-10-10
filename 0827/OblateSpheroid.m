% script m-file: ask for the equatorial and polar radii for input
% and then display the surface area of the oblate spheroid in two ways.

format long g

r1 = input('Enter the equatorial radius: ');
r2 = input('Enter the polar radius: ');

gamma = acos(r2/r1);
A = 2*pi * ( r1^2 + (r2^2)/sin(gamma) * log(cos(gamma)/(1-sin(gamma))) );
a = 4*pi * ((r1+r2)/2)^2;

disp(['The surface area of the oblate spheroid is ', num2str(A),'.']);
disp(['The approximated surface area of the oblate spheroid is ', num2str(a),'.']);

