%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 6    TTK4130 Modeling and Simulation     Helene Hogstad Fossum %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 3b Inverse of the matrix
syms 'lambda';
syms 'h';

% A = (1/12)*[12-3*lambda*h, 3*lambda*h; -3*lambda*h, 12-5*lambda*h];
% I = eye(2);
% 
% star = inv(I-A);

A = (h*lambda/12)*[3 -3; 3 5];
I = eye(2);
b_T = (1/4)*[1 3];

R = 1 + (lambda*h)*b_T*(inv(I-(lambda*h*A)))*ones(2,1);

% Controlling Problem 4b
syms 'h';
syms 'rho';
syms 'g';

x = 1/(sqrt(rho*g*h));
diff(x);

    