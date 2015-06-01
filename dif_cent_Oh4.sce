// Entradas: f   Función a derivar
//			 x0  Punto de derivación
//			 h   Espaciamiento de datos
// Salidas:  z   Primeras cuatro derivadas

function z = dif_cent_Oh4(f,x0,h)
	z1 = (-f(x0+2*h) + 8*f(x0+h) - 8*f(x0-h) + f(x0-2*h)) / (12*h);
	z2 = (-f(x0+2*h) + 16*f(x0+h) - 30*f(x0) + 16*f(x0-h) - f(x0-2*h)) / (12*h^2);
	z3 = (-f(x0+3*h) + 8*f(x0+2*h) - 13*f(x0+h) + 13*f(x0-h) - 8*f(x0-2*h) + f(x0-3*h)) / (8*h^3);
	z4 = (-f(x0+3*h) + 12*f(x0+2*h) - 39*f(x0+h) + 56*f(x0) - 39*f(x0-h) + 12*f(x0-2*h) - f(x0-3*h)) / (6*h^4);
	z = [z1; z2; z3; z4];
endfunction