function diagdominant(mat)
    [r,c] = size(mat);
    check = 1;
    
    for i = 1:r
        temp = 0;
        for j = 1:c
            if(i ~= j)
                temp = temp + abs(mat(i,j));
            end
        end
        if(abs(mat(i,i)) < temp)
            check = 0;
        end 
    end
    
    if(check ==1)
        disp("Diagonally Dominant")
    else
        disp("Diagonally not Dominant")
    end
    
    
end