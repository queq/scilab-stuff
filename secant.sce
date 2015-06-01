function [xr, i] = secant(f, a, b, eps)

    i = 1;

    xi = a;
    xj = b;
    xk = ( f(xj)*xi - f(xi)*xj ) / ( f(xj) - f(xi) );

    while abs( f(xk) ) > eps
        i = i + 1;
        xi = xj;
        xj = xk;
        xk = ( f(xj)*xi - f(xi)*xj ) / ( f(xj) - f(xi) );
    end

    xr = xk;

endfunction
