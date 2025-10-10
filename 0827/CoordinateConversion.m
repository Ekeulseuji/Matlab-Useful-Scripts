% script m-file: asks the user to enter Cartesian coordinates 
% and then converts them to corresponding Spherical coordinates

x = input('Enter the x-coordinate: ');
y = input('Enter the y-coordinate: ');
z = input('Enter the z-coordinate: ');


rho = sqrt(x^2 + y^2 + z^2);

if z > 0
    phi = atan(sqrt(x^2 + y^2)/z);
elseif z < 0
    phi = atan(sqrt(x^2 + y^2)/z) + pi;
end


if x == 0 && y == 0
    theta = 0;
else
    theta = atan2(y,x);
end


disp(['(ρ,φ,θ) = ( ', num2str(rho),', ',num2str(phi),', ',num2str(theta),')']);
