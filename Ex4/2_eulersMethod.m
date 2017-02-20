function [y] = eulersMethod(func,t,h, n,y_0)

%y = zeros(length(t),2);
% y(1,1) = 10; % y_0;      % I can't make this work with y_0 and don't know why
% y(:,2) = t;
% 
% for i = 2:(length(t))
%     y(i,1) = y(i-1,1) + 2*y(i-1,2) %t(i-1); % y(i-1,1) + h*feval(func,y(i-1,1),t(i-1));
% end

% Yet another attempt

y = zeros(length(t));
y(1) = 10; % y_0;

for i = 1:(length(y)-1)
    y(i+1) = y(i) + h*feval(func,y(i),t(i));
end

end

