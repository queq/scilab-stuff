// Entradas: 	x,y Vectores fila
// Salidas:	C   Coeficientes del ajuste
function C = FuncFit2(x,y)
	n = size(x,2);
	F = zeros(n,3);
	for i=1:n
		F(i,1) = x(i);
		F(i,2) = exp(-x(i));
		F(i,3) = F(i,1)*F(i,2);
	end
	f = F';
	A = f*F;
	b = f*y';
	C = A\b;
endfunction