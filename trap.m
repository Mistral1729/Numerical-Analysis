% Composite Trapezoidal rule
f = @(x) 4/(x+log10(7*x*x+2*x+7));
a = 2.1; b = 2.2; n = 4096; I = 0;
h = (b-a)/n;
X = a:h:b;a
for i=1:n
   I = I + f(X(i));
end
I_f = (h/2)*(f(a)+2*I+f(b));
fprintf('\n I_f = %.7f (correct to 7 decimal places).\n', I_f)