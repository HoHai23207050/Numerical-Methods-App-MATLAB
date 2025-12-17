function result = TichPhanHinhThang(f, a, b, N)
    % Input: f (function handle), a (cận dưới), b (cận trên), N (số đoạn chia)
    h = (b - a) / N;
    x = a:h:b;      
    y = f(x);       
    
    % Công thức hình thang
    result = (h / 2) * (y(1) + 2 * sum(y(2:end-1)) + y(end));
end
