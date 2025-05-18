% Numerical solution of a system of linear equations using naive Gaussian elimination
A = input('Enter the square coefficient matrix A: ');
b = input('Enter the constant column vector b: ');
n = length(A);
augmat = [A b];

% Convert augmat to echelon form
for i=1:n-1
    if augmat(i,i)~=0
        augmat(i,:) = augmat(i,:)/augmat(i,i);
    end
    for k=i:n-1
        augmat(k+1,:) = augmat(k+1,:) - augmat(i,:)*augmat(k+1,i);
    end
end
if augmat(n,n)~=0
    augmat(n,:) = augmat(n,:)/augmat(n,n);
end

% Backsubstitute to find x
x = zeros(n,1);
x(n) = augmat(n,n+1);
for i=n-1:-1:1
    sum = 0;
    for j=i+1:n
        sum = sum + x(j)*augmat(i,j);
    end
    x(i) = augmat(i,n+1) - sum;
end

fprintf('Solution of the given system Ax = b is\n x =\n');
disp(num2str(x, '%10.6f'));
fprintf('(correct to 6 decimal places).\n');