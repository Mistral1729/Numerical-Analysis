% Numerical solution of an ODE using Runge-Kutta Order 4
f = @(s,t) s^2 + t^2;
X = 1.3;
y(1) = 0; %y_0=y(x_0)
h = 0.1;
x = 1:h:X; n = length(x);
for i=2:n
    k_1 = h*f(x(i-1),y(i-1));
    k_2 = h*f(x(i-1)+(h/2),y(i-1)+(k_1/2));
    k_3 = h*f(x(i-1)+(h/2),y(i-1)+(k_2/2));
    k_4 = h*f(x(i-1)+h,y(i-1)+k_3);
    y(i) = y(i-1) + (k_1 + 2*k_2 + 2*k_3 + k_4)/6;
end
fprintf('\n y(%f) = %.5f (correct to 5 decimal places).\n', X, y(n))