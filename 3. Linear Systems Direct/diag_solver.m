function x = diag_solver(a,b)
[m,n]=size(a);
x=zeros(1,n);
for i=1:n
    x(i)=b(i)/a(i,i);
end
end