function result = TichPhanSimpson13(f, a, b, N)
    % Kiểm tra điều kiện N chẵn
    if mod(N, 2) ~= 0
        error('Với phương pháp Simpson 1/3, N phải là số chẵn.');
    end
    
    h = (b - a) / N;
    x = a:h:b;
    y = f(x);
    
    % Công thức Simpson 1/3
    sum_odd = sum(y(2:2:end-1));  
    sum_even = sum(y(3:2:end-2)); 
    
    result = (h / 3) * (y(1) + 4 * sum_odd + 2 * sum_even + y(end));
end