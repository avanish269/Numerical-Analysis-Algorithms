function f = rk4(f,a,fa,b,h)
x=a:h:b;
n=length(x);
y=zeros(1,n);
y(1)=fa;
for i=1:n-1
    k1=h*f(x(i),y(i));
    k2=h*f(x(i)+h/2,y(i)+k1/2);
    k3=h*f(x(i)+h/2,y(i)+k2/2);
    k4=h*f(x(i)+h,y(i)+k3);
    y(i+1)=y(i)+(k1+2*k2+2*k3+k4)/6;
end
f=y(n);
end