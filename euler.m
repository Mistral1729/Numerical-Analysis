% Euler
f = @(s,t) s + t^(0.5);
X = 1.5;
y(1) = 0.7240; %y_0=y(x_0)
h = 0.1;
x = 0.5:h:X; n = length(x);
for i=2:n
    y(i) = y(i-1) + h*f(x(i-1),y(i-1));
end
fprintf('\n y(%f) = %.5f (correct to 5 decimal places).\n', X, y(n))