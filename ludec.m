% Solution of a system of linear equations using LU decomposition
A = input('Enter the square coefficient matrix A: ');
b = input('Enter the constant column vector b: ');
n = length(A);
L = eye(n);
U = zeros(n);

U(1,:) = A(1,:);

for i=2:n
    for j=i:n
        U(i,j) = A(i,j) - L(i,1:i-1)*U(1:i-1,j);
    end
    for k=i+1:n
        L(k,i) = (A(k,i) - L(k,1:i-1)*U(1:i-1,i))/U(i,i);
    end
end

z = zeros(n,1);
x = zeros(n,1);
z(1) = b(1)/L(1,1);

for k=2:n
    z(k) = (b(k)-L(k,1:k-1)*z(1:k-1))/L(k,k);
end

x(n) = z(n)/U(n,n);
for k=n-1:-1:1
    x(k) = (z(k)-U(k,k+1:n)*x(k+1:n))/U(k,k);
end
fprintf('Solution of the given system Ax = b is\n x =\n');
disp(num2str(x, '%10.6f'));
fprintf('(correct to 6 decimal places).\n');