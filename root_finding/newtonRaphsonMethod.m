function [root, iter] = newtonRaphsonMethod(app, f, f_prime, x0, tol)
    iter = 0;
    maxIter = 1000; 
    x_current = x0;
    
    while iter < maxIter
        fx = f(x_current);
        fpx = f_prime(x_current);
        
        
        if abs(fx) < tol 
            root = x_current;
            return;
        end
        
        if fpx == 0
            uialert(app.UIFigure, 'Tiếp tuyến: Đạo hàm bằng 0. Chọn điểm xấp xỉ ban đầu khác.', 'Lỗi thuật toán');
            root = NaN;
            return;
        end
        
        
        x_next = x_current - (fx / fpx);
        
        
        if abs(x_next - x_current) < tol
            root = x_next;
            return;
        end
        
        x_current = x_next;
        iter = iter + 1;
    end
    
    root = x_current;
    if iter >= maxIter
        uialert(app.UIFigure, 'Tiếp tuyến: Không hội tụ trong số lần lặp tối đa.', 'Cảnh báo');
    end
end
