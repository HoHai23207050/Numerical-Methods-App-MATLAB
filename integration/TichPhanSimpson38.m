function result = TichPhanSimpson38(f, a, b, N)
    % Kiểm tra điều kiện N chia hết cho 3
    if mod(N, 3) ~= 0
        error('Với phương pháp Simpson 3/8, N phải chia hết cho 3.');
    end

    h = (b - a) / N;
    x = a:h:b;
    y = f(x);
    
    % Công thức Simpson 3/8
    weights = 3 * ones(1, length(y)); 
    weights(1) = 1;                   
    weights(end) = 1;                 
    weights(4:3:end-1) = 2;           
    
    result = (3 * h / 8) * sum(weights .* y);
end
