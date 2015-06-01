// Entradas: f   Función a derivar
//			 x0  Punto de derivación
//			 h   Espaciamiento de datos
// Salidas:  z   Primeras cuatro derivadas

function z = dif_cent_Oh2(f,x0,h)
	z1 = (f(x0+h) - f(x0-h)) / (2*h);
	z2 = (f(x0+h) - 2*f(x0) + f(x0-h)) / (h^2);
	z3 = (f(x0+2*h) -2*f(x0+h) + 2*f(x0-h) - f(x0-2*h)) / (2*h^3);
	z4 = (f(x0+2*h) -4*f(x0+h) +6*f(x0) - 4*f(x0-h) + f(x0-2*h)) / (h^4);
	z = [z1; z2; z3; z4];
endfunction