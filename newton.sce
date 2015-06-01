function [xr, i] = newton(f, g, x0, eps)

    i = 1;

    xi = x0 - f(x0)/g(x0);
    xj = xi;

    while abs( f(xj) ) > eps
        i = i + 1;
        xj = xi - f(xi)/g(xi);
        xi = xj;
    end

    xr = xj;

endfunction
