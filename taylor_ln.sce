function taylor_ln (N, x)
    logn(1) = x;
    for i=2:N
        logn(i) = logn(i-1) + ((-1^i) * (x^i) / i);
    end
    err = abs(log(x + 1) - logn(N));
    disp(['Error absoluto:', string(err)]);
endfunction
