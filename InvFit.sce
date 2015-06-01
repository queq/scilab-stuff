//	Entradas: x,y Vectores fila

//	Salidas:  X   Vector columna
//			  X = [A; B]

function X = InvFit(x,y)
	M = zeros(2,2)
	M(1,1) = x*x';
	M(1,2) = sum(x);
	M(2,1) = M(1,2);
	M(2,2) = size(x,2);
	b = [x*(y.^-1)'; sum(y.^-1)];
	X = M \ b;
endfunction