function [Img_DesVert] = desvert(Im, Sv)
    [x, y] = size(Im);
    Img_DesVert = ones(x+175, y).*0.5;
    M_Vertical = [1 0 0; Sv 1 0; 0 0 1];
    
    for i=1:x
        for j=1:y
            xy = [i j 1] * M_Vertical;
            Img_DesVert(round(xy(1)), round(xy(2))) = Im(i,j);
        end
    end
end