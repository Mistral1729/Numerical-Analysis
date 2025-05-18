# Description

This repositry contains the MATLAB implementations of some common numerical algorithms. They were coded by me as part of a Numerical Analysis course in the $2^\text{nd}$ year, $4^\text{th}$ semester of my undergraduate maths degree.

## Contents

- `gaussian.m`
    
    Numerical solution of a linear system $Ax=b$ using naive Gaussian elimination.
- `gauss_jordan.m`

    Numerical solution of a linear system $Ax=b$ using naive Gauss-Jordan elimination.
- `inverse.m`

    Numerical computation of $A^{-1}$ using naive Gauss-Jordan elimination.
- `ludec.m`

    Numerical solution of a linear system $Ax=b$ using $LU$ decomposition.
- `gauss_jacobi.m`

    Numerical solution of a linear system $Ax=b$ using Gauss-Jacobi iteration.
- `gauss_seidel.m`

    Numerical solution of a linear system $Ax=b$ using Gauss-Seidel iteration.
- `sor.m`

    Numerical solution of a linear system $Ax=b$ using SOR (Successive-Over-Relaxation) iteration.
- `power_iter.m`

    Numerical computation of the spectral radius $\lambda=\rho(A)$ of $A$ and its corresponding eigenvector using Power iteration.
- `jacobi_iter.m`

    Numerical computation of all eigenvalues $\lambda_i$ and corresponding eigenvectors of $A$ using Jacobi's iteration.
- `newton_method.m`

    Numerical solution of a nonlinear system $f(x,y) = 0$ in $\mathbb R^2$ by Newton's method.
- `steepest_descent.m`

    Numerical solution of a nonlinear system $f(x,y) = 0$ in $\mathbb R^2$ by the method of steepest descent (which, here, is equivalent to the gradient descent method as the norm is Euclidean).
- `fredholm.m`

    Numerical solution of a type-II Fredholm integral equation (we use trapezoidal rule for the quadrature formula)
    $$\phi(x) = f(x) + \lambda\int_a^bK(x,t)\phi(t)dt.$$
- `volterra.m`

    Numerical solution of a type-II Volterra integral equation (we use trapezoidal rule for the quadrature formula)
    $$\phi(x) = f(x) + \lambda\int_a^xK(x,t)\phi(t)dt.$$