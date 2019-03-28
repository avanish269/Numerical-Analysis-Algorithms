function r = bisection_method(f,a,b,tol)
f1=f(a);
f2=f(b);
if f1*f2>0
    r="Can't find roots in the given interval";
elseif f1*f2==0
    if f1==0
        r=a;
    else
        r=b;
    end
else
    i=1;
    n=ceil(log2(b-a)-log2(2*tol));
    while i<=n
        m=(a+b)/2;
        f1=f(a);
        f2=f(b);
        f3=f(m);
        if f1*f3<0
            b=m;
        elseif f2*f3<0
            a=m;
        else
            r=m;
            break;
        end
        if abs(f3)<tol
            r=m;
            break;
        end
        i=i+1;    
    end
end
end