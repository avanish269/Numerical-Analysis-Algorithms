function f = rk2(f,a,fa,b,h)
x=a:h:b;
n=length(x);
y=zeros(1,n);
y(1)=fa;
for i=1:n-1
    y(i+1)=y(i)+h*(f(x(i),y(i))+f(x(i+1),y(i)+h*f(x(i),y(i))))/2;
end
f=y(n);
end