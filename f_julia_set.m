function W = f_julia_set(res,col,n,c)

l=1.5;

[x,y]=meshgrid(linspace(-l,l,res),linspace(-l,l,res));

Z=x+1i*y;

for k=1:col
    Z = Z.^n + c;
end
W = exp(-abs(Z));

end