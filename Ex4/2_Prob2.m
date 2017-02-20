%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 4    Problem 2 ModSim      Helene Hogstad Fossum               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% The model
% Parameters
A = 0.01;       % [m^2]
m = 200;        % [kg]
p_0 = 2*10^5;   % [N/m^2]
g = 9.81;       % [m^2/s]
K = 1.40;       % []

% Simulation Parameters 
t_0 = 0;       % Starttime in [sec]
t_stop = 10;   % Stoptime in [sec]
h = 0.1;       % Timestep in [sec]
n = (t_stop-t_0)/h; % Number of iterations
t = linspace(t_0,t_stop,n);     % Time instances
y_0 = 10;       % Initial value

% The Model
f = @(y,t) [ y(2); -g*(1-(1/y(1))^K) ];

% The Energy function (x = t)
v = 1; % I don't understand where this came from or what it is suppose to be
E = (1/(K-1))*p_0*A*t.^(-(K-1))+ m*g*t + 0.5*m*v^2;

%% The methods
y_euler_out = eulersMethod(f,t,h,y_0);
% y_imp_euler_out = impEulersMethod();
% y_midpoint_out = midtpoint();

%% Printing
% figure
% hold on 
% xlabel('time [sec]');
% ylabel('Energy');
% title('2d....At least the plotting works....')
% 
% plot(t,y_euler_out(:,1),'b'); %,y_imp_euler_out,t,'b',y_midpoint_out,'r');
