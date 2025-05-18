% Computation of all the eigenvalues of a matrix using Jacobi's iteration
A = input('Enter a square matrix A: ');
V = eye(n);
tolerance = 1e-5;
k = 1;
while max(max(abs(A-diag(diag(A))))) > tolerance
    [m1, i] = max(abs(A-diag(diag(A))));
    [m2, j] = max(m1);
    i = i(j);
    if i > j
        temp = j;
        j = i;
        i = temp;
    end
    theta = (1/2)*atan(2*A(i,j)/(A(i,i)-A(j,j)));
    S = eye(n);
    S(i,i) = cos(theta);
    S(i,j) = -sin(theta);
    S(j,i) = sin(theta);
    S(j,j) = cos(theta);
    fprintf('Rotation %d gives:\n ', k);
    k = k+1;
    S
    V = V*S
    A = S'*A*S;
end
fprintf('Eigenvalues of the given matrix A are: \n');
disp(num2str(diag(A), '%10.5f'));
fprintf('with corresponding eigenvectors are the columns of: \n');
disp(num2str(V, '%10.5f'));
fprintf('(correct to 5 decimal places).\n');