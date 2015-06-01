deff('y=f(x)', 'y=x^4+2*x^2-x-3');

function punto_fijo(f, g, x0, iter)
    xi = g(x0);
    i = 1;
    printf('i      xi     |xi-1 - xi|    |f(xi)|\n%u   %f       -        %f', i, xi, f(xi));
    for i=2:iter
        xip1 = g(xi);
        printf('\n%u   %f   %f     %f', i, xi, abs(xi-xip1), f(xi));
        xi = xip1;
    end    
endfunction
