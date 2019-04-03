function pf = lagrange_inter(f,a,b,n)
x=linspace(a,b,n);
y=f(x);
n=length(x);
p=0;
for i=1:n
    f=1;
    for j=1:n
        if i~=j
            c=poly(x(j))/(x(i)-x(j));
            f=conv(f,c);
        end
    end
    t=f*y(i);
    p=p+t;
end
pretty(poly2sym(p))
fplot(poly2sym(p))
xlim([a,b]);
pf=p;
end