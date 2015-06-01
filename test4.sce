deff('y=f2(x)', 'y=-0.0934512*exp(33.638925*x)');
deff('y=f(x)', 'y=1/(-0.0028634*x+0.0307946)');
E_2 = 0;
n = size(x,2);
for i=1:n
	E_2 = E_2 + (abs(f(x(i)) - y(i)))^2
end
E_2 = (E_2 / n)^0.5;