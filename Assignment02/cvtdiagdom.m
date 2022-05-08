function mat =  cvtdiagdom(A)
  [n,m] = size(A);
  mat = zeros(n,m);
  if (n~= m)
    error('A is not a square matrix\n')
  else
      [maxrow,maxind] = max(abs(A),[],2);

      if all(maxrow >= (sum(abs(A),2) - maxrow)) && isequal(sort(maxind),(1:numel(maxind))')  
        mat = A(maxind,:);
        
      else
        disp('Sorry, but this matrix can never be made to be diagonally dominant')
      end
  end
  
end