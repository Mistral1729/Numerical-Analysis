% Composite Simpson's 1/3rd rule
f = @(x) 4/(x+log10(7*x*x+2*x+7));
a = 2.1; b = 2.2; n = 4096; I_1 = 0; I_2 = 0;
h = (b-a)/n;
X = a:h:b;
for i=1:n
   if mod(i,2)==0
       I_2 = I_2 + f(X(i));
   else
       I_1 = I_1 + f(X(i));
   end
end
I_f = (h/3)*(f(a)+ 2*I_1 + 4*I_2 +f(b));
fprintf('\n I_f = %.7f (correct to 7 decimal places).\n', I_f)