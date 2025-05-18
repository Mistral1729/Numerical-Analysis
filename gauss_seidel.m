% Solution of a system of linear equations using Gauss-Seidel iteration
A = input('Enter the square coefficient matrix A: ');
b = input('Enter the constant column vector b: ');
n = length(A);

x = [1; 0; 1];

eps = Inf;
tolerance = 10e-5;
iter = 0;

while eps>tolerance
    x_old = x;
    eps = 0;
    for i = 1:n
        sum = 0;
        %lower triangular
        for j=1:i-1
            sum = sum + A(i,j)*x(j);
        end
        %upper triangular
        for j=1+1:n
            sum = sum + A(i,j)*x(j);
        end
        x(i) = (b(i) - sum)/A(i,i);
    end
    iter = iter+1;
    eps = norm(A*x - b);
end
fprintf('Solution of the given system Ax = b is\n x =\n');
disp(num2str(x, '%10.6f'));
fprintf('(correct to 6 decimal places, reached after %d iterations).\n', iter);