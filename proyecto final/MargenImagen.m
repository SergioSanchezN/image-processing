function [imagen,TamMargen] = MargenImagen(imagen,Tventana)
    % Se replican el los bordes horizotales
    ancho = size(imagen,1);    
    imagen = cat(1, imagen(1, :), imagen, imagen(ancho,:));
    % Se replican el los bordes vertical
    alto = size(imagen,2);
    imagen = cat(2, imagen(:, 1), imagen, imagen(:,alto));
    % Se calcula el tamaño del margen
    TamMargen = (Tventana-1)/2;
    % Se añaden los margenes de ceros verticales
    alto = size(imagen,2);    
    bordeHorizontal = zeros(TamMargen-1, alto);    
    imagen = cat(1, bordeHorizontal, imagen, bordeHorizontal);
    % Se añaden los margenes de ceros horizontales
    ancho = size(imagen,1);
    bordeVertical = zeros(ancho, TamMargen-1);
    imagen = cat(2, bordeVertical, imagen, bordeVertical);
end