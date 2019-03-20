function f= factposnum(n)
f=1;
if(n<=0)
    f=-1;
else
    while(n>0)
        f=f*n;
        n=n-1;
    end
end
end
