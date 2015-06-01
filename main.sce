clear; clc;

PATH = get_absolute_file_path('main.sce');
// exec(PATH+'bisecc.sce', -1);
// exec(PATH+'regfal.sce', -1);
// exec(PATH+'newton.sce', -1);
// exec(PATH+'secant.sce', -1);
exec(PATH+'baseconv.sce', -1);
// deff('y=f(x)', 'y=cos(x) - 2*x');
// deff('y=g(x)', 'y=-sin(x) - 2');

// [xr, i] = bisecc(f, 0, 1, 1e-6);          // bisecc test
// printf('\nBisección:         %i iteraciones, Xr = %.7f', i, xr);

// [xr, i] = regfal(f, 0, 1, 1e-6);          // regfal test
// printf('\nRegla falsa:       %i iteraciones, Xr = %.7f', i, xr);

// [xr, i] = newton(f, g, 1, 1e-6);          // newton test
// printf('\nNewton-Raphson:    %i iteraciones, Xr = %.7f', i, xr);

// [xr, i] = secant(f, 0, 1, 1e-6);          // bisecc test
// printf('\nSecante:           %i iteraciones, Xr = %.7f', i, xr);

