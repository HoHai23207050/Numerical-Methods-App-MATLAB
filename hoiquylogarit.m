function[a, b, r2] = hoiquylogarit(x,y)
    Y = log10(y(:));
    X = log10(x(:));
    n = length(x);
%tính tổng
sumX = sum(X);
sumY = sum(Y);
sumXY = sum(X.*Y);
sumX2 = sum(X.^2);
%tinh A1(b)
A1 = (n*sumXY - sumX*sumY)/(n*sumX2 - sumX^2);
%tinh A0(log10(a))
A0 = (sumY - A1 * sumX) / n;
a = 10^A0; % Convert A0 back to a
b = A1; % Assign the slope to b

    % Tính R^2 trong miền log10
    Y_hat = A0 + A1 .* X;
    Sr = sum((Y - Y_hat).^2);
    St = sum((Y - mean(Y)).^2);
    r2 = 1 - Sr / St;
end