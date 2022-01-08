function [Im,S,r_k] = ecualizacion(Im)
    [M,N] = size(Im);
    [n_j,r_k]=imhist(Im);
    S = zeros(256,1);
    for i=1:256
        S(i,1)=sk(i-1,M,N,n_j);
    end
    for i=1:M
        for j=1:N
            X = 0;
            for k=1:256
                if Im(i,j) == r_k(k)
                    if X == 0    
                        Im(i,j) = S(k); 
                        X=1;
                    end
                end
            end        
        end
    end
end