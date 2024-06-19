% Given values
L = 2;% Input value for L
R = 25;% Input value for R
U_deg = 30;% Input value for U in degrees
WD = 20;% Input value for WD
n = 1;% Input value for n
n_prime = 1.56;% Input value for n'

% Convert U from degrees to radians for calculation
U = deg2rad(U_deg);
% Solving for I in radians
I = asin((WD - L - R) * n * sin(U) / (n_prime * R));
% Convert I from radians to degrees
I_deg = rad2deg(I);
% Solving for I' in radians
I_prime = asin((WD - L - R) * sin(U) / R);
% Convert I' from radians to degrees
I_prime_deg = rad2deg(I_prime);
% Solving for U' in radians
U_prime = U + I_prime - I;
% Convert U' from radians to degrees
U_prime_deg = rad2deg(U_prime);
% Solving for WD'
WD_prime = (1 + sin(deg2rad(I_deg)) / sin(deg2rad(U_prime_deg))) * R;
% Solving for M'
M_prime = abs((WD - L - R) / (R - WD_prime));
% Solving for NA'
NA_prime = n_prime * sin(deg2rad(U_prime_deg));

% Display results
% fprintf('U_prime: %.4f degrees\n', U_prime_deg);
fprintf('WD_prime: %.4f\n', WD_prime);
fprintf('M_prime: %.4f\n', M_prime);
fprintf('NA_prime: %.4f\n', NA_prime);
