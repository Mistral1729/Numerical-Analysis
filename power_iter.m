% Computation of the spectral radius of a matrix using Power iteration
A = input('Enter a square matrix A: ');
x = [1; 1; 1];
y = A*x;
tolerance = 1e-5;
m1 = max(abs(y));
x = y/m1;
m2 = max(abs(A*x));
eps = abs(m2-m1);
while eps > tolerance
    y = A*x;
    m3 = max(abs(y));
    x = y/m3;
    eps = abs(m3-m2);
    m2 = m3;
end
fprintf('Spectral radius of the given matrix A is: \n');
disp(num2str(m3, '%10.5f'));
fprintf('with corresponding eigenvector\n x = \n');
disp(num2str(x, '%10.5f'));
fprintf('(correct to 5 decimal places).\n');