function [Img_Scalada] = escalar(Im,Cx,Cy)
    [x, y] = size(Im);
    Img_Scalada = zeros(x*Cx, y*Cy);
    M_escalada = [Cx 0 0; 0 Cy 0; 0 0 1];
    
    for i=1:x
        for j=1:y
            xy = [i j 1] * M_escalada;
            Img_Scalada((xy(1)-Cx+1):xy(1), (xy(2)-Cy+1):xy(2)) = Im(i,j);
        end
    end
end