% Solution of a system of nonlinear equations using the Newton's method
x = 3.4;
y = 2.2;
tolerance = 1e-8;
eps = Inf;
while eps >= tolerance
    F = [x+3*log10(x)-y^2; 2*x^2-x*y-5*x+1];
    J = [1+(3/(x*log(10))) -2*y; 4*x-y-5 -x];
    delta = -J\F;
    x = x + delta(1);
    y = y + delta(2);
    eps = norm(delta);
end
fprintf('x = %.8g\n', x);
fprintf('y = %.8g\n', y);