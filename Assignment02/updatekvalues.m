function newvect = updatekvalues(old, vec, pos)
    if (~exist('pos', 'var'))
        for i = 1:numel(vec)
            old(i) = vec(i);
        end
    else
        old(pos)=vec;
    end
    newvect = old;
end