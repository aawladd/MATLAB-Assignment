function newmat = interchangerowcol(mat, n1, n2,rc)
    [r,c] = size(mat);
    if(rc=='r')
        if(n1>r || n2>r)
            disp("Out of Dimension")
            return;
        end
        t = mat(n1,:);
        mat(n1,:) = mat(n2,:);
        mat(n2,:) = t;
        newmat = mat;
        
    end
    
    if(rc=='c')
        if(n1>r || n2>r)
               disp("Out of Dimension")
            return;
        end
        t = mat(:,n1);
        mat(:,n1) = mat(:,n2);
        mat(:,n2) = t;
        newmat = mat;
           
    end
    
end