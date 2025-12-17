function [x1, n] = tieptuyen(fx, a, b, saiso)
x0 = (a + b) / 2;
n = 0;
syms x;
f_sym = fx(x);             
df_sym = diff(f_sym, x);   
dfx = matlabFunction(df_sym);
while true
    n = n + 1;
    x1 = x0 - fx(x0)/dfx(x0);
    if abs(x1 - x0) < saiso
        break;
    end
    x0 = x1;
fprintf('Nghiem gan dung: %.6f\n', x1);
fprintf('So lan lap: %d\n', n);

end
