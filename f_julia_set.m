function W = f_julia_set(c, n)
    col=18;
    m=2000;
    l=1.5;
    x=linspace(-l,l,m);
    y=linspace(-l,l,m);
    [X,Y]=meshgrid(x,y);
    Z=X+1i*Y;
    for k=1:col
        Z = Z.^n+c;
        W = exp(-abs(Z));
    end
end