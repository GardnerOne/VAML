function Iout = myconvolution(Iin,B)

    Iin = double(Iin);
    B = double(B);
    
    [Ix, Iy] = size(Iin);
    [M, N] = size(B);
    
    Iout = zeros(Ix - M + 1, Iy - N + 1);
    [x, y] = size(Iout);
    for k = 1:x
       for l = 1:y
           for i = k:(k+M-1)
              for j = l:(l+N-1)
                 Iout(k, l) = Iout(k, l) + Iin(i, j) * B(i-k+1, j-l+1);
              end
           end
       end
    end
    
end
 