maxN = input('Ingrese un entero N>1: ');
e(1) = 1;
for i=2:maxN
    e(i) = e(i-1) + (1 / factorial(i-1));
end
disp(['Sumas Parciales']);
disp([1:maxN; e']);
err = abs(exp(1)-e(maxN));
disp(['Error absoluto:', string(err)]);