function pivotfind(A)
    [m,n] = size(A);
    
    for i = 1:m
        [mx,mxid]= max(abs(A(i:m,i)))
        temp = A(i,:);
        A(i,:) = A(mxid,:);
        A(mxid,:) = temp;
        
        for j = i+1:m
            A(j,:) = A(j,:) - A(j,i);
        end
        
    end
    A

end