n = 0
n_iter = 0.332

while n_iter > 0
    n = 0.332
    n_init = n_iter;
    n_iter = n_iter * 2;
    n_integer = int(n_iter);
    n_iter = n_iter - n_integer;
    //printf("%f \\times 2 = \\mathbf{%f} + %f\\\\\n", n_init, n_integer, n_iter)
    printf("%i", n_integer);
end