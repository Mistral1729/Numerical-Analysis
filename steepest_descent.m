% Solution of a system of nonlinear equations using the method of steepest descent
x = [0; 0; 0];
tolerance = 1e-5;
eps = Inf;

while eps >= tolerance
    f1 = 3*x(1)-cos(x2*x3)-0.5;
    f2 = x1^2 - 81*(x2+0.1)^2 + sin(x3) + 1.06;
    f3 = exp(-x1*x2) + 20*x3 + (10*pi-3)/3;
    F = [f1; f2; f3];
    J = jacobian(F);
    grad_g = 2*J'*F;
    H = 2*(J'*J);
    alpha = (grad_g'*grad_g)./(grad_g'*H*grad_g);
    x_new = x - alpha*grad_g;
    eps = norm(x_new - x);
    if eps < tolerance
        break;
    end
    x = x_new;
end
fprintf('x1 = %.6g\n', x1);
fprintf('x2 = %.6g\n', x2);
fprintf('x3 = %.6g\n', x3);