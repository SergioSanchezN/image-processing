function [n_j] = cambiohitograma(ini,fin,pxI,pxF,max,n_j)
    sum = 0;
    for i = ini:fin
        if(n_j(i,1)>max)
            sum = sum + n_j(i,1) - max;
            n_j(i,1) = max;
        end
    end
    promedio = round(sum / (pxF-pxI+1));
    residuo = mod(sum, pxF-pxI+1);
    n_j(pxI:pxF, 1) = n_j(pxI:pxF, 1) + promedio;
    n_j(pxF+1, 1) =  n_j(pxF+1, 1) + residuo;
end