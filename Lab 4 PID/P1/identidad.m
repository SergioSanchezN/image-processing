function [Im_identidad] = identidad(Im)
    [x, y] = size(Im);
    Im_identidad = zeros(x, y);
    M_identidad = [1 0 0; 0 1 0; 0 0 1];
    
    for i=1:x
        for j=1:y
            xy = [i j 1] * M_identidad;
            Im_identidad(xy(1), xy(2)) = Im(i,j);
        end
    end
end