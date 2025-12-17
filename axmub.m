function [a, b, r2] = axmub(x, y)
% axmub_manual  Tính tay hệ số a, b cho mô hình y = a * x^b
%   nhận x,y (vectors), trả về a, b và R^2 trên dữ liệu log10
%
%   Lưu ý: yêu cầu x>0 và y>0.

    % Kiểm tra
    if any(x <= 0) || any(y <= 0)
        error('Lỗi input', 'Yêu cầu x>0 và y>0 để dùng log10.');
    end

    % Chuyển log10
    X = log10(x(:));   % cột
    Y = log10(y(:));   % cột
    n = length(X);
    if n < 2
        error('Lỗi kích thức', 'Cần ít nhất 2 điểm dữ liệu.');
    end

    % Tính tổng cần thiết
    sumX  = sum(X);
    sumY  = sum(Y);
    sumXY = sum(X .* Y);
    sumX2 = sum(X .^ 2);

    % Tính hệ số A1 (b) và A0 (log10(a))
    denom = n * sumX2 - sumX^2;
    if abs(denom) < eps
        error('axmub_manual:Singular', 'Dữ liệu X bị suy biến (phân bố X không phù hợp).');
    end

    A1 = (n * sumXY - sumX * sumY) / denom;   % b
    A0 = (sumY - A1 * sumX) / n;              % intercept = log10(a)

    b = A1;
    a = 10^(A0);

    % Tính R^2 (trên không gian log)
    Yhat = A0 + A1 .* X;
    Sr = sum((Y - Yhat).^2);
    St = sum((Y - mean(Y)).^2);
    if St == 0
        r2 = NaN; % không xác định nếu dữ liệu Y không đổi
    else
        r2 = 1 - (Sr / St);
    end
end