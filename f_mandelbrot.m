function [W] = f_mandelbrot(res, col,c)
%f_mandelbrot | Función según la resolución res, la cantidad de iteraciones
%               col, y la constante c genera una matriz con valores entre
%               [1,0] cumpliendo las propiedades del set de Mandelbrot.
%               ===========================================================
%               PARÁMETROS:
%                  - res : resolución de la imágen, cantidad tamañod de la
%                          matriz Z.
%                  - col : Cantidad de iteraciones de Z
%                  -   c : Constante con la que se inicia cada punto de Z
%               ===========================================================
%               RETORNA:
%                  - W : Matriz con valores de [1,0] que cumplen las
%                        propiedades del set de Mandelbrot.




l=1.5;

[x,y]=meshgrid(linspace(-l,l,res),linspace(-l,l,res));
C = x+y*1i;
Z= repmat(c,size(C));

for k=1:col
    Z = Z.^2 + C;
end

% Este último paso se hace para transformar el rango de los valores
% [0,Inf] -> [1,0]
W = exp(-abs(Z));

end
