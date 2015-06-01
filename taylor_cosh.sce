function taylor_cosh(N, x)
    cos_h(1) = 1;
    for i=2:N
        cos_h(i) = cos_h(i-1) + ((x^(2*(i-1))) / factorial(2*(i-1)));
    end
    err = abs(cosh(x) - cos_h(N));
    disp(['Error absoluto:', string(err)]);
endfunction
