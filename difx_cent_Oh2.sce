// Entradas: f   Función a derivar, en varias variables
//			 x0,y0  Coordenada de derivación
//			 h   Espaciamiento de datos
// Salidas:  z   Derivada fx

function z = difx_cent_Oh2(f,x0,y0,h)
	z = (f(x0+h,y0) - f(x0-h,y0)) / (2*h);
endfunction