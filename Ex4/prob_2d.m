%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 4    ModSim      Helene Hogstad Fossum   Problem 2             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 2b
% Parameters
A = 0.01;       % [m^2]
m = 200;        % [kg]
p_0 = 2*10^5;   % [N/m^2]
g = 9.81;       % [m^2/s]
K = 1.40;       % []

v = 1; %???
x = linspace(1,1000);

% The energy function
E = (1/(K-1))*p_0*A*x.^(-(K-1)) + m*g*x + 0.5*m*v^2;

% Plotting
figure
hold on 
plot(x,E);
title('The Energy Function')
xlabel('x')
ylabel('Energy')