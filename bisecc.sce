function [xr, i] = bisecc(f, a, b, eps)

    i = 0;

    if a > b
        xl = a;
        xd = b;
    else
        xl = b;
        xd = a;
    end

    xm = (xl + xd) / 2;

    while abs( f(xm) ) > eps

        i = i + 1;
        xm = (xl + xd) / 2;

        if (f(xm) * f(xd)) > 0
            xd = xm;
        elseif (f(xm) * f(xd)) < 0
            xl = xm;
        end

    end

    xr = xm;

endfunction
