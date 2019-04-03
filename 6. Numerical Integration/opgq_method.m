function i = opgq_method(f,a,b)
w0=2;
x0=0;
i=w0*(b-a)*f((b-a)*x0/2+(b+a)/2)/2;
end