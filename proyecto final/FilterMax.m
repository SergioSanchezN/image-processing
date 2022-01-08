function [img] = FilterMax(imagen, Tventana)
%     [x, y] = size(imgOriginal);
%     borde = floor(dim/2);
%     bordeHorizontal = zeros(borde, y);
%     
%     imgOriginal = cat(1, bordeHorizontal, imgOriginal, bordeHorizontal);
%     [x1, y1] = size(imgOriginal);
%     bordeVertical = zeros(x1, borde);
%     imgOriginal = cat(2, bordeVertical, imgOriginal, bordeVertical);
%     [x1, y1] = size(imgOriginal);
%     
%     
%     imgOriginal1 = imgOriginal;
%     for i = borde + 1: x1 - borde
%         for j = borde + 1: y1 - borde
%             seccion = imgOriginal(i-borde:i+borde,j- borde:j+ borde);
%             
%             imgOriginal1(i,j) = round(max(max(seccion)));
%         end
%     end
%     imgOriginal1 = imgOriginal1(1+borde:x1-borde,1+borde:y1-borde);
    [ancho, alto] = size(imagen);
    [imagen,margen] = MargenImagen(imagen,Tventana);
    img = imagen;
    for i = margen + 1: ancho - margen
        for j = margen + 1: alto - margen
            ventana = imagen(i-margen:i+margen,j- margen:j+ margen);            
            img(i,j) = round(max(max(ventana)));
        end
    end
    img = img(1+margen:ancho-margen+2,1+margen:alto-margen+2);
end
