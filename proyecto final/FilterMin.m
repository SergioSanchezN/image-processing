function [img] = FilterMin(imagen, Tventana)
%     ancho = size(imgOriginal,2);
%     borde = (dim-1)/2;
%     bordeHorizontal = zeros(borde, ancho);    
%     imgOriginal = cat(1, bordeHorizontal, imgOriginal, bordeHorizontal);
%     largo = size(imgOriginal,1);
%     bordeVertical = zeros(largo, borde);
%     imgOriginal = cat(2, bordeVertical, imgOriginal, bordeVertical);
%     [largo, ancho] = size(imgOriginal);
%     
%     
%     imgOriginal1 = imgOriginal;
%     for i = borde + 1: largo - borde
%         for j = borde + 1: ancho - borde
%             seccion = imgOriginal(i-borde:i+borde,j- borde:j+ borde);
%             
%             imgOriginal1(i,j) = round(min(min(seccion)));
%         end
%     end
%     imgOriginal1 = imgOriginal1(1+borde:x1-borde,1+borde:y1-borde);
    [ancho, alto] = size(imagen);
    [imagen,margen] = MargenImagen(imagen,Tventana);
    img = imagen;
    for i = margen + 1: ancho - margen
        for j = margen + 1: alto - margen
            ventana = imagen(i-margen:i+margen,j- margen:j+ margen);            
            img(i,j) = round(min(min(ventana)));
        end
    end
    img = img(1+margen:ancho-margen+2,1+margen:alto-margen+2);
end
