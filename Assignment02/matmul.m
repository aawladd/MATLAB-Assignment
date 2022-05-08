function matans = matmul(A, B)
    [r1, c1] = size(A);
    [r2,c2] = size(B);
    matans = zeros(r1,c2);
    if(c1==r2)
        for i = 1: r1
            for j = 1:c2
                temp = 0;
                for k = 1:r2
                    temp = temp + A(i,k)*B(k,j);
                end
                matans(i,j) = temp;
            end
        end
        
    else
        disp("Dimension mis match for multiplicationa")
    end
end 