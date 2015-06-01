//	Entradas: X,Y Vectores fila
//			  X0  Punto a interpolar
//			  A   Matriz de diferencias divididas

//	Salidas:  Valor de la función interpolada en X0
//			* También se imprime el polinomio expandido

function z = intpNewton(X,Y,X0,A)
	n = size(X,2);
	ne = ones(n,1);
	x = poly(0,"x");
	P = Y(1);
	ne(1) = Y(1);
	for i=2:n
		ne(i) = A(i,i+1);
		s = 1;
		for j=2:i
			s = s * (x-X(j-1));
			ne(i) = ne(i) * (X0-X(j-1));
		end
		s = s * A(i,i+1);
		P = P + s;
	end
	printf("Polinomio interpolador de los datos:\n");
	disp(P);
	z = sum(ne);
endfunction