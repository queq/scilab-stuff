// Entradas: 	x,y Vectores fila
				m   Grado del polinomio
// Salidas:	C   Coeficientes del ajuste polinomial
function C = PolyFit(x,y,m)
	n = size(x,2);
	F = zeros(n,m+1);
	for i=1:n
		for k=1:m+1
			F(i,k) = x(i)^(k-1);
		end 
	end
	f = F';
	A = f*F;
	b = f*y';
	C = A\b;
endfunction