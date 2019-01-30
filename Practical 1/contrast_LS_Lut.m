function Lut = contrast_LS_Lut(m, c)
    Lut = zeros(256, 1);
    
    for i = 1:length(Lut)
       input = (i - 1);
       if input < -c / m
           Lut(i) = 0;
       elseif input > (255 - c) / m
           Lut(i) = 255;
       else
           Lut(i) = m * input + c;
       end
    end
    
    Lut = uint8(Lut);
end