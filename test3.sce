deff('y=f(x)', 'y=-0.5097293*exp(3.8693215*x)');
deff('y=f2(x)', 'y=1/(0.3462545*x+0.2681187)');
E_2 = 0;
n = size(x,2);
for i=1:n
	E_2 = E_2 + (abs(f(x(i)) - y(i)))^2
end
E_2 = (E_2 / n)^0.5;