function [ImUnsharping] = UnsharpMask(imagen,Tventana)
    % hacer el blur con filtro de media
    Blur=FilterMean(imagen,Tventana);
    % sacar el gmask  
    gmask=imagen-Blur;
    % Hallar el uncharp sumando el gmask y la imagen
    ImUnsharping=imagen+gmask;
end