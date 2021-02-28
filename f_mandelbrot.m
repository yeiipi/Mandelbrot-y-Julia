function [W] = f_mandelbrot(res, col,c)

l=1.5;

[x,y]=meshgrid(linspace(-l,l,res),linspace(-l,l,res));
C = x+y*1i;
Z= repmat(c,size(C));

for k=1:col
    Z = Z.^2 + C;
end
W = exp(-abs(Z));

end
