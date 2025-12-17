function [root, iter] = simpleIterationMethod(app, g, x0, tol)
    iter = 0;
    maxIter = 1000; 
    x_current = x0;
    
    while iter < maxIter
        iter = iter + 1;
        x_next = g(x_current);
        
        % Kiểm tra điều kiện hội tụ (Phân kỳ)
        if isnan(x_next) || isinf(x_next)
            uialert(app.UIFigure, 'Lặp đơn: Hàm g(x) phân kỳ. Nghiệm không hội tụ.', 'Lỗi thuật toán');
            root = NaN;
            return;
        end

        % Điều kiện dừng: Sai số tương đối (hoặc tuyệt đối)
        if abs(x_next - x_current) < tol
            root = x_next;
            return;
        end
        
        x_current = x_next;
    end
    
    root = x_current;
    if iter >= maxIter
        uialert(app.UIFigure, 'Lặp đơn: Không hội tụ trong số lần lặp tối đa.', 'Cảnh báo');
    end
end