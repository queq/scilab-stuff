// Entradas: f   Función a derivar, en varias variables
//			 x0,y0,z0  Coordenada de derivación
//			 h   Espaciamiento de datos
// Salidas:  z   Derivada fz

function z = difz_cent_Oh2(f,x0,y0,z0,h)
	z = (f(x0,y0,z0+h) - f(x0,y0,z0-h)) / (2*h);
endfunction