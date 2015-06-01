// Entradas: x,y Vectores fila
// Salidas: matriz A con componentes diferencias divididas

function A = divdif(x,y)
	n = size(x,2);
	A = zeros(n,n+1);
	A(:,1) = x';
	A(:,2) = y';
	for j=3:n+1
		for i=j-1:n
			A(i,j) = (A(i,j-1)-A(i-1,j-1))/(x(i)-x(i-(j-2)));
		end
	end
endfunction