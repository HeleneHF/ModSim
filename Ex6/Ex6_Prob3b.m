%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Exercise 6    TTK4130 Modeling and Simulation     Helene Hogstad Fossum %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 3b Inverse of the matrix
syms 'lambda';
syms 'h';

A = (1/12)*[12-3*lambda*h, 3*lambda*h; -3*lambda*h, 12-5*lambda*h];
I = eye(2);

star = inv(I-A);

