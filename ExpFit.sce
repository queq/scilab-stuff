//	Entradas: x,y Vectores fila

//	Salidas:  X   Vector columna
//			  X = [A; C]

function X = ExpFit(x,y)
	M = zeros(2,2)
	M(1,1) = x*x';
	M(1,2) = sum(x);
	M(2,1) = M(1,2);
	M(2,2) = size(x,2);
	b = [x*log(y)'; sum(log(y))];
	X = M \ b;
	X(2) = exp(X(2));
endfunction