function i = csimpson_rule(f,a,b,r)
if(rem(r,2)~=0)
    i="Number of intervals must be even";
    return ;
end
h=(b-a)/r;
t=a:h:b;
n=length(t);
p=0;
for j=1:2:n-1
    p=p+trap_rule(f,t(j),t(j+2));
end
i=p;
end