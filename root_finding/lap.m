function [x1, n] = lap(fx, fp, a, b, saiso)
x0 = (a+b)/2;
n = 0;
while true
    n = n + 1;
    x1 = fp(x0);
    if abs(x1 - x0) < saiso
        break;
    end
    x0 = x1;
fprintf('Nghiem gan dung: %.6f\n', x1);
fprintf('So lan lap: %d\n', n);

end
