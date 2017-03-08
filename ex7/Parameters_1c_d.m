%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 7    TTK4130     Helene Hogstad Fossum                         %
% Problem 1                                                               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parameters
L = 19.76;          % Length [m]
beta = 1.7051*10^9; % Bulk modulus [Pa]
rho_0 = 870;        % Density [kg/m^3]
r_0 = 6.17*10^(-3); % Pipe radius [m]
v_0 = 8*10^(-5);    % Kinematic viscosity [m^2/s]

% State-Space formulation
A = [];
B = [];
C = [1 0 0 --- 1];
D = 0; %?