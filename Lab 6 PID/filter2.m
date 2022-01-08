function [imagen] = filter2(img, mask)
borde = floor(length(mask)/2);
[x1, y1] = size(img);    
imagen = img;
    for i = 1 + borde: x1-borde
        for j = 1 + borde: y1-borde
            seccion = img(i-borde:i+borde,j- borde:j+ borde);
            seccion = seccion.*mask;
            imagen(i,j) = round(sum(sum(seccion)));
        end
    end
end

