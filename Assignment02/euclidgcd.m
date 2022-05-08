function gcd = euclidgcd(a,b)
    while(a~=0)
        temp = a;
        a = mod(b,a);
        b = temp;
    end
    gcd =abs(b);

end