function taylor_sen(N, x)
    sen(1) = x;
    for i=2:N
        sen(i) = sen(i-1) + ((-1^(i-1)) * (x^(2*(i-1)+1)) / factorial(2*(i-1)+1));
    end
    err = abs(sin(x) - sen(N));
    disp(['Error absoluto:', string(err)]);
endfunction
