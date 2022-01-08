function [imgFiltered] = Filter(img,masc)    
    %Se calcula el ancho del borde
    borde = (length(masc)-1)/2;
    % Se coloca el borde Horizontal
    alto = size(img,2);    
    BordeHoriz = zeros(borde,alto);
    img=cat(1,BordeHoriz,img,BordeHoriz);
    % Se coloca el borde Vertical
    ancho = size(img,1);
    BordeVert = zeros(ancho,borde);
    img=cat(2,BordeVert,img,BordeVert); 
    % Se piden las dimenciones para iterar la ventana 
    % en la imagen    
    [M1, N1] = size(img);
    % Se hace una copia de la imagen
    img1 = img;
    % Se modifica la copia con el ventaneo
    for i = 1+borde: M1 - borde
        for j = 1+borde: N1 - borde
            seccion = img(i-borde:i+borde,j-borde:j+ borde);
            seccion = seccion.*masc;
            img1(i,j)=round(sum(sum(seccion)));
%             s=0;
%             for k=1:length(seccion)
%                 for l=1:length(seccion)
%                     s=s+seccion(k,l);
%                 end 
%             end
%             img1(i,j) = s;
        end
    end
    % Se quitan los bordes
    imgFiltered = img1(1+borde:M1-borde,1+borde:N1-borde);
    %imgFiltered = img1;
        
end