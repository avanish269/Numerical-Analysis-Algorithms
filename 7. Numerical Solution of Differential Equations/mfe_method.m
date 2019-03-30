function y = mfe_method(f,a,fa,b,h)
t=a:h:b;
n=length(t);
y1=zeros(1,n);
y2=zeros(1,n);
y1(1)=fa;
y2(1)=fa;
for i=1:n-1
    y1(i+1)=y2(i)+h*f(t(i),y2(i));
    y2(i+1)=y2(i)+h*(f(t(i),y2(i))+f(t(i+1),y1(i+1)))/2;
end
y=y2(n);
end