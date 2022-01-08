function [Img_Rotacion] = rotacion(Im,theta)
    [x, y] = size(Im);
    tam = 2*round((x^2+y^2)^0.5)+5;
    tx = tam/2 ; ty = tam/2;
    seno = sin(theta);
    coseno = cos(theta);    
    Img_Rotacion = ones(tam, tam).*0.5;
    M_rotacion = [coseno seno 0; -seno coseno 0; tx ty 1];
    for i=1:x
        for j=1:y
            xy = ([i j 1] * M_rotacion);
            Img_Rotacion(round(xy(1)), round(xy(2)):round(xy(2))+1) = Im(i,j);
        end
    end
end