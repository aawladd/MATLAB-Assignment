function piv = findpivot(A)
    piv = [];
    [m,n]=size(A);
for z=1:m-1
    if(A(z,z)~=0)
        a=A(z,z);
        for k=z+1:m
            b=A(k,z);
            for l=1:n
                A(k,l)=a*A(k,l)-b*A(z,l);
            end
        end
    end
end
   fprintf("Row Echelon Form: \n");
   disp(A);
   
   for i = 1:m
       for j=1:n
           if(A(i,j)~=0)
              piv = [piv A(i,j)];
              break;
           end
       end
   end
   disp(piv);
   
end