function y = fe_method(f,a,fa,b,h)
n=(b-a)/h;
t=a:h:b;
y1=zeros(1,n);
y1(1)=fa;
for i=1:n-1
    y1(i+1)=y1(i)+h*f(t(i),y1(i));
end
y=y1(n);
end