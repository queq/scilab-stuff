// Entradas: f   Función a derivar, en varias variables
//			 x0,y0  Coordenada de derivación
//			 h   Espaciamiento de datos
// Salidas:  z   Derivada fy

function z = dify_cent_Oh2(f,x0,y0,h)
	z = (f(x0,y0+h) - f(x0,y0-h)) / (2*h);
endfunction