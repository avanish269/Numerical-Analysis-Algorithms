function i = simpson_rule(f,a,b)
i=(b-a)*(f(a)+4*f((a+b)/2)+f(b))/6;
end