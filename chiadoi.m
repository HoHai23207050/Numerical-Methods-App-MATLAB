function [c, n] = chiadoi(fx, a, b, saiso)
if fx(a)*fx(b) > 0
    error('Khoang [a,b] khong thoa man dieu kien f(a)*f(b)<0');
end
n = 0;
e = b-a;
while e > saiso
    n = n+1;
    c = (a+b)/2;
    fc = fx(c);
    if fx(a)*fc < 0
        b = c;
    else
        a = c;
    end
    e = b-a;
end
c = (a+b)/2;
fprintf('Nghiem gan dung: %.6f\n', c);
fprintf('So lan lap: %d\n', n);
end
