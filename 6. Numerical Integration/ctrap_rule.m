function i = ctrap_rule(f,a,b,r)
h=(b-a)/r;
t=a:h:b;
n=length(t);
p=0;
for j=1:n-1
    p=p+trap_rule(f,t(j),t(j+1));
end
i=p;
end