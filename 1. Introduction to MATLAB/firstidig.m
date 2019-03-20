function n=firstidig(x)
f=1;
i=1;
d=max(ceil(log10(abs(f))),1);
while d<x
    f=factposnum(i);
    d=max(ceil(log10(abs(f))),1);
    i=i+1;
end
n=i-1;
end