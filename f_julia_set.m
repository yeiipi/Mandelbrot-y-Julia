function W = f_julia_set(res,col,n,c)
%f_julia_set  | Función según la resolución res, la cantidad de iteraciones
%               col, y la constante c genera una matriz con valores entre
%               [1,0] cumpliendo las propiedades del set de Julia.
%               ===========================================================
%               PARÁMETROS:
%                  - res : resolución de la imágen, cantidad tamañod de la
%                          matriz Z.
%                  - col : Cantidad de iteraciones de Z.
%                  -   n : Exponente de de Z.
%                  -   c : Constante que se le suma a cada iteración de Z.
%               ===========================================================
%               RETORNA:
%                  - W : Matriz con valores de [1,0] que cumplen las
%                        propiedades del set de Julia.




l=1.5;

[x,y]=meshgrid(linspace(-l,l,res),linspace(-l,l,res));

Z=x+1i*y;

for k=1:col
    Z = Z.^n + c;
end
W = exp(-abs(Z));

end