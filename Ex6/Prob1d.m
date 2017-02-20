%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 6    TTK4130 Modeling and Simulation     Helene Hogstad Fossum %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Comment
% I did not complete the entire exercise 4, so the code for the different
% solvers are taken from the solutions manual. 

%% Parameters
u0 = 1;
v0 = 4;
y0 = [u0; v0];  % Initial conditions

h = 0.05;   % Step size
t0 = 0;     % Start time
tstop = 20; % Stop time
nstep = ((tstop-t0)/h) + 1; % Number of steps
time = t0:h:tstop;  % Time series

opt = optimset('Display','off', 'TolFun', 1e-8); % Options for fsolve

% Our system. du/dt = u(v-3), dv/dt = v(2-u), y = [u v]
f = @ (y,t) ([y(1)*(y(2) - 3); y(2)*(2-y(1))]); 

y_EE = zeros(size(y0,1), size(time,2)); % Explicit Euler
y_IE = zeros(size(y0,1), size(time,2)); % Implicit Euler
y_IM = zeros(size(y0,1), size(time,2)); % Implicit Midtpoint Rule

%% Explicit Euler
y_EE(:,1) = y0; 
for i = 1:nstep-1
    y_EE(:,i+1) = y_EE(:,i) +h*feval(f,y_EE(:,i),time(i)); 
end

%% Implicit Euler
y_IE(:,1) = y0;
for i = 1:nstep-1
    k1 = @(y) = 
    y_IE(:,i+1) = 
end

%% Midtpoint rule
y_IM(:,1) = y0;
for i = 1:nstep-1

end

%% Plot

% figure 
% hold on 
% subplot(1)
% plot(y_EE,time)
% 
% subplot(2)
% plot(Y_IE,time)
% 
% subplot(3)
% plot(Y_IM, time)

