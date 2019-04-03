function i = tpgq_method(f,a,b)
w0=1; w1=1;
x0=-1/sqrt(3); x1=1/sqrt(3);
i=w0*(b-a)*f((b-a)*x0/2+(b+a)/2)/2+w1*(b-a)*f((b-a)*x1/2+(b+a)/2)/2;
end