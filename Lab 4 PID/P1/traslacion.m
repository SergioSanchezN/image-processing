function [Img_Traslacion] = traslacion(Im, tx, ty)
    [x, y] = size(Im);
    Img_Traslacion = ones(x+tx, y+ty).*0.5;
    M_traslacion = [1 0 0; 0 1 0; tx ty 1];
    
    for i=1:x
        for j=1:y
            xy = [i j 1] * M_traslacion;
            Img_Traslacion(xy(1), xy(2)) = Im(i,j);
        end
    end
end