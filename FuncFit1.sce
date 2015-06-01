// Entradas: 	x,y Vectores fila
// Salidas:	C   Coeficientes del ajuste
function C = FuncFit1(x,y)
	n = size(x,2);
	F = zeros(n,3);
	for i=1:n
		F(i,1) = cos(x(i));
		F(i,2) = sin(x(i));
		F(i,3) = sin(2*x(i));
	end
	f = F';
	A = f*F;
	b = f*y';
	C = A\b;
endfunction