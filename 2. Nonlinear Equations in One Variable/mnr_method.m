function r = mnr_method(f,x0,tol)
syms x;
df=matlabFunction(diff(f(x)));
g=@(x)x-f(x)/df(x);
x=zeros(1,4);
x(4)=x0;
for i=1:3
    x(1)=x(2);
    x(2)=x(3);
    x(3)=x(4);
    x(4)=g(x(3));
end
e2=x(4)-x(3);
e1=x(3)-x(2);
e=e2/e1;
m=floor(1/(1-e)); %This is the multiplicity of root
n=1000;
g=@(x)x-(m*f(x)/df(x));
x=zeros(1,4);
x(4)=x0;
for i=1:n
    f1=f(x(4));
    x(1)=x(2);
    x(2)=x(3);
    x(3)=x(4);
    x(4)=g(x(3));
    if abs(f1)<tol
        break;
    end
end
r=x(4);
end