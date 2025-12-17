function[a1,a0,r2] = HoiQuyTuyenTinh(x, y)
n = length(x);
sumx = 0;
sumy = 0;
St = 0;
Sr = 0;
sumxy = 0;
sumx2 = 0;
for i = 1 : n
    sumx = sumx + x(i);
    sumy = sumy + y(i);
    sumxy = sumxy + x(i)*y(i);
    sumx2 = sumx2 + x(i).^2;
end
%tính trung bình cộng
xm = sumx/n;
ym = sumy/n;
%tìm a0, a1:
a1 = (n.*sumxy - sumx.*sumy)/(n.*sumx2 - sumx.*sumx);
a0 = ym - a1.*xm;
    for i=1:n
        Sr = Sr + ((y(i) - a0 - a1.*x(i))).^2;
    end
    for i = 1 : n
        St = St + ((y(i) - ym)).^2;
    end
r2 = 1 - (Sr / St);
end