% Solution of a system of linear equations using naive Gauss-Jordan elimination
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

% Convert augmat from echelon to reduced row echelon form
for k=2:n
    for l=k-1:-1:1
        augmat(l,:) = augmat(l,:) - augmat(k,:)*augmat(l,k);
    end
end

% Extract the solution x to Ax = b
x = augmat(:,n+1);
fprintf('Solution of the given system Ax = b is\n x =\n');
disp(num2str(x, '%10.6f'));
fprintf('(correct to 6 decimal places).\n');