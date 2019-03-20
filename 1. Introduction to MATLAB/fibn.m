function a=fibn(n)
if n==1
    a=1;
elseif n==2
    a=[1,1];
else
    a=[1,1];
    for i=3:n
        a(i)=a(i-1)+a(i-2);
    end
end
end