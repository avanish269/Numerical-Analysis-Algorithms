function r = secant_method(f,x0,x1,tol)
x=zeros(1,3);
x(3)=x1;
x(2)=x0;
n=10000;
for i=1:n
    f2=f(x(3));
    f1=f(x(2));
    x(1)=x(2);
    x(2)=x(3);
    x(3)=x(2)-(f2*(x(2)-x(1)))/(f2-f1);
    if abs(f2)<tol
        break;
    end
end
r=x(1);
end