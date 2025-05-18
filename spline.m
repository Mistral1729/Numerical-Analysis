% Cubic Spline
x = 1:4; 
fx = [1, 5, 11, 8];
n = length(x);
h = 1; % equispaced
for i=2:n-1
    D(i-1) = (6/h)*((fx(i+1)-fx(i)) - (fx(i)-fx(i-1)));
end
% From initial conditions
M0 = 0; M3 = 0; 
% To determine coeff.s: M1, M2
A = [2*(h+h) h; h 2*(h+h)];
b = [D(1); D(2)];
coeff = A\b;
M1 = coeff(1); M2 = coeff(2);
% To find y(1.2) interpolate in [1,2] = [x(1), x(2)]
a = 1.2;
y_1 = (M0/(6*h))*((x(2)-a)^3 - (h^2)*((x(2)-a))) + (fx(1)/h)*(x(2)-a);
y_2 = (M1/(6*h))*((x(1)-a)^3 - (h^2)*((x(1)-a))) + (fx(2)/h)*(x(1)-a);
y = y_1-y_2;
fprintf('y(1.2)=%f. \n', y);
% To find y'(3) interpolate in [3,4] = [x(3), x(4)] and differentiate
da = 3;
dy_1 = (M2/(6*h))*((-3)*(x(4)-da)^2 + h^2) + (fx(4)/h);
dy_2 = (M3/(6*h))*((-3)*(x(3)-da)^2 + h^2) + (fx(3)/h);
dy = dy_1-dy_2;
fprintf('y''(3)=%f. \n', dy);