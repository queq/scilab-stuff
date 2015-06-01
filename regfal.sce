function [xr, i] = regfal(f, a, b, eps)

    i = 0;

    if a > b
        xl = a;
        xd = b;
    else
        xl = b;
        xd = a;
    end

    xm = ( f(xd)*xl - f(xl)*xd ) / ( f(xd) - f(xl) );

    while abs( f(xm) ) > eps

        i = i + 1;
        xm = ( f(xd)*xl - f(xl)*xd ) / ( f(xd) - f(xl) );

        if (f(xm) * f(xd)) > 0
            xd = xm;
        elseif (f(xm) * f(xd)) < 0
            xl = xm;
        end

    end

    xr = xm;

endfunction
