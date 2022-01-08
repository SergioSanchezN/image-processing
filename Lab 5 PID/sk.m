function [s_k] = sk(k, M, N, nj)
    sum = 0;
    for i=1:k+1
        sum = sum + nj(i);
    end
    s_k = round((255/(M*N))*sum);
end