function r = nr_method(f,x0,tol)
syms x;
df=matlabFunction(diff(f(x)));
g=@(x)x-f(x)/df(x);
x=zeros(1,2);
x(2)=x0;
n=1000;
for i=1:n
    f1=f(x(2));
    x(1)=x(2);
    x(2)=g(x(1));
    if abs(f1)<tol
        break;
    end
end
r=x(1);
end