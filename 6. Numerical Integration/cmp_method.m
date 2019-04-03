function i = cmp_method(f,a,b,r)
h=(b-a)/r;
t=a:h:b;
n=length(t);
p=0;
for j=1:n-1
    p=p+mp_method(f,t(j),t(j+1));
end
i=p;
end