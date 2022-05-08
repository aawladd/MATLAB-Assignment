function errorfind(ye, ya)
    if(numel(ye)==1 && numel(ya)==1)
        % Absolute error
        abserr = abs(ye - ya);
        fprintf("Absolute error is %f\n",abserr)
        
        % Relative Error
         rlterr =  abserr/ye;
         fprintf("Relative error is %f\n",rlterr)
         
        % Percentage error
         prterr =  (rlterr)*100;
         fprintf("Relative error is %f %%\n",prterr)
    else
        
         %l2 norm 
         l2norm = sqrt(sum((ye-ya).^2));
         fprintf("L2 Norm is %f \n",l2norm)
         
         %l2 infinity
         linfnorm = max(abs(ye-ya));
         fprintf("Linf Norm is %f ",linfnorm)
        
    end
    
end