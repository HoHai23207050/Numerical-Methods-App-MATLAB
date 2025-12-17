function [root, iter] = bisectionMethod(app, f, a, b, tol)
    iter = 0;
    maxIter = 1000; 
    if f(a) * f(b) > 0
        uialert(app.UIFigure, 'Chia đôi: Hàm số không trái dấu trên khoảng [a, b].', 'Lỗi thuật toán');
        root = NaN;
        return;
    end
    while (abs(b - a) / 2) > tol && iter < maxIter
        iter = iter + 1;
        c = (a + b) / 2;
        
        if f(c) == 0 
            root = c;
            return;
        end       
        if f(a) * f(c) < 0
            b = c; % Nghiệm nằm trong [a, c]
        else
            a = c; % Nghiệm nằm trong [c, b]
        end
    end
    
    root = (a + b) / 2; 
    if iter >= maxIter
        uialert(app.UIFigure, 'Chia đôi: Không hội tụ trong số lần lặp tối đa.', 'Cảnh báo');
    end
end