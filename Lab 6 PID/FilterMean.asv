function [img] = FilterMean(imagen, Tventana)
%     [x, y] = size(imgOriginal);
%     borde = floor(dim/2);
%     bordeHorizontal = zeros(borde, y);
%     
%     imgOriginal = cat(1, bordeHorizontal, imgOriginal, bordeHorizontal);
%     [x1, y1] = size(imgOriginal);
%     bordeVertical = zeros(x1, borde);
%     imgOriginal = cat(2, bordeVertical, imgOriginal, bordeVertical);
%     [x1, y1] = size(imgOriginal);
    % Se le aplican margenes a los bordes
    [imagen,margen] = MargenImagen(imagen,Tventana);
    % Se busaca el acho y el alto dela imagen
    [ancho, alto] = size(imagen);
    % Se hace una copia de la imagen    
    img = imagen;
    % Se modifica la copia con el ventaneo
    for i = margen + 1: ancho - margen
        for j = margen + 1: alto - margen
            % Se crea la ventana
            ventana = imagen(i-margen:i+margen,j- margen:j+ margen);
            % Se aplica el filtro de media a la ventana
            img(i,j) = round(mean(mean(ventana)));
        end
    end
    % Se quitan los bordes
    img = img(1+margen:ancho-margen,1+margen:alto-margen);
end

