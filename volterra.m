% Numerical solution of Volterra's integral equation
ker = @(x,t) cos(x-t);
phi = @(x) exp(x);
lambda = 2;
a = 0; b = 0.4;
h = 0.1;
x = a:h:b;
n = length(x);
t = x;
% Trapezoidal rule
w(1) = h/2;
w(n) = h/2;
f = [phi(x(1)), zeros(1, n-1)];
for i=2:n
    sum = 0;
    for j=1:i-1
        sum = sum + lambda*w(j)*ker(x(i), t(j))*f(j);
    end
    f(i) = phi(x(i)+sum)./(1-lambda*w(i)*ker(x(i), t(i)));
end
f_x = [x' f'];
fprintf('\t x\t\t f(x)\n');
disp(num2str(f_x, '%10.6f'));
fprintf('(correct to 6 decimal places).\n');