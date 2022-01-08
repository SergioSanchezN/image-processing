function [Img_DesHorizon] = deshorizon(Im, Sh)
    [x, y] = size(Im);
    Img_DesHorizon = ones(x, y+100).*0.5;
    M_Horizontal = [1 Sh 0; 0 1 0; 0 0 1];
    
    for i=1:x
        for j=1:y
            xy = [i j 1] * M_Horizontal;
            Img_DesHorizon(round(xy(1)), round(xy(2))) = Im(i,j);
        end
    end
end