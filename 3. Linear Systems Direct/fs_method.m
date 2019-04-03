function x1 = fs_method(a,b)
[m,n]=size(a);
x=zeros(1,n);
for i=1:n
    s=0;
    for j=1:i-1
        s=s+a(i,j);
    end
    x(i)=(b(i)-s)/a(i,i);
end
x1=x;
end