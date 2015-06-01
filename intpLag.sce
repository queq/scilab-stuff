//	Entradas: X,Y Vectores fila
//			  X0  Punto a interpolar

//	Salidas:  Valor de la función interpolada en X0
//			* También se imprime el polinomio expandido

function z = intpLag(X,Y,X0)
	n = size(X,2);
	l = ones(n,1);
	L = ones(n,1);
	x = poly(0,"x");
	P = 0;
	for i=1:n
		l(i) = Y(i);
		s = 1;
		for j=1:n
			if j ~= i
				s = s * poly(X(j),"x",["roots"]);
				l(i) = l(i) / (X(i)-X(j));
				L(i) = (L(i)*(X0-X(j))) / (X(i)-X(j));
			end
		end
		s = s * l(i);
		P = P + s;
	end
	printf("Polinomio interpolador de los datos:\n");
	disp(P);
	z = Y*L;
endfunction