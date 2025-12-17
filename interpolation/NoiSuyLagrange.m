function result = NoiSuyLagrange(xa, ya, x)
n = length(xa);
sumL = 0;
for i = 1:n
    product = ya(i);
    for j = 1:n
        if j ~= i
            product = product * (x - xa(j)) / (xa(i) - xa(j));
        end
    end
    sumL = sumL + product;
end
result = sumL;
